<?php
include_once("Connection.php");
?>
    <!-- Slider -->
    <div class="slider-area">	
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li>
					<img src="images/" alt="Slide">
				</li>
			</ul>
		</div>
    </div>

    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Our Product</h2>
                        <div class="product-carousel">
                        
                           <?php
						   	include_once("Connection.php");
		  				   	$result = pg_query($conn, "SELECT * FROM public.product");
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
                                    <ins>$ <?php echo  $row['price']?></ins> <del></del>
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
    </div> 
    <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="img/" alt="" height="200px" width="200px">
                            <img src="img/" alt="" height="200px" width="200px">
                            <img src="img/" alt="" height="200px" width="200px">  
                            <img src="img/" alt="" height="200px" width="200px">                 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    
    
   
  