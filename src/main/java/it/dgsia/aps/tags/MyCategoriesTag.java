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

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.services.category.ICategoryManager;
import com.agiletec.aps.system.services.page.Widget;
import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.aps.util.ApsWebApplicationUtils;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.content.IContentManager;
import static com.agiletec.plugins.jacms.aps.system.services.content.helper.BaseContentListHelper.getAllowedGroupCodes;
import java.util.Collection;

/**
 * Return the list of the system categories.
 *
 * @author E.Santoboni
 */
public class MyCategoriesTag extends TagSupport {

	private static final Logger _logger = LoggerFactory.getLogger(MyCategoriesTag.class);

	private String _var;


	@Override
	public int doStartTag() throws JspException {
            _logger.info("Begin");
		ServletRequest request = this.pageContext.getRequest();
		RequestContext reqCtx = (RequestContext) request.getAttribute(RequestContext.REQCTX);
                IContentManager contManager = (IContentManager) ApsWebApplicationUtils.getBean(JacmsSystemConstants.CONTENT_MANAGER, this.pageContext);
		try {
                        Widget widget = (Widget) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_WIDGET);
                        String category = (String) widget.getConfig().get("categoryRoot");
                        _logger.info("category:" + category );
                        String[] cats = new String[]{category};
                        
                        
//                        request.get
                        
                        Collection<String> userGroupCodes = this.getAllowedGroups(reqCtx);
                        
                        List<String> results = contManager.loadPublicContentsId(cats, null, userGroupCodes);
                        if(results!=null){
                            _logger.info("result size:"+results.size());
                        }else{
                            _logger.info("results is null");
                        }
			this.pageContext.setAttribute(this.getVar(), results);
		} catch (Throwable t) {
			_logger.error("Error starting tag", t);
			throw new JspException("Error starting tag", t);
		}
                _logger.info("End");
		return super.doStartTag();
	}

	
	@Override
	public int doEndTag() throws JspException {
		this.release();
		return super.doEndTag();
	}

	@Override
	public void release() {
		this.setVar(null);
	}

	public String getVar() {
		return _var;
	}

	public void setVar(String var) {
		this._var = var;
	}

        
        protected Collection<String> getAllowedGroups(RequestContext reqCtx) {
        UserDetails currentUser = (UserDetails) reqCtx.getRequest().getSession().getAttribute(SystemConstants.SESSIONPARAM_CURRENT_USER);
        return getAllowedGroupCodes(currentUser);
    }

}
