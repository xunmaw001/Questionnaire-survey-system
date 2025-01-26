package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 问卷答复
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-02-21 09:46:06
 */
@TableName("wenjuandafu")
public class WenjuandafuEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WenjuandafuEntity() {
		
	}
	
	public WenjuandafuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 问卷标题
	 */
					
	private String wenjuanbiaoti;
	
	/**
	 * 类型
	 */
					
	private String leixing;
	
	/**
	 * 问题一
	 */
					
	private String wentiyi;
	
	/**
	 * 答复一
	 */
					
	private String dafuyi;
	
	/**
	 * 问题二
	 */
					
	private String wentier;
	
	/**
	 * 答复二
	 */
					
	private String dafuer;
	
	/**
	 * 问题三
	 */
					
	private String wentisan;
	
	/**
	 * 答复三
	 */
					
	private String dafusan;
	
	/**
	 * 问题四
	 */
					
	private String wentisi;
	
	/**
	 * 答复四
	 */
					
	private String dafusi;
	
	/**
	 * 问题五
	 */
					
	private String wentiwu;
	
	/**
	 * 答复五
	 */
					
	private String dafuwu;
	
	/**
	 * 账号
	 */
					
	private String zhanghao;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 提交日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date tijiaoriqi;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：问卷标题
	 */
	public void setWenjuanbiaoti(String wenjuanbiaoti) {
		this.wenjuanbiaoti = wenjuanbiaoti;
	}
	/**
	 * 获取：问卷标题
	 */
	public String getWenjuanbiaoti() {
		return wenjuanbiaoti;
	}
	/**
	 * 设置：类型
	 */
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	/**
	 * 获取：类型
	 */
	public String getLeixing() {
		return leixing;
	}
	/**
	 * 设置：问题一
	 */
	public void setWentiyi(String wentiyi) {
		this.wentiyi = wentiyi;
	}
	/**
	 * 获取：问题一
	 */
	public String getWentiyi() {
		return wentiyi;
	}
	/**
	 * 设置：答复一
	 */
	public void setDafuyi(String dafuyi) {
		this.dafuyi = dafuyi;
	}
	/**
	 * 获取：答复一
	 */
	public String getDafuyi() {
		return dafuyi;
	}
	/**
	 * 设置：问题二
	 */
	public void setWentier(String wentier) {
		this.wentier = wentier;
	}
	/**
	 * 获取：问题二
	 */
	public String getWentier() {
		return wentier;
	}
	/**
	 * 设置：答复二
	 */
	public void setDafuer(String dafuer) {
		this.dafuer = dafuer;
	}
	/**
	 * 获取：答复二
	 */
	public String getDafuer() {
		return dafuer;
	}
	/**
	 * 设置：问题三
	 */
	public void setWentisan(String wentisan) {
		this.wentisan = wentisan;
	}
	/**
	 * 获取：问题三
	 */
	public String getWentisan() {
		return wentisan;
	}
	/**
	 * 设置：答复三
	 */
	public void setDafusan(String dafusan) {
		this.dafusan = dafusan;
	}
	/**
	 * 获取：答复三
	 */
	public String getDafusan() {
		return dafusan;
	}
	/**
	 * 设置：问题四
	 */
	public void setWentisi(String wentisi) {
		this.wentisi = wentisi;
	}
	/**
	 * 获取：问题四
	 */
	public String getWentisi() {
		return wentisi;
	}
	/**
	 * 设置：答复四
	 */
	public void setDafusi(String dafusi) {
		this.dafusi = dafusi;
	}
	/**
	 * 获取：答复四
	 */
	public String getDafusi() {
		return dafusi;
	}
	/**
	 * 设置：问题五
	 */
	public void setWentiwu(String wentiwu) {
		this.wentiwu = wentiwu;
	}
	/**
	 * 获取：问题五
	 */
	public String getWentiwu() {
		return wentiwu;
	}
	/**
	 * 设置：答复五
	 */
	public void setDafuwu(String dafuwu) {
		this.dafuwu = dafuwu;
	}
	/**
	 * 获取：答复五
	 */
	public String getDafuwu() {
		return dafuwu;
	}
	/**
	 * 设置：账号
	 */
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
	/**
	 * 设置：提交日期
	 */
	public void setTijiaoriqi(Date tijiaoriqi) {
		this.tijiaoriqi = tijiaoriqi;
	}
	/**
	 * 获取：提交日期
	 */
	public Date getTijiaoriqi() {
		return tijiaoriqi;
	}

}
