<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);
require_once $_SERVER['DOCUMENT_ROOT'].'/pilihape_api/functions/fc_admin.php';

$input_params = json_decode(file_get_contents('php://input'), true);

// login
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
    try{
        $func = new functions_adm;
        $result = array('msg'=>'gagal login, ');
        $valid = $func->fc_validation_login($input_params);
        $check_user_or_phone = $func->fc_check_user_or_phone($input_params);
        if($check_user_or_phone == false)
        {
            header(http_response_code(401));
            $result['msg'] .= "username atau no ponsel tidak terdaftar";
        }
        else
        {
            $check_pass = $func->fc_check_pass($input_params);
            if($check_pass == false || $check_pass['password'] !== $input_params['password'])
            {
                header(http_response_code(401));
                $result['msg'] .= "password salah";
            }
            else
            {
                header("store_id:".$check_pass['store_id']);
                $session = $input_params['user_or_phone'].date('ddmmyy', time());
                $upd_session = $func->fc_activate_session($input_params, $session);
                $result['msg'] = "login berhasil";
                session_start();
                $_SESSION['user_session'] = $session;
            }
        }
        echo json_encode($result);
    }
    catch (Exception $e)
    {
        echo json_encode($e);
    }
}
else
{
    header(http_response_code(405));
}

?>