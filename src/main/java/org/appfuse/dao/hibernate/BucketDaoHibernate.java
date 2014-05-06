package org.appfuse.dao.hibernate;

import org.appfuse.dao.BucketDao;
import org.appfuse.model.BucketData;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/6/14
 * Time: 7:51 PM
 * To change this template use File | Settings | File Templates.
 */
@Repository("bucketDao")
public class BucketDaoHibernate extends GenericDaoHibernate<BucketData, Long> implements BucketDao {

    /**
     * Constructor that sets the entity to User.class.
     */
    public BucketDaoHibernate() {
        super(BucketData.class);
    }


    @Override
    public BucketData saveBucket(BucketData bucketData) {
        getSession().saveOrUpdate(bucketData);
        return bucketData;
    }
}
