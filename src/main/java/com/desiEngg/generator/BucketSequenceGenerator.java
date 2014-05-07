package com.desiEngg.generator;

import org.appfuse.model.BucketData;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.SequenceGenerator;

import java.io.Serializable;
import java.math.BigInteger;
import java.security.SecureRandom;

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
        SecureRandom random = new SecureRandom();
        if(obj instanceof BucketData){
        return "bucket-" + new BigInteger(130, random).toString(32)  + '-' + System.currentTimeMillis();
        }
        return "core-" + new BigInteger(130, random).toString(32)  + '-' + System.currentTimeMillis();
    }
}
