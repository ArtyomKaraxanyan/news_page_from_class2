
<?php

require_once 'components/Database.php';

require_once 'layouts/header.php';
?>


<?php
require_once 'layouts/left-sidebar.php';
?>


<?php


$db->join("news n", "c.id=n.category_id", "LEFT");
$data = $db->get ("categories c", null, "n.*, c.title");
$db->orderBy ("id","desc");

//echo '<pre>';var_dump($data);die();
?>


<div class="col-md-9 right">
    <div class="news_list ">
        <?php if (!empty($data)): ?>
            <?php foreach ($data as $item):?>


                <h4 class="title"><a href="view.php?id=<?php echo $item['id']; ?>"><?php echo $item['news_name']; ?></a>
                </h4>
                <div class="image_container">
                    <img src="uploads/<?php echo $item['image_path']; ?>">
                </div>
                <div class="description"><?php echo $item['description']; ?></div>


                <div class="category">Category: <?php
                    echo $item['title'];

                    ?> </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>
</div>
</div>
</div>




<?php require_once 'layouts/footer.php'; ?>


