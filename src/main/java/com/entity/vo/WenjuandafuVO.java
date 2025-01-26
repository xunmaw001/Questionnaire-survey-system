package com.entity.vo;

import com.entity.WenjuandafuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 问卷答复
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-02-21 09:46:06
 */
public class WenjuandafuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date tijiaoriqi;
				
	
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
