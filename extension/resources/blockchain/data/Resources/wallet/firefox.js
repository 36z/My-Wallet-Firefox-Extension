min = false;
isExtension = true;

$(document).ready(function() {
    $.ajax = function(obj) {
        var requests = {};
        var initd = false;

        function sendRequest(obj) {
            var customEvent = document.createEvent('Event');

            customEvent.initEvent('ajax_request', true, true);

            var request_id = ''+Math.floor((Math.random()*10000)+1);

            requests[request_id] = obj;

            obj.request_id = request_id;

            document.body.setAttribute('data-ajax-request', JSON.stringify(obj));

            document.body.dispatchEvent(customEvent);
        }

        if (!initd) {
            document.body.addEventListener('ajax_response', function() {
                var obj = JSON.parse(document.body.getAttribute('data-ajax-response'));

                var request = requests[obj.request_id];
                if (!request)  {
                    throw 'Unknown Request ID ' + obj.request_id;
                }

                if (obj.status == 200)  {
                    if (obj.dataType == 'json')
                        request.success(JSON.parse(obj.response));
                    else
                        request.success(obj.response);
                } else {
                    request.error({responseText : obj.response, status : obj.status});
                }

                delete requests[obj.request_id];
            });

            initd = true;
        }

        sendRequest(obj);
    };

    var body = $(document.body);

    var data_root = body.data('root');
    if (data_root)
        root = data_root;

    var data_resource = body.data('resource');
    if (data_resource) {
        var path = document.location.pathname;
        var index = path.lastIndexOf("/") + 1;
        var filename = path.substr(0, index);

        resource = filename + data_resource;
    }

    $('head').append('<style type="text/css">.external { background: url('+resource+'external.png); }\n span.qrcodeicon span { background: url("'+resource+'qrcode.png"); };</style>');
});