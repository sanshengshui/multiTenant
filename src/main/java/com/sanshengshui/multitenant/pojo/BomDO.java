package com.sanshengshui.multitenant.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class BomDO implements Serializable {
    private static final long serialVersionUID = 1L;
    //物料编码
    private Long cateId;
    //父物料ID，一级物料为0
    private Long parentId;
    //物料编码
    private String cateCode;
    //物料名称
    private String name;
    //计量单位
    private String unit;
    //规格
    private String specify;
    //状态(0:开启 1：禁用)
    private Integer status;
    //使用数量
    private Double usedCount;
    //描述
    private String description;
    //2=自制件,1=采购件
    private Integer property;

    public Long getCateId() {
        return cateId;
    }

    public void setCateId(Long cateId) {
        this.cateId = cateId;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getCateCode() {
        return cateCode;
    }

    public void setCateCode(String cateCode) {
        this.cateCode = cateCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getSpecify() {
        return specify;
    }

    public void setSpecify(String specify) {
        this.specify = specify;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Double getUsedCount() {
        return usedCount;
    }

    public void setUsedCount(Double usedCount) {
        this.usedCount = usedCount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getProperty() {
        return property;
    }

    public void setProperty(Integer property) {
        this.property = property;
    }
}
