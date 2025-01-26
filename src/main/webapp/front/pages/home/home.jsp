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
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: #d7272a;
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: #d7272a;
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: translate3d(0px, -10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						border-radius: 4px;
						padding: 30px 20px;
						left: 10px;
						background: linear-gradient(240deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: #fc8800;
					}
		
		.news .list-6 .swiper-button-next {
						border-radius: 4px;
						padding: 30px 20px;
						left: auto;
						background: linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: #fc8800;
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(10px,0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #d7272a;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #d7272a;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						border-radius: 100%;
						left: 10px;
						background: none;
						width: 40px;
						right: auto;
						height: 40px;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: #249940;
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: #249940;
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, 0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"0px auto","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"60px 7% 0px","margin":"0px","borderColor":"#98dd90","alignItems":"flex-start","textAlign":"center","display":"block","flexWrap":"wrap","background":"url() no-repeat right bottom / 600px auto","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","order":"4"}'>
					<div v-if="true && 3 == 1" class="recommend-idea" :style='{"minHeight":"360px","padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230207/8b398b5309b94ebca873fd6b49b07f09.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"auto"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230207/6fef4ce3e4c745ccad91cc3d771b52af.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"10px 20px 0","margin":"0px auto 40px","borderRadius":"0px","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","flexDirection":"row","display":"flex","width":"auto","position":"relative","justifyContent":"center","height":"66px"}'>
						<span :style='{"padding":"0 10px","color":"#555","display":"block","fontSize":"14px","lineHeight":"40px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 20px","margin":"0 0px 0 0","color":"#202020","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230204/3d0265eade294c01aa89244a752baa43.png) no-repeat right 10px","display":"inline-block","width":"auto","fontSize":"18px","lineHeight":"40px","fontWeight":"500"}'>问卷调查推荐</span>
					</div>
					
					<div v-if="true && 3 == 2" class="recommend-idea" :style='{"minHeight":"360px","padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230207/8b398b5309b94ebca873fd6b49b07f09.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"auto"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230207/6fef4ce3e4c745ccad91cc3d771b52af.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式二 -->
				    <div :style='{"padding":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"10px 10px 20px","boxShadow":"inset 0px 0px 0px 0px #fef5da","margin":"0 0 60px","borderColor":"#f1e1b2","display":"flex","justifyContent":"center","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230206/de4c50b5282f45f8a59707bce3185db8.png) no-repeat left bottom / 16%,url(http://codegen.caihongy.cn/20230206/5e80378b411c4449a860d66e35c5c969.png) no-repeat right top / 16%","borderWidth":"0px","width":"48%","fontSize":"0","position":"relative","borderStyle":"solid","height":"280px"}' class="list-item animation-box" v-for="(item,index) in wenjuandiaochaRecommend" :key="index" @click="jump('../wenjuandiaocha/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"20px","borderColor":"#e6a4b4","objectFit":"cover","display":"inline-block","borderRadius":"0px","borderWidth":"0px","background":"none","flex":"1","width":"auto","borderStyle":"outset","height":"100%","maxWidth":"52%"}' :src="item.fengmiantupian?baseurl+item.fengmiantupian.split(',')[0]:''" alt="" />
							<div :style='{"padding":"10px 0px","verticalAlign":"middle","boxShadow":"inset 0px 0px 0px 0px #f5eee6","borderColor":"#f3d7ca #f3d7ca #f3d7ca","alignItems":"flex-start","display":"flex","right":"30px","justifyContent":"center","overflow":"hidden","top":"60px","borderRadius":"8px","background":"none","borderWidth":"0px 0px 0px","width":"44%","position":"relative","borderStyle":"solid","height":"90%","zIndex":"999"}' class="item-info">
								<div :style='{"padding":"10px","borderColor":"#bcdbdf","margin":"0 10px 0 0","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"0px","borderWidth":"0 1px 0 0","background":"none","width":"40px","lineHeight":"1.2","fontSize":"14px","borderStyle":"dashed"}' class="name">{{item.wenjuanbiaoti}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"cursor":"pointer","padding":"0 2px 0 10px","margin":"0px auto 20px","borderColor":"#f0d6dc","textAlign":"center","display":"inline-block","minWidth":"120px","borderRadius":"8px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","borderStyle":"dashed","height":"44px"}' @click="jump('../wenjuandiaocha/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 3 == 3" class="recommend-idea" :style='{"minHeight":"360px","padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230207/8b398b5309b94ebca873fd6b49b07f09.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"auto"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230207/6fef4ce3e4c745ccad91cc3d771b52af.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"padding":"0 7%","margin":"40px 0 0","borderColor":"#98dd90","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","flex":"1","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","order":"1"}'>
					<div v-if="false && 1 == 1" class="news-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#d7272a","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230201/56ffd625da7e4aefa5ed423fa197b90f.jpg) no-repeat center center","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0 20px","margin":"0px auto 20px","borderRadius":"0px","top":"0px","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","flexDirection":"row","display":"flex","width":"100%","position":"relative","zIndex":"99","height":"56px"}'>
						<span :style='{"color":"#555","display":"block","fontSize":"14px","lineHeight":"44px","order":"2","textTransform":"uppercase","height":"56px"}'>HOME NEWS</span>
						<span :style='{"padding":"0 20px 0 0","margin":"0 10px 0 0","color":"#202020","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230204/3d0265eade294c01aa89244a752baa43.png) no-repeat right 13px","display":"inline-block","width":"auto","fontSize":"18px","lineHeight":"44px","fontWeight":"500"}'>公告信息</span>
					</div>
					
					<div v-if="false && 1 == 2" class="news-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#d7272a","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230201/56ffd625da7e4aefa5ed423fa197b90f.jpg) no-repeat center center","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"width":"100%","padding":"10px 20px 100px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230204/89ee15e6746c4bebbe94e76247cbaf70.png) repeat-x center bottom / 50% auto","display":"flex","height":"auto"}' v-if="newsList.length" class="list list-9">
						<div v-for="(item,index) in newsList" v-if="index<6" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"cursor":"pointer","padding":"0px 20px 0 60px","margin":"0 10px 20px 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","height":"auto"}' class="new9-list-item animation-box">
							<div :style='{"padding":"2px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","background":"none","width":"calc(100% - 140px)","fontSize":"14px","lineHeight":"24px","textOverflow":"ellipsis","fontWeight":"600","order":"2","height":"24px"}' class="new9-list-item-title">{{ item.title }}</div>
							<div :style='{"padding":"4px 0","overflow":"hidden","color":"#666","width":"calc(100% - 140px)","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"48px","order":"3"}' class="new9-list-item-descript">{{ item.introduction }}</div>
							<div :style='{"color":"#333","top":"12px","borderRadius":"4px","textAlign":"center","background":"linear-gradient(150deg, rgba(215,238,242,.3) 0%, rgba(255,255,255,.3) 50%, rgba(215,238,242,.3) 100%),#d7eef2","width":"100px","fontSize":"12px","lineHeight":"24px","position":"absolute","right":"0px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
							<div :style='{"padding":"10px 10px","color":"#333","alignItems":"center","textAlign":"center","display":"flex","top":"0","left":"0","background":"#d7eef2","width":"40px","fontSize":"14px","lineHeight":"1.2","position":"absolute","height":"100%"}' class="new9-list-item-identification">新闻动态</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 12px 0 20px","margin":"0px auto 0","borderColor":"#f0d6dc","textAlign":"center","bottom":"20px","display":"inline-block","minWidth":"120px","borderRadius":"8px","left":"46%","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed","height":"44px"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#d7272a","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230201/56ffd625da7e4aefa5ed423fa197b90f.jpg) no-repeat center center","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
			

			<!-- 图文列表 -->


			
				<!-- 系统简介 -->
				<div :style='{"padding":"0 0 80px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"40px 7% 0 0","borderColor":"#98dd90","display":"flex","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230204/89ee15e6746c4bebbe94e76247cbaf70.png) repeat-x left bottom / 80% auto","borderWidth":"0 0 0px","width":"30%","position":"relative","borderStyle":"dotted","height":"auto","order":"2"}'>
					<div :style='{"padding":"0 20px","margin":"0 0 0px","color":"#333","textAlign":"left","display":"inline-block","float":"left","justifyContent":"center","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230204/3d0265eade294c01aa89244a752baa43.png) no-repeat right 16px,url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","width":"auto","fontSize":"18px","lineHeight":"50px","fontWeight":"500","height":"56px"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0px 0 0px","color":"#333","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","flex":"1","display":"inline-block","width":"50%","lineHeight":"50px","fontSize":"14px","float":"left","height":"56px"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"width":"100%","padding":"0 0px","flexWrap":"wrap","justifyContent":"space-between","display":"block","height":"280px"}'>
						<img :style='{"padding":"0px","margin":"0px","borderColor":"#f3d7ca","objectFit":"cover","borderRadius":"0px","borderWidth":"0","background":"none","display":"block","width":"100%","borderStyle":"solid","height":"100%"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"0px 0px 0","borderColor":"#bdefb6","objectFit":"cover","borderRadius":"8px","borderWidth":"0px","background":"none","display":"none","width":"32%","borderStyle":"solid","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"0px solid #bdefb6","padding":"0px","margin":"10px 0px 0","objectFit":"cover","borderRadius":"8px","display":"none","width":"32%","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"20px 20px 20px","margin":"0px","borderColor":"#d7eef2","color":"#333","textIndent":"2em","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0px 0 0px","width":"100%","lineHeight":"24px","fontSize":"14px","position":"relative","borderStyle":"solid","height":"190px","zIndex":"99"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"top":"0","left":"0","background":"url(http://codegen.caihongy.cn/20230201/8018c9bb444643529eebedb9dabba923.png)  no-repeat right top / auto 100%","display":"none","width":"60%","position":"absolute","height":"539px"}'></div>
					<div :style='{"top":"460px","background":"url(http://codegen.caihongy.cn/20230115/ea1e131b397d4fd1908ae293d5f46e0a.png)  no-repeat left top / 240px 240px","display":"none","width":"240px","position":"absolute","right":"7%","height":"240px","zIndex":"1"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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


                    // 推荐数据
					wenjuandiaochaRecommend: [],





                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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

                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 9;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "wenjuandiaocha/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "wenjuandiaocha/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.wenjuandiaochaRecommend = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":40,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendwenjuandiaocha', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperwenjuandiaocha', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				


				
			});
		</script>
	</body>
</html>
