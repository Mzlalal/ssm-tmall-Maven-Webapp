$(function(){
	typeArticle();
});

function typeArticle(){
	var type = 1;
	
	$.ajax({
		url:"/ssm-tmall/articleDetail?",
		type:"post",
		data : {
		      "type":parseInt(type)
		},
		success:function(){
			var data = "${details }"
			for (var temp in data) {
				console.log(temp);
			}		
			
		},
		error:function(){
			console.log("失败");
		}
	});
	
};

// 购物车删除
function deleteCar(id,ucId,commName){
	console.log(ucId);
	$.ajax({
		url:"/Tmall/carAction_deleteShopCar",
		type:"post",
		data : {
		      "uc.ucId":ucId,
		},
		success:function(data){
			alertBox("从购物车删除 "+commName+" 成功！");
			// 移除动画
			$("#"+id).animate({opacity:0},'normal','linear',function(){
				this.remove()
			});
		},
		error:function(){
			alertBox("从购物车删除 "+commName+" 失败！");
		}
	});
};

// 提示框
function alertBox(aWord){
	// 显示信息
	$("#msg").html(aWord);
	// 提示框渐变
	$(".alertBox").animate({opacity:1},'slow').animate({opacity:0},'slow');
}

// 获取商品信息
//获取商品信息
function nowCommNum(commId,commName){
	$.ajax({
		url:"/Tmall/carAction_nowCommNum",
		type:"post",
		data : {
			"uc.comm.commId":commId
		},
		success:function(data){
			// 使用回调函数
			// 刷新商品库存
			refreshCommNum(data);
			// 添加购物车
			addCar(commId,commName);
		},
		error:function(){
			alertBox("添加购物车失败！");
		}
	});
};

function refreshCommNum(data){
	$("#commNumber").html(data);
}