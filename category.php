
<?php
$the_id = $_GET['id'];

if(!$the_id){
    header('location:'.$_SERVER['HTTP_REFERER']);
}

require_once 'components/Database.php';

require_once 'layouts/header.php';
?>


<?php
require_once 'layouts/left-sidebar.php';
?>
<?php

//$sql = "select n1.*, c1.id as c_id, from news as n1
 
 //inner join categories as c1 ON n1.category_id=c1.id where c1.id = '$id' order by id desc ";

$db->join("categories c", "c.id=n.category_id", "INNER");
$db->where('c.id',"$the_id");
$db->orderBy ("c.id","desc");
$data = $db->get ("news n", null, "n.*, c.title");
//echo '<pre>'; print_r($data);die();


?>
<div class="col-md-9 right">
    <?php if(!empty($data)) : ?>
        <div class="news_list ">
            <?php foreach($data as $item):?>
                <h4 class="title"><a href="view.php?id=<?php echo $item['id']; ?>"><?php echo $item['news_name']; ?></a>
                </h4>
                <div class="image_container">
                    <img src="uploads/<?php echo $item['image_path']; ?>">
                </div>
                <div class="description"><?php echo $item['description']; ?></div>

                <div class="category">Category: <?php
                    echo $item['title'];

                    ?> </div>
            <?php endforeach;  ?>
        </div>


    <?php endif;?>
</div>

</div>
</div>
<?php  require_once 'layouts/footer.php'; ?>
