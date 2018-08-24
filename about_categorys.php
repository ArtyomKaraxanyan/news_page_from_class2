
<?php
require_once 'components/Database.php';

require_once 'layouts/header.php';
?>


<?php
require_once 'layouts/left-sidebar.php';
?>
<?php



$db->join("news n", "c.id=n.category_id", "LEFT");
$db->groupBy("c.title","desc");
$categories_counts = $db->get("categories c", null, "c.*,count(*)");

//echo '<pre>';print_r($data);die();



?>


<div class="col-md-9 right">

        <h3 class="about_info">Information about  Category </h3>
            <div class="row">
                <?php foreach ($categories_counts as $c  ):?>
                    <div class="">
                        <div class="">
                            <a  href="category.php?id=<?php echo $c['id']; ?>"><?php echo $c['title'].  "(". $c['count(*)'] .")"."," ; ?></a>
                        </div>
                    </div>
                <?php endforeach; ?>



                <p>
            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in
            some form, by injected humour, or randomised words which don't look even slightly believable.
            If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden
            in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks
            as necessary, making this the first true generator on the Internet.
        </p>
    </div>
</div>


<?php  require_once 'layouts/footer.php'; ?>