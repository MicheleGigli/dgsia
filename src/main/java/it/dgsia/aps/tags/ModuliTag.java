/*
 * Copyright 2015-Present Entando Inc. (http://www.entando.com) All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
package it.dgsia.aps.tags;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.common.FieldSearchFilter;
import com.agiletec.aps.system.services.authorization.Authorization;
import com.agiletec.aps.system.services.category.ICategoryManager;
import com.agiletec.aps.system.services.group.Group;
import com.agiletec.aps.system.services.page.Widget;
import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.aps.util.ApsWebApplicationUtils;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.resource.IResourceManager;
import it.dgsia.aps.system.services.resource.IResourcePlusManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

public class ModuliTag extends TagSupport {

    private static final Logger _logger = LoggerFactory.getLogger(ModuliTag.class);

    public ModuliTag() {
        super();
        this.release();
    }

    @Override
    public int doStartTag() throws JspException {
        ServletRequest request = this.pageContext.getRequest();
        RequestContext reqCtx = (RequestContext) request.getAttribute(RequestContext.REQCTX);
        try {
            ICategoryManager categoryManager = (ICategoryManager) ApsWebApplicationUtils.getBean(SystemConstants.CATEGORY_MANAGER, this.pageContext);
            Widget currentWidget = (Widget) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_WIDGET);
            String mainCategoryFilter = currentWidget.getConfig().getProperty("mainCategoryFilter");
            String categoryCodesCSV = currentWidget.getConfig().getProperty("categoryCodesCSV");
            String[] categoryCodesSplit = categoryCodesCSV.split(",");
            List<String> categoriesForForm = new ArrayList<>();
            for (String categoryCode : categoryCodesSplit) {
                if (null != categoryManager.getCategory(categoryCode)) {
                    categoriesForForm.add(categoryCode);
                } else {
                    _logger.warn("Categoria '" + categoryCode + "' configurata non esistente");
                }
            }
            IResourcePlusManager resourceManager = (IResourcePlusManager) ApsWebApplicationUtils.getBean(JacmsSystemConstants.RESOURCE_MANAGER, this.pageContext);
            Map<String, String> values = new HashMap<>(categoriesForForm.size() + 1);
            FieldSearchFilter[] filters = this.getFilters(values, reqCtx);
            List<String> categoriesForFilter = new ArrayList<>();
            categoriesForFilter.add(mainCategoryFilter);
            for (String categoryForForm : categoriesForForm) {
                String paramName = "moduli_catFilter_" + categoryForForm;
                String value = reqCtx.getRequest().getParameter(paramName);
                if (!StringUtils.isBlank(value)) {
                    categoriesForFilter.add(value);
                    values.put(paramName, value);
                }
            }
            List<String> ids = resourceManager.searchResourcesId(filters, categoriesForFilter);
            this.pageContext.setAttribute(this.getCategoryCodes(), categoriesForForm);
            this.pageContext.setAttribute(this.getInputValues(), values);
            this.pageContext.setAttribute(this.getListName(), ids);
        } catch (Throwable t) {
            _logger.error("error in doStartTag", t);
            throw new JspException("Error detected while initialising the tag", t);
        }
        return EVAL_PAGE;
    }

    private FieldSearchFilter[] getFilters(Map<String, String> values, RequestContext reqCtx) {
        FieldSearchFilter[] filters = new FieldSearchFilter[0];
        Collection<String> userGroupCodes = this.getAllowedGroups(reqCtx);
        if (null != userGroupCodes) {
            List<String> allowed = new ArrayList<>(userGroupCodes);
            FieldSearchFilter filterByGroup = new FieldSearchFilter(IResourceManager.RESOURCE_MAIN_GROUP_FILTER_KEY, allowed, false);
            filters = ArrayUtils.add(filters, filterByGroup);
        }
        String value = reqCtx.getRequest().getParameter("moduli_textFilter");
        if (!StringUtils.isBlank(value)) {
            FieldSearchFilter filterByText = new FieldSearchFilter(IResourceManager.RESOURCE_DESCR_FILTER_KEY, value.trim(), true);
            filters = ArrayUtils.add(filters, filterByText);
            values.put("moduli_textFilter", value);
        }
        FieldSearchFilter filterByType = new FieldSearchFilter(IResourceManager.RESOURCE_TYPE_FILTER_KEY, "Attach", false);
        filters = ArrayUtils.add(filters, filterByType);
        return filters;
    }

    protected Collection<String> getAllowedGroups(RequestContext reqCtx) {
        UserDetails currentUser = (UserDetails) reqCtx.getRequest().getSession().getAttribute(SystemConstants.SESSIONPARAM_CURRENT_USER);
        return getAllowedGroupCodes(currentUser);
    }

    public static Collection<String> getAllowedGroupCodes(UserDetails user) {
        Set<String> codes = new HashSet<>();
        codes.add(Group.FREE_GROUP_NAME);
        List<Authorization> auths = (null != user) ? user.getAuthorizations() : null;
        if (null != auths) {
            for (Authorization auth : auths) {
                if (null != auth && null != auth.getGroup()) {
                    if (auth.getGroup().getName().equals(Group.ADMINS_GROUP_NAME)) {
                        return null;
                    }
                    codes.add(auth.getGroup().getName());
                }
            }
        }
        return codes;
    }

    @Override
    public void release() {
        this.setCategoryCodes(null);
        this.setListName(null);
        this.setInputValues(null);
    }

    public String getListName() {
        return listName;
    }

    public void setListName(String listName) {
        this.listName = listName;
    }

    public String getCategoryCodes() {
        return categoryCodes;
    }

    public void setCategoryCodes(String categoryCodes) {
        this.categoryCodes = categoryCodes;
    }

    public String getInputValues() {
        return inputValues;
    }

    public void setInputValues(String inputValues) {
        this.inputValues = inputValues;
    }

    private String listName;
    private String categoryCodes;
    private String inputValues;

}
