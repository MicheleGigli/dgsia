/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.dgsia.aps.system.services.resource;

import com.agiletec.aps.system.common.FieldSearchFilter;
import com.agiletec.aps.system.exception.ApsSystemException;
import com.agiletec.plugins.jacms.aps.system.services.resource.ResourceManager;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author eu
 */
public class ResourcePlusManager extends ResourceManager implements IResourcePlusManager {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public List<String> searchResourcesId(FieldSearchFilter[] filters, List<String> categories) throws ApsSystemException {
        this.checkFilterKeys(filters);
        List<String> resourcesId = null;
        try {
            resourcesId = ((IResourcePlusDAO) this.getResourceDAO()).searchResourcesId(filters, categories);
        } catch (Throwable t) {
            logger.error("Error searching resources id", t);
            throw new ApsSystemException("Error searching resources id", t);
        }
        return resourcesId;
    }

}
