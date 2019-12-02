<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="css.jsp" %> 
    </head>

    <body>
        <div class="container-fluid">
            <div style="height: 100vh; width:100%; background: url('images/water.jpg') no-repeat bottom fixed;">

                <div class="center-image">
                    <img src="images/logo.png" class="logo fadeInLong">
                    <h2 class="text-center title">Daniel Keane Kelly</h2>

                    <div class="button-group fadeInShort">
                        <a class="btn btn-outline" href="#project" role="button">Projects</a>
                        <a class="btn btn-outline" href="#contact" role="button">Contact</a>
                    </div>
                </div>

            </div>
        </div>


        <div class="container-fluid border border-dark">
            </br>

            <div class="row">
                <div class="col-sm-3 pad" >

                    <div class="img-profile-wrappper">
                        <img class="img-profile" src="images/me.jpg"/>
                    </div>

                </div>


                <div class="col-sm-9 pad">

                    <h1>Who am I?</h1>

                    <h3>Something</h3>
                    <p>Lorem ipsum dolor amet four dollar toast schlitz succulents coloring book pug. Paleo listicle nulla activated charcoal ex humblebrag pitchfork, selvage iPhone man braid pork belly messenger bag distillery vinyl. Four dollar toast anim trust fund ethical enamel pin. Affogato ex voluptate, nulla waistcoat drinking vinegar polaroid wayfarers tofu adipisicing aute kale chips cornhole freegan. Letterpress edison bulb laborum laboris poutine art party keytar jianbing. Laboris cliche master cleanse, messenger bag chillwave raclette pug kale chips bushwick banh mi. Vegan paleo swag helvetica banh mi photo booth whatever chia aute venmo cold-pressed.</p>

                    <h3>Something else</h3>
                    <p>Lorem ipsum dolor amet four dollar toast schlitz succulents coloring book pug. Paleo listicle nulla activated charcoal ex humblebrag pitchfork, selvage iPhone man braid pork belly messenger bag distillery vinyl. Four dollar toast anim trust fund ethical enamel pin. Affogato ex voluptate, nulla waistcoat drinking vinegar polaroid wayfarers tofu adipisicing aute kale chips cornhole freegan. Letterpress edison bulb laborum laboris poutine art party keytar jianbing. Laboris cliche master cleanse, messenger bag chillwave raclette pug kale chips bushwick banh mi. Vegan paleo swag helvetica banh mi photo booth whatever chia aute venmo cold-pressed.</p>

                </div>
            </div>
        </div>

        <div class="container-fluid border border-dark bg-main">
            </br>

            <div class="row">
                <div class="col-sm-3 pad" >

                    <div class="img-profile-wrappper">
                        <img class="img-profile" src="images/me.jpg"/>
                    </div>

                </div>


                <div class="col-sm-9 pad">

                    <h1>Who am I?</h1>

                    <h3>Something</h3>
                    <p>Lorem ipsum dolor amet four dollar toast schlitz succulents coloring book pug. Paleo listicle nulla activated charcoal ex humblebrag pitchfork, selvage iPhone man braid pork belly messenger bag distillery vinyl. Four dollar toast anim trust fund ethical enamel pin. Affogato ex voluptate, nulla waistcoat drinking vinegar polaroid wayfarers tofu adipisicing aute kale chips cornhole freegan. Letterpress edison bulb laborum laboris poutine art party keytar jianbing. Laboris cliche master cleanse, messenger bag chillwave raclette pug kale chips bushwick banh mi. Vegan paleo swag helvetica banh mi photo booth whatever chia aute venmo cold-pressed.</p>

                    <h3>Something else</h3>
                    <p>Lorem ipsum dolor amet four dollar toast schlitz succulents coloring book pug. Paleo listicle nulla activated charcoal ex humblebrag pitchfork, selvage iPhone man braid pork belly messenger bag distillery vinyl. Four dollar toast anim trust fund ethical enamel pin. Affogato ex voluptate, nulla waistcoat drinking vinegar polaroid wayfarers tofu adipisicing aute kale chips cornhole freegan. Letterpress edison bulb laborum laboris poutine art party keytar jianbing. Laboris cliche master cleanse, messenger bag chillwave raclette pug kale chips bushwick banh mi. Vegan paleo swag helvetica banh mi photo booth whatever chia aute venmo cold-pressed.</p>

                </div>
            </div>
        </div>

        <div class="container-fluid" style="height: 100vh; width:100%; background: url('images/water.jpg') no-repeat bottom fixed;">
            <div>

                <div class="center-image">

                    <div class="row">
                        <div class="col-sm-3" ></div>

                        <div class="col-sm-6">
                            <h3 class="text-center title">Contact me!</h3>

                            <form name="create" action="emailServlet" method="POST">
                                <input type="text" required name="emai" placeholder="Email" class="contact-form"/>
                                <input type="text" required name="subj" placeholder="Subject" class="contact-form" />
                                <textarea rows="2" required cols="25" name="deta" placeholder="Details" class="contact-form"></textarea>

                                <div class="button-group">
                                    <input type="submit" class="btn btn-outline" href="#project" role="button" value="Submit"/>
                                    <input type="reset" class="btn btn-outline" href="#contact" role="button" value="Reset"/>
                                </div>
                            </form>

                            </br>
                            
                            <h4 class="text-center title">Or find me elsewhere</h4>

                            <div class="text-center">
                                <a href="https://github.com/Sharkgrammer"> <img class="footer-image" src="images/githubLogo.png"> </a>
                                <a href="https://www.linkedin.com/in/daniel-keane-kelly/"> <img class="footer-image" src="images/linkedinLogo.png"> </a>
                            </div>


                        </div>

                        <div class="col-sm-3"></div>

                    </div>
                </div>

            </div>
        </div>

    </body>

</html>