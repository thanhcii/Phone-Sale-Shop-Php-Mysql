<?php
class JConfig {
	var $offline = '0';
	var $editor = 'tinymce';
	var $list_limit = '20';
	var $helpurl = 'http://help.joomla.org';
	var $debug = '0';
	var $debug_lang = '0';
	var $sef = '0';
	var $sef_rewrite = '0';
	var $sef_suffix = '0';
	var $feed_limit = '10';
	var $feed_email = 'author';
	var $secret = 'dhEFk4UhA8AG65mE';
	var $gzip = '0';
	var $error_reporting = '-1';
	var $xmlrpc_server = '0';
	var $log_path = '/home/vagabond/public_html/mobilesieure.com/logs';
	var $tmp_path = '/home/vagabond/public_html/mobilesieure.com/tmp';
	var $live_site = '';
	var $force_ssl = '0';
	var $offset = '0';
	var $caching = '0';
	var $cachetime = '15';
	var $cache_handler = 'file';
	var $memcache_settings = array();
	var $ftp_enable = '0';
	var $ftp_host = '127.0.0.1';
	var $ftp_port = '21';
	var $ftp_user = 'admin';
	var $ftp_pass = 'manh0915';
	var $ftp_root = '';
	var $dbtype = 'mysql';
	var $host = 'localhost';
	var $user = 'vagabond_manh';
	var $db = 'vagabond_mobilesieure';
	var $dbprefix = 'jos_';
	var $mailer = 'mail';
	var $mailfrom = 'manhtqvnn4@gmail.com';
	var $fromname = 'MOBILE SIEU RE';
	var $sendmail = '/usr/sbin/sendmail';
	var $smtpauth = '0';
	var $smtpuser = '';
	var $smtppass = '';
	var $smtphost = 'localhost';
	var $MetaAuthor = '1';
	var $MetaTitle = '1';
	var $lifetime = '15';
	var $session_handler = 'database';
	var $password = 'manh0915';
	var $sitename = 'MOBILE SIEU RE';
	var $MetaDesc = 'Joomla! - hệ thống quản lý nội dung và cổng giao tiếp động.';
	var $MetaKeys = 'joomla, Joomla';
	var $offline_message = 'Trang Web này đang tạm ngừng để bảo dưỡng. Và sẽ hoạt động trở lại sớm nhất.';
}
?>