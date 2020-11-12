<?php
header("Access-Control-Allow-Origin: *");
session_start();
if(!isset($_SESSION['user_session']))
{
    $_SESSION['user_session'] = 'x';
}
require_once $_SERVER['DOCUMENT_ROOT'].'/pilihape_api/functions/fc_ponsel.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/pilihape_api/functions/fc_admin.php';

$input_params = json_decode(file_get_contents('php://input'), true);
$func = new functions;
$fc_adm = new functions_adm;

// get data
    if($_SERVER['REQUEST_METHOD'] =='GET')
    {
        $check_session = $fc_adm->fc_check_session($_SESSION['user_session']); #echo var_dump($check_session);die;
        if($check_session == false)
        {
            header(http_response_code(401));
            $result['msg'] .= ' sesi tidak valid, silahkan login dulu';
        }
        else
        {
            // get all data 
            if($_SERVER['QUERY_STRING'] == "")
            {
                $result = $func->fc_get_all_data();
            }
            else
            {
                $option = substr($_SERVER['QUERY_STRING'], 0, strlen(($_SERVER['QUERY_STRING']))-2); #echo $option;die;
                $id = substr($_SERVER['QUERY_STRING'], 8, strlen(($_SERVER['QUERY_STRING']))); #echo $id;die;
                if($option == 'prdctid')
                {
                    // get data by product id
                    $data = $func->fc_get_data_by_id($id);
                    $bk = $func->fc_get_bk_id($id);
                    $wk = $func->fc_get_wk_id($id);
                    // get store phone no
                    $store_phone_no = $fc_adm->fc_get_store_info($data['store_id']);
                    if($data == false && $bk == false && $wk == false)
                    {
                        $result = array("msg"=>"data tidak ditemukan");
                    }
                    else
                    {
                        $result = $data;
                        $result['bk'] = $bk;
                        $result['wk'] = $wk;
                        $result['phone_no'] = $store_phone_no;
                    }
                }
                else if($option == 'storeid')
                {
                    // get data by store_id
                    $data = $func->fc_get_data_by_store_id($id); #echo var_dump($data);die;
                    $bk = $func->fc_get_bk_id($id);
                    $wk = $func->fc_get_wk_id($id);
                    // get store phone no
                    if($data == false && $bk == false && $wk == false)
                    {
                        $result = array("msg"=>"data tidak ditemukan");
                    }
                    else
                    {
                        $result = $data;
                    }
                }
                
            }
            echo json_encode($result);
        }
    }

    // add new data 
    if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        try{
            $result = array('msg'=>'gagal menginput data:');
            $check_session = $fc_adm->fc_check_session($_SESSION['user_session']); #echo var_dump($check_session);die;
            if($check_session == false)
            {
                header(http_response_code(401));
                $result['msg'] .= ' sesi tidak valid, silahkan login dulu';
            }
            else
            {
                $validation = $func->fc_validation_input($input_params);
                if($validation['status'] == false)
                {
                    echo json_encode($validation);
                    die;
                }
                $pdo = new cstr;
                $input_params['ranking_prosesor'] = $func->fc_get_proc_score($input_params['prosesor'], $pdo)['score'];
                $input_bk_wk = $func->fc_input_bk_wk($input_params, $pdo);
                $input_process = $func->fc_input_data($input_params, $pdo);
                if($input_bk_wk == true && $input_process == true)
                {
                    $result['msg'] = 'data berhasil di input';
                }
                else
                {
                    $pdo->pdo()->rollBack();
                    $result['msg'] = 'gagal menginput data';
                }
            }
            echo json_encode($result);
        }
        catch (Exception $e)
        {
            echo json_encode("error:".$e);
        }
        catch (PDOException $e)
        {
            echo json_encode("SQL error".$e);
        }
    }

    // edit data by id 
    if($_SERVER['REQUEST_METHOD'] == 'PUT')
    {
        try
        {
            $result = array('msg'=>'gagal memperbarui data');
            $check_session = $fc_adm->fc_check_session($_SESSION['user_session']);
            if($check_session == false)
            {
                header(http_response_code(401));
                $result['msg'] .= ' sesi tidak valid, silahkan login dulu';
            }
            else
            {
                $validation = $func->fc_validation_input($input_params);
                if($validation['status'] == false)
                {
                    echo json_encode($validation);
                    die;
                }
                $input_params['ranking_prosesor'] = $func->fc_get_proc_score($input_params['prosesor'], $pdo)['score'];
                $update_bobotkriteria = $func->fc_update_bk_wk($input_params);
                $update_process = $func->fc_update_data($input_params);
                if($update_bobotkriteria == true && $update_process == true)
                {
                    $result['msg'] = 'data berhasil dirubah';
                }
            }
            echo json_encode($result);
        }
        catch (Exception $e)
        {
            echo json_encode($e);
        }
        catch (PDOException $e)
        {
            echo json_encode($e);
        }
    }

    // delete data by id 
    if($_SERVER['REQUEST_METHOD'] == 'DELETE')
    {
        $check_session = $fc_adm->fc_check_session($_SESSION['user_session']);
        if($check_session == false)
        {
            header(http_response_code(401));
            $result['msg'] .= ' sesi tidak valid, silahkan login dulu';
        }
        else
        {
            $result = array('msg'=>'gagal menghapus data: ');
            // cek id 
            if($_SERVER['QUERY_STRING'] == "")
            {
                $result['msg'] .= 'id tidak ditemukan';
            }
            else
            // get data by id
            {
                $id = substr($_SERVER['QUERY_STRING'], 3, strlen(($_SERVER['QUERY_STRING'])));
                $delete_kriteria = $func->fc_delete_bk_wk($id);
                $delete_process = $func->fc_delete_data($id);
                if($delete_kriteria == true && $delete_process == true)
                {
                    $result['msg'] = "data berhasil di hapus";
                }
            }
        }
        echo json_encode($result);
    }


?>