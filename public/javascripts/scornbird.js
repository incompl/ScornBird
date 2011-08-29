$(function() {

    // Vote button -----------

    $("#vote").submit(function() {
    
        $.post("vote", {url:$("#url").val()}, function(data, status) {

            if (status === "success") {
                var success = $(data).find("success").text() === "true";
                if (success) {
                    message("Success", true);
                }
                else {
                    var msg = $(data).find("message").text();
                    message(msg);
                }
            }
            else {
                message("Woops, we had a problem: " + status);
            }

        }, "xml");
        
        return false;
    
    });
    
    // Create bookmarklet -----------
    
    var $bookmarklet = $('<a>Scorn This Tweet</a>');
    
    $bookmarklet.attr("href", "javascript:" +
        '(function() {' +
        'if (location.host.match(/scornbird/)){alert("Read the instructions to learn how to use this bookmarklet.");return;}' +
        'if (!location.host.match(/twitter.com/)){alert("Only works on twitter.com");return;}' +
        'location.assign("http://scornbird.incompl.com?url="+location.href)' +
        '})();');
    
    $("#bookmarkletContainer")
    .html("")
    .append($bookmarklet);
    
    // Helpers ------------
    
    function message(msg, refresh) {
        if (refresh) {
            msg += '<a class="refresh" href="javascript:location.reload()">Refresh</a>';
        }
        $("#message").hide()
        .html(msg)
        .show("slow");
    }

});