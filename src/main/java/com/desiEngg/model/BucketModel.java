package com.desiEngg.model;

import com.desiEngg.webapp.form.BucketForm;
import org.appfuse.model.BucketData;
import org.appfuse.service.BucketManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;
import java.util.List;
import java.util.Random;

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
    String merchantKey = "JBZaLc";
    String salt = "GQs7yium";
    String hash = "";
    String transactionId = "";
    Integer amount;
    String productInfo;
    String hashString = "";
    String hashSequence = "mercahntkey|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";

    public List<BucketData> getBucketsList() {
        if (bucketsList == null && getUser() != null) {
            return bucketManager.getBucketsList(getUser().getId());
        }
        return bucketsList;
    }

    public void calculatePayu(BucketForm bucketForm) {
        Random rand = new Random();
        String rndm = Integer.toString(rand.nextInt()) + (System.currentTimeMillis() / 1000L);
        transactionId = hashCal("SHA-256", rndm).substring(0, 20);
        amount = bucketForm.getPaidAmount();
        productInfo = bucketForm.getProductInfo();
        String firstName = bucketForm.getFirstName();
        String email = bucketForm.getEmail();
        hashString = "";
        hashString = hashString.concat(merchantKey).concat("|").concat(transactionId).concat("|").concat(amount.toString()).concat("|").concat(productInfo).concat("|").concat(firstName).concat("|").concat(email)
                .concat("||").concat(transactionId).concat("|")
                .concat("||||||||").concat(salt);
        hash = hashCal("SHA-512", hashString);
    }

    public String hashCal(String type, String str) {
        byte[] hashseq = str.getBytes();
        StringBuffer hexString = new StringBuffer();
        try {
            MessageDigest algorithm = MessageDigest.getInstance(type);
            algorithm.reset();
            algorithm.update(hashseq);
            byte messageDigest[] = algorithm.digest();
            for (int i = 0; i < messageDigest.length; i++) {
                String hex = Integer.toHexString(0xFF & messageDigest[i]);
                if (hex.length() == 1) hexString.append("0");
                hexString.append(hex);
            }
        } catch (Exception e) {
            dlogger.error(e);
        }
        return hexString.toString();
    }

    public String getMerchantKey() {
        return merchantKey;
    }

    public void setMerchantKey(String merchantKey) {
        this.merchantKey = merchantKey;
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(String productInfo) {
        this.productInfo = productInfo;
    }

    public String getHashSequence() {
        return hashSequence;
    }

    public void setHashSequence(String hashSequence) {
        this.hashSequence = hashSequence;
    }
}
