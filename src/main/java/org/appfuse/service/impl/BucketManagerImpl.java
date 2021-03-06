package org.appfuse.service.impl;

import org.appfuse.dao.BucketDao;
import org.appfuse.model.BucketData;
import org.appfuse.service.BucketManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/30/14
 * Time: 2:14 PM
 * To change this template use File | Settings | File Templates.
 */
@Service("bucketManager")
public class BucketManagerImpl  extends GenericManagerImpl<BucketData, Long> implements BucketManager {

    @Autowired
    private BucketDao bucketDao;

    public BucketData saveBucket(BucketData bucketData) {
        return bucketDao.saveBucket(bucketData);
    }

    @Override
    public List<BucketData> getBucketsList(String userId) {
        return bucketDao.getBucketsList(userId);
    }

    @Override
    public BucketData getBucketData(String id) {
        return bucketDao.getBucketData(id);
    }

    @Override
    public BucketData getBucketDatabyTransactionId(String transID) {
        return bucketDao.getBucketDatabyTransactionId(transID);
    }

    @Override
    public List<BucketData> getCompleteBucketList() {
        return bucketDao.getCompleteBucketList();
    }
}
