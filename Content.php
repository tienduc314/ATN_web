  
<?php
include_once("connection.php");
?>
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Toy items</h2>
                        <div class="product-carousel">
                        
                        <!--Load product from DB -->
                           <?php
						    include_once("connection.php");
		  				   	$result = pg_query($conn, "SELECT * FROM public.product" );
			
			                if (!$result) { //add this check.
                                die('Invalid query: ' . pg_error($conn));
                            }
		
			            
			                while($row = pg_fetch_array($result, NULL, PGSQL_ASSOC)){
				            ?>
				            <!--A product -->
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="product-imgs/<?php echo $row['pro_image']?>" width="150" height="150">
                                    <div class="product-hover">
                                        <a href="?page=management_productdetail&ma=<?php echo  $row['product_id']?>" class="view-details-link"><i class="fa fa-link"></i> Welcome</a>
                                    </div>
                                </div>
                                
                                <h2><a href="?page=management_productdetail&ma=<?php echo  $row['product_id']?>"><?php echo  $row['product_name']?></a></h2>
                                
                                <div class="product-carousel-price">
                                    <ins>$<?php echo  $row['price']?></ins> <del><?php echo  $row['oldprice']?></del>
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
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Hot</h2>
                        <a href="" class="wid-view-more">Show All</a>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">The baby carriage.</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$50</ins> <del>$70</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/2.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">jigsaw puzzle</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$20</ins> <del>$40</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/BeesMeBathToys.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">BeesMeBathToys</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$12</ins> <del>$15</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Recently Viewed</h2>
                        <a href="#" class="wid-view-more">Show All</a>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/Car-toys.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Car toys</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$8</ins> <del>$9</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/Cook.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Cooking toys</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$30</ins> <del>$35</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/Cooking set (2).jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Cooking set</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$45</ins> <del>$50</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Latest</h2>
                        <a href="#" class="wid-view-more">Show All</a>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/Teddy bear.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Teddy bear</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$8</ins> <del>$11</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/Shaker car.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Shaker car</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>%35</ins> <del>$42</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="images/Wintoy.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Wintoy</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$12</ins> <del>$13</del>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
   
  