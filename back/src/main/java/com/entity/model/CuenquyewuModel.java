package com.entity.model;

import com.entity.CuenquyewuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 存取业务
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class CuenquyewuModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 开户
     */
    private Integer kaihuId;


    /**
     * 用户
     */
    private Integer yonghuId;


    /**
     * 存取金额
     */
    private Double cuenquyewuPrice;


    /**
     * 存取类型
     */
    private Integer cuenquyewuTypes;


    /**
     * 存取时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间 show3
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：开户
	 */
    public Integer getKaihuId() {
        return kaihuId;
    }


    /**
	 * 设置：开户
	 */
    public void setKaihuId(Integer kaihuId) {
        this.kaihuId = kaihuId;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：用户
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：存取金额
	 */
    public Double getCuenquyewuPrice() {
        return cuenquyewuPrice;
    }


    /**
	 * 设置：存取金额
	 */
    public void setCuenquyewuPrice(Double cuenquyewuPrice) {
        this.cuenquyewuPrice = cuenquyewuPrice;
    }
    /**
	 * 获取：存取类型
	 */
    public Integer getCuenquyewuTypes() {
        return cuenquyewuTypes;
    }


    /**
	 * 设置：存取类型
	 */
    public void setCuenquyewuTypes(Integer cuenquyewuTypes) {
        this.cuenquyewuTypes = cuenquyewuTypes;
    }
    /**
	 * 获取：存取时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：存取时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间 show3
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show3
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
