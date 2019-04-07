<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="728481790563-fe732fsffho7lt8pj20lk4gsdi14o7i4.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
  </head>
  <body>
      
      
      
      
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <script>
      function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        window.location.href='Login?name='+profile.getName()+'&username='+profile.getEmail()+'&id='+profile.getId()+'&action=google';
      };
    </script>
  </body>
</html>
