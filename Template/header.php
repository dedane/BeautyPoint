<?php 
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Beauty Point Online Store</title>
    
        <!--- Bootsrtrap CDN-->
        <link rel="stylesheet" 
        href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" 
        integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous">
    
        <!--FontAwesome CDN-->
        <script src="https://kit.fontawesome.com/6b0cd4cd92.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    
        <!--Custom stylesheet-->
        <link rel="stylesheet" href="./css/style.css" />
        <!--Custom Slider-->
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <!--Carousel Javascript-->
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        
        <!-- Owl-carousel-cdn-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />
        <!-- Owl-carousel-cdn-->
    
        <!-- Custom Javascript-->
        <script type="text/Javascript" src="./Javascript/script.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"
         integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD" crossorigin="anonymous"></script>
    </head>
    <body>
    <!-- header -->
        <header class="header">
            <div class="container-fluid">
                <div class="navbar-header">
                <div class="row">
                <div class="col-md-4 col-1text-center header-logo">
                    <a href="/" style="color: white" data-toggle="Shop">
                        <h1 class="my-md-4 site-title"><b>Beauty</b>Point</h1>
                    </a>
                </div>
                
                <div class="col-md-4 col-12 text-center mt-4 header-search">
                    <form class="form-inline d-flex justify-content-center md-form form-sm mt-0">
                        <span style="color: white">
                            <i class="fas fa-search mt-2 fa-2x  " aria-hidden="true"></i>
                        </span>
                        <input class="form-control form-control-lg ml-3 w-75" type="text" placeholder="Search"
                          aria-label="Search">
                      </form>
                </div>
                <div class="col-md-4  col-4 text-right mt-4 justify-end align-items-end">
                    <!-- <ul class="nav navbar-nav navbar-right"> -->
                        <!-- <li class="header-bag"> -->
                            
                                <a href="./Payment.html" style="color: white" data-toggle="Shop">
                                    <i class="fas fa-shopping-bag fa-2x mr-4"></i>
                                </a>
                            
                        <!-- </li> -->
                        <!-- <li class="header-person"> -->
                        
                            <a href="./signIn.html" style="color: white" data-toggle="Sign In">
                              <i class="fas fa-user-circle fa-2x mr-4"></i>
                            </a>
                           
                        <!-- </li> -->
                    <!-- </ul> -->
                      </div>
                  </div>
                </div>
            </div>
            <!-- <div class="container-fluid"> -->
                <nav class="navbar navbar-expand-lg navbar-light bg-light container-fluid">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                    <div class="collapse navbar-collapse" id="main_nav">
                        <ul class="navbar-nav ">
                            <li class="nav-item dropdown has-megamenu show">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="true"> BRANDS  </a>
                                <div class="dropdown-menu megamenu" role="menu">
                                    <div class="row">
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Brands/Tigi-Bed Head.html" class="nav-link">Tigi Bed Head</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Paul-mitchel.html" class="nav-link">Paul Mitchel</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Kevin-Murphy.html" class="nav-link">Kevin Murphy</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Kerastase.html" class="nav-link">Kerastase</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/GHD.html" class="nav-link">GHD</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Dyson.html" class="nav-link">Dyson</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/OPI.html" class="nav-link">OPI</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Brands/Kinetics.html" class="nav-link">Kinetics</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/sexy-hair.html" class="nav-link">Sexy Hair</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Macadamia.html" class="nav-link">Macadamia</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Tangle-Angel.html" class="nav-link">Tangle Teezer</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Tangle-Angel.html" class="nav-link">Tangle Angel</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/OMG-Double-Dare.html" class="nav-link">OMG Double Dare</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#" class="nav-link">Arcaya & GlamGlow</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Brands/Morphosis-Frameci.html" class="nav-link">Morphosis Frameci</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Abril-et-nature</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Acca-Kappa.html" class="nav-link">Acca Kappa</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Black Professional</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/Joc-Barex.html" class="nav-link">Joc Barex</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/EOS.html" class="nav-link">EOS</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/RED-LIST.html" class="nav-link">RED LIST</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Brands/Keune.html" class="nav-link">Keune</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/ " class="nav-link">Kemon</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/American-crew.html" class="nav-link">American Crew</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/saante.html" class="nav-link">Saante</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Argan Deluxe</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Cosmos Cosmetics</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/indola.html" class="nav-link">Indola</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Brands/PetitFee.html" class="nav-link">PetitFee</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Bella Donna</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Harmony</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Hessandro</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Rojal</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Lily Hairline</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Foot LOGIX</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Gosol</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Casmare</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Stila</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Brands/" class="nav-link">Biotina Kativa</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    </div> <!-- dropdown-mega-menu.// -->
                            </li>
                            <li class="nav-item dropdown has-megamenu">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> HAIR </a>
                                <div class="dropdown-menu megamenu" role="menu">
                                    <div class="row">
                                    <div class="col-md 3">
                                        <div class="col-megamenu">
                                            <ul class="list-unstyled">
                                                <h6 class="title">Shampoo /Conditioner/ Mask</h6>
                                                <li class="nav-item"> 
                                                    <a href="./Categories/Volume.html" class="nav-link">Volumed</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/Dry and Damaged hair.html" class="nav-link">Dry and Damaged</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/Colored Hair.html" class="nav-link">Colored Hair</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/Hair Loss.html" class="nav-link">Hair Loss/Hair Growth</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/CurlyHair.html" class="nav-link">Curly Hair</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/BlondeHair.html" class="nav-link">Blonde Hair</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/AntiDandruff.html" class="nav-link">Anti Dandruff</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/Oily & Itchy Scalp.html" class="nav-link">Oily / Itchy Scalp</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/Sulphate&ParabenFree.html" class="nav-link">Sulphate/ Paraben Free</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/DryShampoo.html" class="nav-link">Dry Shampoo</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md 3">
                                        <div class="col-megamenu">
                                            <ul class="list-unstyled">
                                                <h6 class="title">Shampoo /Conditioner/ Mask</h6>
                                                <li class="nav-item">
                                                    <a href="./Categories/Serums,Oils & Creams.html" class="nav-link">Serums/Oils/Creams</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/Brushes&HairTools.html" class="nav-link">Brushes & Hair Tools</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./Categories/StylingProducts.html" class="nav-link">Styling Products</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>      
                                </div>        
                                </div> <!-- dropdown-mega-menu.// -->
                            </li>
                            <li class="nav-item dropdown has-megamenu">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> FACE & SKIN </a>
                                <div class="dropdown-menu megamenu">
                                    <div class="row">
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <li class="nav-item">
                                                        <a href="./Categories/FaceSerum.html" class="nav-link">Face Serum</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/FaceCream.html" class="nav-link">Face Cream</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/EyeCare.html" class="nav-link">Eye Care</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/Masks.html" class="nav-link">Masks</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/Cleansers,TonicScrubs.html" class="nav-link">Cleansers/ Tonic Scrubs</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/FacialTools.html" class="nav-link">Facial Tools</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md 3">
                                            <div class="col-megamenu">
                                                <ul class="list-unstyled">
                                                    <h6 class="title">Skin Concerns</h6>
                                                    <li class="nav-item">
                                                        <a href="./Categories/AntiAgeing.html" class="nav-link">Anti Ageing</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/SensitiveSkin.html" class="nav-link">Sensitive Skin</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/DrySkin.html" class="nav-link">Dry Skin</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/OilySkin.html" class="nav-link">Oily Skin</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/DehydrationSkin.html" class="nav-link">Dehydrated Skin</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="./Categories/DarkCircles.html" class="nav-link">Dark Circles</a>
                                                    </li>
                                                    <li  class="nav-item">
                                                        <a href="./Categories/BlemishProneSkin.html" class="nav-link">Blemish Prone Skin</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>      
                                    </div>
                                        
                                    </div> <!-- dropdown-mega-menu.// -->
                            </li>
                            <li class="nav-item"><a class="nav-link" href="./Categories/Nails.html"> NAILS </a></li>
                            <li class="nav-item active"> <a class="nav-link" href="./Categories/Waxing.html">WAXING </a> </li>
                            <li class="nav-item"><a class="nav-link" href="./Categories/ForMen.html"> FOR MEN </a></li>
                            <li class="nav-item"><a class="nav-link" href="./Categories/Tools&Accessories.html"> TOOLS & ACCESSORIES </a></li>
                            <li class="nav-item"><a class="nav-link" href="./Categories/GiftIdeas.html"> GIFT IDEAS </a></li>
                            <li class="nav-item"><a class="nav-link" href="./Categories/HomeFragrance.html"> HOME FRAGRANCE </a></li>
                            <li class="nav-item"><a class="nav-link" href="./Categories/WholeSale.html"> WHOLESALE </a></li>
                        </ul>
                          </div>
                </nav>
            <!-- </div> -->
                </div>
            </div>
        </header>
?>