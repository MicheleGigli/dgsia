package it.dgsia.aps.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.util.ApsWebApplicationUtils;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.resource.IResourceManager;
import com.agiletec.plugins.jacms.aps.system.services.resource.model.ResourceInterface;

/**
 * @author E.Santoboni
 */
public class ResourceTag extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        try {
            IResourceManager resourceManager = (IResourceManager) ApsWebApplicationUtils.getBean(JacmsSystemConstants.RESOURCE_MANAGER, this.pageContext);
            ResourceInterface resource = resourceManager.loadResource(this.getResourceId());
            if (null != resource) {
                this.pageContext.setAttribute(this.getVar(), resource);
            } else {
                this.pageContext.getOut().print("UNKNOWN RESOURCE " + this.getResourceId());
            }
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "doStartTag");
            throw new JspException("Errore inizializzazione tag", t);
        }
        return super.doStartTag();
    }

    public String getResourceId() {
        return _resourceId;
    }

    public void setResourceId(String resourceId) {
        this._resourceId = resourceId;
    }

    public String getVar() {
        return _var;
    }

    public void setVar(String var) {
        this._var = var;
    }

    private String _resourceId;
    private String _var;

}
