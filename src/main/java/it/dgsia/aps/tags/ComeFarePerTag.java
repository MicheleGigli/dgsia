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
import com.agiletec.aps.system.common.entity.model.EntitySearchFilter;
import com.agiletec.aps.system.services.authorization.Authorization;
import com.agiletec.aps.system.services.group.Group;
import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.aps.util.ApsWebApplicationUtils;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.content.IContentManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;

public class ComeFarePerTag extends TagSupport {

    private static final Logger _logger = LoggerFactory.getLogger(ComeFarePerTag.class);

    public ComeFarePerTag() {
        super();
        this.release();
    }

    @Override
    public int doStartTag() throws JspException {
        ServletRequest request = this.pageContext.getRequest();
        RequestContext reqCtx = (RequestContext) request.getAttribute(RequestContext.REQCTX);
        try {
            IContentManager contentManager = (IContentManager) ApsWebApplicationUtils.getBean(JacmsSystemConstants.CONTENT_MANAGER, this.pageContext);
            Map<String, String> values = new HashMap<>(3);
            List<String> categoriesForFilter = this.getCategoryFilters(values, reqCtx);
            Collection<String> userGroupCodes = this.getAllowedGroups(reqCtx);
            if (categoriesForFilter.isEmpty()) {
                this.pageContext.setAttribute(this.getListName(), new ArrayList<String>());
            } else {
                EntitySearchFilter roleFilter = EntitySearchFilter.createRoleFilter(JacmsSystemConstants.ATTRIBUTE_ROLE_TITLE);
                roleFilter.setOrder(FieldSearchFilter.Order.ASC);
                EntitySearchFilter[] filters = {roleFilter};
                List<String> ids = contentManager.loadPublicContentsId("PRC", categoriesForFilter.toArray(new String[categoriesForFilter.size()]), filters, userGroupCodes);
                this.pageContext.setAttribute(this.getListName(), ids);
            }
            this.pageContext.setAttribute(this.getInputValues(), values);
        } catch (Throwable t) {
            _logger.error("error in doStartTag", t);
            throw new JspException("Error detected while initialising the tag", t);
        }
        return EVAL_PAGE;
    }

    private List<String> getCategoryFilters(Map<String, String> values, RequestContext reqCtx) {
        List<String> categoriesForFilter = new ArrayList<>();
        this.extractSingleCategoryFilters(categoriesForFilter, "macro_area", values, reqCtx);
        this.extractSingleCategoryFilters(categoriesForFilter, "subarea_1", values, reqCtx);
        this.extractSingleCategoryFilters(categoriesForFilter, "subarea_2", values, reqCtx);
        return categoriesForFilter;
    }

    private void extractSingleCategoryFilters(List<String> categoriesForFilter,
            String paramName, Map<String, String> values, RequestContext reqCtx) {
        String value1 = reqCtx.getRequest().getParameter(paramName);
        if (!StringUtils.isBlank(value1)) {
            categoriesForFilter.add(value1);
            values.put(paramName, value1);
        }
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
                    codes.add(auth.getGroup().getName());
                }
            }
        }
        return codes;
    }

    @Override
    public void release() {
        this.setListName(null);
        this.setInputValues(null);
    }

    public String getListName() {
        return listName;
    }

    public void setListName(String listName) {
        this.listName = listName;
    }

    public String getInputValues() {
        return inputValues;
    }

    public void setInputValues(String inputValues) {
        this.inputValues = inputValues;
    }

    private String listName;
    private String inputValues;

}
