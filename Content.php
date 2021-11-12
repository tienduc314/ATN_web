<?php
include_once("Connection.php");
?>
     <div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<li>
						<img src="images/slide1.jpg" alt="Slide">
					</li>
					<li>
                        <img src="images/slide2.jpg" alt="Slide">
					</li>
					<li>
                        <img src="images/slide3.jpg" alt="Slide">
					</li>
					<li>
                        <img src="images/slide4.jpg" alt="Slide">
					</li>
				</ul>
			</div>
    
    <!--Gioi thieu cac chuc nang-->
    
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
<!-- 
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <img src="images/blog1.jpg" >
                    <div><a href="index.php"><p>WHY LUCKY LUKE?</p></a></div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <img src="images/blog2.jpg" >
                    <div><a href="index.php"><p> URBAS CORLURAY PACK</p></a></div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <img src="images/blog3.jpg" >
                    <div><a href="index.php"><p> VINTAS SAIGON 1980s</p></a></div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <img src="images/blog4.jpg" >
                    <div><a href="index.php"><p> SNEAKER FEST VIETNAM</p></a></div>
                </div>
            </div>

        </div>
    </div> End promo area -->
    
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Our Product</h2>
                        <div class="product-carousel">
                        
                           <?php
						   	//include_once("Connetion.php");
		  				   	$result = pg_query($conn, "SELECT * FROM public.product" );
			
			                if (!$result) { //add this check.
                                die('Invalid query: ' . pg_error($conn));
                            }
		
			            
			                while($row = pg_fetch_array($result, NULL, PGSQL_ASSOC)){
				            ?>
				            <!--Một sản phẩm -->
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="product-imgs/<?php echo $row['pro_image']?>" width="150" height="150">
                                    <div class="product-hover">
                                        <a href="index.php" class="add-to-cart-link" ><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="index.php" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                <h2><a href="index.php"><?php echo  $row['product_name']?></a></h2>
                                <div class="product-carousel-price">
                                    <ins><?php echo  $row['price']?></ins> <del><?php echo  $row['oldprice']?></del>
                                </div> 
                            </div>
                
                <?php
				}
				?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
  <!--   
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="img/brand1.jpg" alt="" height="200px" width="200px">
                            <img src="img/brand2.jpg" alt="" height="200px" width="200px">
                            <img src="img/brand4.jpg" alt="" height="200px" width="200px">  
                            <img src="img/brand7.jfif" alt="" height="200px" width="200px">                 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> End brands area -->
    
    
    
   
  