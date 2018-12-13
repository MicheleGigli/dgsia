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
import com.agiletec.aps.system.services.authorization.Authorization;
import com.agiletec.aps.system.services.group.Group;
import com.agiletec.aps.system.services.page.Widget;
import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.aps.util.ApsWebApplicationUtils;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.resource.IResourceManager;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
            Widget currentWidget = (Widget) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_WIDGET);
            String mainCategoryFilter = currentWidget.getConfig().getProperty("mainCategoryFilter");
            String categoryCodesCSV = currentWidget.getConfig().getProperty("categoryCodesCSV");
            String[] categoryCodes = categoryCodesCSV.split(",");
            IResourceManager resourceManager = (IResourceManager) ApsWebApplicationUtils.getBean(JacmsSystemConstants.RESOURCE_MANAGER, this.pageContext);
            Collection<String> userGroupCodes = this.getAllowedGroups(reqCtx);
            List<String> ids = resourceManager.searchResourcesId(null, mainCategoryFilter, userGroupCodes);
            this.pageContext.setAttribute(this.getCategoryCodes(), categoryCodes);
            this.pageContext.setAttribute(this.getListName(), ids);
        } catch (Throwable t) {
            _logger.error("error in doStartTag", t);
            throw new JspException("Error detected while initialising the tag", t);
        }
        return EVAL_PAGE;
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
        this.setCategoryCodes(null);
        this.setListName(null);
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

    private String listName;
    private String categoryCodes;

}
