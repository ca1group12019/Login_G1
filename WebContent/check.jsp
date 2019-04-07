<%-- 
    Document   : check
    Created on : Jun 13, 2018, 4:52:37 PM
    Author     : HV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div onlogin="checkLoginState();" class="fb-login-button" data-size="large"  data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
    <script>
        function statusChangeCallback(response) {
            console.log('statusChangeCallback');
            console.log(response);
            if (response.status === 'connected') {
                testAPI();
            } else {
                document.getElementById('status').innerHTML = '';
            }
        }
        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
            FB.api('/me', function (response) {
                var name = response.name;
                var username = response.number;
                var id = response.id;
                window.location.href = 'Login?name=' + name + '&id=' + id+"&action=fb";
            });

        }

        function RequestLoginFB() {
            window.location = 'http://graph.facebook.com/oauth/authorize?client_id=175291676648681&scope=public_profile,email,user_likes&redirect_uri=http://localhost:8084/FinalExam/cc.jsp';
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '175291676648681',
                cookie: true,
                xfbml: true,
                version: 'v2.8'
            });
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });

        };
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
</body>
</html>
