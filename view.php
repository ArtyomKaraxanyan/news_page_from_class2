<?php
require_once 'components/Database.php';
require_once 'layouts/header.php';
require_once 'cookies_sessions/session_on.php';



?>



            <?php
            require_once 'layouts/left-sidebar.php';
            ?>



        <div class="col-md-9 right">
            <div class="news ">
            <?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    //echo '<pre>';var_dump($id);die();
    $cols =  ("id");
    $db->where ($cols, $id);
    $data = $db->get($tableName = 'news',$numRows = null,    $columns = '*' );



//echo '<pre>';print_r($data);die();
        } else {
            header("Location: index.php");
        }

        ?>
           <?php if(!empty($data)){?>
                <?php foreach($data as $item):?>
                        <h2 class="title"><?php echo $item['news_name'];?></h2>
                        <div class="image_container"><img src="uploads/<?php echo $item['image_path'];?>"</div>
                        <div class = "description"><?php echo $item['description'];?></div>
                        <div><?php echo $item['content'];?></div>
                        <div class="news_date">Created  : <?php echo $item['date_of_creating'];?>  </div>
                    </div>
            <?php endforeach; ?>
            <?php } ?>
        </div>
    </div>
</div>

<?php  require_once 'layouts/footer.php'; ?>


