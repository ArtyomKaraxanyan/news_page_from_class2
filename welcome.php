<?php
require_once 'components/Database.php';
require_once 'layouts/header.php';
require_once 'cookies_sessions/session_on.php';




if(isset($_SESSION['id'])) {
    $id = $_SESSION['id'];

   // var_dump($_SESSION);die();


    $db->join("countries c", "r.country_id=c.id", "LEFT");
    $db->where('r.id', $id);
    $data = $db->get("registr_s r" , null, "r.*, c.country_name");
    foreach ($data as $user) {
       // print_r ($user);die();
    }

}
//var_dump($_SESSION);die();
?>


<?php
require_once 'layouts/left-sidebar.php';
?>
    <div class="col-md-9 right">

        <div class="container">
            <h2 class="about_info">Welcome <?= $user ['f_name'];?></h2>
            <img src ="uploads/profiles/<?=$user['profile_path'];?>"  class="profile_img_size">
            <ul>

                <li>Last Name: <?= $user['l_name'] ; ?></li>
                <li>Email address:  <?= $user ['email']; ?> </li>
                <li>Country: <?= $user['country_name'] ; ?> </li>


            </ul>
            <a href ="admin.php" class="admin"> Please  check here if you want to add news.</a>
            <?php echo "And"; ?>
            <a href="delete.php"> Please check here if you want to delete news. </a>
        </div>
    </div>

    </div>
    </div>
<?php require_once 'layouts/footer.php'; ?>