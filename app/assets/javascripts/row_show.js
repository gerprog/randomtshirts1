$(document).ready(function() {
    $("#row").bind('DOMSubtreeModified', function() {
        if ($('.entry')[56]){
            $('#row').show();
        }
    });
});




