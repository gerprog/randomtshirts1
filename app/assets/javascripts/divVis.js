$(document).ready(function() {
    //below line from stackoverflow - Marcin
    $("#row").bind('DOMSubtreeModified', function() {
        if ($('.entry')[55]){
            $('#phrase_text').fadeIn(500);
            //$('#emptyrow').click;

            $('#row').hide(500);

            $('#row').remove();
            //$('#row_text_behind').hide();
        }
    });
    $('.entry').on ('click',function(){

        $('#row_text_behind').fadeOut(2500);
    });

});