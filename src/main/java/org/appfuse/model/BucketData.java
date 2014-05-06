package org.appfuse.model;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

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

    private Long id;
    private Double capacity;
    private Double density;
    private Double volume;
    private Double pitch;
    private Double width;
    private Double height;
    private Double weight;
    private Double stress;
    private Double angle;

    public BucketData() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
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

    public void setId(Long id) {
        this.id = id;
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
