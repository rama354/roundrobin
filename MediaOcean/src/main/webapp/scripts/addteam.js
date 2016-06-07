
$(function(){	
	
	pageRefresh();
	$('#addteam').on("click",'button#add',function(event){
		//event.preventDefault();
		var teamrow = "<div class='input-group inp-grp-width'>" +
				"		<input name='teamName' class='form-control' type='text' placeholder='Put Team Name'/>\n\
                        <div class='input-group-addon'><a href='#' class='delete'><i class='glyphicon glyphicon-trash'/></a></div>" +
                        "</div>";
                
                $('#addteam').find('.form-group').append(teamrow);
	});

        $('#addteam').on("click",'.form-group a.delete',function(event){
         event.preventDefault();
         $(this).closest('div.input-group').remove();
	});
	
	
});

function pageRefresh(){
    $('#addteam .table').find('tbody').empty();
    
}