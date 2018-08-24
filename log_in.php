<?php
error_reporting(0);
require_once 'components/Database.php';
require_once 'layouts/header.php';
require_once 'cookies_sessions/session_on.php';
require_once 'valid/admin_validate.php';
?>

<?php
if(check_session()){
    header("Location:index.php");
}
$sign_email = $_POST['sign_email'];
$sign_password = sha1(($_POST['sign_password']));
$remember_me = $_POST['checkbox'];
$errors = [];
if (isset($_POST["singlebutton"])) {
    if (!required($sign_email) || !required($_POST['sign_password'])) {
        $errors[] = "Please fill all required fields.";
    }
    if (!empty($sign_email)) {
        if (!valid_email($sign_email)) {
            $errors[] = "You must enter valid email address.";
        }
    }
    if( count($errors )===0) {

        $db->where ("email", $sign_email);
        $db->where ('password',$sign_password );
        $data = $db->get($tableName = 'registr_s',$numRows = null,   $columns = '*');
        $count = $db->getValue ("registr_s", "count(*)");

        foreach ($data as $user) {

        }

        if ($count > 0) {
            session_start();
            $_SESSION['id'] = $user['id'];
            $_SESSION['name'] = $user['f_name'];
            header('location:welcome.php');
        }
        else{
            $warn = "Please insert correct data.";
        }
        if ($_POST["checkbox"] == '1' || $_POST["checkbox"] == 'on') {
            $hour = time() + 3600 * 24 * 30;
            setcookie('sign_email', $sign_email, $hour);
        }
    }
}


?>




<?php
require_once 'layouts/left-sidebar.php';
?>
    <div class="col-md-9 right">

        <div class="container">
            <form method="post" action="log_in.php">
                <!-- Form Name -->
                <h2 class="m_top about_info">Log In</h2>

                <!-- Email input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="E-mail">E-mail:</label>
                    <div class="col-md-6">
                        <input value="<?= trim($sign_email) ?>" name="sign_email" class="form-control input-md" id="E-mail"
                               type="text" placeholder="E-mail">

                    </div>
                </div>


                <!-- Password input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="passwordinput">Password:</label>
                    <div class="col-md-6">
                        <input value="<?= trim($_POST['sign_password']) ?>" name="sign_password"
                               class="form-control input-md" id="passwordinput" type="password"
                               placeholder="Password">

                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-4 control-label" for="checkbox">Remember me</label>
                    <div class="col-md-6">
                        <input name="checkbox" class=" input-md" id="checkbox" type="checkbox">
                    </div>
                </div>


                <!-- Button -->
                <div class="form-group">
                    <div class="col-md-6">
                        <button name="singlebutton" class="btn btn-primary " id="singlebutton">Log in</button>
                    </div>
                </div>
            </form>

            <div class="warning">
                <?php foreach($errors as $error): ?>
                <?= $error ;?>
                <div><?php endforeach;?></div>

            </div>
        </div>
    </div>

    </div>
    </div>
<?php require_once 'layouts/footer.php'; ?>