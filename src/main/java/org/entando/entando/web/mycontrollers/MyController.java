/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.entando.entando.web.mycontrollers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.entando.entando.aps.system.services.category.ICategoryService;
import org.entando.entando.aps.system.services.category.model.CategoryDto;
import org.entando.entando.web.common.model.RestResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author ufesta
 */
@RestController
@RequestMapping(value = "/mycategories")
public class MyController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ICategoryService categoryService;

    protected ICategoryService getCategoryService() {
        return categoryService;
    }

    @RequestMapping(method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<RestResponse> getCategories(@RequestParam(value = "parentCode", required = false, defaultValue = "home") String parentCode) {
        logger.debug("getting category tree for parent {}", parentCode);
        List<CategoryDto> result = this.getCategoryService().getTree(parentCode);
        Map<String, String> metadata = new HashMap<>();
        metadata.put("parentCode", parentCode);
        return new ResponseEntity<>(new RestResponse(result, metadata), HttpStatus.OK);
    }

}
