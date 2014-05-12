package com.desiEngg.model;

import org.appfuse.model.BucketData;
import org.appfuse.service.BucketManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/8/14
 * Time: 4:36 PM
 * To change this template use File | Settings | File Templates.
 */
@Service
public class BucketModel extends BaseModel {

    @Autowired
    BucketManager bucketManager;


    public List<BucketData> getBucketsList() {
        if(bucketsList==null && getUser()!=null)
        {
            return bucketManager.getBucketsList(getUser().getId());
        }
        return bucketsList;
    }


}
