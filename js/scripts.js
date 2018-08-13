

$(document).ready(function(e){
    var db_query_time = $('#time_db').val();
    $('.popover-dismiss').popover({
        trigger: 'focus'
    });
    
    Push.Permission.has();
    Push.create("Notification!",{
        body: "DB query time: (in seconds): " + db_query_time,
        icon: 'img/cat_miming.jpg',
        timeout: 6000,
        onClick: function () {
            window.focus();
            this.close();
        }
    });
});