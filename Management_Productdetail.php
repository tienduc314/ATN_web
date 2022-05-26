<?php
if(isset($_GET["ma"]))
	{
		$id = $_GET["ma"]; 
		$result = pg_query($conn,"SELECT product_name, price, store, detaildesc, prodate, pro_image,pro_qty, cat_name FROM product , category WHERE product.cat_id=category.cat_id and product_id='$id'"); 
		$row= pg_fetch_array($result, PGSQL_ASSOC);
    }
?>
<table>
<tr>
    <td rowspan='5'><img src='product-imgs/<?php echo $row['pro_image']?>' width="600px" height="600px"/></td>
    <td>Product Name: <?php echo $row["product_name"]; ?><td>
</tr>
<tr><td>Price: $<?php echo $row["price"]; ?><td></tr>
<tr><td>Store: $<?php echo $row["store"]; ?><td></tr>
<tr><td>Quantity: <?php echo $row["pro_qty"]; ?><td></tr>
<tr><td>Description:<?php echo $row["dtailDesc"]; ?><td></tr>
<tr><td>Supplier: <?php echo $row["cat_name"]; ?><td></tr>
</table>