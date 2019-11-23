<?php
include_once('../layout/header.php');
include_once('../layout/banner-category.php');
include_once('../../model/category.php');
include_once('../../model/product.php');
?>
<div class="container">
    <?php
    if (isset($_REQUEST['category']) || $_REQUEST['category'] == null)
    $categoryCurent = category::getCategoryById($_REQUEST['category']);
    if ($categoryCurent == null)
        header('Location: http://localhost:8081/baitap_gio_hang/web_gio_hang_php/views/pages/home.php');
    $products = product::getListByCategoryId($_REQUEST['category']);?>
    <div class="block block-breadcrumbs">
        <ul>
            <li class="home">
                <a href="http://localhost:8081/baitap_gio_hang/web_gio_hang_php/views/pages/home.php"><i class="fa fa-home"></i></a>
                <span></span>
            </li>
            <li><a><?=$categoryCurent->name?></a><span></span></li>
        </ul>
    </div>
    <h3 class="page-title">
        <span><?=$categoryCurent->name ?></span>
    </h3>
    <div class="category-products tab-pane fade in active " id="row_gird">
        <?php if(count($products)){ ?>
        <ul class="products row">
            <?php foreach ($products as $product) { ?>

                <li class="product col-xs-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="product-container">
                        <div class="product-left">
                            <div class="product-thumb">
                                <a class="product-img" href="<?='http://localhost:8081/baitap_gio_hang/web_gio_hang_php/views/pages/product_detail.php?product='.$product->id?>">

                                    <img src="<?= $product->images[0] ?>" alt="<?= $product->name ?>"></a>
                                <a href="" class="btn-quick-view">View</a>
                            </div>
                            <div class="product-status">
                                <span class="sale" style="background-color: red ;"><?= $product->deal ?>%</span>
                            </div>
                        </div>
                        <div class=" product-right">
                            <div class="product-name">
                                <a title="View detail" href="<?='http://localhost:8081/baitap_gio_hang/web_gio_hang_php/views/pages/product_detail.php?product='.$product->id?>"><?= $product->name ?></a>
                            </div>
                            <div class="price-box">
                                <span class="product-price" style="color: red;">
                                    <?= $product->price * (100 - $product->deal) / 100 ?>
                                    <span class="text-primary" style="font-size: 12px; color: red">VND</span>
                                </span>
                                <span class="product-price-old">
                                    <?= $product->price ?>
                                    <span class="text-primary" style="font-size: 12px; color: grey">VND</span>
                                </span>
                            </div>
                            <div style="overflow: auto">
                                <div class="deal_c" style="color: #FF7E7E;">
                                    <span>To 2019-12-31 15:59:00 </span>
                                </div>
                                <div class="sale_amourt is_active" title="Total 30 user has bought.If reach to , this deal will be approved">
                                    <span>30</span>/<span>100</span>
                                    <span class="fa fa-user"></span>
                                </div>
                            </div>
                            <div class="product-button" style="padding: 2px;">
                                <a class="button-radius btn-add-cart" href="<?='http://localhost:8081/baitap_gio_hang/web_gio_hang_php/views/pages/product_detail.php?product='.$product->id?>" title="Add to Cart">Buy<span class="icon"></span></a>
                            </div>
                        </div>
                    </div>
                </li>
            <?php } ?>

        </ul>
        <?php }else{ ?>
        <div style="clear: both; "></div>
        <div style="width: 100%; background-color: white;  padding: 40px; margin-top: 10px;">
            <img src="http://localhost:8081/baitap_gio_hang/web_gio_hang_php/upload/empty.jpg" style="width: 50%; margin-left:25%; margin-top: 30px;" alt="">
        </div>
        <?php } ?>
    </div>
</div>
<?php
include_once('../layout/footer.php');
?>