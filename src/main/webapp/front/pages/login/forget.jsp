<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 忘记密码 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>忘记密码</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html,
		body {
			height: 100%;
		}
	</style>
	<body>
        <div id="register" class="register" :style='{"minHeight":"100vh","width":"100%","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230207/860aeea5c04f45119e98c796e63dee11.jpg) no-repeat right bottom / 100% auto,#fff","justifyContent":"flex-end","display":"flex"}'>
            <form id="registerForm" class="layui-form login-form" :style='{"border":"8px outset #bcdbdf","padding":"20px 20px 50px","boxShadow":"inset 0px 0px 0px 0px #666","margin":"2% 7% 30px 0","borderRadius":"0","flexWrap":"wrap","background":"rgba(255,255,255,.9)","display":"flex","width":"800px","justifyContent":"center","height":"auto"}' lay-filter="myForm">
                <div v-if="true" :style='{"margin":"0 0 4px","color":"#5bb450","textAlign":"center","display":"none","width":"100%","fontSize":"24px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / FORGET</div>
                <div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"4px 0 20px","borderColor":"#bdefb6","color":"#333","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230204/13e68e581e9e42b7a53fd23ab9faef74.png) no-repeat left top /100% 100%,#d7eef2","borderWidth":"0px","width":"100%","lineHeight":"44px","fontSize":"16px","borderStyle":"solid","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>忘记密码</p></div>

				<div v-if="tabIndex==1" :style='{"width":"100%","padding":"0 8%","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" id="username" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
                <div v-if="tabIndex==1" :style='{"width":"100%","padding":"0 8%","margin":"0 auto 10px","height":"auto"}' class="form-item">
                    <select name="roles" id="roles" lay-filter="roles">
                        <option value="">请选择角色</option>
                    </select>
                </div>
				<div v-if="tabIndex==2" :style='{"width":"100%","padding":"0 8%","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" v-model="userinfo.pquestion" placeholder="请输入密保问题" autocomplete="off" class="layui-input" readonly>
				</div>
				<div v-if="tabIndex==2" :style='{"width":"100%","padding":"0 8%","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" v-model="userinfo.panswer1" placeholder="请输入密保答案" autocomplete="off" class="layui-input">
				</div>
				<div v-if="tabIndex==3" :style='{"width":"100%","padding":"0 8%","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="password" v-model="userinfo.mima" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
				<div v-if="tabIndex==3" :style='{"width":"100%","padding":"0 8%","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="password" v-model="userinfo.mima1" placeholder="请输入确认密码" autocomplete="off" class="layui-input">
				</div>
				<button v-if="tabIndex==1" :style='{"cursor":"pointer","padding":"0 30px","margin":"20px 60px 0px 0","borderColor":"#cca162","color":"#333","display":"block","outline":"none","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","borderWidth":"0px","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"100px"}' class="layui-btn btn-submit" lay-submit lay-filter="getSecurity">获取密保</button>
				<button v-if="tabIndex==2" :style='{"cursor":"pointer","padding":"0 30px","margin":"20px 60px 0px 0","borderColor":"#cca162","color":"#333","display":"block","outline":"none","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","borderWidth":"0px","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"100px"}' class="layui-btn btn-submit" lay-submit lay-filter="validateSecurity">校验</button>
				<button v-if="tabIndex==3" :style='{"cursor":"pointer","padding":"0 30px","margin":"20px 60px 0px 0","borderColor":"#cca162","color":"#333","display":"block","outline":"none","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230204/dee7aa1825b6499695c40e2e5a76dd9c.png) repeat-x center bottom,linear-gradient(0deg, rgba(182,215,222,1) 0%, rgba(233,248,251,1) 80%, rgba(207,237,244,1) 100%),#b6d7de","borderWidth":"0px","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"100px"}' class="layui-btn btn-submit" lay-submit lay-filter="updatePassword">修改密码</button>
				<a v-if="tabIndex==1" :style='{"cursor":"pointer","padding":"0","margin":"20px 0 10px 60px","color":"#333","textAlign":"center","display":"inline-block","textDecoration":"none","float":"right","background":"none","width":"20px","fontSize":"14px","lineHeight":"1.5","height":"40px"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<script>
			var vue = new Vue({
				el: '#register',
				data: {
					tabIndex: 1,
					userinfo: {}
				},
				updated: function() {
					layui.form.render(null, 'myForm');
				},
				computed: {
					SecondToDate: function() {
						var time = this.count;
						time = parseInt(time) + "秒后重发";
						return time;
					}
				},
				methods: {}
			});

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tableName = '';
				// 注册
				form.on('submit(getSecurity)', function(data) {
                    if(!tableName) {
                        layer.msg('请选择角色', {
                            time: 2000,
                            icon: 5
                        })
                        return false
                    }
					data = data.field;
					var url = tableName + '/security' + '?username=' + data.username
					http.request(url, 'get', {}, function(res) {
						if (res.code == 0 && res.data) {
								vue.tabIndex = 0
							layer.msg('获取成功', {
								time: 2000,
								icon: 6
							}, function() {
								vue.userinfo = res.data
								vue.userinfo.mima = ''
								vue.tabIndex = 2
							})

						} else {
							layer.msg('用户名不存在', {
								time: 2000,
								icon: 5
							})
						}
					});
					return false
				});
				form.on('submit(validateSecurity)', function(data) {
					if (vue.userinfo.panswer !== vue.userinfo.panswer1) {
						layer.msg('密保答案错误', {
							time: 2000,
							icon: 5
						})
						return false
					}
					layer.msg('答案正确', {
						time: 2000,
						icon: 6
					}, function() {
						vue.tabIndex = 3
					})
					return false
				});
				form.on('submit(updatePassword)', function(data) {
					if (vue.userinfo.mima == '') {
						layer.msg('请输入密码', {
							time: 2000,
							icon: 5
						})
						return false
					}
					if (vue.userinfo.mima !== vue.userinfo.mima1) {
						layer.msg('两次密码输入不一致', {
							time: 2000,
							icon: 5
						})
						return false
					}
					http.requestJson(tableName + '/update', 'post', vue.userinfo, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.href = '../login/login.jsp';
						});
					});

					return false
				});

			});
		</script>
	</body>
</html>
