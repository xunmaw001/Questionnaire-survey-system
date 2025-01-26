<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #e6a4b4;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #e6a4b4;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 10px 0;
						color: #333;
						font-size: 14px;
						border-color: #a8c4d9;
						line-height: 47px;
						border-radius: 10px;
						box-shadow: inset 0px 0px 32px 0px #b6d7de;
						background: #fff;
						width: auto;
						border-width: 0px 2px ;
						border-style: solid;
						text-align: center;
						min-width: 110px;
						height: 51px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 10px 0;
						color: #333;
						font-size: 16px;
						border-color: #40a8c4;
						line-height: 47px;
						border-radius: 10px;
						background: #fff;
						width: auto;
						border-width: 0px 2px;
						border-style: solid;
						text-align: center;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 10px 0;
						color: #333;
						font-size: 15px;
						border-color: #40a8c4;
						line-height: 47px;
						border-radius: 10px;
						box-shadow: inset 0px 0px 32px 0px #40a8c4;
						background: #fff;
						width: auto;
						border-width: 0px 2px;
						border-style: solid;
						text-align: center;
						min-width: 110px;
						height: 51px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"padding":"0px 0 40px","margin":"0px auto 0","alignItems":"flex-start","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>
				<div :style='{"padding":"0","boxShadow":"0px 0px 0px #eee","borderColor":"#ddd","display":"flex","justifyContent":"space-between","minHeight":"660px","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"0px solid #bdefb6","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"40px","margin":"40px 7% 0 0","borderColor":"#bcdbdf","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230206/de4c50b5282f45f8a59707bce3185db8.png) no-repeat left bottom / 20%,url(http://codegen.caihongy.cn/20230206/5e80378b411c4449a860d66e35c5c969.png) no-repeat right top / 20%","borderWidth":"0px","width":"38%","borderStyle":"outset","order":"2","height":"500px"}'>
						<div carousel-item>
							<div :style='{"borderRadius":"0px","width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"width":"100%","objectFit":"cover","borderRadius":"0px","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>




					<div :style='{"minHeight":"500px","padding":"0px 0px 20px","margin":"40px 0 0px 7%","borderRadius":"20px","background":"linear-gradient(180deg, rgba(248,253,255,1) 0%, rgba(227,243,250,1) 100%),#f8fdff","width":"41%","order":"1"}'>
						<div :style='{"padding":"4px 20px 16px","boxShadow":"inset 0px 0px 0px 0px #f5e7ea","margin":"0 0 10px 0","borderColor":"#ebdcc6","alignItems":"center","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","borderWidth":"0 0 0px","display":"flex","borderStyle":"solid","justifyContent":"space-between"}'>
							<div :style='{"color":"#333","fontSize":"16px","fontWeight":"500"}'>{{title}}</div>
							<div v-if='storeupFlag' :style='{"cursor":"pointer","padding":"8px 10px","borderRadius":"20px","background":"none"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#333","fontSize":"16px"}'>&#xe67a;</i>
								<span :style='{"color":"#333","fontSize":"15px"}'>取消收藏</span>
							</div>
							<div v-if='!storeupFlag' :style='{"cursor":"pointer","padding":"8px 10px","borderRadius":"20px","background":"none"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#333","fontSize":"16px"}'>&#xe67b;</i>
								<span :style='{"color":"#333","fontSize":"15px"}'>点我收藏</span>
							</div>
						</div>



						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>类型：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.leixing}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>问题一：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.wentiyi}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>问题二：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.wentier}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>问题三：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.wentisan}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>问题四：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.wentisi}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>问题五：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.wentiwu}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#d2e2ed","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>发布日期：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.faburiqi}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 20px","flexWrap":"wrap","background":"none","display":"flex"}'>


							<button :style='{"border":"0px solid #b8d7f2","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#333","borderRadius":"20px","background":"#b5e7f9","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="isAuth('wenjuandiaocha','答复')" @click="onAcrossTap('wenjuandafu','','')" type="button" class="layui-btn">
								答复
							</button>

						</div>
					</div>
					
					<!-- 热门信息 -->
					<div v-if="true" class="hot" :style='{"padding":"0px","margin":"40px 7% 0","background":"none","width":"86%","position":"relative","height":"auto","order":"4"}'>
					  <div :style='{"padding":"0 0 10px","color":"#333","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","width":"100%","lineHeight":"50px","fontSize":"18px","fontWeight":"500"}'>推荐信息</div>
					  <div :style='{"padding":"20px 0 0","margin":"20px 0 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}'>
					    <div v-for="item in hotList" :key="item" :style='{"border":"0px solid #ccc","padding":"20px","boxShadow":"0px 0px 0px #e6e6e6","margin":"0 0 10px","borderRadius":"8px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230206/de4c50b5282f45f8a59707bce3185db8.png) no-repeat left bottom / 20%,url(http://codegen.caihongy.cn/20230206/5e80378b411c4449a860d66e35c5c969.png) no-repeat right top / 20%","display":"flex","width":"23.5%","justifyContent":"center","height":"auto"}' @click="jump('../wenjuandiaocha/detail.jsp?id='+item.id)">
					      <img :style='{"cursor":"pointer","padding":"0px","borderColor":"#e6a4b4","margin":"0 0 10px","objectFit":"cover","display":"block","borderRadius":"0","borderWidth":"0px","background":"none","flex":"1","width":"auto","borderStyle":"outset","height":"180px","maxWidth":"52%"}' :src="item.fengmiantupian?(baseurl+item.fengmiantupian.split(',')[0]):''" alt="">
					      <div :style='{"cursor":"pointer","padding":"0px 6px","borderColor":"#bcdbdf","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0 0px 0 0","width":"32px","lineHeight":"1.2","fontSize":"14px","borderStyle":"dashed"}'>{{item.wenjuanbiaoti}}</div>
					      <!-- <div :style='{"padding":"0 20px","margin":"4px 0 0","color":"#f00","textAlign":"right","display":"none","lineHeight":"24px","fontSize":"14px"}'>2022-02-02</div> -->
					    </div>
					  </div>
					</div>
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"border":"0","padding":"0","boxShadow":"none","margin":"60px 7% 0 7%","borderColor":"#bcdbdf","float":"right","minHeight":"440px","overflow":"hidden","borderRadius":"0 20px 20px 0","background":"#fff","borderWidth":"1px 8px 1px 1px","flex":"1","width":"50%","borderStyle":"outset","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"20px 0px 40px","fontSize":"0","textAlign":"center","background":"#fff","height":"51px"}'>











					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">












					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'wenjuandiaocha',
					baseurl: '',
					// 评论列表
					dataList: [],
					storeupFlag: 0,
                    hotList: [],
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`wenjuandiaocha`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},




					// 收藏商品
					storeUp() {
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type: 1,
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								name: this.title,
							    type:1,
								picture:vue.detail.fengmiantupian.split(",")[0],
                                inteltype: vue.detail.leixing,
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								layer.msg('收藏成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList2 = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '680px',
                                anim: 'default',
                                autoplay: 'true',
                                interval: '5000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.wenjuanbiaoti;
					// 轮播图片
					vue.swiperList = vue.detail.fengmiantupian ? vue.detail.fengmiantupian.split(",") : [];
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '38%',
							height: '500px',
							anim: 'fade',
							autoplay: 'true',
							interval: '6000',
							arrow: 'none',
							indicator: 'inside'
						});
					})


				});
				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:1,
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						vue.storeupFlag = res.data.list.length;
					})
				}


                getHotList();

                function getHotList() {
                    var autoSortUrl = "wenjuandiaocha/autoSort";
                    if(localStorage.getItem('Token')) {
                        autoSortUrl = "wenjuandiaocha/autoSort2";
                    }
                    var param = {
                        page: 1,
                        limit: 4
                    }

                    // 获取列表数据
                    http.request(autoSortUrl, 'get', param, function(res) {
                        vue.hotList = res.data.list
                    })
                }



			});
		</script>
	</body>
</html>
