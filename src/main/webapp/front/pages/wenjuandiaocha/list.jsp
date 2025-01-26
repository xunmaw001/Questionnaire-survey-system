<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 问卷调查 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>问卷调查</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border: 1px solid #eee;
						border-radius: 30px;
						padding: 0 30px 0 10px;
						box-shadow: 0px 0px 0px #ccc;
						margin: 0;
						outline: none;
						color: #666;
						width: 120px;
						font-size: 14px;
						line-height: 40px;
						height: 40px;
					}
		
		/* lists */
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
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">问卷调查展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"padding":"0","margin":"0px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative"}'>
				<div class="category-1" :style='{"border":"0px solid #bdefb6","padding":"40px 0 0px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0px 0 0","borderColor":"#e6a4b4","display":"flex","justifyContent":"center","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","width":"100%","borderStyle":"solid","height":"auto"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","boxShadow":"inset 0px 0px 32px 0px #40a8c4","margin":"0 10px 10px 0","borderColor":"#40a8c4","color":"#333","textAlign":"center","minWidth":"110px","borderRadius":"10px","background":"#fff","borderWidth":"0px 2px","width":"auto","lineHeight":"47px","fontSize":"15px","borderStyle":"solid"} : {"cursor":"pointer","padding":"0 10px","boxShadow":"inset 0px 0px 32px 0px #b6d7de","margin":"0 10px 10px 0","borderColor":"#a8c4d9","color":"#333","textAlign":"center","minWidth":"110px","borderRadius":"10px","background":"#fff","borderWidth":"0px 2px","width":"auto","lineHeight":"47px","fontSize":"15px","borderStyle":"solid","height":"51px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","boxShadow":"inset 0px 0px 32px 0px #40a8c4","margin":"0 10px 10px 0","borderColor":"#40a8c4","color":"#333","textAlign":"center","minWidth":"110px","borderRadius":"10px","background":"#fff","borderWidth":"0px 2px","width":"auto","lineHeight":"47px","fontSize":"15px","borderStyle":"solid"} : {"cursor":"pointer","padding":"0 10px","boxShadow":"inset 0px 0px 32px 0px #b6d7de","margin":"0 10px 10px 0","borderColor":"#a8c4d9","color":"#333","textAlign":"center","minWidth":"110px","borderRadius":"10px","background":"#fff","borderWidth":"0px 2px","width":"auto","lineHeight":"47px","fontSize":"15px","borderStyle":"solid","height":"51px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>

					
				<form class="layui-form filter" :style='{"padding":"30px 20px 30px","borderColor":"#bcdbdf","margin":"20px 7% 0","alignItems":"center","background":"#fff","borderWidth":"1px 0px 2px","display":"flex","width":"100%","borderStyle":"outset","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>问卷标题</div>
						<input type="text" :style='{"border":"1px solid #eee","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"30px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="wenjuanbiaoti" id="wenjuanbiaoti" placeholder="问卷标题" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>类型</div>
						<select name="leixing" id="leixing" lay-filter="leixing">
							<option value="">请选择</option>
							<option v-for="(item,index) in leixingOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 10px 0","borderColor":"#feabab","color":"#fff","minWidth":"90px","outline":"none","borderRadius":"30px","background":"#40a8c4","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"dashed","height":"42px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 4px 0 0","borderColor":"#fda100","color":"#fff","minWidth":"90px","outline":"none","borderRadius":"30px","background":"#f7aa00","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"solid","height":"42px"}' v-if="isAuth('wenjuandiaocha','新增')" @click="jump('../wenjuandiaocha/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"padding":"40px 0 20px","margin":"40px 7% 0px","borderColor":"#f3d7ca","background":"none","flex":"1","borderWidth":"0 0px 0 0","width":"100%","minWidth":"850px","borderStyle":"solid","order":"4"}' class="lists">
					<!-- 样式二 -->
					<div :style='{"padding":"0px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"10px","boxShadow":"0px 0px 0px #eee","margin":"0 0 100px","borderColor":"#ddd","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230206/de4c50b5282f45f8a59707bce3185db8.png) no-repeat left bottom / 20%,url(http://codegen.caihongy.cn/20230206/5e80378b411c4449a860d66e35c5c969.png) no-repeat right top / 20%","borderWidth":"0px","width":"49%","position":"relative","borderStyle":"solid","height":"240px"}' @click="jump('../wenjuandiaocha/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"verticalAlign":"middle","padding":"20px","borderColor":"#e6a4b4","objectFit":"cover","borderRadius":"0px","borderWidth":"0px","background":"none","display":"inline-block","width":"52%","borderStyle":"outset","height":"100%"}' :src="item.fengmiantupian?baseurl+item.fengmiantupian.split(',')[0]:''">
							<div :style='{"padding":"10px 10px","verticalAlign":"middle","boxShadow":"inset 0px 0px 0px 0px #f5eee6","borderColor":"#f3d7ca #f3d7ca #f3d7ca","alignItems":"flex-start","display":"flex","right":"30px","justifyContent":"center","top":"60px","borderRadius":"8px","flexWrap":"wrap","borderWidth":"0px 0px 0px","background":"none","width":"44%","position":"absolute","borderStyle":"solid","height":"90%"}' class="item-info">
								<div :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 10px 0 0","borderColor":"#bcdbdf","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0 1px 0px 0","width":"40px","lineHeight":"1.2","fontSize":"14px","borderStyle":"dashed"}' class="name">{{item.wenjuanbiaoti}}</div>
								<div v-if="item.price" :style='{"width":"100%","padding":"0px 4px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"center"}' class="time">￥{{Number(item.price).toFixed(2)}}</div>
								<div v-if="item.vipprice&&item.vipprice>0" :style='{"width":"100%","padding":"0px 4px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"center"}' class="time">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
								<div v-if="item.jf" :style='{"width":"100%","padding":"0px 4px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"center"}' class="time">{{Number(item.jf).toFixed(0)}}积分</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 热门信息 -->
				<div v-if="2 == 1 && true" class="hot" :style='{"boxShadow":"0 1px 6px rgb(0 0 0 / 10%)","top":"0","left":"101%","background":"#fff","width":"150px","position":"absolute","height":"auto"}'>
				  <div :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"#fff","textAlign":"center","background":"red"}'>热门信息</div>
				  <div :style='{"width":"100%","padding":"0 0 5px 0","background":"#fff","height":"auto"}'>
				    <div v-for="item in hotList" :key="item" :style='{"width":"100%","padding":"5px 5px 0","background":"#fff","height":"auto"}' @click="jump('../wenjuandiaocha/detail.jsp?id='+item.id)">
				      <img :style='{"width":"100%","objectFit":"cover","display":"block","height":"75px"}' :src="item.fengmiantupian?(baseurl+item.fengmiantupian.split(',')[0]):''" alt="">
				      <div :style='{"padding":"4px 5px 0","lineHeight":"1","fontSize":"14px","color":"red"}'>{{item.wenjuanbiaoti}}</div>
				      <!--<div :style='{"padding":"0 5px","lineHeight":"12px","fontSize":"12px","color":"#999","textAlign":"right"}'>{{item.price}}</div>-->
				    </div>
				  </div>
				</div>
				<div v-if="2 == 2 && true" class="hot" :style='{"width":"240px","padding":"0","margin":"40px 0 0 7%","background":"none","height":"auto","order":"3"}'>
				  <div :style='{"padding":"0 0 10px","margin":"0px auto 20px","color":"#333","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","width":"100%","lineHeight":"40px","fontSize":"18px","fontWeight":"500"}'>推荐信息</div>
				  <div :style='{"padding":"10px 0px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}'>
				    <div v-for="item in hotList" :key="item" :style='{"cursor":"pointer","padding":"0px","boxShadow":"0px 0px 0px #e6e6e6","borderColor":"#ddd","margin":"0 0 20px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"solid","height":"auto"}' @click="jump('../wenjuandiaocha/detail.jsp?id='+item.id)">
				      <img :style='{"padding":"20px","boxShadow":"0px 0px 0px #ccc","borderColor":"#ddd","margin":"0 0 10px","objectFit":"cover","borderRadius":"0px","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230206/de4c50b5282f45f8a59707bce3185db8.png) no-repeat left bottom / 20%,url(http://codegen.caihongy.cn/20230206/5e80378b411c4449a860d66e35c5c969.png) no-repeat right top / 20%","display":"block","width":"100%","borderStyle":"solid","height":"180px"}' :src="item.fengmiantupian?(baseurl+item.fengmiantupian.split(',')[0]):''" alt="">
				      <div :style='{"padding":"0 0px","borderColor":"#bcdbdf","margin":"0px auto 0px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 1px","background":"none","width":"80%","lineHeight":"36px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}'>{{item.wenjuanbiaoti}}</div>
				      <!-- <div :style='{"padding":"0 10px","margin":"4px 0 0","color":"#666","textAlign":"right","display":"none","lineHeight":"24px","fontSize":"14px"}'>{{item.price}}</div> -->
				    </div>
				  </div>
				</div>
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        leixingOptions: [],
					baseurl: '',
                    hotList: [],
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
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
						vue.swiperList = swiperList;
						
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
        			http.request(`option/leixing/leixing`,'get',{},(res)=>{
                			vue.leixingOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/leixing/leixing', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});
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

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#wenjuanbiaoti').val()) {
						param['wenjuanbiaoti'] = '';
					}
					if (jquery('#leixing').val()) {
						param['leixing'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['leixing'] = category;
				}

			        if (jquery('#wenjuanbiaoti').val()) {
			          param['wenjuanbiaoti'] = jquery('#wenjuanbiaoti').val() ? '%' + jquery('#wenjuanbiaoti').val() + '%' : '';
			        }
			        if (jquery('#leixing').val()) {
			          param['leixing'] = jquery('#leixing').val() ? jquery('#leixing').val() : '';
			        }
			        param['sort'] = 'faburiqi';
			        param['order'] = 'desc';


				if (jquery('#wenjuanbiaoti').val()) {
					param['wenjuanbiaoti'] = jquery('#wenjuanbiaoti').val() ? '%' + jquery('#wenjuanbiaoti').val() + '%' : '';
				}  
				if (jquery('#leixing').val()) {
					param['leixing'] = jquery('#leixing').val() ? '%' + jquery('#leixing').val() + '%' : '';
				}  

					// 获取列表数据
					http.request('wenjuandiaocha/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","limit","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('wenjuandiaocha/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
