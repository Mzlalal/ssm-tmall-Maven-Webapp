//	function add() 
//	{
//		document.frmAction.action = "add";
//		document.frmAction.submit();
//	}
	function edit() 
	{
   		 var id;
    	 var count = 0;
   		 var chk = document.getElementsByName("ids");
   	 	 if(chk == null) 
   	 	 {
       	 alert("请勾选要修改的记录！");
         return false;
    	 }
   		if(chk[0] == null) 
   		{
       		if(chk.checked) 
       		{
           	id = chk.value;
           	count++;
       		}
   		}
   		else 
   		{
       		for(i=0;i<chk.length;i++) 
       		{
           		if(chk[i].checked) 
           		{
              			 count++;
               		 id = chk[i].value;
           		}
       		}
   		}
   		 if(count==0) 
   		 {
        	 alert("请勾选要修改的记录！");
       		 return false;
    	 }
    	 if(count>1) 
    	 {
       		 alert("请仅勾选一个记录修改！");
        	 return  false;
    	 }
    	 document.getElementById("id").value=id;
    	 document.frmAction.action = "edit";
 		 document.frmAction.submit();

	}
	
	
	
//	function editSingle(id)
//	{
//		document.getElementById("id").value=id;
//		document.frmAction.action = "userAction_edit";
//		document.frmAction.submit();
//	}
	
	function query() 
	{
		document.frmAction.submit();
   		//document.getElementById("frmAction").submit();
	}
	function del() 
	{
    	var count = 0;
    	var chk = document.getElementsByName("ids");
    	if(chk == null) 
    	{
        alert("请勾选要删除的记录！");
        return  false;
    	}
    	if(chk[0] == null) 
    	{
        	if(chk.checked) 
        	{
            count++;
        	}
   	 	}
   		 else 
    	{
        	for(i=0;i<chk.length;i++) 
        	{
            	if(chk[i].checked) 
            	{
                	count++;
            	}
        	}
    	}
    	if(count==0) 
   		{
        	alert("请勾选要删除的记录！");
        	return  false;
   	 	}
    	if(count>0)
    	{
    		if(confirm("操作不可恢复,您确定删除吗？")){
        		document.frmAction.submit();
    		}
    		
    	}
}
	
//function delSingle(id) {
//	if (confirm("操作不可恢复,您确定删除吗？")) {
//		document.getElementById("id").value = id;
//		document.frmAction.action = "userAction_delete";
//		document.frmAction.submit();
//	}
//}

function selectAll(allSelect) 
	{
    	var chk = document.getElementsByName("ids");
    	
    	if(chk == null) 
    	{
        	return  false;
    	}
    	if(chk[0] == null) 
    	{
       		chk.checked = allSelect.checked;
    	}
    	else 
    	{
        	for(i=0;i<chk.length;i++) 
        	{
           	 	chk[i].checked = allSelect.checked;
        	}
    	}
	}	
	function pageQuery(page) 
	{
		document.getElementById("pageView.currentpage").value=page;   
		document.getElementById("frmAction").submit();
	}
	
	function html() 
	{
    	var count = 0;
    	var chk = document.getElementsByName("ids");
    	if(chk == null) 
    	{
        alert("请勾选要生成HTML的记录！");
        return  false;
    	}
    	if(chk[0] == null) 
    	{
        	if(chk.checked) 
        	{
            count++;
        	}
   	 	}
   		 else 
    	{
        	for(i=0;i<chk.length;i++) 
        	{
            	if(chk[i].checked) 
            	{
                	count++;
            	}
        	}
    	}
    	if(count==0) 
   		{
        	alert("请勾选要生成HTML的记录！");
        	return  false;
   	 	}
    	
   	 	document.frmAction.action = "makeHtml";
		document.frmAction.submit();
	}