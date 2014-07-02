package com.desiEngg.webapp.form;

import org.appfuse.dao.BucketDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/6/14
 * Time: 3:02 PM
 * To change this template use File | Settings | File Templates.
 */
@Service
public class BucketForm {

    @Autowired
    BucketDao bucketDao;

    private String id;
    private Double capacity;
    private Double density;
    private Double volume;
    private Double pitch;
    private Double width;
    private Double height;
    private Double weight;
    private Double stress;
    private Double angle;

    private String firstName;
    private String email;
    private String password;
    private String confirmPassword;
    private String phoneNumber;
    private String address;

    private Double beltSpeed;
    private Double diameter;
    private Double driveSpeed;
    private Double chuteDepth;
    private Double chuteVertical;
    private Double beltWidth;
    private Double pulleyWidth;
    private Double grossWeight;
    private Double tensionTight;
    private Double tensionSlack;
    private Double power;
    private Double bucketCount;
    private Double torque;
    private Double shaftDiameter;
    private Double gearLoad;
    private Double shaftLoad;
    private Double pulleyThickness;
    private Double pulleyArmsCount;
    private Double twoPoleGearRatio;
    private Double fourPoleGearRatio;
    private Double sixPoleGearRatio;

    private Double capacityTwoThird=.72;
    private Double gravity=9.8;

    private Integer paidAmount;
    private String productInfo;

    private boolean fromRegister;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Double getCapacity() {
        return capacity;
    }

    public void setCapacity(Double capacity) {
        this.capacity = capacity;
    }

    public Double getDensity() {
        return density;
    }

    public void setDensity(Double density) {
        this.density = density;
    }

    public Double getVolume() {
        return volume;
    }

    public void setVolume(Double volume) {
        this.volume = volume;
    }

    public Double getPitch() {
        return pitch;
    }

    public void setPitch(Double pitch) {
        this.pitch = pitch;
    }

    public Double getWidth() {
        return width;
    }

    public void setWidth(Double width) {
        this.width = width;
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Double getStress() {
        return stress;
    }

    public void setStress(Double stress) {
        this.stress = stress;
    }

    public Double getAngle() {
        return angle;
    }

    public void setAngle(Double angle) {
        this.angle = angle;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Double getBeltSpeed() {
        return beltSpeed;
    }

    public void setBeltSpeed(Double beltSpeed) {
        this.beltSpeed = beltSpeed;
    }

    public Double getDiameter() {
        return diameter;
    }

    public void setDiameter(Double diameter) {
        this.diameter = diameter;
    }

    public Double getDriveSpeed() {
        return driveSpeed;
    }

    public void setDriveSpeed(Double driveSpeed) {
        this.driveSpeed = driveSpeed;
    }

    public Double getChuteDepth() {
        return chuteDepth;
    }

    public void setChuteDepth(Double chuteDepth) {
        this.chuteDepth = chuteDepth;
    }

    public Double getChuteVertical() {
        return chuteVertical;
    }

    public void setChuteVertical(Double chuteVertical) {
        this.chuteVertical = chuteVertical;
    }

    public Double getBeltWidth() {
        return beltWidth;
    }

    public void setBeltWidth(Double beltWidth) {
        this.beltWidth = beltWidth;
    }

    public Double getPulleyWidth() {
        return pulleyWidth;
    }

    public void setPulleyWidth(Double pulleyWidth) {
        this.pulleyWidth = pulleyWidth;
    }

    public Double getGrossWeight() {
        return grossWeight;
    }

    public void setGrossWeight(Double grossWeight) {
        this.grossWeight = grossWeight;
    }

    public Double getTensionTight() {
        return tensionTight;
    }

    public void setTensionTight(Double tensionTight) {
        this.tensionTight = tensionTight;
    }

    public Double getTensionSlack() {
        return tensionSlack;
    }

    public void setTensionSlack(Double tensionSlack) {
        this.tensionSlack = tensionSlack;
    }

    public Double getPower() {
        return power;
    }

    public void setPower(Double power) {
        this.power = power;
    }

    public Double getBucketCount() {
        return bucketCount;
    }

    public void setBucketCount(Double bucketCount) {
        this.bucketCount = bucketCount;
    }

    public Double getTorque() {
        return torque;
    }

    public void setTorque(Double torque) {
        this.torque = torque;
    }

    public Double getShaftDiameter() {
        return shaftDiameter;
    }

    public void setShaftDiameter(Double shaftDiameter) {
        this.shaftDiameter = shaftDiameter;
    }

    public Double getGearLoad() {
        return gearLoad;
    }

    public void setGearLoad(Double gearLoad) {
        this.gearLoad = gearLoad;
    }

    public Double getShaftLoad() {
        return shaftLoad;
    }

    public void setShaftLoad(Double shaftLoad) {
        this.shaftLoad = shaftLoad;
    }

    public Double getPulleyThickness() {
        return pulleyThickness;
    }

    public void setPulleyThickness(Double pulleyThickness) {
        this.pulleyThickness = pulleyThickness;
    }

    public Double getPulleyArmsCount() {
        return pulleyArmsCount;
    }

    public void setPulleyArmsCount(Double pulleyArmsCount) {
        this.pulleyArmsCount = pulleyArmsCount;
    }

    public Double getTwoPoleGearRatio() {
        return twoPoleGearRatio;
    }

    public void setTwoPoleGearRatio(Double twoPoleGearRatio) {
        this.twoPoleGearRatio = twoPoleGearRatio;
    }

    public Double getFourPoleGearRatio() {
        return fourPoleGearRatio;
    }

    public void setFourPoleGearRatio(Double fourPoleGearRatio) {
        this.fourPoleGearRatio = fourPoleGearRatio;
    }

    public Double getSixPoleGearRatio() {
        return sixPoleGearRatio;
    }

    public void setSixPoleGearRatio(Double sixPoleGearRatio) {
        this.sixPoleGearRatio = sixPoleGearRatio;
    }

    public Double getCapacityTwoThird() {
        return capacityTwoThird;
    }

    public void setCapacityTwoThird(Double capacityTwoThird) {
        this.capacityTwoThird = capacityTwoThird;
    }

    public Double getGravity() {
        return gravity;
    }

    public void setGravity(Double gravity) {
        this.gravity = gravity;
    }

    public Integer getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(Integer paidAmount) {
        this.paidAmount = paidAmount;
    }

    public String getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(String productInfo) {
        this.productInfo = productInfo;
    }

    public boolean isFromRegister() {
        return fromRegister;
    }

    public void setFromRegister(boolean fromRegister) {
        this.fromRegister = fromRegister;
    }
}
