/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.dgsia.aps.system.services.resource;

import com.agiletec.aps.system.common.FieldSearchFilter;
import com.agiletec.plugins.jacms.aps.system.services.resource.ResourceDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author eu
 */
public class ResourcePlusDAO extends ResourceDAO implements IResourcePlusDAO {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public List<String> searchResourcesId(FieldSearchFilter[] filters, List<String> categories) {
        Connection conn = null;
        List<String> resources = new ArrayList<>();
        PreparedStatement stat = null;
        ResultSet res = null;
        try {
            conn = this.getConnection();
            stat = this.buildStatement(filters, categories, conn);
            res = stat.executeQuery();
            while (res.next()) {
                String id = res.getString(this.getMasterTableIdFieldName());
                if (!resources.contains(id)) {
                    resources.add(id);
                }
            }
        } catch (Throwable t) {
            logger.error("Error loading resources id", t);
            throw new RuntimeException("Error loading resources id", t);
        } finally {
            closeDaoResources(res, stat, conn);
        }
        return resources;
    }

    private PreparedStatement buildStatement(FieldSearchFilter[] filters, List<String> categories, Connection conn) {
        String query = this.createQueryString(filters, categories);
        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(query);
            int index = 0;
            index = this.addMetadataFieldFilterStatementBlock(filters, index, stat);
            if (null != categories && categories.size() > 0) {
                for (String category : categories) {
                    stat.setString(++index, category);
                }
            }
        } catch (Throwable t) {
            logger.error("Error while creating the statement", t);
            throw new RuntimeException("Error while creating the statement", t);
        }
        return stat;
    }

    private String createQueryString(FieldSearchFilter[] filters, List<String> categories) {
        StringBuffer query = this.createBaseQueryBlock(filters, false, categories);
        boolean hasAppendWhereClause = this.appendMetadataFieldFilterQueryBlocks(filters, query, false);
        if (null != categories && categories.size() > 0) {
            hasAppendWhereClause = this.verifyWhereClauseAppend(query, hasAppendWhereClause);
            for (int i = 0; i < categories.size(); i++) {
                if (i > 0) {
                    query.append(" AND ");
                }
                query.append("resourcerelations").append(i).append(".refcategory = ? ");
            }
        }
        query.append("ORDER BY resources.descr ");
        return query.toString();
    }

    private StringBuffer createBaseQueryBlock(FieldSearchFilter[] filters, boolean selectAll, List<String> categories) {
        StringBuffer query = super.createBaseQueryBlock(filters, selectAll);
        if (null != categories && categories.size() > 0) {
            for (int i = 0; i < categories.size(); i++) {
                query.append("INNER JOIN resourcerelations AS resourcerelations").append(i).append(" ON resources.resid = resourcerelations").append(i).append(".resid ");
            }
        }
        return query;
    }

}
