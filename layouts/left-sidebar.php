<?php
require_once 'components/Database.php';





//echo '<pre>',print_r($conn); die();

$data = $db->get($tableName = 'categories',$numRows = null,    $columns = '*');





?>
<div class="container">
    <div class="row">
        <div class="col-md-3 left">
            <h3 style="font-style: italic">Categories</h3>
            <ul class="category_nav" id="sortable">
                <?php foreach ($data as $value):?>
                    <li><a href="category.php?id=<?= $value['id']


                        ?>"><?= $value['title']?></a> </li>
                <?php endforeach;?>
            </ul>

        </div>
