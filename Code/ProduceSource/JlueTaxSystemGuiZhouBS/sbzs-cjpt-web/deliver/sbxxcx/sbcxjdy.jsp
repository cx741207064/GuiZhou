


<!-- 导入页面 -->



	





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="ng-app" ng-app="viewApp" xmlns:ng="http://angularjs.org">
<head>
<meta name="renderer" content="ie-stand" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8; IE=EDGE">
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">
<title>申报查询</title>
<!-- 通用样式和框架js -->
<script type="text/javascript" src="/sbzs-cjpt-web/abacus/_res_/js/lib/angular.js"></script>
<link href="/sbzs-cjpt-web/abacus/_res_/css/comon0.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/sbzs-cjpt-web/resources/js/ecm-taglib/message/skin/default/Message.css" />
<script type="text/javascript" src="/sbzs-cjpt-web/resources/js/lib/jquery.min.js"></script>
<script type="text/javascript"src="/sbzs-cjpt-web/resources/js/ecm-taglib/json2/json2.js"></script>
<script type="text/javascript">var contextRoot="/sbzs-cjpt-web";</script>
<script type="text/javascript" src="/sbzs-cjpt-web/view/common/gy.js"></script>
<script type="text/javascript" src="/sbzs-cjpt-web/resources/js/jquery.reveal.js"></script>

<script type="text/javascript" src="/sbzs-cjpt-web/resources/js/ecm-taglib/DatePicker/DatePicker.js"></script>

<script type="text/javascript" src="/sbzs-cjpt-web/resources/js/ecm-taglib/laypage-v1.3/laypage/laypage.js"></script>

<script type="text/javascript" src="/sbzs-cjpt-web/resources/js/lib/message.js"></script>
<link rel="stylesheet" type="text/css" href="/sbzs-cjpt-web/resources/css/message/message_solid.css">
	<!-- 自定义脚本 -->

<script type="text/javascript">
	//低版本IE兼容性处理：控制台日志记录器。
	if (!window.console) {
	  console = { log : function(){} };
	}
	var gdbsms='3';
	var gdslxDm_ = '3';
	var nsrxx = '{"gsNsrsbh":"91520190314387738N","gsZgswjdm":"15201040000","error":"","dsDjxh":"10125201000030977005","gsDjxh":"10115201000083900814","dsZgswjdm":"25201150000","dsNsrmc":"贵州鸿瑞锦机电有限公司","gsNsrmc":"贵州鸿瑞锦机电有限公司","gsSwjgDm":"15201040100","dsNsrsbh":"91520190314387738N","dsSwjgDm":"25201152600"}';
	//var jsessionid = '';
	var DZSWJ_TGC = '795D384EF1BA5ABF252E742A63AF24BA';
	var ywbm = '';
</script>
<script type="text/javascript" src="/sbzs-cjpt-web/view/nssb/sbxxcx/sbcxjdy.js"></script>
<script type="text/javascript" src="/sbzs-cjpt-web/view/nssb/sbxxcx/sbcxzdy.js"></script>
<script type="text/javascript" src="/sbzs-cjpt-web/view/nssb/sbzf/cp/cpDateControl.js"></script>

<!--4.0版本UI  -->
<link rel="stylesheet" type="text/css" href="/sbzs-cjpt-web/resources4/layui/css/layui.css" />
<script type="text/javascript" src="/sbzs-cjpt-web/resources4/layui/layui.js"></script>
<script type="text/javascript" src="/sbzs-cjpt-web/resources4/tax-js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/sbzs-cjpt-web/resources4/tax-js/common.js"></script>
<link rel="stylesheet" href="/sbzs-cjpt-web/resources4/tax-css/common.css">
<link rel="stylesheet" href="/sbzs-cjpt-web/resources4/tax-font-icon/iconfont.css">
</head>


<body class="padd01" ng-app="viewApp"  id = "viewCtrlid">

		<div  class="layui-container" ng-controller="viewCtrl">
			<div class="ui-tax-center-box">
			
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="top_title" style="margin-bottom: 10px;">
			  <tr>
			    <td width="52"><img src="/sbzs-cjpt-web/resources4/tax-images/png_icon/sbcxjdy.png"></td>
			    <td><div class="big_title">申报查询及打印</div></td>
			  </tr>
			</table>
			<div class="title">
				<ul class="nav">
					<li>报税中心</li>
					<li>申报查询</li>
				</ul>
				<div class="theme">申报查询</div>
			</div>
		
			<form class="marginT20 layui-form-item">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td ng-cloak ng-if="showGdsbz=='Y'" id="gdbztd1"  style="display : none;">国地标志：</td>
						<td ng-cloak ng-if="showGdsbz=='Y'" id="gdbztd2"  style="display : none;">
							<select id="gdbz" class="select01css" style="width: 155px;">
								<option value="0">全部</option>
								<option value="1">国税</option>
								<option value="2">地税</option>
							</select>
						</td>
						<td ng-cloak ng-if="showGdsbz=='N'"  style="display : none;">国地标志：</td>
						<td ng-cloak ng-if="showGdsbz=='N'"  style="display : none;">
							<span ng-if="showGdsbz=='N'" id="gdbztd1"></span>
							<span ng-if="showGdsbz=='N'" id="gdbztd2"></span>
							<select id="gdbz" class="select01css" style="display: none;">
								<option value="0">全部</option>
								<option value="1">国税</option>
								<option value="2">地税</option>
							</select>
						</td>
						<td colspan="4">
							<div class="layui-inline marginB12">
								<label class="layui-form-label label-left" style="width: 100px">申报日期起止:</label>
								<input type="hidden" name="sssqQ" id="sssqQ" value="null">
								<input type="hidden" name="sssqZ" id="sssqZ" value="null">
								<input type="hidden" name="nsqx" id="nsqx">
								<div class="layui-input-inline" style="width: 120px">
									<input type="text" class="layui-input layui-date-input" id="sbrqq" lay-key="1">
								</div>
							</div>
							<div class="layui-inline marginB12">
								<label class="layui-form-label label-left" style="width: 20px">-</label>
								<div class="layui-input-inline" style="width: 120px">
									<input type="text" class="layui-input layui-date-input" id="sbrqz"  lay-key="2">
								</div>
							</div>
							<div class="layui-inline marginB12">
								<label class="layui-form-label label-left" style="width: 110px">税款所属期起止:</label>
								<div class="layui-input-inline" style="width: 120px">
									<input type="text" class="layui-input layui-date-input" id="skssqq" lay-key="3">
								</div>
							</div>
							<div class="layui-inline marginB12">
								<label class="layui-form-label label-left" style="width: 20px">-</label>
								<div class="layui-input-inline" style="width: 120px">
									<input type="text" class="layui-input layui-date-input" id="skssqz" lay-key="4">
								</div>
							</div>
							<div class="layui-inline marginB12">
								<button class="layui-btn" onclick="queryBtn()">查询</button>
								<!-- <button class="layui-btn" onclick="resetBtn()">重 置</button> -->
							</div>
						</td>
					</tr>
				</table>
			</form>
		
			<table width="100%" class="layui-table" border="0" cellspacing="0" cellpadding="0" id="sbxxGrid">
				<tr class="trheader">
					<th width="5%">序号</th>
					<th width="5%" ng-if="showGdsbz=='Y'">国地标志</th>
					<th width="30%">申报表名称</th>
					<th width="10%">征收项目</th>
					<th width="10%">申报日期</th>
					<th width="10%">税款所属期起</th>
					<th width="10%">税款所属期止</th>
					<th width="10%">应补退税额</th>
					<th width="10%">操作</th>
				</tr>
				<tr ng-repeat="item in items">
					<td align="center" ng-cloak ng-bind="item.index + 1"></td>
					<td align="center" ng-cloak ng-if="showGdsbz=='Y'" ng-bind-html="item.gdslxDm | gdslxDm | to_trusted"></td>
					<td align="left" ng-cloak ng-bind="item.yzpzzlmc"></td>
					<td align="left" ng-cloak ng-bind="item.zsxmmc"></td>
					<td align="center" ng-cloak ng-bind="item.sbrq | limitTo : 10"></td>
					<td align="center" ng-cloak ng-bind="item.skssqq | limitTo : 10"></td>
					<td align="center" ng-cloak ng-bind="item.skssqz | limitTo : 10"></td>
					<td align="right" ng-cloak ng-bind="item.ybtse"></td>
					<!-- 按钮兼容2.0 ywrz 、依申请信息 1.0 ywrz-->
					<!--version=1为依申请数据，version=3为纳服业务日志数据,version=4为其他渠道数据-->
					<td ng-cloak ng-if="item.version == 1" ng-bind-html="item | pzxh | to_trusted"></td>
					<td ng-cloak ng-if="item.version == 3" ng-bind-html="item | cksbb | to_trusted"></td>
					
					<td ng-cloak ng-if="item.version == 4" ng-bind-html="item | cksbb | to_trusted"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" id="sbxxNotTips" style="display: none;border-top: 0;">
				<tbody>
					<tr>
						<td align="center" ng-if="showGdsbz=='Y'" colspan="9"><font color="red">没有申报信息!</font></td>
				    	<td align="center" ng-if="showGdsbz!='Y'" colspan="8"><font color="red">没有申报信息!</font></td>
					</tr>
				</tbody>
			</table>
		
       		</div> <!-- box -->
       		
       		<!-- 分页位置 -->
			<!--<div class="layui-box layui-laypage layui-laypage-default"
				id="layui-laypage-5">
				<a href="javascript:;" class="layui-laypage-prev layui-disabled"
					id="page1" data-page="0"><i class="layui-icon"></i></a><span
					class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span><span class="layui-laypage-skip">到第<input
					type="text" min="1" value="1" class="layui-input">页
					<button type="button" class="layui-laypage-btn">确定</button></span><span
					class="layui-laypage-count" id="pageInfo">共 0 条</span><span
					class="layui-laypage-limits"><select lay-ignore=""><option
							value="10" selected="">10 条/页</option>
				</select></span>
			</div>-->
		
			 <table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="50">
						<select class="inputstyle inputstyle02"
							id="pageSize">
								<option selected>10</option>
						</select>
					</td>
					<td id="pageInfo">条/页，共0条信息</td>
					<td>
						<div class="page1" id="page1" style="padding: 10px 0; float: right;">
							<div class="page_box"></div>
						</div>
					</td>
				</tr>
			</table> 
			<!-- 分页位置 -->
			<!--<div style="padding: 20px 0; color: #666666;letter-spacing:1px;font-size: 12px">
				温馨提示:&nbsp;查询时申报年月、所属期起止请二选一。
           </div>-->
       		
		</div>

</body>
<script type="text/javascript">
//初始化日期控件
//定义laydate全局基础参数
/* laydate.set({
	min : "2000-01-01", // 设定最小日期为当前日期
	max : '2099-12-31', // 最大日期
	type: 'month',
	istime : false,
	istoday : false
});
//申报年月
laydate.render({
	elem : '#sbny'
});
//税款所属期起
var start = laydate.render({
	elem : '#skssqq',
	done : function(value,date) {
		if(value!=""){
			end.config.min = {
                year: date.year,
                month: date.month - 1,
                date: date.date,
                hours: date.hours,
                minutes: date.minutes,
                seconds: date.seconds
			}; //开始日选好后，重置结束日的最小日期
		}
	}
});
//税款所属期止
var end = laydate.render({
	elem : '#skssqz',
	done : function(value,date) {
		if(value!=""){
			start.config.max = {
                year: date.year,
                month: date.month - 1,
                date: date.date,
                hours: date.hours,
                minutes: date.minutes,
                seconds: date.seconds
            }; //结束日选好后，重置开始日的最大日期
		}
	}
}); */

//改用datepicker
/* $("#sbny").on('click', function () {
	new DatePicker({inputObj:this,dateFormatStyle:'yyyy-MM',beginDate:'2000-01-01',endDate:'2099-12-30',lang:1,type:'m'}).show();
	//WdatePicker({dateFmt:'yyyyMM',maxDate:'%y-%M-%d 00:00:00',autoPickDate:true,onpicked:changvalue,isShowClear:false});
}); 

$("#skssqq").on('click', function () {
	new DatePicker({inputObj:this,dateFormatStyle:'yyyy-MM',beginDate:'2000-01-01',endDate:'2099-12-30',lang:1,type:'m'}).show();
	//WdatePicker({dateFmt:'yyyyMM',maxDate:'%y-%M-%d 00:00:00',autoPickDate:true,onpicked:changvalue,isShowClear:false});
});

$("#skssqz").on('click', function () {
	new DatePicker({inputObj:this,dateFormatStyle:'yyyy-MM',beginDate:'2000-01-01',endDate:'2099-12-30',lang:1,type:'m'}).show();
});*/

viewApp.controller('viewCtrl', function ($scope) {
    var db_showGdsbz = 'N';
    $scope.showGdsbz = (db_showGdsbz == 'null' || db_showGdsbz=='' || db_showGdsbz=='undefined')?'Y':db_showGdsbz;
});

var date = new Date('2018-10-24');
//var date = new Date();  
var year = date.getFullYear();  
var month = date.getMonth() + 1;
var day = date.getDate();
var firstDay = year + '-' + month + '-01';
var nowDay = year + '-' + month + '-' + day;

//4.0日期控件 
layui.use('laydate', function() {
var laydate = layui.laydate;

//日期范围
laydate.render({
	elem : '#sbrqq',
	value : firstDay
});

laydate.render({
	elem : '#sbrqz',
	value : nowDay
});

laydate.render({
	elem : '#sbrq',
	range : true
});

/* laydate.render({
	elem : '#skssq',
	range : true
}); */

laydate.render({
	elem : '#skssqq',
});

laydate.render({
	elem : '#skssqz',
});

/* laydate.render({
	elem : '#sbny',
	type: 'month'
}); */

});
//加载层
var layer;
layui.use('layer', function() {
layer = layui.layer;
})

</script>
</html>
<script type="text/javascript" src="layer.js"></script>

<script type="text/javascript"
        src="/sbzs-cjpt-web/resources/js/sign/zongjv/style/js/jquery.jsonp.js"></script>
<script type="text/javascript">
    var YgsUrl = "http://www.gzgs12366.gov.cn/zlpz-cjpt-web/zlpzgzds/ysqxxidByPzxh.do";

    //覆盖原页面函数

    /**
     * 查询申报作废列表
     */
    function queryBtn() {
        //获取查询条件
        var gdbz = $("#gdbz").val();

        var sbrqq = $("#sbrqq").val();
        var sbrqz = $("#sbrqz").val();
        var skssqq = $("#skssqq").val();
        var skssqz = $("#skssqz").val();

        // 校验申报日期
        var isok = jyCxtjfun(skssqq,skssqz,sbrqq,sbrqz);
        if (!isok) return;

        //获取纳税人信息
        var nsrxx = jQuery.parseJSON(nsrjosn);
        var reqParamsObj = {};
        reqParamsObj.gsDjxh = nsrxx.gsDjxh;
        reqParamsObj.dsDjxh = nsrxx.dsDjxh;
        reqParamsObj.gsNsrsbh = nsrxx.gsNsrsbh;
        reqParamsObj.dsNsrsbh = nsrxx.dsNsrsbh;
        reqParamsObj.gsZgswjdm = nsrxx.gsZgswjdm;
        reqParamsObj.dsZgswjdm = nsrxx.dsZgswjdm;
        reqParamsObj.gsSwjgDm = nsrxx.gsSwjgDm;
        reqParamsObj.dsSwjgDm = nsrxx.dsSwjgDm;
        var reqParamsObjStr = JSON.stringify(reqParamsObj);
        //查询申报作废信息列表
        var index = layer.load(0, {shade: 0.2});
        //var sbzfreq ="getsbxx.do?gdbz="+gdbz+"&skssqq="+skssqq+"&skssqz="+skssqz+"&gdslxDm="+gdslxDm_+"&sbny="+sbny+"&ywbm="+ywbm;
        var sbzfreq ="getsbxx.do?gdbz="+gdbz+"&skssqq="+skssqq+"&skssqz="+skssqz+"&gdslxDm="+gdslxDm_+"&sbrqq="+sbrqq+"&sbrqz="+sbrqz+"&ywbm="+ywbm;
        sbzfreq = "/sbzs-cjpt-web/nssb/sbxx/" + sbzfreq;//添加路径，避免获取路径错误
        $.ajax({
            url: sbzfreq,
            type: "GET",
            data: {reqParamsJSON: reqParamsObjStr},
            dataType: "json",
            contentType: "application/json",
            success: function (data) {
                //取值
                var result = eval("(" + data + ")");
                //异常信息

                var errormsg = result.msg;
                //申报作废信息
                var sbxxList = result.sbxxList;
                var nsqx = $("#nsqx").val();

                //分页
                if (nsqx == "null") {
                    UpdateQYSDS_ASJ("sbxxGrid", sbxxList);//在分页前更新企业所得税数据
                } else {
                    var newSbxxList = [];//保存北京根据nsqx过滤的List
                    for (var i = 0; i < sbxxList.length; i++) {
                        var skssqq = sbxxList[i].skssqq;
                        var skssqz = sbxxList[i].skssqz;
                        var querySbqx = getNsqxForSkssq(skssqq, skssqz);
                        if (nsqx == '10' && nsqx == querySbqx) {
                            newSbxxList.push(sbxxList[i]);
                        } else if (nsqx == '06' || nsqx == '08' && nsqx == querySbqx) {
                            newSbxxList.push(sbxxList[i]);
                        }
                    }
                    UpdateQYSDS_ASJ("sbxxGrid", newSbxxList);//在分页前更新企业所得税数据
                }
                //异常提醒
                if (errormsg != "") {
                    layer.alert(errormsg);
                }
            },
            error: function () {
                layer.alert('链接超时或网络异常', {icon: 5});
            },
            complete: function () {
                layer.close(index);
            }
        });

    }

    function UpdateQYSDS_ASJ(tableName, data) {
        //先修改数据在分页
        var isUpdate = false; //如果有企业所得税申报，则等待数据完成后刷新页面
        for (var i = 0; i < data.length; i++) {
            if (data[i].yzpzzlDm == "BDA0610994" && CheckTime("2018-05-31", data[i].sbrq)) { //如果是企业所得税年报，则调用老系统获取ysqxxid
                var indexDate = i;
                isUpdate = true;
                var index = layer.load(0, {shade: 0.2});
                $.ajax({
                    url: YgsUrl,
                    type: 'post',
                    data: {"pzxh": data[indexDate].pzxh},
                    async: false,
                    dataType: "jsonp",
                    timeout: 3000, // 添加timeout参数
                    jsonp: "callback",//传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                    success: function (ysqxxVOS) {
                        if (ysqxxVOS.success.length > 0) {
                            data[indexDate].version = "1";
                            data[indexDate].id = ysqxxVOS.success[0].ysqxxid;
                        }
                    },
                    error: function () {
                        console.log("查询企业年报错误。");
                    },
                    complete: function () {
                        layer.close(index);
                        paging(tableName, data);
                    }
                });
            }
        }
        if (!isUpdate) {
            paging(tableName, data);
        }
    }

    //个性化下载pdf跳转路径  下载原国税PDF

    viewApp.filter('pzxh',
        function () {
            return function (item) {
                if (item.pzxh == null || item.pzxh == "")
                //凭证序号为 为null 导出盘报类
                    return "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" href=\"javaScript:queryAndexport('" + item.id + "','3','" + item.gdslxDm + "')\">查看PDF</a>";
                else
                //正常申报类
                if (item.showType == "0") {
                    if (item.sbzfbz == "Y") {
                        return "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" href=\"javaScript:warmInfo('0');\" >查看PDF</a>";
                    } else {
                        return "<a class=\"sbtn sbtn01\" target='_blank' style=\"background:#00a2c9\" href=\"javaScript:queryAndexport('" + item.pzxh + "','1','" + item.gdslxDm + "')\" >查看PDF</a>";
                    }
                } else if (item.showType == "1") {
                    if (item.sbzfbz == "Y") {
                        return "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" href=\"javaScript:warmInfo('1');\" >下载PDF</a>";
                    } else {
                        return "<a class=\"sbtn sbtn01\" target='_blank' style=\"background:#00a2c9\" href=\"/zlpz-cjpt-web/zlpz/viewOrDownloadPdfFile.do?ysqxxid=" + item.id + "&viewOrDownload=download&gdslxDm=" + item.gdslxDm + "&ywbm=" + item.ywbm + "\" >下载PDF</a>";
                    }
                } else if (item.showType == "2") {
                    if (item.sbzfbz == "Y") {
                        return "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" href=\"javaScript:warmInfo('0');\" >查看PDF</a>" +
                            "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" href=\"javaScript:warmInfo('1');\" >下载PDF</a>";
                    } else {
                        return "<a class=\"sbtn sbtn01\" style=\"background:#00a2c9\" href=\"javaScript:queryAndexport('" + item.pzxh + "','1','" + item.gdslxDm + "')\" >查看PDF</a>" +
                            "<a class=\"sbtn sbtn01\" target='_blank' style=\"background:#00a2c9\" href=\"/zlpz-cjpt-web/zlpz/viewOrDownloadPdfFile.do?ysqxxid=" + item.id + "&viewOrDownload=download&gdslxDm=" + item.gdslxDm + "&ywbm=" + item.ywbm + "\" >下载PDF</a>";
                    }
                } else {
                    if (item.sbzfbz == "Y") {
                        return "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" href=\"javaScript:warmInfo('1');\" >下载PDF</a>";
                    } else {
                        if (item.yzpzzlDm == "BDA0610994" && CheckTime("2018-05-31", item.sbrq)) {
                            //个性化下载按钮查询原国税企业所得税年报信息  判断条件，截止时间暂定
                            return "<a class=\"sbtn sbtn01\" target='_blank' style=\"background:#00a2c9\" href=\"http://www.gzgs12366.gov.cn/zlpz-cjpt-web/zlpz/viewOrDownloadPdfFile.do?ysqxxid=" + item.id + "&viewOrDownload=download&gdslxDm=" + item.gdslxDm + "&ywbm=QYSDS_A_17ND\" >下载PDF</a>";
                        }
                        return "<a class=\"sbtn sbtn01\" target='_blank' style=\"background:#00a2c9\" href=\"/zlpz-cjpt-web/zlpz/viewOrDownloadPdfFile.do?ysqxxid=" + item.id + "&viewOrDownload=download&gdslxDm=" + item.gdslxDm + "&ywbm=" + item.ywbm + "\" >下载PDF</a>";
                    }
                }
            };
        });

    // 比较连个时间
    function CheckTime(d1, d2) {
        d1 = d1.replace(/-/g, "/");//替换字符，变成标准格式
        d2 = d2.replace(/-/g, "/");//替换字符，变成标准格式
        var d1 = new Date(Date.parse(d1));
        var d2 = new Date(Date.parse(d2));
        if (d1 > d2) {
            return true;
        } else {
            return false;
        }
    }


    /**
     * 个性化重置
     */
    function resetBtn() {
        window.location.href = "/sbzs-cjpt-web/deliver/sbxxcx/sbcxjdy.jsp";
    }

    //cksbb查看申报表 1.0补打功能
    viewApp.filter('cksbb',
        function () {
            return function (item) {

                //非本地渠道处理
                if (item.version == 4) {
                    return "<a class=\"sbtn sbtn01\" style=\"background:#9c9d9e\" onclick='pzxhBc(" + JSON.stringify(item) + ");'>查看申报表</a>";
                } else {
                    return "<a class=\"sbtn sbtn01\" style=\"background:#00a2c9\" onclick='pzxhBc(" + JSON.stringify(item) + ");'>查看申报表</a>";
                }
            };
        });

    /**
     * 凭证序号补偿程序
     */
    function pzxhBc(item) {
        var index = layer.load(0, {shade: 0.2});
        $.ajax({
            url: "/zlpz-cjpt-web/zlpzgzdspdf/executeBcpdf.do",
            type: "GET",
            data: {
                "pzxh": item.pzxh,
                "gdslxDm": item.gdslxDm,
                "skssqq": item.skssqq,
                "skssqz": item.skssqz,
                "yzpzzlDm": item.yzpzzlDm
            },
            dataType: "json",
            contentType: "application/json",
            success: function (data) {
                if (item.version == 4 && !data.falg && data.pzxhBcZtdm == 1) { //版本是4  的确是非本渠道的话 弹框提示， 否则补偿pdf 重新合成
                    layer.alert(data.msg, {icon: 5}); //弹窗提示用户。
                } else if (item.version == 3 && !data.falg && data.pzxhBcZtdm == 1) {
                    //版本为3  则是原1.0申报数据，跳转原1.0
                    cksbb(item.gnId, item.bdDm, item.id, item.gdslxDm, item.sjgsrq, item.sjgsdq);
                } else {
                    layer.alert(data.msg, {icon: 5}); //弹窗提示用户。
                }
            },
            error: function () {
                layer.alert('重新合成PDF链接超时或网络异常', {icon: 5});
            },
            complete: function () {
                layer.close(index);
            }
        });
    }


</script>