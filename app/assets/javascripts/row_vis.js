$(document).ready(function() {
    $("#row").bind('DOMSubtreeModified', function() {
        if ($('.entry')[49]){
            $('#row').fadeIn(300);
        }
});
});


