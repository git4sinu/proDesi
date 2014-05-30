package org.appfuse.dao.hibernate;

import org.appfuse.dao.BucketDao;
import org.appfuse.model.BucketData;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

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
     * Constructor that sets the entity to BucketData.class.
     */
    public BucketDaoHibernate() {
        super(BucketData.class);
    }


    @Override
    public BucketData saveBucket(BucketData bucketData) {
        getSession().saveOrUpdate(bucketData);
        return bucketData;
    }

    @Override
    public List<BucketData> getBucketsList(String userId) {
        List blist = null;
        Criteria criteria = getSession().createCriteria(BucketData.class);
        criteria.add(Restrictions.eq("userId", userId));
        criteria.addOrder(Order.desc("dateCreated"));
        blist = criteria.list();
        return blist;
    }

    @Override
    public BucketData getBucketData(String id) {
        Criteria criteria=getSession().createCriteria(BucketData.class);
        criteria.add(Restrictions.eq("id",id));
        return (BucketData) criteria.uniqueResult();
    }

    @Override
    public BucketData getBucketDatabyTransactionId(String transID) {
        Criteria criteria=getSession().createCriteria(BucketData.class);
        criteria.add(Restrictions.eq("transactionID",transID));
        return (BucketData) criteria.uniqueResult();
    }
}
