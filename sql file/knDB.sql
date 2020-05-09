-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql212.epizy.com
-- Generation Time: Mar 18, 2020 at 11:59 AM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_25041824_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `expert_weather`
--

CREATE TABLE `expert_weather` (
  `weather_id` int(100) NOT NULL,
  `weather_temperature` enum('0 - 5','5 - 10','10 - 15','15 - 20','20 - 25','25 - 30','30 - 35','35 - 40','40 - 45','45 - 50') DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `username_fk` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expert_weather`
--

INSERT INTO `expert_weather` (`weather_id`, `weather_temperature`, `state`, `date`, `username_fk`, `comment`) VALUES
(1, '20 - 25', 'Uttar Pradesh', '2020-02-27', 'weather', 'The sky will be cloudy and misty. Humidity is around 88%. '),
(2, '15 - 20', 'Uttar Pradesh', '2020-02-28', 'weather', 'Ultraviolet Index is 7. A Ultraviolet index reading of 6 to 7 means high risk of harm from unprotected Sun exposure. Protection against skin and eye damage is needed.'),
(3, '15 - 20', 'Uttar Pradesh', '2020-02-29', 'weather', 'Cyclone Maha is expected to make landfall in India early Thursday and bring heavy rainfall to several areas of Gujarat and some areas of Maharashtra. Keep the emergency kit near yourself.'),
(4, '25 - 30', 'Uttar Pradesh', '2020-02-29', 'weather', 'The weather will be hazy. Humidity is 47% and wind speed is 2.6km.');

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('epiz_25041824', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'kisaan', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'users_main', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"users\",\"table_structure[]\":\"users\",\"table_data[]\":\"users\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'server', 'a', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"accounts\",\"phplogin\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(0, 'epiz_25041824', 'database', 'innotech', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"expert_weather\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"users\"],\"table_structure[]\":[\"expert_weather\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"users\"],\"table_data[]\":[\"expert_weather\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"accounts\",\"table\":\"users\"},{\"db\":\"phplogin\",\"table\":\"accounts\"},{\"db\":\"accounts\",\"table\":\"user\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('root', '[{\"db\":\"accounts\",\"table\":\"users\"},{\"db\":\"phplogin\",\"table\":\"accounts\"},{\"db\":\"accounts\",\"table\":\"user\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"pma__users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"pma__users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"pma__users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"pma__users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"pma__users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"accounts\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"pma__bookmark\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"pma__bookmark\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"pma__bookmark\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"pma__bookmark\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"phone_no\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"phone_info\"},{\"db\":\"epiz_25041824_test\",\"table\":\"phone_no\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"phone_info\"},{\"db\":\"epiz_25041824_test\",\"table\":\"phone_no\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"phone_info\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"phone_no\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"phone_info\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"phone_info\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"users\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"phone_info\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_weather\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_consultant\"},{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]'),
('epiz_25041824', '[{\"db\":\"epiz_25041824_test\",\"table\":\"expert_stock\"},{\"db\":\"epiz_25041824_test\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'accounts', 'users', '[]', '2020-01-11 04:56:09'),
('root', 'accounts', 'users', '[]', '2020-01-11 04:56:09'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`avail_date` DESC\"}', '2020-02-28 08:32:34'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`stock_id` ASC\"}', '2020-02-28 08:32:17'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`state` ASC\"}', '2020-02-28 08:31:27'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '{\"sorted_col\":\"`expert_weather`.`date` DESC\"}', '2020-02-28 03:36:31'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '{\"sorted_col\":\"`expert_weather`.`state` ASC\"}', '2020-02-28 03:35:56'),
('epiz_25041824', 'epiz_25041824_test', 'phone_info', '{\"sorted_col\":\"`phone_info`.`phone_id` ASC\"}', '2020-02-27 17:08:31'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '{\"sorted_col\":\"`expert_weather`.`weather_id` ASC\"}', '2020-02-27 17:05:45'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`stock_id`  ASC\"}', '2020-02-27 17:04:50'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`stock_id`  DESC\"}', '2020-02-27 17:04:47'),
('epiz_25041824', 'epiz_25041824_test', 'expert_consultant', '{\"sorted_col\":\"`expert_consultant`.`consultant_id` ASC\"}', '2020-02-27 17:00:57'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`stock_id` ASC\"}', '2020-02-18 04:05:44'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`stock_id` ASC\"}', '2020-02-17 15:38:41'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`store_address` ASC\"}', '2020-02-17 15:38:36'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '[]', '2020-02-17 14:48:18'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`store_contact` ASC\"}', '2020-02-17 14:47:32'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`avail_date`  ASC\"}', '2020-02-28 08:38:11'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`avail_date`  DESC\"}', '2020-02-28 08:38:14'),
('epiz_25041824', 'epiz_25041824_test', 'expert_stock', '{\"sorted_col\":\"`expert_stock`.`state` ASC\"}', '2020-02-28 08:38:42'),
('epiz_25041824', 'epiz_25041824_test', 'expert_consultant', '{\"sorted_col\":\"`expert_consultant`.`state` ASC\"}', '2020-02-28 08:57:21'),
('epiz_25041824', 'epiz_25041824_test', 'expert_consultant', '{\"sorted_col\":\"`expert_consultant`.`date` DESC\"}', '2020-02-28 08:57:47'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '{\"sorted_col\":\"`expert_weather`.`weather_id` ASC\"}', '2020-02-28 09:14:42'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '{\"sorted_col\":\"`expert_weather`.`weather_temperature` ASC\"}', '2020-02-28 09:14:48'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '[]', '2020-02-28 09:16:15'),
('epiz_25041824', 'epiz_25041824_test', 'phone_info', '{\"sorted_col\":\"`phone_id` ASC\"}', '2020-02-28 10:49:42'),
('epiz_25041824', 'epiz_25041824_test', 'phone_info', '{\"sorted_col\":\"`phone_info`.`state` ASC\"}', '2020-02-28 11:07:08'),
('epiz_25041824', 'epiz_25041824_test', 'phone_info', '{\"sorted_col\":\"`phone_info`.`phone_id` ASC\"}', '2020-02-28 14:33:17'),
('epiz_25041824', 'epiz_25041824_test', 'phone_info', '{\"sorted_col\":\"`phone_info`.`phone_id` ASC\"}', '2020-02-28 14:33:38'),
('epiz_25041824', 'epiz_25041824_test', 'expert_weather', '{\"sorted_col\":\"`expert_weather`.`weather_id` ASC\"}', '2020-02-29 00:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-01-12 08:30:48', '{\"Console\\/Mode\":\"collapse\"}'),
('root', '2020-01-12 08:30:48', '{\"Console\\/Mode\":\"collapse\"}'),
('epiz_25041824', '2020-03-18 15:58:48', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":-6}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `UserType` enum('Expert: Weather','Expert: Stock','Expert: Consultant','Admin') NOT NULL DEFAULT 'Expert: Weather',
  `State` enum('Andhra Pradesh','Arunachal Pradesh','Assam','Bihar','Chhattisgarh','Goa','Gujarat','Haryana','Himachal Pradesh','Jammu and Kashmir','Jharkhand','Karnataka','Kerala','Madhya Pradesh','Maharashtra','Manipur','Meghalaya','Mizoram','Nagaland','Orissa','Punjab','Rajasthan','Sikkim','Tamil Nadu','Telagana','Tripura','Uttaranchal','Uttar Pradesh','West Bengal','Andaman and Nicobar Islands','Chandigarh','Dadar and Nagar Haveli','Daman and Diu','Delhi','Ladakh','Lakshadeep','Pondicherry') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `UserType`, `State`) VALUES
(2, 'sarthak', '$2y$10$1I2BUDC21XrPF8H9P5WjJOL1gWCSdxQauBLDJd0IH2kbHkFZK7gy.', 'sarthak@gmail.com', 'Expert: Weather', 'Delhi'),
(3, 'naveen', '$2y$10$6O4PXYRVBsS4Gly6dTAX2.I7BIEXYicLbmXFKFyaY1JFbVN3rHvz6', 'naveen@gmail.com', 'Admin', NULL),
(4, 'prateek', '$2y$10$nj9awueKPuul0DZOZH6Dyu.hul1M9O1L.wNpENhB9KbT5NLdUNFnW', 'prateek@gmail.com', 'Expert: Stock', 'Punjab'),
(5, 'superuser', '$2y$10$hqJXASi.Dt6lV21kWWBwN.gAy2ByRW56DtE.Vwtgs8QWjEwQKpssK', 'super@gm.com', 'Expert: Consultant', 'Andhra Pradesh'),
(6, 'singh', '$2y$10$jIHSTg7A5/M9r3gn9.2vR.V.1aFCXrRsg5MJqf1JHawjVAQPqvJ3e', 'singh@gmail.com', 'Expert: Weather', 'Delhi'),
(18, 'naveenweather', '$2y$10$kjr/JCH/IeduYn1yTXcUT.On6BFhlRUmHkI8dZKNCSz8hgD5UKkzK', 'nav@gamil.com', 'Expert: Weather', 'Maharashtra'),
(19, 'user', '$2y$10$QymDoOtIUb4aYtovKR4dX.0jc0ErvJ8FDcaBdOfkNzURO5eO9MjqK', 'user@gmail.com', 'Expert: Weather', 'Goa'),
(20, 'abc', '$2y$10$u2RMAq/Ndw0mEfjPyAmnqO31twm7faPXLePSrJjgLxXWqt4aczIAO', 'abs@a.com', 'Expert: Weather', 'Goa'),
(21, 'probro', '$2y$10$Ng27oIKkx2S1xsRolDHxHeSxlPR/.1Bw.ALqCJeKS.8zZ1ye9lFUS', 'prateekkhanduri1@gmail.com', 'Expert: Stock', 'Uttar Pradesh'),
(22, 'probru', '$2y$10$GNF4k/GAzgN8ql9gh4g5TeqILGHnTlMh8AU/P3QGK5TiYItLs8lda', 'prateekkhanduri1@gmail.com', 'Expert: Consultant', 'Andhra Pradesh'),
(23, 'xyz', '$2y$10$Fd8EiThbJ3N7ML5Nk6/zbefrZsJ9vkUBZKB4KB8obaRwCmwSbe81a', 'xyz@gmail.com', 'Expert: Weather', 'Assam'),
(24, 'naveenstock', '$2y$10$Cx7el2DiJCxqXtvkbKSjLePq/8HBVKsJC7C.7WGZPhJkQk3WMAl5y', 'nav@gmail.com', 'Expert: Stock', 'Pondicherry'),
(25, 'weather', '$2y$10$W2bIrv846UOYsaxq2sDNJ.HWlA5Z9cSGX5Hk5kzJUDwrgHf/loEHW', 'weather@gmail.com', 'Expert: Weather', 'Uttar Pradesh'),
(26, 'consultant', '$2y$10$UnMZIMKM5BJg/5K0sWor6OZRxKikgsqGSd05kZvSbqnIhYCeCiEAW', 'consultant@gmail.com', 'Expert: Consultant', 'Uttar Pradesh'),
(27, 'stock', '$2y$10$Ui8mpwy/mazza8Snf3KU8e7IaT0BxRksrbqCjgqo3z2ecbQB.BQ4m', 'stock@gmail.com', 'Expert: Stock', 'Punjab'),
(28, 'admin', '$2y$10$T1EqdGiknf2sTTyT425tNuMDlzzZj.oJBbmzj5deoZXpuQ3VAs0pq', 'admin@gmail.com', 'Admin', NULL),
(29, 'dasdas', '$2y$10$0f89MFvCfwr49wVczQoZPedCH9nLpeWnylthcGKC9uQ0Kp5JKjzxC', 'asdasdasd@asdSADsd', 'Expert: Weather', 'Andhra Pradesh'),
(30, 'dasdsad', '$2y$10$rARu1HRCEGHtOwlbh9Xqb.SlexWfPubbBEUvAmukFjohUgLwAbFzy', 'adasd@dad.com', 'Expert: Weather', 'Andhra Pradesh'),
(31, 'samsingh', '$2y$10$zn0iOnHOBt0SmPPBIYjKR.w6uIN9Qj2Kdl7JgUnGRTcUMHKDgQLGi', 'sam@gmail.com', 'Expert: Consultant', 'Orissa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expert_weather`
--
ALTER TABLE `expert_weather`
  ADD PRIMARY KEY (`weather_id`),
  ADD KEY `username_fk` (`username_fk`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expert_weather`
--
ALTER TABLE `expert_weather`
  MODIFY `weather_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
