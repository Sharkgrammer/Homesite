<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="css.jsp" %> 
    </head>

    <body>
        <div class="container-fluid">
            <div class="bg-water1">

                <div class="center-image" >
                    <img src="images/logo.png" class="logo fadeInLong">
                    <div class="fadeInShort text-center">
                        <h2 class="title">Daniel Keane Kelly</h2>
                        <h5 class="title">Self-driven, independent developer</h5>

                        <div class="button-group fadeInShort">
                            <a class="btn btn-outline" href="#about" role="button">About me</a>
                            <a class="btn btn-outline" href="#time" role="button">Timeline</a>
                            <a class="btn btn-outline" href="#project" role="button">Projects</a>
                            <a class="btn btn-outline" href="#contact" role="button">Contact</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="container-fluid border border-dark" id="about">
            </br>
            </br>
            <div class="row">
                <div class="col-sm-4 pad text-center profile-div" style="height:250px">
                    <img class="img-profile" src="images/meCircle.png"/>
                </div>


                <div class="col-sm-8 pad">

                    <div class="text-container">
                        <div class="vertical-center">
                            <h3>Information about me</h1>
                                <p>I study Business Information Systems in University College Cork. I'm very driven, using my free time to work on projects for fun.
                                    When I run into a problem that I haven't encountered before, I do a lot of research before deciding on the best path to take.</p>

                                <p>My interests revolve around technology, both in terms of researching into new tech and trying to do new and interesting things with it.</p>


                                <p>Finally one of my largest interests surround sharks and other sea life, which my online presence revolves around. 
                                    I hope to get into shark research in the future and use my current skills to help protect sharks.</p>

                                <a href="docs/CV.pdf">Find my CV here</a>
                        </div>
                    </div>
                </div>
            </div>
            </br>
            </br>
        </div>

        <div class="container-fluid border border-dark bg bg-water2" id="time">

            </br>
            </br>                     

            <div class='row'>

                <div class="col-sm-12" >
                    <div class='row'>
                        <div class="col-sm-4">
                            <div class="bubbleContainer">

                                <div class="bubble text-center">
                                    <img class="img-circle" src="images/uccLogo.png"/>
                                </div>

                            </div>
                        </div>                           

                        <div class="col-sm-8 text-container">
                            <div class="vertical-center pad">
                                <h4><b>University</b></h4>

                                <p>Final Year student in Business Information Systems in University College Cork</p>
                                <p>Java and DevOps Tutor for Third Year Business Information Systems students</p>
                                <p>Python and Prescriptive Analytics Tutor for MSc BIAS and MSc CyberRisk masters students</p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-12">
                    <div class='row'>

                        <div class="col-sm-8 text-container">
                            <div class="vertical-center pad">
                                <h4 class="right"><b>Internship in State Street</b></h4>

                                <p class="right">Worked within the Software Development and Maintenance team in State Street, Edinburgh, for six months</p>
                                <p class="right">My work included working on converting legacy systems, working with cloud applications and working on a IT service platform</p>
                            </div>
                        </div>


                        <div class="col-sm-4">
                            <div class="bubbleContainer">

                                <div class="bubble text-center">
                                    <img class="img-circle" src="images/stateStreetLogoBig.png"/>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-sm-12" >
                <div class='row'>
                    <div class="col-sm-4">
                        <div class="bubbleContainer">

                            <div class="bubble text-center">
                                <img class="img-circle" src="images/githubLogoBig.png"/>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-8 text-container">
                        <div class="vertical-center pad">
                            <h4><b>Self-driven work</b></h4>

                            <p>Designed, built and published an application to read notifications out aloud</p>
                            <p>Built a notes application to sync notes between a Desktop and an Android application</p>
                            <p>Python command line utilities, such as a search command and a cryptocurrencey web-scraper</p>
                        </div>
                    </div>

                </div>
            </div>
            </br>
            </br>
        </div>

        <div class="container-fluid border border-dark" id="project">
            <div class="row">
                <div class="col-sm-4 pad">
                    <div class="border border-dark rounded text-center content">

                        <a href="https://github.com/Sharkgrammer/Sonar-Secure-Messaging" class="fill-div">
                            <h3>Sonar: Secure Messenger</h3>

                            <img class="imgLogo" src="images/logoSonar.png"/>

                            <div class="text-left pad">
                                Secure messaging platform using the shark protocol. 

                                <ul>
                                    <li>Allows users to create conversations and message another user</li>
                                    <li>Built as a part of my college Final Year Project</li>
                                    <li>Will be able to set profile icons and conversation colours</li>
                                    <li>Will use a onion routing system to work as a decentralised network</li>
                                </ul> 

                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-sm-4 pad">
                    <div class="border border-dark rounded text-center content">
                        <a href="https://github.com/Sharkgrammer/notes-app" class="fill-div">
                            <h3 class='text-center'>Notes Application</h3>

                            <img class="imgLogo text-center" src="images/logoNotes.png"/>

                            <div class="text-left pad">
                                Syncs Notes between Desktop and Android

                                <ul>
                                    <li>User passwords are hashed and actual note data is encrypted.</li>
                                    <li>Saves notes on a server with user accounts</li>
                                    <li>Set a number of different colours for desktop and android</li>
                                </ul> 
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-sm-4 pad">
                    <div class="border border-dark rounded text-center content">
                        <a href="https://github.com/Sharkgrammer/Android-Assistant" class="fill-div">
                            <h3 class='text-center'>Android Assistant</h3>

                            <img class="imgLogo text-center" src="images/logoAssist.png"/>

                            <div class="text-left pad">
                                Notification Reading app.

                                <ul>
                                    <li>Blacklist certain notifications based on their contents or via a regex expression.</li>
                                    <li>Read out a name as something user defined.</li>
                                    <li>Set a custom message per app package.</li>
                                    <li>Log notifications and blacklist from there.</li>
                                    <li>Exporting and importing custom blacklist/people/app lists.</li>
                                    <li>Use a private mode where it doesn't read out messages.</li>
                                </ul> 
                            </div>
                        </a>
                    </div>
                </div>

            </div>
        </div>


        <div class="container-fluid bg-water1">

            <div class="center-image">

                <div class="row">

                    <div class="col-sm-12">
                        <h3 id="contact" class="text-center title">Contact me!</h3>

                        <form name="create" action="MailServlet" method="POST" class="pad">
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

    </body>

</html>