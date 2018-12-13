/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.dgsia.aps.system.services.resource;

import com.agiletec.aps.system.common.FieldSearchFilter;
import com.agiletec.aps.system.exception.ApsSystemException;
import com.agiletec.plugins.jacms.aps.system.services.resource.IResourceManager;
import java.util.List;

/**
 *
 * @author eu
 */
public interface IResourcePlusManager extends IResourceManager {

    public List<String> searchResourcesId(FieldSearchFilter[] filters, List<String> categories) throws ApsSystemException;

}
