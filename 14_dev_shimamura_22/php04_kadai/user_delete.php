<?php
session_start();
//1. POSTデータ取得
$id = filter_input( INPUT_GET, "id" );

//2. DB接続します
include("funcs.php");

sschk();//関数読み込みfunction参照

$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare("DELETE FROM gs_user_table WHERE id=:id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute(); //実行

//４．データ登録処理後
if($status==false){
  sql_error();
}else{
  redirect("user_select.php");
}
?>
