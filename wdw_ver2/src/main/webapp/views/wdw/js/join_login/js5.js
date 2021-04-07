$(document).ready(function(){

    $('ul.list li.notice:not('+$('.tab li a.sel').attr('href')+')').hide();
    
    $('.tab li a').click(function(){
        $('.tab li a').removeClass('sel');
        $(this).addClass('sel');
        
        $('ul.list li.notice').hide();
        $($(this).attr('href')).show();
        return false;
    });

    function allCheckFunc( obj ) {
		$("[name=checkOne]").prop("checked", $(obj).prop("checked") );
}
    /* 체크박스 체크시 전체선택 체크 여부 */
    function oneCheckFunc( obj )
    {
        var allObj = $("[name=checkAll]");
        var objName = $(obj).attr("name");

        if( $(obj).prop("checked") )
        {
            checkBoxLength = $("[name="+ objName +"]").length;
            checkedLength = $("[name="+ objName +"]:checked").length;

            if( checkBoxLength == checkedLength ) {
                allObj.prop("checked", true);
            } else {
                allObj.prop("checked", false);
            }
        }
        else
        {
            allObj.prop("checked", false);
        }
    }

    $(function(){
        $("[name=checkAll]").click(function(){
            allCheckFunc( this );
        });
        $("[name=checkOne]").each(function(){
            $(this).click(function(){
                oneCheckFunc( $(this) );
            });
        });
    });


});