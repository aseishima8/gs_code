-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2019 年 11 月 02 日 00:16
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_db_kadai4`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '吾輩は猫である', 'https://www.amazon.co.jp/dp/4041001013/', '苦沙弥先生に飼われる一匹の猫「吾輩」が観察する人間模様。ユーモアや風刺を交え、猫に託して展開される人間社会への痛烈な批判で、漱石の名を高からしめた。今なお爽快な共感を呼ぶ漱石処女作にして代表作。', '2019-11-01 23:39:19'),
(2, 'こころ', 'https://www.amazon.co.jp/dp/4101010137/', 'あなたはそのたった一人になれますか。\r\n\r\n親友を裏切って恋人を得た。しかし、親友は自殺した。増殖する罪悪感、そして焦燥……。知識人の孤独な内面を抉る近代文学を代表する名作。\r\n\r\n鎌倉の海岸で、学生だった私は一人の男性と出会った。不思議な魅力を持つその人は、“先生\"と呼んで慕う私になかなか心を開いてくれず、謎のような言葉で惑わせる。やがてある日、私のもとに分厚い手紙が届いたとき、先生はもはやこの世の人ではなかった。遺された手紙から明らかになる先生の人生の悲劇――それは親友とともに一人の女性に恋をしたときから始まったのだった。 ', '2019-11-01 23:53:27'),
(3, '三四郎', 'https://www.amazon.co.jp/dp/4101010048/', '熊本の高等学校を卒業して、東京の大学に入学した小川三四郎は、見る物聞く物の総てが目新しい世界の中で、自由気儘な都会の女性里見美禰子に出会い、彼女に強く惹かれてゆく……。青春の一時期において誰もが経験する、学問、友情、恋愛への不安や戸惑いを、三四郎の恋愛から失恋に至る過程の中に描いて『それから』『門』に続く三部作の序曲をなす作品である。', '2019-11-01 23:56:47');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$W0NJxeu0hAXjAkWPXNLaMOVGnVyAz78tH4KDCvnL51emkeLPx6y02', 1, 0),
(2, 'テスト2一般', 'test2', '$2y$10$vuTHAM1k9zBIL.BZT0BMzeFNLYsr1oTqiy67LrzeAFFiRfFdapfBC', 0, 0),
(3, 'テスト３', 'test3', '$2y$10$hdY5KF9WA6tgWIqWYJDzc.aT.CtN83T7T9tGoMBzb7SEXjiIyBKpK', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
