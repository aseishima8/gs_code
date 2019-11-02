<?php
//XSS対応（ echoする場所で使用！それ以外はNG ）
function h($str){
    return htmlspecialchars($str, ENT_QUOTES);
}

//DB接続
function db_conn(){
  try {

    //MAMP
    return new PDO('mysql:dbname=gs_db_kadai4;charset=utf8;host=localhost','root','root');
    
    //XAMP
    //return new PDO('mysql:dbname=gs_dbkadai4;charset=utf8;host=localhost','root','');

  } catch (PDOException $e) {
    exit('DB Connection Error:'.$e->getMessage());
  }
}

//SQLエラー
function sql_error(){
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit("SQLError:".$error[2]);
}

//リダイレクト
function redirect($file_name){
    header("Location: ".$file_name);
    exit();
}

//セッションチェック
function sschk(){
  if(!isset($_SESSION["chk_ssid"])//セッションIDがセットしていないかをチェック
  || //"or"
  $_SESSION["chk_ssid"]!=session_id()//前のページのssidといっちしないかをチェック
  ){
    exit("LOGIN ERROR");
  }else{
    session_regenerate_id(true);//新しいセッションIDを生成
    $_SESSION["chk_ssid"]=session_id();//新しく生成したセッションidをssidに代入
  }
}
