package com.desiEngg.generator;

import org.appfuse.model.BucketData;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.SequenceGenerator;

import java.io.Serializable;
import java.util.Random;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/7/14
 * Time: 12:21 PM
 * To change this template use File | Settings | File Templates.
 */
public class BucketSequenceGenerator  extends SequenceGenerator{
    @Override
    public Serializable generate(SessionImplementor session, Object obj) {
        Random r = new Random(System.currentTimeMillis());
        int rNumber=(1 + r.nextInt(2)) * 10000 + r.nextInt(10000);
        if(obj instanceof BucketData){
        return "bucket-" + rNumber  + '-' + System.currentTimeMillis();
        }
        return "core-" + rNumber + '-' + System.currentTimeMillis();
    }
}
