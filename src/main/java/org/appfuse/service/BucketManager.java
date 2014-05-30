package org.appfuse.service;

import org.appfuse.model.BucketData;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/30/14
 * Time: 2:13 PM
 * To change this template use File | Settings | File Templates.
 */
public interface BucketManager extends GenericManager<BucketData, Long> {
    BucketData saveBucket(BucketData bucketData);

    List<BucketData> getBucketsList(String userId);

    BucketData getBucketData(String id);

    BucketData getBucketDatabyTransactionId(String transID);
}
