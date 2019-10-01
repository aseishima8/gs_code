<?php
//共通に使う関数を記述

//XSS対応（ echoする場所で使用！それ以外はNG ）
function h($str)
{
    return htmlspecialchars($str, ENT_QUOTES);
}

//DB接続します
function db_conn(){
    try {
      $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','root');
      return $pdo;
    } catch (PDOException $e) {
      exit('DB Connection Error:'.$e->getMessage());
    }
    }

//execute（SQL実行時にエラーがある場合）
function sql_error(){
    $error = $stmt->errorInfo();
    exit("SQLError: ".$error[2]);
}


//index.phpへリダイレクト
function redirect($file_name){
  header("Location: ".$file_name);
  exit();
} 
