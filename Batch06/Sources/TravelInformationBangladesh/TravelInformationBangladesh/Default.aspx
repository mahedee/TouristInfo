<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TravelInformationBangladesh.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Travel Information Bangladesh</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            font: 400 15px/1.8 Lato, sans-serif;
            color: #777;
        }

        h3, h4 {
            margin: 10px 0 30px 0;
            letter-spacing: 10px;
            font-size: 20px;
            color: #111;
        }

        .container {
            padding: 80px 120px;
        }

        .article {
            border: 10px solid transparent;
            margin-bottom: 25px;
            width: 100%;
            height: 100%;
        }

            .article:hover {
                border-color: #f1f1f1;
            }

        .carousel-inner img {
            /*-webkit-filter: grayscale(90%);*/
            /*filter: grayscale(90%);*/ /* make all photos black and white */
            width: 100%; /* Set width to 100% */
            margin: auto;
        }

        .carousel-caption h3 {
            color: #fff !important;
        }

        @media (max-width: 600px) {
            .carousel-caption {
                display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
            }
        }

        .bg-1 {
            background: #2d2d30;
            color: #bdbdbd;
        }

            .bg-1 h3 {
                color: #fff;
            }

            .bg-1 p {
                font-style: normal;
            }

        .list-group-item:first-child {
            border-top-right-radius: 0;
            border-top-left-radius: 0;
        }

        .list-group-item:last-child {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .thumbnail {
            padding: 0 0 15px 0;
            border: none;
            border-radius: 0;
        }

            .thumbnail p {
                margin-top: 15px;
                color: #555;
            }

        .btn {
            padding: 10px 20px;
            background-color: #333;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

            .btn:hover, .btn:focus {
                border: 1px solid #333;
                background-color: #fff;
                color: #000;
            }

        .modal-header, h4, .close {
            background-color: #333;
            color: #fff !important;
            text-align: center;
            font-size: 30px;
        }


        .modal-header, .modal-body {
            padding: 40px 50px;
        }

        .nav-tabs li a {
            color: #777;
        }

        #googleMap {
            width: 100%;
            height: 400px;
            -webkit-filter: grayscale(100%);
            filter: grayscale(100%);
        }

        .navbar {
            font-family: Montserrat, sans-serif;
            margin-bottom: 0;
            background-color: #2d2d30;
            border: 0;
            font-size: 11px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }

            .navbar li a, .navbar .navbar-brand {
                color: #d5d5d5 !important;
            }

        .navbar-nav li a:hover {
            color: #fff !important;
        }

        .navbar-nav li.active a {
            color: #fff !important;
            background-color: #29292c !important;
        }

        .navbar-default .navbar-toggle {
            border-color: transparent;
        }

        .open .dropdown-toggle {
            color: #fff;
            background-color: #555 !important;
        }

        .dropdown-menu li a {
            color: #000 !important;
        }

            .dropdown-menu li a:hover {
                background-color: red !important;
            }

        footer {
            background-color: #2d2d30;
            color: #f5f5f5;
            padding: 32px;
        }

            footer .faicon {
            }

                footer .faicon i {
                    padding: 5px;
                }

                    footer .faicon i:hover {
                        background-color: #0d86c2;
                        color: white;
                    }

            footer a {
                color: #f5f5f5;
            }

                footer a:hover {
                    color: #777;
                    text-decoration: none;
                }

        .form-control {
            border-radius: 0;
        }

        textarea {
            resize: none;
        }

        .searchinfo {
            border: 1px solid;
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#myPage">TRAVEL BANGLADESH</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#myPage">HOME</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">TRAVEL GUIDE
          <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#touristspot">TOURIST SPOT</a></li>
                                    <li><a href="#searchplace">SEARCH PLACE</a></li>
                                    <li><a href="#">RESORT</a></li>
                                    <li><a href="#">EMERGENCY</a></li>
                                    <li><a href="#videogallery">VIDEO GALLERY</a></li>
                                </ul>
                            </li>
                            <li><a href="#">BLOG</a></li>
                            <li><a href="#contact">CONTACT</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">AUTORIZATION
          <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">LOGIN</a></li>
                                    <li><a href="#" data-toggle="modal" data-target="#registration">REGISTER</a></li>
                                </ul>
                            </li>
                            <li><%--<a href="#"><span class="glyphicon glyphicon-search"></span></a>--%></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/rsz_slidecoxsbazar.jpg" alt="slidercoxbazar" width="1200" height="700" />
                        <div class="carousel-caption">
                            <h3>CoxsBazar</h3>
                            <p>CoxsBazar Is longest Sea Beach in South Asia</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/rsz_slidersajek.jpg" alt="Sajek" width="1200" height="700" />
                        <div class="carousel-caption">
                            <h3>Sajek</h3>
                            <p>Sajek the awesome tourist place in the Bangladesh</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/rsz_slidekuakata.jpg" alt="Kuakata" width="1200" height="700" />
                        <div class="carousel-caption">
                            <h3>Kuakata</h3>
                            <p>Kuakata the awesome tourist place in the Bangladesh</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/rsz_1slidernilgiri.jpg" alt="Nilgiri" width="1200" height="700" />
                        <div class="carousel-caption">
                            <h3>Nilgiri</h3>
                            <p>Nilgiri is Most attractive tourist place in the Bangladesh</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/rsz_slidesundarban.jpg" alt="Sundarban" width="1200" height="700" />
                        <div class="carousel-caption">
                            <h3>Sundarban</h3>
                            <p>Sundarban is the largest mangrove forest in the world</p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Container (The Tourist Spot Section) start -->
            <div id="touristspot" class="container text-center">
                <h3>Tourist Spot</h3>
                <p><em><strong>Welcome To Traveling Tourist Place in the Bangladesh</strong></em></p>
                <p class="text-justify">
                    <strong>Bangladesh</strong> is a country in South Asia (sometimes converging 
                    with Southeast Asia), bordering the Bay of Bengal to the 
                    South, India to the West and North, and Myanmar to the 
                    Southeast. Although off the beaten path by virtually any 
                    measurement, Bangladesh is populated by friendly locals.
                    Bangladesh's tourist attractions include, historical and 
                    monuments, resorts, beaches, picnic spots, forests and Indegenous 
                    people, wildlife of various species. Bangladesh offers ample 
                    opportunities to tourists for angling, water skiing, river 
                    cruising, hiking, rowing, yachting, sea bathing as well as 
                    bringing one in close touch with pristine nature.
                    In the northern part, comprising the <strong>Rajshahi division</strong>, 
                    there are archaeological sites, including the temple 
                    city Puthia in Rajshahi; the largest and most ancient 
                    archaeological site, Mahasthangarh in Bogra; the single 
                    largest Buddhist monastery, Paharpur in Naogaon; the 
                    most ornamental terracota Hindu temple, Kantaji Temple, 
                    and many rajbaris or palaces of old zamindars.
                    In the south-eastern part, which is the <strong>Chittagong Division</strong>, 
                    there are natural and hilly areas like <strong>Chittagong Hill Tracts</strong>, 
                    along with sandy sea beaches. The most notable beach, in Cox's Bazar, 
                    is a contender for the title of longest unbroken sandy sea beach 
                    in the world.In the south-western part, mainly the Khulna 
                    Division, there is the Sundarbans, the largest mangrove forest of 
                    the world with royal Bengal tiger and spotted deer. 
                    The historically and architecturally important sixty 
                    domed mosque in Bagerhat is a notable site. In the 
                    north-eastern part, Sylhet division, there is a green carpet of 
                    tea plants on small hillocks. Natural reserved forests are great 
                    attractions. Migratory birds in winter, particularly in the haor 
                    areas, are also very attractive in this area. Ministry of Tourism 
                    and The Civil Aviation Ministry designs national policies for the 
                    development and promotion of tourism. The Ministry also maintains 
                    the Beautiful Bangladesh campaign. Bangladesh Government has formed 
                    Tourist Police unit to better protect local and foreign tourists as 
                    well as look after the nature and wildlife in the tourist spots.
                </p>
                <br />
                <div class="row">
                    <div class="col-sm-4">
                        <a href="#demo" data-toggle="collapse">
                            <img src="images/homearticlecoxsbazar2.jpg" class="img-responsive article" alt="Random Name" width="293" height="167" />
                        </a>
                        <p class="text-center"><strong>Coxsbazar</strong></p>
                        <div id="demo" class="collapse">
                            <p class="text-justify">
                                Cox's Bazar is a town, a fishing port and district 
                                headquarters in Bangladesh. The beach in Cox's Bazar is an 
                                unbroken 125 km sandy sea beach with a gentle slope, one of 
                                the world's longest. It is located 150 km south of the 
                                industrial port Chittagong. Cox's Bazar is also known by 
                                the name Panowa, whose literal translation means "yellow flower." <a href="#" data-toggle="modal" data-target="#coxsbazarModal">See more</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#demo2" data-toggle="collapse">
                            <img src="images/homearticlekuakata.jpg" class="img-responsive article" alt="Random Name" width="293" height="167" />
                        </a>
                        <p class="text-center"><strong>Kuakata</strong></p>
                        <div id="demo2" class="collapse">
                            <p class="text-justify">
                                Kuakata is a town known for its panoramic sea beach. 
                                It is located in south-eastern Bangladesh, and is the 
                                number two tourist destination in the country. 
                                Kuakata beach is a sandy expanse 18 kilometres (11 mi) 
                                long and 3 kilometres (1.9 mi) wide. From the beach one 
                                can have an unobstructed view of both sunrise and sunset 
                                over the Bay of Bengal. <a href="#">See more</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#demo3" data-toggle="collapse">
                            <img src="images/homearticlejaflong.JPG" class="img-responsive article" alt="Random Name" width="300" height="300" />
                        </a>
                        <p class="text-center"><strong>Jaflong</strong></p>
                        <div id="demo3" class="collapse">
                            <p class="text-justify">
                                Jaflong is a hill station and popular tourist destination 
                                in the Division of Sylhet, Bangladesh. It is located in 
                                Gowainghat Upazila of Sylhet District and situated at the 
                                border between Bangladesh and the Indian state of Meghalaya, 
                                overshadowed by subtropical mountains and rainforests. 
                                Jaflong is famous for its stone collections and is home of the 
                                Khasi tribe. <a href="#">See more</a>
                            </p>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4">
                        <a href="#demo4" data-toggle="collapse">
                            <img src="images/homearticlesajek.jpg" class="img-responsive article" alt="Sajek" width="293" height="167" />
                        </a>
                        <p class="text-center"><strong>Sajek</strong></p>
                        <div id="demo4" class="collapse">
                            <p class="text-justify">
                                Sajek Valley is a a remote hilly area that is located at 
                                Rangamati district , but you have to go there through the 
                                Khagrachhori district . Once upon a time this place was a 
                                risky place for the security reason and only few adventurous 
                                people could have dared to travel this region. <a href="#">See more</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#demo5" data-toggle="collapse">
                            <img src="images/homearticlenilgiri.jpg" class="img-responsive article" alt="Nilgiri" width="293" height="167" />
                        </a>
                        <p class="text-center"><strong>Nilgiri</strong></p>
                        <div id="demo5" class="collapse">
                            <p class="text-justify">
                                Nilgiri is most popular tourist place in the Bangladesh. 
                                Nilgiri is located at Bandarban Hill Tracst. There are many 
                                attractive scenery here. <a href="#">See more</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#demo6" data-toggle="collapse">
                            <img src="images/homearticlesaintmartin.jpg" class="img-responsive article" alt="Saint Martin" width="300" height="300" />
                        </a>
                        <p class="text-center"><strong>Saint Martin</strong></p>
                        <div id="demo6" class="collapse">
                            <p class="text-justify">
                                St. Martin's Island a small island (area only 8 km2) 
                                in the northeastern part of the Bay of Bengal, about 9 
                                km south of the tip of the Cox's Bazar-Teknaf peninsula, and 
                                forming the southernmost part of Bangladesh. There is a small 
                                adjoining island that is separated at high tide, called Chera Dwip. 
                                It is about 8 kilometres (5 miles) west of the northwest coast of 
                                Myanmar, at the mouth of the Naf River. <a href="#" data-toggle="modal" data-target="#saintmartinModal">See more</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container (The Tourist Spot Section) end-->

            <!--Coxsbazar Modal start-->
            <div class="modal fade" id="coxsbazarModal" role="dialog">
                <div class="modal-dialog" style="width: 70%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            <h4>Coxsbazar</h4>
                        </div>
                        <div class="modal-body" role="form">
                            <div class="form-group">
                                <img src="images/slidecoxsbazar2.jpg" alt="coxsbazar" class="img-responsive" />
                                <article>
                                    <p>
                                        <strong>Cox's Bazar: </strong>Cox's Bazar is a town, a fishing port and 
                                    district headquarters in Bangladesh. The beach in Cox's Bazar is an unbroken 
                                    125 km sandy sea beach with a gentle slope, one of the world's longest.
                                    It is located 150 km south of the industrial port Chittagong. 
                                    Cox's Bazar is also known by the name Panowa, whose literal translation 
                                    means "yellow flower." Its other old name was "Palongkee".
                                    </p>
                                    <p>
                                        The modern Cox's Bazar derives its name from Captain Hiram Cox 
                                        (died 1799), an officer of the British East India Company. 
                                        Cox was appointed Superintendent of Palongkee outpost after Warren 
                                        Hastings became Governor of Bengal. Captain Cox was specially 
                                        mobilised to deal with a century-long conflict between Arakan 
                                        refugees and local Rakhains. He embarked upon the task of 
                                        rehabilitating refugees in the area and made significant progress. 
                                        Captain Cox died in 1799 before he could finish his work. 
                                        To commemorate his role in rehabilitation work, a market was 
                                        established and named Cox's Bazar ("Cox's Market") after him.
                                    </p>
                                    <p>
                                        Today, Cox's Bazar is one of the most-visited tourist destinations 
                                        in Bangladesh, though it is not a major international tourist destination. 
                                        In 2013, the Bangladesh Government formed the Tourist Police unit to 
                                        better protect local and foreign tourists, as well as to look after 
                                        the nature and wildlife in the tourist spots of Cox's Bazar.
                                    </p>
                                    <h2>History</h2>
                                    <p>
                                        The greater Chittagong area, including Cox's Bazar, was under the 
                                        rule of Arakan kings from the early 9th century until its conquest 
                                        by the Mughals in 1666 AD.[8] When the Mughal Prince Shah Shuja was 
                                        passing through the hilly terrain of the present-day Cox's Bazar 
                                        on his way to Arakan, he was attracted to its scenic and captivating
                                        beauty. He commanded his forces to camp there. His retinue of one 
                                        thousand palanquins stopped there for some time. A place named 
                                        Dulahazara, meaning "one thousand palanquins," still exists in 
                                        the area. After the Mughals, the place came under the control of the 
                                        Tipras and the Arakanese, followed by the Portuguese and then the 
                                        British.The name Cox's Bazar/Bazaar originated from the name of a 
                                        British East India Company officer, Captain Hiram Cox, who was 
                                        appointed as the Superintendent of Palonki (today's Cox's Bazar) 
                                        outpost. He succeeded Warren Hastings, who became the Governor 
                                        of Bengal following the British East India Company Act in 1773. 
                                        Cox was mobilised to deal with a century-long conflict between 
                                        Arakan refugees and local Rakhine people at Palonki. The Captain 
                                        had rehabilitated many refugees in the area, but had died (in 1799) 
                                        before he could finish his work. To commemorate that, a market was 
                                        established and named after him, called Cox's Bazar (market of Cox). Cox's Bazar then was first established in 1854 and became a municipality in 1869. After the Sepoy Mutiny (Indian Rebellion of 1857) in 1857, the British East India Company was highly criticised and questioned on humanitarian grounds, specially for its opium trade monopoly over the Indian Sub-Continent. However, after its dissolution on 1 January 1874, all of the company's assets including its Armed Forces were acquired by the British Crown. After this historic take over, Cox's Bazar was declared a district of the Bengal Province under the British Crown.
                                    </p>
                                    <h2>
                                        <strong>Tourist Attraction</strong>
                                    </h2>
                                    <p>
                                        The beach is the main attraction of the town. Larger hotels provide 
                                        exclusive beachside area with accessories for the hotel guests. 
                                        Visitors in other hotels visit the Laboni beach which is the area 
                                        of the beach closest to the town. Other than the beach there are 
                                        several places of interest near the town which can easily be visited 
                                        from town centre.
                                    </p>
                                    <p>
                                        <strong>National Park :</strong>Himchari is located just south of 
                                        the Cox's Bazar town. It consists of lush tropical rain forest, 
                                        grasslands and trees, and features a number of waterfalls, the 
                                        biggest of which cascades down toward the sandy, sun-drenched beach. 
                                        The National Park was established in 1980 by the Government of 
                                        Bangladesh as a conservation area for research, education and 
                                        recreation. Once it was the stomping grounds of herds of Asian 
                                        elephant. It is still home to a limited number of these mammals.
                                    </p>
                                    <p>
                                        <strong>Aggmeda Khyang: </strong>a large Buddhist monastery, and a 
                                        place revered by around 400,000 Buddhist people of Cox's Bazar; and 
                                        the Chittagong Hill Tracts. The main sanctuary is posted on a series 
                                        of round timber columns. It has a prayer chamber and an assembly hall 
                                        along with a repository of large and small bronze Buddha images and 
                                        a number of old manuscripts.
                                    </p>
                                    <p>
                                        <strong>Ramu: </strong>about 10 km from Cox's Bazar, is a village 
                                        with a sizeable Buddhist population. The village is famous for its 
                                        handicrafts and homemade cigars. There are monasteries, khyangs 
                                        and pagodas containing images of Buddha in bronze, gold and other 
                                        metals with precious stones. One of the most interesting of these 
                                        temples is on the bank of the Baghkhali river. It houses not only 
                                        relics and Burmese handicrafts but also a large bronze statue of 
                                        Buddha measuring thirteen feet high which rests on a six feet high 
                                        pedestal. Weavers ply their trade in open workshops and craftsmen 
                                        make handmade cigars in their pagoda like houses.
                                    </p>
                                    <p>
                                        <strong>Bangabandhu Sheikh Mujib Safari Park: </strong>Bangabandhu 
                                        Sheikh MujibSafari Park is the first Safari Park in Bangladesh. 
                                        The nature of the forest is tropical evergreen and rich with 
                                        Garjan, Boilam, Telsur and Chapalish along with herbs, shrubs 
                                        and creepers. Safari Park is a declared protected area where 
                                        the animals are kept in fairly large area with natural environment 
                                        and visitors can easily see the animal when ever they visit by bus, 
                                        jeep or on foot. This park was established on the basis of South 
                                        Asian model. This safari park is an extension of an animal 
                                        sanctuary located along the Chittagong-Cox's Bazar road about 
                                        50 km from Cox's Bazar town. The sanctuary itself protects a 
                                        large number of wild elephants which are native to the area. 
                                        In the safari park there are domesticated elephants which are 
                                        available for a ride. Other animal attractions include lions, 
                                        Bengal tigers, Crocodiles, Bears, Chitals and lots of different 
                                        types of birds and monkeys.which is wonder full project to attract 
                                        the tourist.
                                    </p>
                                    <p>
                                        <strong>Inani Beach: </strong>Inani Beach Inani is a stony beach near Cox's Bazar.
                                    </p>
                                </article>

                                <!--Transportation section start-->
                                <h2>Transportation</h2>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#Bus">BUS INFORMATION</a></li>
                                    <li><a data-toggle="tab" href="#Railway">RAILWAY INFORMATION</a></li>
                                    <li><a data-toggle="tab" href="#Launch">LAUNCH INFORMATION</a></li>
                                    <li><a data-toggle="tab" href="#Air">AIR INFORMATION</a></li>
                                </ul>

                                <div class="tab-content ">
                                    <div id="Bus" class="tab-pane fade in active" style="text-align: justify;">
                                        <strong>Bus Information</strong>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="../images/greenlinebus.jpg" alt="greenlinebus" class="img-responsive" />
                                                <strong>Green Line Paribahon</strong>
                                                <address>
                                                    <strong>Head Office:</strong>9/2, Outer Circular Road, Momen Bagh,Rajarbagh, Dhaka - 1217.<br />
                                                    <strong>Tel:</strong>8331302-4, 8353004-5, 9339623, 9342580<br />
                                                    <strong>Fax:</strong>+088-02-8350003<br />
                                                    <strong>Email:</strong><br />
                                                    greenline@greenlineparibahan.com.
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/soudiabus.jpg" alt="soudiabus" class="img-responsive" />
                                                <strong>Soudia Paribahon</strong>
                                                <address>
                                                    <strong>Dhaka Office:</strong>Fakirapool, Dhaka, Bangladesh.<br />
                                                    <strong>Tel:</strong>02-41558,02- 9346478, 02-9333606<br />
                                                    <strong>Chittagong Office:</strong>K.C.De Road,Chittagong, Bangladesh.<br />
                                                    <strong>Tel:</strong>615161<br />
                                                    <strong>Coxsbazar Office:</strong>Laldhighir Par, Cox's Bazar, Bangladesh.<br />
                                                    <strong>Tel:</strong>0341-3611, 0341-3888
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/salambus.jpg" alt="salambus" class="img-responsive" />
                                                <strong>S.Alam Paribahon</strong>
                                                <address>
                                                    <strong>Dhaka Office:</strong>3 No Fakirapul, Dhaka-1000, Bangladesh.<br />
                                                    <strong>Tel:</strong>+88-02-9331864, +88-02-8315087, +88-02-9002702
                                                        <br />
                                                    <strong>Chittagong Office:</strong>2119 S. Alam Bhaban, Asadganj, Chittagong, Bangladesh.<br />
                                                    <strong>Tel:</strong>+88-031-636997, +88-031-636649<br />
                                                    <strong>Coxsbazar Office:</strong>Laldighir Par, Main road, Cox's Bazar, Bangladesh.
                                                        <br />
                                                    <strong>Tel:</strong>+88-0341-64286
                                                </address>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="../images/Shohaghbus.jpg" alt="Shohaghbus" class="img-responsive" />
                                                <strong>Shohag Paribahan</strong>
                                                <address>
                                                    <strong>Dhaka Office:</strong>114 Malibagh, DIT Road, (Near Mouchak Rail Gate) Dhaka-1217, Bangladesh.<br />
                                                    <strong>Tel:</strong>9334152, 418458, 8316766<br />
                                                    <strong>Chittagong Office:</strong>34 Zakir Hossain Road, Dampara, Chittagong, Bangladesh.<br />
                                                    <strong>Tel:</strong>031-618930,031-616520,0171-798344
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/silkline.jpg" alt="silkline" class="img-responsive" />
                                                <strong>Silk Line Paribahon</strong>
                                                <address>
                                                    <strong>Dhaka Office:</strong>167/8,Circular Road,Eden Building,Motijheel(Ground Floor),Dhaka, Bangladesh.<br />
                                                    <strong>Tel:</strong> +88-02-7102461, 0189-202028,0171-811694<br />
                                                    <strong>Chittagong Office:</strong>dampara main road, Chittagong, Bangladesh.<br />
                                                    <strong>Tel:</strong>+88-031-615257, 01714087562<br />
                                                    <strong>Coxsbazar Office:</strong>Hotel Albatross ,Kolatoli Road, Cox's Bazar, Bangladesh.<br />
                                                    <strong>Tel:</strong>01714087561
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/hanif.jpg" alt="hanif" class="img-responsive" />
                                                <strong>Hanif Paribahon Enterprize</strong>
                                                <address>
                                                    <strong>Dhaka Office:</strong>22/3, College gate,Dhaka, Bangladesh.<br />
                                                    <strong>Tel: </strong>+88-02-8125340, 8122707<br />
                                                    <strong>Chittagong Office:</strong>9/2, BRTC Market, Chittagong, Bangladesh.<br />
                                                    <strong>Tel:</strong>+88-031-638322,658088
                                                </address>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="Railway" class="tab-pane fade">
                                        <strong>Railway Information</strong>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="../images/subornaexpress.jpg" alt="subornaexpress" class="img-responsive" />
                                                <strong>Subarna Express</strong>
                                                <address>
                                                    <p>
                                                        Subarna Express start from Dhaka at 4.20am and
                                                        arrival to 10.10pm and back to Dhaka 7.00am to
                                                        12.40pm except friday.
                                                    </p>
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/mohaagar.jpg" alt="mohaagar" class="img-responsive" />
                                                <strong>Mahanagar Pravati</strong>
                                                <address>
                                                    <p>
                                                        Mahanagar Probhati start from dhaka at 7.50am and 
                                                        arrival to 2.20pm. From Chittagong Mahanagar godhuli 
                                                        back to Dhaka at 3.00pm to 11.25pm.
                                                    </p>
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/turna.jpg" alt="turna" class="img-responsive" />
                                                <strong>Turna Express</strong>
                                                <address>
                                                    <p>
                                                        Turna Express start from dhaka at 11.00pm and arrival 
                                                        to 6.00am.From Chittagong Turna Express back to Dhaka 
                                                        at 11.00pm to 6.15pm.
                                                    </p>
                                                </address>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="Launch" class="tab-pane fade">
                                        <strong>Launch Information</strong>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p>There is no Available Information</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="Air" class="tab-pane fade">
                                        <strong>Air Information</strong>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="../images/air1gmg.jpg" alt="airgmg" class="img-responsive" />
                                                <strong>GMG Airlines</strong>
                                                <address>
                                                    <strong>Address: </strong>
                                                    GMGAIR 8, Kamal Ataturk Evenue, Banani C/A, Dhaka-1213<br />
                                                    <strong>Contact Information: </strong>
                                                    <br />
                                                    <strong>Tel: </strong>8140275-80<br />
                                                    <strong>Airport Office: </strong>8917220-3 -(International),8915699 - (Domestic).
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/airbbl.jpg" alt="airbbl" class="img-responsive" />
                                                <strong>Biman Bangladesh Airlines</strong>
                                                <address>
                                                    <strong>Address: </strong>
                                                    Balaka Bhaban, Kurmitola, Dhaka-1229, Bangladesh.<br />
                                                    <strong>Contact Information: </strong>
                                                    <br />
                                                    <strong>Tel: </strong>8917400-19 (Head Office)9560151,9559610<br />
                                                    <strong>Airport Office: </strong>8917400.<br />
                                                    <strong>Website:</strong><a href="http://biman-airlines.com" target="_blank">www.biman-airlines.com</a>
                                                </address>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="../images/airunited.jpg" alt="airunited" class="img-responsive" />
                                                <strong>United Airways(BD) Ltd.</strong>
                                                <address>
                                                    <p>Corporate Office is in Uttara other Sales Offices are Gulshan and Dilkusha. Best Aviation Limited.</p>
                                                    <strong>Address: </strong>
                                                    House # 43, Road # 1/, Block-J, Baridhara,Dhaka, Bangladesh.<br />
                                                    <strong>Contact Information: </strong>
                                                    <br />
                                                    <strong>Tel: </strong>+880-2-9888780, 8860248, 8855254, 9882404.
                                                </address>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Transportation section end-->
                                <!--Hotel and Resort section start-->
                                <h2>Hotel & Restaurant</h2>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#hotelseagull">Hotel Seagull</a></li>
                                    <li><a data-toggle="tab" href="#hotelseapalace">Hotel Sea Palace</a></li>
                                    <li><a data-toggle="tab" href="#hotelkollol">Hotel Kollol</a></li>
                                    <li><a data-toggle="tab" href="#hotelcoralreaf">Hotel Coral Reaf</a></li>
                                    <li><a data-toggle="tab" href="#uniresort">Uni Resort</a></li>
                                </ul>

                                <div class="tab-content">
                                    <div id="hotelseagull" class="tab-pane fade in active">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hotelseagull.jpg" alt="hotelseagull" class="img-responsive" />
                                                <strong>Hotel Seagull</strong>
                                                <p>
                                                    <strong>Rank: </strong>5 star<br />
                                                    <strong>Total Room: </strong>182 well apointed guest
                                                    room (Regular Rooms 120, Deluxe Rooms 41, Suits Rooms 20,
                                                    Presidential Suits 01).
                                                </p>
                                                <p><strong>Service & facilities</strong></p>
                                                <ul>
                                                    <li>Central Air-conditioning System</li>
                                                    <li>24 Hours Room Service</li>
                                                    <li>Travel Desk</li>
                                                    <li>Coffee Shop-serving Multi-cuisine Menu</li>
                                                    <li>Five Specialty Restaurants</li>
                                                    <li>Lawn Tennis</li>
                                                    <li>Swimming Pool</li>
                                                    <li>Safe Deposit Locker</li>
                                                    <li>Beauty parlor</li>
                                                    <li>Barbar Shop</li>
                                                    <li>Bar-well Stocked Choice of Liquors Available</li>
                                                    <li>Doctor on Call</li>
                                                    <li>Left Luggage Room</li>
                                                    <li>Running Hot and Cold water</li>
                                                    <li>Elevator 3 Units</li>
                                                    <li>Money Exchange</li>
                                                    <li>Power Generators</li>
                                                    <li>Business Center</li>
                                                    <li>Rent A Car Service</li>
                                                    <li>Shopping ArcadeValet Service</li>
                                                    <li>Laundry Service</li>
                                                    <li>Airport Transfers</li>
                                                    <li>Gym</li>
                                                    <li>Sauna</li>
                                                    <li>Hot Spa Therapy & Massage</li>
                                                </ul>
                                                <p>
                                                    <strong>Specialty Restaurants are :</strong><br />
                                                    <strong>Rangdhanu: </strong>Coffee-Shope serves multi-cuisine menu & excellent buffet breakfast specialized in Thai, Chinese & Continental Food.<br />
                                                    <strong>Madhurima: </strong>Pool side restaurant & sunken bar provides you a variety of liquors, snacks, barbeque, cold drinks, and pizza.<br />
                                                    <strong>Jharna: </strong>A fast food lounge serves burgers, snacks, and assorted pastries.<br />
                                                    <strong>Parijat: </strong>Specialty restaurant serves authentic Bangladeshi Tandoori, Kebabs and Indian Cuisine.<br />
                                                    <strong>Niharika: </strong>Roof top restaurant serves exotic Barbeque, Kebabs, and Italian dishes. Feel the ocean breeze and watch the panoramic view of Bay of Bengal while eating.
                                                </p>
                                                <p>
                                                    <strong>Reservation:</strong><br />
                                                    Hotel Motel Zone<br />
                                                    Cox's Bazar Beach, Bangladesh,<br />
                                                    Tel: 0341-62480-91,<br />
                                                    Fax: 88-0341-64436<br />
                                                    E-mail: seagull@agni.com,<br />
                                                    seagullhotelcox@gmail.com.<br />
                                                    Dhaka Office<br />
                                                    White House Hotel,<br />
                                                    155 Shantinagar, Dhaka 1217, Bangladesh.<br />
                                                    Tel: 88-02-8322973-6,<br />
                                                    Fax: 88-02-8317726.<br />
                                                </p>
                                                <p>
                                                    <strong>Accommodation Cost :</strong>
                                                    Regular — Sea View (Single Bed) BDT 2,590/=<br />
                                                    Regular — Sea View (Double Bed) BDT 3,190/=<br />
                                                    Regular — Hill View (Single Bed) BDT 2,420/=<br />
                                                    Regular — Hill View (Double Bed) BDT 2,970/=<br />
                                                    Deluxe — Sea View (Single Bed) BDT 3,300/=<br />
                                                    Deluxe —Sea View (Double Bed) BDT 3,850/=<br />
                                                    Deluxe — Hill View (Single Bed) BDT 3,080/=<br />
                                                    Deluxe — Hill View (Double Bed) BDT 3,630/=<br />
                                                    Suites BDT 7,700/=<br />
                                                    President Suite BDT 25,000/=<br />
                                                    Above rates are subject to addition of 10% Service charge and 15% VAT. 
                                                </p>
                                                <p>
                                                    <strong>Address :</strong>
                                                    Hotel Motel Zone<br />
                                                    Cox's Bazar Sea Beach, Cox's Bazar<br />
                                                    Tel: +88 0341 62480 - 91<br />
                                                    Fax: +88 0341 64436<br />
                                                    Email: <a href="mailto:info@seagullhotelbd.com">info@seagullhotelbd.com</a><br />
                                                    Web  : <a href="http://www.seagullhotelbd.com" target="_blank">www.seagullhotelbd.com</a>
                                                </p>
                                            </div>
                                        </div>


                                    </div>
                                    <div id="hotelseapalace" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hotelseapalace.jpg" alt="hotelseapalace" class="img-responsive" />
                                                <strong>Hotel Sea Palace</strong>
                                                <p>
                                                    <strong>Rank: </strong>5 star<br />
                                                    <strong>Overview: </strong>
                                                    Standing around 6 acres of land, Hotel Sea Palace Limited the 
                                                    house for elites, ensures accommodation during your visit to 
                                                    make your experiences enjoyable & memorable.We assure unique 
                                                    hospitality that our guests can have ensured recreation after 
                                                    sunbathing and swimming over the beach.Surrounded by screen 
                                                    beauty "Hotel Sea Palace" is located at Kalatoli road 10 
                                                    minutes driving -- distance from the airport & 200 yard 
                                                    away from Kalatoli Beach.
                                                </p>
                                                <p><strong>Service & facilities</strong></p>
                                                <ul>
                                                    <li>Central Air-conditioning System</li>
                                                    <li>24 Hours Room Service</li>
                                                    <li>Gym</li>
                                                    <li>Swimming Pool</li>
                                                    <li>Water sports</li>
                                                    <li>Billiard Room</li>
                                                    <li>Burmese Shopping Arcade</li>
                                                    <li>Business Center Facilities</li>
                                                    <li>Ball Room</li>
                                                    <li>Conference Room</li>
                                                    <li>Board Room</li>
                                                    <li>Doctor on Call</li>
                                                </ul>
                                                <p>
                                                    <strong>Restaurants and Bars :</strong><br />
                                                    <strong>Crown Restaurant: </strong>Open round the clock. It serves genuine Bangladeshi, Thai, Chinese, Indian and Continental & Seafood. Offer poolside snacks & beverage. 180 people can sit here at a time..<br />
                                                    <strong>Bar-B-Que: </strong>he restaurant set to serve delicious food.<br />
                                                    <strong>Lobby coffee shop: </strong>Open day-night round the clock and glowing furnished decorative environment serving various fast food, beverage, drinks (hot & cold).<br />
                                                    <strong>Sahara foods: </strong>Specialty restaurant serves authentic Bangladeshi Tandoori, Kebabs and Indian Cuisine.<br />
                                                    <strong>Bar: </strong>Well stocked choice of liquor
                                                </p>
                                                <p>
                                                    <strong>Reservation:</strong><br />
                                                    Hotel: Kalatoli Road, Cox's Bazar;<br />
                                                    Cox's Bazar Beach, Bangladesh,<br />
                                                    Tel: 88-0341-63692, 63792, 63794, 63826, 63853.<br />
                                                    Cell: 88-01714652227, 01714652228.
                                                    <br />
                                                    Fax:  88-0341-63769<br />
                                                    E-mail: cxb@hotelseapalaceltd.com<br />
                                                    Chittagong Sales Office: Mayer Shapna, 348 M.M. Ali Road, Room: 304 (2nd floor)Dhampara, Chittagong.
                                                    <br />
                                                    Tel: 88-01554355116, 01716662274<br />
                                                    Fax: ctg@hotelseapalaceltd.com<br />
                                                    Dhaka Sales office: Noorjahan tower (3rd floor), 2 Link Road Banglamotor, Dhaka<br />
                                                    Tel: 88-02-9672876.<br />
                                                    Cell: 88-01819808842, 01711179678, 01913380847<br />
                                                    Fax: 88-02-9672569,
                                                    <br />
                                                    E-mail: dhaka@hotelseapalaceltd.com<br />
                                                </p>
                                                <p>
                                                    <strong>Accommodation Cost :</strong>
                                                    Presidential Suite — BDT 60,000/=<br />
                                                    Royal Suites — BDT 20,000/=<br />
                                                    Honeymoon Suite	— BDT 15,000/=<br />
                                                    Crown Regular Suite (Twin bed)	— BDT 6,000/=<br />
                                                    Crown Regular Suite (Couple bed)— BDT 5,000/=<br />
                                                    Super Deluxe Room (Twin bed)— BDT 4,500/=<br />
                                                    Deluxe Room (Couple bed)— BDT 4,000/=<br />
                                                    Regular Room (Couple bed)— BDT 3,000/=<br />
                                                    15% value added Tax and 10% service charges will be included with each of above.
                                                </p>
                                                <p>
                                                    <strong>Address :</strong>
                                                    Hotel Motel Zone<br />
                                                    Kalatoli Road, Cox's Bazar,
                                                    <br />
                                                    Tel: 88 - 0341 - 63692, 63792, 63794, 63826, 63853<br />
                                                    Cell: 88 - 01714652227, 01714652228,
                                                    <br />
                                                    Fax: 88-0341-63769,+88 0341 64436
                                                    <br />
                                                    Email: <a href="mailto:cxb@hotelseapalaceltd.com ">cxb@hotelseapalaceltd.com </a>
                                                    <br />
                                                    Web  : <a href="http://www.hotelseapalaceltd.com/" target="_blank">www.hotelseapalaceltd.com/</a>
                                                </p>
                                            </div>
                                        </div>


                                    </div>
                                    <div id="hotelkollol" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hotelkollol.jpg" alt="hotelkollol" class="img-responsive" />
                                                <strong>Hotel Kollol</strong>
                                                <p>
                                                    <strong>Rank: </strong>4 star<br />
                                                    <strong>Overview: </strong>
                                                    Hotel Kollol is almost on the Bay at Coxs Bazar. 
                                                    From the balcony of this hotel, both the view and 
                                                    roar of sea waves may be experienced. 2003.Not only 
                                                    was the site chosen but the building was also 
                                                    constructed considering adequate open air and 
                                                    sunlight. In other words this premises was 
                                                    constructed to give the feel of a home. Like a 
                                                    big family house everyone can see each other from 
                                                    its long corridors. This hotel maintains a balance 
                                                    between luxuriousness and affordability. 
                                                </p>
                                                <p><strong>Service & facilities</strong></p>
                                                <ul>
                                                    <li>Restaurant</li>
                                                    <li>Coffee Shop</li>
                                                    <li>Conference Hall</li>
                                                    <li>Accept Visa & Master Card</li>
                                                    <li>Doctor on Call</li>
                                                    <li>Daily News Paper</li>
                                                    <li>Spacious Car Parking</li>
                                                    <li>Laundry Service</li>
                                                    <li>Fax, NWD & Internet Facilities</li>
                                                    <li>Tour desk</li>
                                                </ul>
                                                <p>
                                                    <strong>Reservation:</strong><br />
                                                    Hotel: Kalatoli Road, Cox's Bazar<br />
                                                    Cox's Bazar Beach, Bangladesh,<br />
                                                    Tel:  0341 - 64748,<br />
                                                    Cell:  01727613258, 01819548434
                                                    <br />
                                                    Fax:  0341 - 64748<br />
                                                    E-mail: info@hotelkollol.com<br />
                                                </p>
                                                <p>
                                                    <strong>Accommodation Cost :</strong>
                                                    <img src="../images/hotelkollolaccomod.jpg" alt="hotelkollolaccomod" class="img-responsive" />
                                                </p>
                                                <p>
                                                    <strong>Address :</strong>
                                                    Hotel Motel Zone<br />
                                                    Kalatoli Road, Cox's Bazar,
                                                    <br />
                                                    Tel: 88 - 0341 - 64748<br />
                                                    Cell: 88 - 01727613258, 01819548434
                                                    <br />
                                                    Fax: 88 - 0341 - 64748
                                                    <br />
                                                    Email: <a href="mailto:info@hotelkollol.com">info@hotelkollol.com</a><br />
                                                    Web  : <a href="http://www.hotelkollol.com/" target="_blank">www.hotelkollol.com/</a>
                                                </p>
                                            </div>
                                        </div>


                                    </div>
                                    <div id="hotelcoralreaf" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hotelcoralreef.jpg" alt="hotelcoralreef" class="img-responsive" />
                                                <strong>Hotel Coral Reaf</strong>
                                                <p>
                                                    <strong>Rank: </strong>3 Star<br />
                                                    <strong>Overview: </strong>
                                                    Distance :	1 Km from the sea beach.
                                                    Communication :	By Bus and Airlines from Dhaka.
                                                    Facilities :Air condition room, Running hot & cold water, 
                                                    Minibar. Each room with belcony, Family suite with kitchen 
                                                    and internet facilities. 
                                                </p>
                                                <p>
                                                    <strong>Address :</strong>
                                                    Hotel Coral Reef,<br />
                                                    Plot # 47, Block # B,<br />
                                                    Kalatoli, Coxs Bazar , Bangladesh<br />
                                                    Cell: (880) 01911-672135 or 01712-849373
                                                </p>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="uniresort" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hoteluniresort.jpg" alt="hoteluniresort" class="img-responsive" />
                                                <strong>Uni Resort Ltd</strong>
                                                <p>
                                                    <strong>Rank: </strong>3 Star<br />
                                                    <strong>Overview: </strong>
                                                    Distance :	1 Km from the sea beach.
                                                    Communication :	By Bus and Airlines from Dhaka.
                                                    Facilities :Game Zone, Coffee & Pastry Shop, Stand by 
                                                    Generator, Business Centre, Restaurant, 24 hours room 
                                                    service, Gift shoop, Business centre. Game Zone and Conference 
                                                    hall with Multimedia projector and sound system. 
                                                </p>
                                                <p>
                                                    <strong>Address :</strong>
                                                    Uni Resort Ltd,<br />
                                                    Plot # 47, Block # B,<br />
                                                    Kalatoli, Coxs Bazar , Bangladesh<br />
                                                    Cell: (880) 01911-672135 or 01712-849373
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Hotel and Resort section end-->

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-danger btn-default pull-right" data-dismiss="modal">
                                <span class="glyphicon glyphicon-remove"></span>Cancel
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Coxsbazar Modal start-->

            <!--Saint Martin Modal start-->
            <div class="modal fade" id="saintmartinModal" role="dialog">
                <div class="modal-dialog" style="width: 70%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            <h4>Saint Martin</h4>
                        </div>
                        <div class="modal-body" role="form">
                            <div class="form-group">
                                <img src="images/resaintmartin.jpg" alt="Saint Martin" class="img-responsive" />
                                <article>
                                    <p>
                                        <strong>Saint Martin: </strong>St. Martin's Island a small 
                                        island (area only 8 km2) in the northeastern part of the Bay 
                                        of Bengal, about 9 km south of the tip of the Cox's Bazar-Teknaf 
                                        peninsula, and forming the southernmost part of Bangladesh. 
                                        There is a small adjoining island that is separated at high 
                                        tide, called Chera Dwip. It is about 8 kilometres (5 miles) 
                                        west of the northwest coast of Myanmar, at the mouth of the 
                                        Naf River.
                                    </p>
                                    <h2>History</h2>
                                    <p>
                                        The first settlement started 250 years ago by Arabian sailors who 
                                        named the island 'Zajira'. During British occupation the island was 
                                        named St. Martin Island. During the First Anglo-Burmese War between 
                                        the British and Burmese empires in 1824–1826, rival claims to the 
                                        island were a major factor. The local names of the island are 
                                        "Narical Gingira", also spelled "Narikel Jinjira/Jinjera", which 
                                        means 'Coconut Island' in Bengali, and "Daruchini Dwip". It is the 
                                        only coral island in Bangladesh.
                                    </p>
                                    <h2>
                                        <strong>Tourist Attraction</strong>
                                    </h2>
                                    <p>
                                        From 1989 to 2004, non-residential Bangladeshis and foreigners were 
                                        the only people permitted on the island; however, this has changed 
                                        and now residential Bangladeshis are allowed. St. Martin's Island has 
                                        become a popular tourist spot. Five shipping liners run daily trips 
                                        to the island, including Shahid Sher Niabat, L C T Kutubdia, Eagle, 
                                        Keari Cruise & Dine, and Keari-Sindbad. Tourists can book their trip 
                                        either from Chittagong or from Cox's Bazar. The surrounding coral 
                                        reef has an extension named Chera Dwip. A small bush is there, which 
                                        is the only green part, enhancing the beauty of this island. 
                                        People do not live on this part, so it is advisable for the tourists 
                                        to go there early and come back by afternoon. In the past five years 
                                        St. Martin's visitor population has increased dramatically. 
                                        While this situation has proven to be lucrative for the islanders, 
                                        it is causing the natural beauty to deteriorate. Presently there are 
                                        many efforts being put forth to preserve the several endangered 
                                        species of turtles that nest on the island, as well as the corals, 
                                        some of which are found only on Narikel Jinjera. Pieces of the 
                                        coral reef are being removed to be sold to tourists. Nesting 
                                        turtles are sometimes taken for food, and their hatchlings are often 
                                        distracted by the twinkling lights along the beach. Fish, a few 
                                        recently discovered, are being overfished. Every year the fishermen 
                                        must venture further out to sea to get their catch. Most of them use 
                                        motorless boats. It is possible to walk around the island in a day 
                                        because it measures only 8 km2 (3 sq. mile), shrinking to about 
                                        5 km2 (2 sq. mi) during high tide. The island exists only because of 
                                        its coral base, so removal of that coral risks erosion of the beach. 
                                        Because of this, St. Martin's has lost roughly 25% of its coral reef 
                                        in the past seven years.
                                    </p>
                                </article>

                                <!--Transportation section start-->
                                <h2>Transportation</h2>
                                <p>
                                    The only way to reach St. Martin's Island is by water 
                                    transportation: boats and ships (mostly for tourists) from 
                                    Teknaf. There are few or no taxis, tarred roads, or 
                                    electricity. Except for the larger hotels that run on 
                                    generators, there is no electricity supply from the national 
                                    grid since a hurricane in 1999. The island is all about sun, 
                                    sea and palm trees. During the day, it comes alive with water
                                     and beach sports, with beach parties and bonfires lighting up 
                                    the evening skies.
                                </p>
                                <!--Transportation section end-->
                                <!--Hotel and Resort section start-->
                                <h2>Hotel & Restaurant</h2>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#hotelprasadparadise">Hotel Prasad Paradise</a></li>
                                    <li><a data-toggle="tab" href="#hotelprenceheaven">Hotel Prence Heaven</a></li>
                                    <li><a data-toggle="tab" href="#hotelseaheart">Hotel Sea Heart</a></li>
                                    <li><a data-toggle="tab" href="#hotelshopnoprovas">Hotel Shopno provas</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="hotelprasadparadise" class="tab-pane fade in active">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hotelprasaad.JPG" alt="hotelprasaad" class="img-responsive" />
                                                <h3>Hotel Prasaad Paradise</h3>
                                                <p><strong>Address :</strong></p>
                                                <p>
                                                    Dhaka Office<br />
                                                    2,Monipuri Para,Bijoy Sharani,Dhaka<br />
                                                    Mobile No.: +88-01824993449,+88-01672602829,<br />
                                                    +88-01726067949,+88-01819224644<br />
                                                    Website: <a href="http://work.uttarainfotech.com/praasad/" target="_blank">Hotel Prasaad Paradise</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="hotelprenceheaven" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="../images/hotelprince.jpg" alt="hotelPrince" class="img-responsive" />
                                                <h3>Hotel Prince Heaven</h3>
                                                <p><strong>Address</strong></p>
                                                <p>
                                                    Teknaf Office:<br />
                                                    Nahar Garden Tourism, Hotel Dip Plaza,
                                                    <br />
                                                    Main Road, Teknaf, Cox's Bazar.<br />
                                                    Mobile No.: +88-01713409797
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="hotelseaheart" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h3>Hotel Sea Heart</h3>
                                                <p><strong>Address:</strong></p>
                                                <p>
                                                    Saint Martin:<br />
                                                    Near Union Porisod Bhaban<br />
                                                    Narikel Zingira, Saint Martin, Teknaf<br />
                                                    Cox's Bazar, Bangladesh
                                                </p>
                                            </div>
                                        </div>


                                    </div>
                                    <div id="hotelshopnoprovas" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h3>Hotel Shopno Provas</h3>
                                                <p><strong>Address:</strong></p>
                                                <p>
                                                    Poschim Para,Narikel Zingira,
                                                    <br />
                                                    Saint Martin, Teknaf,Cox's Bazar, Bangladesh.<br />
                                                    Mobile No.: +88-01820226765<br />
                                                </p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!--Hotel and Resort section end-->

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-danger btn-default pull-right" data-dismiss="modal">
                                <span class="glyphicon glyphicon-remove"></span>Cancel
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Saint Martin Modal start-->

            <!--Registration modal start-->
            <%--<div class="modal fade" id="registration" role="dialog">
                <div class="modal-dialog" style="width: 70%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            <h4>Register</h4>
                        </div>
                        <div class="modal-body" role="form">
                            <div class="form-group">
                                <table class="table table-responsive form-group">
                                    <tr>
                                        <td>
                                            <label class="form-control">First Name</label></td>
                                        <td>
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" ControlToValidate="txtFirstName" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Last Name</label></td>
                                        <td>
                                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="txtLastName" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Email</label></td>
                                        <td>
                                            <asp:TextBox ID="txtEmailRegistration" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter email address" ControlToValidate="txtEmailRegistration" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email address" ControlToValidate="txtEmailRegistration" ForeColor="#cc0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">User Name</label></td>
                                        <td>
                                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter User Name" ControlToValidate="txtUserName" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Password</label></td>
                                        <td>
                                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Confirm Password</label></td>
                                        <td>
                                            <asp:TextBox ID="txtCPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtCPassword" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same password" ControlToValidate="txtCPassword" ControlToCompare="txtPassword" ForeColor="#cc0000"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Address</label></td>
                                        <td>
                                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your address" ControlToValidate="txtAddress" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Phone No</label></td>
                                        <td>
                                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Phone No" ControlToValidate="txtPhone" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Gender</label></td>
                                        <td>
                                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                                                <asp:ListItem>Select Your Gender</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Select Your Gender" ControlToValidate="ddlGender" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-control">Country</label></td>
                                        <td>
                                            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                                                <asp:ListItem>Select Your Country</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select Your Country" ControlToValidate="ddlCountry" ForeColor="#cc0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-lg btn-info"/>  
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-danger btn-default pull-right" data-dismiss="modal">
                                <span class="glyphicon glyphicon-remove"></span>Cancel
                            </button>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!--Registration modal end-->
        </div>

        <!-- Container (TOUR Section) start-->
        <div id="videogallery" class="bg-1">
            <div class="container">
                <h3 class="text-center">VIDEO GALLERY</h3>
                <hr style="border: 1px solid activeborder;" />
                <br />
                <div class="row text-center">
                    <div class="col-sm-4 ">
                        <p><strong>COXS BAZAR</strong></p>
                        <iframe height="230" src="https://www.youtube.com/embed/ui0vDXNJTL4"></iframe>
                    </div>
                    <div class="col-sm-4">
                        <p><strong>Saint Martin</strong></p>
                        <iframe height="230" src="https://www.youtube.com/embed/tc8Ikm0WAAk"></iframe>
                    </div>
                    <div class="col-sm-4">
                        <p><strong>Sundarban</strong></p>
                        <iframe height="230" src="https://www.youtube.com/embed/nf1AXa_x13s"></iframe>
                    </div>
                </div>
                <br />
                <div class="row text-center">
                    <div class="col-sm-4 ">
                        <p><strong>Rangamati</strong></p>
                        <iframe height="230" src="https://www.youtube.com/embed/7sDcgvFYkVo"></iframe>
                    </div>
                    <div class="col-sm-4">
                        <p><strong>Sajek Valley</strong></p>
                        <iframe height="230" src="https://www.youtube.com/embed/8CRR2y-Vsb4"></iframe>
                    </div>
                    <div class="col-sm-4">
                        <p><strong>Kuakata Beach</strong></p>
                        <iframe height="230" src="https://www.youtube.com/embed/5uyYi9ZX9XM"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container (TOUR Section) end -->

        <!--Search Place destination section start-->
        <div id="searchplace" class="container text-center">
            <h4>Search Your Destination</h4>
            <div class="row">
                <!--From Search Section start-->
                <div class="col-md-6">
                    <h3>Where From To Go</h3>
                    <table class="table">
                        <tr>
                            <td>
                                <label class="form-control label-info">Select Division</label></td>
                            <td>
                                <asp:DropDownList ID="ddlFromDivision" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlFromDivision_SelectedIndexChanged" DataTextField="DivisionName" DataValueField="DivisionId" AutoPostBack="true">
                                    <asp:ListItem>Select Division</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form-control label-info">Select District</label></td>
                            <td>
                                <asp:DropDownList ID="ddlFromDistrict" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlFromDistrict_SelectedIndexChanged" DataTextField="DistrictName" DataValueField="DistrictId" AutoPostBack="true">
                                    <asp:ListItem>Select District</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form-control label-info">Select Upazila</label></td>
                            <td>
                                <asp:DropDownList ID="ddlFromUpazila" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlFromUpazila_SelectedIndexChanged" DataTextField="FromUpazilaName" DataValueField="FromUpazilaId" AutoPostBack="true">
                                    <asp:ListItem>Select Upazila</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--From Search Section end-->

                <!--Destination Search Section start-->
                <div class="col-md-6">
                    <h3>Where You To Go</h3>
                    <table class="table">
                        <tr>
                            <td>
                                <label class="form-control label-info">Select Division</label></td>
                            <td>
                                <asp:DropDownList ID="ddlDestDivision" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDestDivision_SelectedIndexChanged" DataTextField="DivisionName" DataValueField="DivisionId" AutoPostBack="true">
                                    <asp:ListItem>Select Division</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form-control label-info">Select District</label></td>
                            <td>
                                <asp:DropDownList ID="ddlDestDistrict" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDestDistrict_SelectedIndexChanged" DataTextField="DistrictName" DataValueField="DistrictId" AutoPostBack="true">
                                    <asp:ListItem>Select District</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form-control label-info">Select Upazila</label></td>
                            <td>
                                <asp:DropDownList ID="ddlDestUpazila" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDestUpazila_SelectedIndexChanged" DataTextField="DestinationUpazilaName" DataValueField="DestinationUpazilaId" AutoPostBack="true">
                                    <asp:ListItem>Select Upazila</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--Destination Search Section end-->
            </div>
            <br />
            <div class="row">
                <div class="col-md-12">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-group-lg btn-info" OnClick="btnSearch_Click" />
                </div>
            </div>
            <br />
            <!--Bus Information section start-->
            <div class="row searchinfo">
                <div class="col-md-12">
                    <h3>Bus Information Goes....</h3>
                </div>
            </div>
            <!--Bus Information section start-->

            <!--Railway Information section start-->
            <div class="row searchinfo">
                <div class="col-md-12">
                    <h3>Railway Information Goes....</h3>
                </div>
            </div>
            <!--Railway Information section start-->

            <!--Launch Information section start-->
            <div class="row searchinfo">
                <div class="col-md-12">
                    <h3>Launch Information Goes....</h3>
                </div>
            </div>
            <!--Launch Information section start-->

            <!--Air Information section start-->
            <div class="row searchinfo">
                <div class="col-md-12">
                    <h3>Air Information Goes....</h3>
                </div>
            </div>
            <!--Air Information section start-->
        </div>
        <!--Search Place destination section end-->


        <!-- Container (Contact Section) -->
        <div id="contact" class="container">
            <h3 class="text-center">Contact</h3>
            <p class="text-center"><strong>Contact With Us</strong></p>

            <div class="row">
                <div class="col-md-4">
                    <p>Address</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span>Mirpur-2, Dhaka-1216</p>
                    <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
                    <p><span class="glyphicon glyphicon-envelope"></span>Email: <a href="mailto://travelinfo@mil.com">travelinfo@mail.com</a> </p>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Enter Your Name" ForeColor="#cc0000" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-6 form-group">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter Email Address" ForeColor="#cc0000" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Enter correct email address" ForeColor="#cc0000" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Placeholder="Comment(write maximum 500 words)"></asp:TextBox>
                    <br />
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <asp:Label ID="lblStatus" runat="server" ForeColor="#003300"></asp:Label>
                            <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn pull-right" OnClick="btnSend_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <h3 class="text-center">From The Blog</h3>
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
                <li><a data-toggle="tab" href="#menu1">Chandler</a></li>
                <li><a data-toggle="tab" href="#menu2">Peter</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h2>Mike Ross, Manager</h2>
                    <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h2>Chandler Bing, Guitarist</h2>
                    <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h2>Peter Griffin, Bass player</h2>
                    <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
                </div>
            </div>
        </div>

        <div id="googleMap"></div>

        <!-- Add Google Maps -->
        <script src="https://maps.googleapis.com/maps/api/js"></script>
        <script>
            var myCenter = new google.maps.LatLng(23.8118638, 90.3571106);

            function initialize() {
                var mapProp = {
                    center: myCenter,
                    zoom: 12,
                    scrollwheel: false,
                    draggable: false,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

                var marker = new google.maps.Marker({
                    position: myCenter,
                });

                marker.setMap(map);
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>

        <!-- Footer -->
        <footer class="text-center">
            <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <br />
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <p>Copyright &copy; 2016 - <a href="#myPage" data-toggle="tooltip">Travel Information Bangladesh</a></p>
                </div>
                <div class="col-md-3 faicon">
                    <p>
                        <strong>Follow &nbsp;-- </strong>
                        <a href="#"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>&nbsp;
                       <a href="#"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>&nbsp;
                       <a href="#"><i class="fa fa-3x fa-youtube-square" aria-hidden="true"></i></a>&nbsp;
                       <a href="#"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
                    </p>
                </div>
            </div>
        </footer>

        <script>
            $(document).ready(function () {
                // Initialize Tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {

                        // Prevent default anchor click behavior
                        event.preventDefault();

                        // Store hash
                        var hash = this.hash;

                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 900, function () {

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });
            })
        </script>
    </form>
</body>
</html>
