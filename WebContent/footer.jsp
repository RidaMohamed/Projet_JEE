<div>

    <script>
        $(document).ready(function(){

            $("#closeCookieConsent, .cookieConsentOK").click(function() {
                $("#cookieConsent").fadeOut(200);
                document.cookie = "cookie=valide"
            });
        });
    </script>

    <%

        Cookie[] cookies = null;

        cookies = request.getCookies();

        boolean affiche =true;

        if(cookies != null){
            for(Cookie cookie1 : cookies){
                if(cookie1.getName().equals("cookie")){
                    affiche=false;
                }
            }
        }


        if(affiche) {
            out.print("   <div id=\"cookieConsent\">\n" +
                    "        <div id=\"closeCookieConsent\">x</div>\n" +
                    "        This website is using cookies. <a href=\"#\" target=\"_blank\">More info</a>. <a class=\"cookieConsentOK\">That's Fine</a>\n" +
                    "    </div>");
        }

    %>


    <div class="footer">
        <div class="contain">
            <div class="col">
                <h1>Company</h1>
                <ul>
                    <li>About</li>
                    <li>Mission</li>
                    <li>Services</li>
                    <li>Social</li>
                    <li>Get in touch</li>
                </ul>
            </div>
            <div class="col">
                <h1>Products</h1>
                <ul>
                    <li>About</li>
                    <li>Mission</li>
                    <li>Services</li>
                    <li>Social</li>
                    <li>Get in touch</li>
                </ul>
            </div>
            <div class="col">
                <h1>Accounts</h1>
                <ul>
                    <li>About</li>
                    <li>Mission</li>
                    <li>Services</li>
                    <li>Social</li>
                    <li>Get in touch</li>
                </ul>
            </div>
            <div class="col">
                <h1>Resources</h1>
                <ul>
                    <li>Webmail</li>
                    <li>Redeem code</li>
                    <li>WHOIS lookup</li>
                    <li>Site map</li>
                    <li>Web templates</li>
                    <li>Email templates</li>
                </ul>
            </div>
            <div class="col">
                <h1>Support</h1>
                <ul>
                    <li>Contact us</li>
                    <li>Web chat</li>
                    <li>Open ticket</li>
                </ul>
            </div>
            <div class="col social">
                <h1>Social</h1>
                <ul>
                    <li><img src="https://www.facebook.com/images/fb_icon_325x325.png" width="32" style="width: 32px;"></li>
                    <li><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png" width="32" style="width: 32px;"></li>
                    <li><img src="https://upload.wikimedia.org/wikipedia/fr/thumb/c/c8/Twitter_Bird.svg/1200px-Twitter_Bird.svg.png" width="32" style="width: 32px;"></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</div>