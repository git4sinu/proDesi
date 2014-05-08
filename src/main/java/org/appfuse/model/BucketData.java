package org.appfuse.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/6/14
 * Time: 11:40 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "bucket")
@XmlRootElement
public class BucketData extends BaseObject implements Serializable {

    private String id;
    private String userId;
    private Double capacity;
    private Double density;
    private Double volume;
    private Double pitch;
    private Double width;
    private Double height;
    private Double weight;
    private Double stress;
    private Double angle;
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
    private Boolean paymentStatus=false;
    private Date dateCreated=new Date();


    public BucketData() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "bIdGenerator")
    @GenericGenerator(name = "bIdGenerator",
            strategy = "com.desiEngg.generator.BucketSequenceGenerator")
    public String getId() {
        return id;
    }

    @Column(name = "userid_ref")
    public String getUserId() {
        return userId;
    }

    @Column(name = "capacity")
    public Double getCapacity() {
        return capacity;
    }

    @Column(name = "density")
    public Double getDensity() {
        return density;
    }

    @Column(name = "volume")
    public Double getVolume() {
        return volume;
    }

    @Column(name = "pitch")
    public Double getPitch() {
        return pitch;
    }

    @Column(name = "width")
    public Double getWidth() {
        return width;
    }

    @Column(name = "height")
    public Double getHeight() {
        return height;
    }

    @Column(name = "weight")
    public Double getWeight() {
        return weight;
    }

    @Column(name = "stress")
    public Double getStress() {
        return stress;
    }

    @Column(name = "angle")
    public Double getAngle() {
        return angle;
    }

    @Column(name = "belt_speed")
    public Double getBeltSpeed() {
        return beltSpeed;
    }

    @Column(name = "diameter")
    public Double getDiameter() {
        return diameter;
    }

    @Column(name = "drive_speed")
    public Double getDriveSpeed() {
        return driveSpeed;
    }

    @Column(name = "chute_depth")
    public Double getChuteDepth() {
        return chuteDepth;
    }

    @Column(name = "chute_vertical")
    public Double getChuteVertical() {
        return chuteVertical;
    }

    @Column(name = "belt_width")
    public Double getBeltWidth() {
        return beltWidth;
    }

    @Column(name = "pulley_width")
    public Double getPulleyWidth() {
        return pulleyWidth;
    }

    @Column(name = "gross_weight")
    public Double getGrossWeight() {
        return grossWeight;
    }

    @Column(name = "tension_tight")
    public Double getTensionTight() {
        return tensionTight;
    }

    @Column(name = "tension_slack")
    public Double getTensionSlack() {
        return tensionSlack;
    }

    @Column(name = "power")
    public Double getPower() {
        return power;
    }

    @Column(name = "bucket_count")
    public Double getBucketCount() {
        return bucketCount;
    }

    @Column(name = "torque")
    public Double getTorque() {
        return torque;
    }

    @Column(name = "shaft_diameter")
    public Double getShaftDiameter() {
        return shaftDiameter;
    }

    @Column(name = "gear_load")
    public Double getGearLoad() {
        return gearLoad;
    }

    @Column(name = "shaft_load")
    public Double getShaftLoad() {
        return shaftLoad;
    }

    @Column(name = "pulley_thickness")
    public Double getPulleyThickness() {
        return pulleyThickness;
    }

    @Column(name = "pulleyarms_count")
    public Double getPulleyArmsCount() {
        return pulleyArmsCount;
    }

    @Column(name = "twoPole_ratio")
    public Double getTwoPoleGearRatio() {
        return twoPoleGearRatio;
    }

    @Column(name = "fourPole_ratio")
    public Double getFourPoleGearRatio() {
        return fourPoleGearRatio;
    }

    @Column(name = "sixPole_ratio")
    public Double getSixPoleGearRatio() {
        return sixPoleGearRatio;
    }

    @Column(name = "payment_status")
    public Boolean getPaymentStatus() {
        return paymentStatus;
    }

    @Column(name = "date_created")
    public Date getDateCreated() {
        return dateCreated;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setCapacity(Double capacity) {
        this.capacity = capacity;
    }

    public void setDensity(Double density) {
        this.density = density;
    }

    public void setVolume(Double volume) {
        this.volume = volume;
    }

    public void setPitch(Double pitch) {
        this.pitch = pitch;
    }

    public void setWidth(Double width) {
        this.width = width;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public void setStress(Double stress) {
        this.stress = stress;
    }

    public void setAngle(Double angle) {
        this.angle = angle;
    }

    public void setBeltSpeed(Double beltSpeed) {
        this.beltSpeed = beltSpeed;
    }

    public void setDiameter(Double diameter) {
        this.diameter = diameter;
    }

    public void setDriveSpeed(Double driveSpeed) {
        this.driveSpeed = driveSpeed;
    }

    public void setChuteDepth(Double chuteDepth) {
        this.chuteDepth = chuteDepth;
    }

    public void setChuteVertical(Double chuteVertical) {
        this.chuteVertical = chuteVertical;
    }

    public void setBeltWidth(Double beltWidth) {
        this.beltWidth = beltWidth;
    }

    public void setPulleyWidth(Double pulleyWidth) {
        this.pulleyWidth = pulleyWidth;
    }

    public void setGrossWeight(Double grossWeight) {
        this.grossWeight = grossWeight;
    }

    public void setTensionTight(Double tensionTight) {
        this.tensionTight = tensionTight;
    }

    public void setTensionSlack(Double tensionSlack) {
        this.tensionSlack = tensionSlack;
    }

    public void setPower(Double power) {
        this.power = power;
    }

    public void setBucketCount(Double bucketCount) {
        this.bucketCount = bucketCount;
    }

    public void setTorque(Double torque) {
        this.torque = torque;
    }

    public void setShaftDiameter(Double shaftDiameter) {
        this.shaftDiameter = shaftDiameter;
    }

    public void setGearLoad(Double gearLoad) {
        this.gearLoad = gearLoad;
    }

    public void setShaftLoad(Double shaftLoad) {
        this.shaftLoad = shaftLoad;
    }

    public void setPulleyThickness(Double pulleyThickness) {
        this.pulleyThickness = pulleyThickness;
    }

    public void setPulleyArmsCount(Double pulleyArmsCount) {
        this.pulleyArmsCount = pulleyArmsCount;
    }

    public void setTwoPoleGearRatio(Double twoPoleGearRatio) {
        this.twoPoleGearRatio = twoPoleGearRatio;
    }

    public void setFourPoleGearRatio(Double fourPoleGearRatio) {
        this.fourPoleGearRatio = fourPoleGearRatio;
    }

    public void setSixPoleGearRatio(Double sixPoleGearRatio) {
        this.sixPoleGearRatio = sixPoleGearRatio;
    }

    public void setPaymentStatus(Boolean paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    @Override
    public String toString() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public boolean equals(Object o) {
        return false;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int hashCode() {
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
