$(function(){
	
});

function addCar(commId,commName){
	var commNum = prompt("请输入加入购物车的数量:");
	
	//转换输入的文字
	commNum = parseInt(commNum);
	
	// 判断输入的数量是否正确
	if (commNum == "" || commNum == 0 || commNum == undefined || typeof(commNum) != "number") {
		return alertBox("请输入正确的数字!");
	}
	
	var commNumber = $("#commNumber").html();

	// 如果添加的数量大于商品的数量则添加失败
	if (commNum > parseInt(commNumber)) {
		alertBox("添加 "+commName+" 到购物车失败!");
	} else {
		// 进入ajax添加到购物车
		$.ajax({
			url:"/Tmall/carAction_addShopCar",
			type:"post",
			data : {
			      "uc.comm.commId":commId,
			      "uc.commNum":commNum
			},
			success:function(data){
				alertBox("添加 "+commName+" 到购物车成功！");
			},
			error:function(){
				alertBox("添加 "+commName+" 到购物车失败!");
			}
		});
	}
	
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