package org.appfuse.dao;

import org.appfuse.model.BucketData;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/6/14
 * Time: 7:50 PM
 * To change this template use File | Settings | File Templates.
 */
public interface BucketDao extends GenericDao<BucketData, Long> {


    BucketData saveBucket(BucketData bucketData);

    List<BucketData> getBucketsList(String userId);
}
