-- phpMyAdmin SQL Dump
-- version 2.11.9.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2009 at 01:47 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vagabond_mobilesieure`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 19, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 19, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 14, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 14, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 9, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 10, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1),
(35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.3\r\nDEV_STATUS=stable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', -2, 1, 0, 1, '2008-08-12 10:00:00', 62, '', '2008-08-12 10:00:00', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 0, '', '', 0, 92, 'robots=\nauthor='),
(2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', -2, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', -2, 1, 0, 3, '2008-08-09 22:30:34', 62, '', '2008-08-09 22:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>', '', -2, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://joomla.org/" target="_blank" title="Joomla!">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2008 <a href="http://www.opensourcematters.org/" target="_blank" title="Open Source Matters">Open Source Matters</a>. The sample content distributed with Joomla! is licensed under the <a href="http://docs.joomla.org/JEDL" target="_blank" title="Joomla! Electronic Document License">Joomla! Electronic Documentation License.</a> All data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p> <p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1" target="_blank" title="GNU General Public License"> GNU General Public License</a>. If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4" target="_blank" title="How To Apply These Terms To Your Program">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html" target="_blank" title="GNU General Public License FAQ">''GNU General Public License FAQ''</a>.</p> <p>The Joomla! licence has always been GPL.</p>', '', -2, 4, 0, 25, '2008-08-20 10:11:07', 62, '', '2008-08-20 10:11:07', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 102, 'robots=\nauthor='),
(6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla Core Team and Working Group members are volunteer developers, designers, administrators and managers who have worked together to take Joomla! to new heights in its relatively short life. Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 54, 'robots=\nauthor='),
(9, 'Millions of Smiles', 'millions-of-smiles', '', '<p>The Joomla! team has millions of good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had millions of downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 23, 'robots=\nauthor='),
(10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', -2, 3, 0, 32, '2008-07-30 14:06:37', 62, '', '2008-07-30 14:06:37', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 10, 'robots=\nauthor='),
(11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', -2, 3, 0, 28, '2008-07-30 20:27:52', 62, '', '2008-07-30 20:27:52', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 14, 'robots=\nauthor='),
(12, 'Why does Joomla! 1.5 use UTF-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', -2, 3, 0, 31, '2008-08-05 01:11:29', 62, '', '2008-08-05 01:11:29', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 29, 'robots=\nauthor='),
(13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', -2, 3, 0, 28, '2008-08-06 16:47:35', 62, '', '2008-08-06 16:47:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 11, 'robots=\nauthor='),
(14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', -2, 3, 0, 31, '2008-08-06 21:27:49', 62, '', '2008-08-06 21:27:49', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 0, '', '', 0, 23, 'robots=\nauthor='),
(15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', -2, 3, 0, 31, '2008-08-06 19:28:35', 62, '', '2008-08-06 19:28:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 8, 'robots=\nauthor='),
(16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', -2, 3, 0, 28, '2008-08-06 19:29:28', 62, '', '2008-08-06 19:29:28', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 20, 'robots=\nauthor='),
(17, 'My MySQL database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', -2, 3, 0, 31, '2008-08-07 09:30:37', 62, '', '2008-08-07 09:30:37', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 9, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>', -2, 4, 0, 29, '2008-08-08 23:32:45', 62, '', '2008-08-08 23:32:45', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 59, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', -2, 4, 0, 29, '2008-08-09 07:49:20', 62, '', '2008-08-09 07:49:20', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 152, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>', '', -2, 4, 0, 25, '2008-08-09 08:33:57', 62, '', '2008-08-09 08:33:57', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 210,000 active registered Users on the <a href="http://forum.joomla.org" target="_blank" title="Joomla Forums">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/" target="_blank" title="JoomlaCode">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Well over 6,000,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>Nearly 4,000 extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" target="_blank" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li></ul>', '', -2, 4, 0, 30, '2008-08-09 16:46:37', 62, '', '2008-08-09 16:46:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 50, 'robots=\nauthor='),
(22, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p style="margin-bottom: 0in">In Joomla! 1.5, you''ll notice: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</p>   </li><li>     <p style="margin-bottom: 0in"> Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</p>   </li><li>     <p style="margin-bottom: 0in"> Extended integration of external applications through Web services and remote authentication such as the Lightweight Directory Access Protocol (LDAP)</p>   </li><li>     <p style="margin-bottom: 0in"> Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</p>   </li><li>     <p style="margin-bottom: 0in">       A more sustainable and flexible framework for Component and Extension developers</p>   </li><li>     <p style="margin-bottom: 0in">Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</p></li></ul>', -2, 4, 0, 29, '2008-08-11 22:13:58', 62, '', '2008-08-11 22:13:58', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 92, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', -2, 4, 0, 25, '2008-08-11 04:22:14', 62, '', '2008-08-11 04:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 11, 'robots=\nauthor='),
(24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', -2, 4, 0, 29, '2008-08-12 22:33:10', 62, '', '2008-08-12 22:33:10', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 70, 'robots=\nauthor='),
(25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details, see <a href="http://www.joomla.org/about-joomla/technical-requirements.html" target="_blank" title="Joomla! Technical Requirements">Joomla! Technical Requirements</a>.', '', -2, 3, 0, 31, '2008-08-11 00:42:31', 62, '', '2008-08-11 00:42:31', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 25, 'robots=\nauthor='),
(26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the <br />   <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>', '', -2, 4, 0, 29, '2008-08-11 06:00:00', 62, '', '2008-08-11 06:00:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 0, 'About Joomla!, General, Extensions', '', 0, 102, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a> section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul>	<li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li>	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community. </li></ul><p>These are just a few ways you can contribute. See <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a> for many more ways.</p>', '', -2, 4, 0, 30, '2008-08-12 16:50:48', 62, '', '2008-08-12 16:50:48', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 0, '', '', 0, 52, 'robots=\nauthor='),
(28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', -2, 3, 0, 31, '2008-08-11 01:10:59', 62, '', '2008-08-11 01:10:59', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', -2, 3, 0, 32, '2008-08-11 03:11:38', 62, '', '2008-08-11 03:11:38', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. ', '', -2, 3, 0, 32, '2008-08-11 01:12:18', 62, '', '2008-08-11 01:12:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 8, 'robots=\nauthor='),
(31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', -2, 3, 0, 27, '2008-08-11 09:12:55', 62, '', '2008-08-11 09:12:55', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor='),
(32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', -2, 3, 0, 28, '2008-08-10 23:13:33', 62, '', '2008-08-10 23:13:33', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', -2, 3, 0, 31, '2008-08-11 15:14:11', 62, '', '2008-08-11 15:14:11', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', -2, 3, 0, 32, '2008-08-11 17:14:57', 62, '', '2008-08-11 17:14:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', -2, 3, 0, 31, '2008-08-10 23:15:36', 62, '', '2008-08-10 23:15:36', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 18, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', -2, 3, 0, 28, '2008-08-10 23:16:20', 62, '', '2008-08-10 23:16:20', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', -2, 3, 0, 28, '2008-08-11 09:17:00', 62, '', '2008-08-11 09:17:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', -2, 3, 0, 32, '2008-08-11 17:18:14', 62, '', '2008-08-11 17:18:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 7, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', -2, 3, 0, 27, '2008-08-11 09:19:01', 62, '', '2008-08-11 09:19:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', -2, 3, 0, 27, '2008-08-11 05:19:43', 62, '', '2008-08-11 05:19:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', -2, 1, 0, 3, '2008-08-12 00:17:31', 62, '', '2008-08-12 00:17:31', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', -2, 1, 0, 3, '2008-08-12 00:25:50', 62, '', '2008-08-12 00:25:50', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', -2, 0, 0, 0, '2008-08-12 09:26:52', 62, '', '2008-08-12 09:26:52', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 43, 'robots=\nauthor='),
(44, 'Joomla! Security Strike Team', 'joomla-security-strike-team', '', '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>', '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla! Community Portal', 'joomla-community-portal', '', '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://community.joomla.org/magazine.html" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(46, 'Mobilesieure.com', 'gii-thiu', '', 'Nội dung giới thiệu', '', 1, 4, 0, 25, '2009-04-22 18:03:46', 62, '', '2009-04-22 18:09:00', 62, 0, '0000-00-00 00:00:00', '2009-04-22 18:03:46', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 14, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(45, 1),
(6, 2),
(44, 3),
(5, 4),
(9, 5),
(30, 6),
(16, 7);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Trang chủ', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=0\nnum_intro_articles=0\nnum_columns=0\nnum_links=0\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Welcome to the Frontpage\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(2, 'mainmenu', 'Sản phẩm', 'joomla-license', 'index.php?option=com_virtuemart', 'component', 1, 0, 34, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(41, 'mainmenu', 'Liên hệ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Documentation', 'joomla-documentation', 'http://docs.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Joomla! Magazine', 'joomla-community-magazine', 'http://community.joomla.org/magazine.html', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 6, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Giới thiệu', 'joomla-overview', 'index.php?option=com_content&view=article&id=46', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'Khuyến mãi', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Resources', 'Additional links'),
(5, 'ExamplePages', 'Example Pages', 'Example Pages'),
(6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(57, 'Main menu', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(49, 'Blackberry', '', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=8\nshow_price=1\nshow_addtocart=0\ndisplay_style=table\nproducts_per_row=4\ncategory_id=2\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(55, 'Footer', '<p align="center"> Địa chỉ:  475 - Lương Ngọc Quyến - TP Thái Nguyên                                                                Điện thoại: 0903 4444 03       Yahoo: nguahoangtq</p>', 0, 'bottom', 62, '2009-04-24 06:29:40', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(44, 'Sản phẩm', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_product_categories', 0, 0, 1, 'menutype=jscook\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=vbr\njscookTree_style=ThemeXP\nroot_label=Shop\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(43, 'Main menu', '', 2, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(53, 'Quảng cáo', '<img src="banner.png" border="0" width="200" height="600" />', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(52, 'Logo', '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="940" height="165"><param name="width" value="940" /><param name="height" value="165" /><param name="src" value="banner.swf" /><embed type="application/x-shockwave-flash" width="940" height="165" src="banner.swf"></embed></object>', 0, 'logo', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(54, 'Thống kê', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 0, 'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n', 0, 0, ''),
(56, 'A', '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="880" height="200"><param name="src" value="banner1.swf" /><param name="width" value="880" /><param name="height" value="200" /><embed type="application/x-shockwave-flash" src="banner1.swf" width="880" height="200"></embed></object>', 0, 'top', 62, '2009-04-24 05:49:13', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(46, 'Sản phẩm mới', '', 0, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=4\nshow_price=1\nshow_addtocart=0\ndisplay_style=table\nproducts_per_row=4\ncategory_id=\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(48, 'Nokia', '', 0, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=8\nshow_price=1\nshow_addtocart=0\ndisplay_style=table\nproducts_per_row=4\ncategory_id=1\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(43, 0),
(44, 0),
(46, 1),
(48, 1),
(49, 1),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 62, '2008-09-14 00:24:25', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:37', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:51', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:11', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:51', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 14, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1240555009', '39570d51271c680c7244327e1c8074d7', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:5;s:19:"session.timer.start";i:1240554952;s:18:"session.timer.last";i:1240555009;s:17:"session.timer.now";i:1240555009;s:22:"session.client.browser";s:69:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; yie8)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:34:{i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554952;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554952;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554952;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554952;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555010;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555010;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555010;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555010;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555009;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555010;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:11:"shop.browse";last_browse_parameters|a:7:{s:11:"category_id";s:1:"1";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}'),
('', '1240554959', 'bcf2579c42efa2d38725c6ff148c4e12', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240554959;s:18:"session.timer.last";i:1240554959;s:17:"session.timer.now";i:1240554959;s:22:"session.client.browser";s:90:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:17:{i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554959;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240554962', '2670e72c8954d5036f034a72d9596374', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240554962;s:18:"session.timer.last";i:1240554962;s:17:"session.timer.now";i:1240554962;s:22:"session.client.browser";s:63:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:17:{i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554962;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240554992', '775840987da47c8b47eaeef03a0fc18f', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1240554965;s:18:"session.timer.last";i:1240554992;s:17:"session.timer.now";i:1240554992;s:22:"session.client.browser";s:114:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";s:2:"31";}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:2:{s:3:"idx";i:1;i:0;a:2:{s:10:"product_id";i:31;s:11:"category_id";s:1:"2";}}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:19:{i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554992;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554965;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:1:{s:7:"flypage";s:11:"flypage.tpl";}i:30;a:1:{s:7:"flypage";s:11:"flypage.tpl";}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:20:"shop.product_details";last_browse_parameters|a:7:{s:11:"category_id";N;s:15:"manufacturer_id";N;s:7:"keyword";b:0;s:8:"keyword1";N;s:8:"keyword2";N;s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}'),
('', '1240555056', 'a60f3cca36e7300706c7cd17878c04f1', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:7;s:19:"session.timer.start";i:1240554968;s:18:"session.timer.last";i:1240555041;s:17:"session.timer.now";i:1240555056;s:22:"session.client.browser";s:104:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; FDM; UAMS 4.1.223.2)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:26:{i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554969;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555057;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:10:"shop.index";'),
('', '1240554606', '5dc071dcc21b9a5710127d210122bda2', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240554606;s:18:"session.timer.last";i:1240554606;s:17:"session.timer.now";i:1240554606;s:22:"session.client.browser";s:90:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:19:{i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554606;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555170', '6a4a7e8f2e1558cad3748c6305548b42', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1240554946;s:18:"session.timer.last";i:1240555169;s:17:"session.timer.now";i:1240555170;s:22:"session.client.browser";s:90:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.5) Gecko/2008120122 Firefox/3.0.5";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:18:{i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554946;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554947;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554947;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554947;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554947;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554947;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554947;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:10:"shop.index";'),
('', '1240555492', '0a17b7fc68cf2b9365775c1099c6ddfa', 1, 0, '', 0, 0, '__default|a:7:{s:22:"session.client.browser";s:90:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9";s:15:"session.counter";i:22;s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:19:"session.timer.start";i:1240554323;s:18:"session.timer.last";i:1240555490;s:17:"session.timer.now";i:1240555492;}userstate|a:1:{s:10:"product_id";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:2:{s:3:"idx";i:1;i:0;a:2:{s:10:"product_id";i:25;s:11:"category_id";s:1:"2";}}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:37:{i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555383;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555493;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555382;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555383;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555383;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555492;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555383;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555478;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555493;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555468;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555383;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:11:"shop.browse";last_browse_parameters|a:7:{s:11:"category_id";s:1:"2";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}');
INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1240555223', '1f350ea2967dc0372a7fdd008fdc78b9', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1240555112;s:18:"session.timer.last";i:1240555112;s:17:"session.timer.now";i:1240555223;s:22:"session.client.browser";s:55:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:29:{i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555113;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555223;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555181', '2794a0895a06a2c3e557eb65ce031ede', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:6;s:19:"session.timer.start";i:1240555162;s:18:"session.timer.last";i:1240555173;s:17:"session.timer.now";i:1240555181;s:22:"session.client.browser";s:111:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9 (.NET CLR 3.5.30729)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";s:2:"24";}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:2:{s:3:"idx";i:1;i:0;a:2:{s:10:"product_id";i:24;s:11:"category_id";s:1:"1";}}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:26:{i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555162;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555169;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:20:"shop.product_details";last_browse_parameters|a:7:{s:11:"category_id";N;s:15:"manufacturer_id";N;s:7:"keyword";b:0;s:8:"keyword1";N;s:8:"keyword2";N;s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}'),
('', '1240554593', '87ca597ca574a50212597c8a3bc83a40', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1240554515;s:18:"session.timer.last";i:1240554548;s:17:"session.timer.now";i:1240554593;s:22:"session.client.browser";s:55:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:31:{i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554515;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554515;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554515;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554515;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554515;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554515;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554548;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240554593;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555011', '4e4c53c675ded3fd4b486b30d3b9d4df', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555011;s:18:"session.timer.last";i:1240555011;s:17:"session.timer.now";i:1240555011;s:22:"session.client.browser";s:55:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:18:{i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555011;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555165', '50659a45482bc8998af1918c674e75fb', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555165;s:18:"session.timer.last";i:1240555165;s:17:"session.timer.now";i:1240555165;s:22:"session.client.browser";s:93:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:18:{i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555165;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555166', '8e76acf9209e0d68e36ae4e79c098ae6', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555166;s:18:"session.timer.last";i:1240555166;s:17:"session.timer.now";i:1240555166;s:22:"session.client.browser";s:90:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:19:{i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555167', 'b82f19816770fdc51a4bd7d8721a6dbb', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555167;s:18:"session.timer.last";i:1240555167;s:17:"session.timer.now";i:1240555167;s:22:"session.client.browser";s:55:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:19:{i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555168', 'ae6092b6d70f19653a2b2a347fc04d2c', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555168;s:18:"session.timer.last";i:1240555168;s:17:"session.timer.now";i:1240555168;s:22:"session.client.browser";s:55:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:17:{i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}');
INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1240555168', '64eabb1ef6db768880c58dee5c0b24d0', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555168;s:18:"session.timer.last";i:1240555168;s:17:"session.timer.now";i:1240555168;s:22:"session.client.browser";s:55:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:18:{i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555239', '2b46af1ddd6df50cb23931c268544d0b', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:6;s:19:"session.timer.start";i:1240555168;s:18:"session.timer.last";i:1240555228;s:17:"session.timer.now";i:1240555239;s:22:"session.client.browser";s:90:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:30:{i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555168;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555220;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555239;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:11:"shop.browse";last_browse_parameters|a:7:{s:11:"category_id";s:1:"1";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}'),
('', '1240555373', '16ea8b89da4bcc85fe77418ef701baf3', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:16;s:19:"session.timer.start";i:1240555171;s:18:"session.timer.last";i:1240555369;s:17:"session.timer.now";i:1240555373;s:22:"session.client.browser";s:89:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:3:{s:10:"product_id";s:1:"3";s:24:"viewlistlimitshop.browse";s:2:"10";s:21:"view2browselimitstart";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:3:{s:3:"idx";i:2;i:0;a:2:{s:10:"product_id";i:37;s:11:"category_id";s:1:"2";}i:1;a:2:{s:10:"product_id";i:3;s:11:"category_id";s:1:"1";}}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:34:{i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555306;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555309;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555171;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555211;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555306;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555211;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:9;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555306;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555306;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555306;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555306;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555362;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555369;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:20:"shop.product_details";last_browse_parameters|a:7:{s:11:"category_id";s:1:"2";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}'),
('', '1240555234', 'b5b87ee4178a83216ff2f13bd6611701', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:6;s:19:"session.timer.start";i:1240555191;s:18:"session.timer.last";i:1240555230;s:17:"session.timer.now";i:1240555234;s:22:"session.client.browser";s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";i:0;}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:28:{i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555191;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:8;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555214;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}VMCHECK|s:2:"OK";last_page|s:11:"shop.browse";last_browse_parameters|a:7:{s:11:"category_id";s:1:"1";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}'),
('', '1240555277', '431a4355ff6cae934bdbb69b6a90bf88', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555277;s:18:"session.timer.last";i:1240555277;s:17:"session.timer.now";i:1240555277;s:22:"session.client.browser";s:89:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; yie8)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:19:{i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:3;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555277;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}'),
('', '1240555421', 'efb19e04c17880f1792232f50bc74a26', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1240555421;s:18:"session.timer.last";i:1240555421;s:17:"session.timer.now";i:1240555421;s:22:"session.client.browser";s:92:"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:83:"/home/vagabond/public_html/mobilesieure.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:0:{}auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"USD";product_sess|a:18:{i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:1;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:10;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:2;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:4;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:7;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1240555421;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;s:6:"0.0825";}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('yoo_blueprint', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'manhtqvnn4@gmail.com', 'f6c645dda00cd8abf2ababb93020f25a:ocVGzsjK8QbYtNw6wjKOIs0shZENlo7y', 'Super Administrator', 0, 1, 25, '2009-04-22 10:09:43', '2009-04-24 06:21:56', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_group` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(128) default NULL,
  `group_level` int(11) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_vm_auth_group`
--

INSERT INTO `jos_vm_auth_group` (`group_id`, `group_name`, `group_level`) VALUES
(1, 'admin', 0),
(2, 'storeadmin', 250),
(3, 'shopper', 500),
(4, 'demo', 750);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_user_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_group` (
  `user_id` int(11) NOT NULL default '0',
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps the user to user groups';

--
-- Dumping data for table `jos_vm_auth_user_group`
--

INSERT INTO `jos_vm_auth_user_group` (`user_id`, `group_id`) VALUES
(62, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_vendor` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a vendor';

--
-- Dumping data for table `jos_vm_auth_user_vendor`
--

INSERT INTO `jos_vm_auth_user_vendor` (`user_id`, `vendor_id`) VALUES
(62, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_cart`
--

CREATE TABLE IF NOT EXISTS `jos_vm_cart` (
  `user_id` int(11) NOT NULL,
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the cart contents of a user';

--
-- Dumping data for table `jos_vm_cart`
--

INSERT INTO `jos_vm_cart` (`user_id`, `cart_content`, `last_updated`) VALUES
(62, 'a:1:{s:3:"idx";i:0;}', '2009-04-22 22:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `category_name` varchar(128) NOT NULL default '',
  `category_description` text,
  `category_thumb_image` varchar(255) default NULL,
  `category_full_image` varchar(255) default NULL,
  `category_publish` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `category_browsepage` varchar(255) NOT NULL default 'browse_1',
  `products_per_row` tinyint(2) NOT NULL default '1',
  `category_flypage` varchar(255) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`category_id`),
  KEY `idx_category_vendor_id` (`vendor_id`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_vm_category`
--

INSERT INTO `jos_vm_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`) VALUES
(1, 1, 'Nokia', '', '', '', 'Y', 1240371387, 1240371387, 'managed', 1, 'flypage.tpl', 1),
(2, 1, 'Blackberry', '', '', '', 'Y', 1240371402, 1240416172, 'managed', 1, 'flypage.tpl', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL default '0',
  `category_child_id` int(11) NOT NULL default '0',
  `category_list` int(11) default NULL,
  PRIMARY KEY  (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Dumping data for table `jos_vm_category_xref`
--

INSERT INTO `jos_vm_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
(0, 1, NULL),
(0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_country`
--

CREATE TABLE IF NOT EXISTS `jos_vm_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL default '1',
  `country_name` varchar(64) default NULL,
  `country_3_code` char(3) default NULL,
  `country_2_code` char(2) default NULL,
  PRIMARY KEY  (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Country records' AUTO_INCREMENT=245 ;

--
-- Dumping data for table `jos_vm_country`
--

INSERT INTO `jos_vm_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW'),
(240, 1, 'East Timor', 'XET', 'XE'),
(241, 1, 'Jersey', 'XJE', 'XJ'),
(242, 1, 'St. Barthelemy', 'XSB', 'XB'),
(243, 1, 'St. Eustatius', 'XSE', 'XU'),
(244, 1, 'Canary Islands', 'XCA', 'XC');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_coupons`
--

CREATE TABLE IF NOT EXISTS `jos_vm_coupons` (
  `coupon_id` int(16) NOT NULL auto_increment,
  `coupon_code` varchar(32) NOT NULL default '',
  `percent_or_total` enum('percent','total') NOT NULL default 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL default 'gift',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_coupons`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_creditcard`
--

CREATE TABLE IF NOT EXISTS `jos_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `creditcard_name` varchar(70) NOT NULL default '',
  `creditcard_code` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`creditcard_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store credit card types' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_vm_creditcard`
--

INSERT INTO `jos_vm_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_csv`
--

CREATE TABLE IF NOT EXISTS `jos_vm_csv` (
  `field_id` int(11) NOT NULL auto_increment,
  `field_name` varchar(128) NOT NULL default '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL default '0',
  `field_required` char(1) default 'N',
  PRIMARY KEY  (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all fields which are used on CVS Ex-/Import' AUTO_INCREMENT=26 ;

--
-- Dumping data for table `jos_vm_csv`
--

INSERT INTO `jos_vm_csv` (`field_id`, `field_name`, `field_default_value`, `field_ordering`, `field_required`) VALUES
(1, 'product_sku', '', 1, 'Y'),
(2, 'product_s_desc', '', 5, 'N'),
(3, 'product_desc', '', 6, 'N'),
(4, 'product_thumb_image', '', 7, 'N'),
(5, 'product_full_image', '', 8, 'N'),
(6, 'product_weight', '', 9, 'N'),
(7, 'product_weight_uom', 'KG', 10, 'N'),
(8, 'product_length', '', 11, 'N'),
(9, 'product_width', '', 12, 'N'),
(10, 'product_height', '', 13, 'N'),
(11, 'product_lwh_uom', '', 14, 'N'),
(12, 'product_in_stock', '0', 15, 'N'),
(13, 'product_available_date', '', 16, 'N'),
(14, 'product_discount_id', '', 17, 'N'),
(15, 'product_name', '', 2, 'Y'),
(16, 'product_price', '', 4, 'N'),
(17, 'category_path', '', 3, 'Y'),
(18, 'manufacturer_id', '', 18, 'N'),
(19, 'product_tax_id', '', 19, 'N'),
(20, 'product_sales', '', 20, 'N'),
(21, 'product_parent_id', '0', 21, 'N'),
(22, 'attribute', '', 22, 'N'),
(23, 'custom_attribute', '', 23, 'N'),
(24, 'attributes', '', 24, 'N'),
(25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_currency`
--

CREATE TABLE IF NOT EXISTS `jos_vm_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) default NULL,
  `currency_code` char(3) default NULL,
  PRIMARY KEY  (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store currencies' AUTO_INCREMENT=159 ;

--
-- Dumping data for table `jos_vm_currency`
--

INSERT INTO `jos_vm_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentine Peso', 'ARS'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Real', 'BRL'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CZK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Nuevo Sol', 'PEN'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Złoty', 'PLN'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'RON'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'Russian Ruble', 'RUB'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bath', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRY'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD'),
(157, 'Slovak Koruna', 'SKK'),
(158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_export`
--

CREATE TABLE IF NOT EXISTS `jos_vm_export` (
  `export_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `export_name` varchar(255) default NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL,
  `export_enabled` char(1) NOT NULL default 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`export_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export Modules' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_export`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_function`
--

CREATE TABLE IF NOT EXISTS `jos_vm_function` (
  `function_id` int(11) NOT NULL auto_increment,
  `module_id` int(11) default NULL,
  `function_name` varchar(32) default NULL,
  `function_class` varchar(32) default NULL,
  `function_method` varchar(32) default NULL,
  `function_description` text,
  `function_perms` varchar(255) default NULL,
  PRIMARY KEY  (`function_id`),
  KEY `idx_function_module_id` (`module_id`),
  KEY `idx_function_name` (`function_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to map a function alias to a ''real'' class::function' AUTO_INCREMENT=195 ;

--
-- Dumping data for table `jos_vm_function`
--

INSERT INTO `jos_vm_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to virtuemart.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'none'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'none'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin'),
(146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin'),
(147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin'),
(148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin'),
(149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo'),
(153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin'),
(154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin'),
(155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin'),
(156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin'),
(157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin'),
(158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin'),
(159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin'),
(160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin'),
(161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin'),
(162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin'),
(163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin'),
(164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin'),
(165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin'),
(166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin'),
(167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin'),
(168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin'),
(169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin'),
(170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin'),
(171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin'),
(172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin'),
(173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none'),
(174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none'),
(175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin'),
(176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin'),
(177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin'),
(178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin'),
(179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin'),
(180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin'),
(181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin'),
(182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin'),
(183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin'),
(184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin'),
(185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin'),
(186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin'),
(187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none'),
(188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none'),
(189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none'),
(190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none'),
(191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none'),
(192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin'),
(193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin'),
(194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_manufacturer`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `mf_name` varchar(64) default NULL,
  `mf_email` varchar(255) default NULL,
  `mf_desc` text,
  `mf_category_id` int(11) default NULL,
  `mf_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who create products' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_manufacturer`
--

INSERT INTO `jos_vm_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_manufacturer_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL auto_increment,
  `mf_category_name` varchar(64) default NULL,
  `mf_category_desc` text,
  PRIMARY KEY  (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufactorers are assigned to these categories' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_manufacturer_category`
--

INSERT INTO `jos_vm_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_module`
--

CREATE TABLE IF NOT EXISTS `jos_vm_module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(255) default NULL,
  `module_description` text,
  `module_perms` varchar(255) default NULL,
  `module_publish` char(1) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=12844 ;

--
-- Dumping data for table `jos_vm_module`
--

INSERT INTO `jos_vm_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_publish`, `list_order`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99),
(8, 'store', '', 'storeadmin,admin', 'Y', 2),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99),
(10, 'checkout', '', 'none', 'N', 99),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12),
(12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_orders`
--

CREATE TABLE IF NOT EXISTS `jos_vm_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `vendor_id` int(11) NOT NULL default '0',
  `order_number` varchar(32) default NULL,
  `user_info_id` varchar(32) default NULL,
  `order_total` decimal(15,5) NOT NULL default '0.00000',
  `order_subtotal` decimal(15,5) default NULL,
  `order_tax` decimal(10,2) default NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) default NULL,
  `order_shipping_tax` decimal(10,2) default NULL,
  `coupon_discount` decimal(12,2) NOT NULL default '0.00',
  `coupon_code` varchar(32) default NULL,
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `order_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `ship_method_id` varchar(255) default NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_vendor_id` (`vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store all orders' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_orders`
--

INSERT INTO `jos_vm_orders` (`order_id`, `user_id`, `vendor_id`, `order_number`, `user_info_id`, `order_total`, `order_subtotal`, `order_tax`, `order_tax_details`, `order_shipping`, `order_shipping_tax`, `coupon_discount`, `coupon_code`, `order_discount`, `order_currency`, `order_status`, `cdate`, `mdate`, `ship_method_id`, `customer_note`, `ip_address`) VALUES
(1, 62, 1, '62_0f7fe5422eb39ae250cb6e92071be', 'a3a0f0e4b7355c1ae4985db86f08ea74', '2754004.17000', '2550000.00000', '0.00', 'a:1:{s:6:"0.0825";d:15547.50911085450206883251667022705078125;}', '188454.66', '15547.51', '0.00', '', '-2.00', 'USD', 'P', 1240383232, 1240383232, 'flex|STD|Standard Shipping over 25.00|204002.165', '', '117.1.56.88');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_history`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_code` char(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_status_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_order_history`
--

INSERT INTO `jos_vm_order_history` (`order_status_history_id`, `order_id`, `order_status_code`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 'P', '2009-04-22 13:53:52', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_item`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `user_info_id` varchar(32) default NULL,
  `vendor_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `order_item_sku` varchar(64) NOT NULL default '',
  `order_item_name` varchar(64) NOT NULL default '',
  `product_quantity` int(11) default NULL,
  `product_item_price` decimal(15,5) default NULL,
  `product_final_price` decimal(12,2) NOT NULL default '0.00',
  `order_item_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_attribute` text,
  PRIMARY KEY  (`order_item_id`),
  KEY `idx_order_item_order_id` (`order_id`),
  KEY `idx_order_item_user_info_id` (`user_info_id`),
  KEY `idx_order_item_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_order_item`
--

INSERT INTO `jos_vm_order_item` (`order_item_id`, `order_id`, `user_info_id`, `vendor_id`, `product_id`, `order_item_sku`, `order_item_name`, `product_quantity`, `product_item_price`, `product_final_price`, `order_item_currency`, `order_status`, `cdate`, `mdate`, `product_attribute`) VALUES
(1, 1, 'a3a0f0e4b7355c1ae4985db86f08ea74', 1, 1, 'Nokia1110i', 'Nokia1110i', 5, '510000.00000', '510000.00', 'USD', 'P', 1240383232, 1240383232, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_payment`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_payment` (
  `order_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) default NULL,
  `order_payment_code` varchar(30) NOT NULL default '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) default NULL,
  `order_payment_name` varchar(255) default NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL,
  KEY `idx_order_payment_order_id` (`order_id`),
  KEY `idx_order_payment_method_id` (`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment method that was chosen for a specific order';

--
-- Dumping data for table `jos_vm_order_payment`
--

INSERT INTO `jos_vm_order_payment` (`order_id`, `payment_method_id`, `order_payment_code`, `order_payment_number`, `order_payment_expire`, `order_payment_name`, `order_payment_log`, `order_payment_trans_id`) VALUES
(1, 2, '', NULL, NULL, NULL, 'Thông tin này được lấy từ lần thanh toán tiền cuối cùng.<br />', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_status`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `order_status_code` char(1) NOT NULL default '',
  `order_status_name` varchar(64) default NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  PRIMARY KEY  (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All available order statuses' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_vm_order_status`
--

INSERT INTO `jos_vm_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `order_status_description`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', '', 1, 1),
(2, 'C', 'Confirmed', '', 2, 1),
(3, 'X', 'Cancelled', '', 3, 1),
(4, 'R', 'Refunded', '', 4, 1),
(5, 'S', 'Shipped', '', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_user_info` (
  `order_info_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`order_info_id`),
  KEY `idx_order_info_order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_order_user_info`
--

INSERT INTO `jos_vm_order_user_info` (`order_info_id`, `order_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
(1, 1, 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'manhtqvnn4@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_payment_method`
--

CREATE TABLE IF NOT EXISTS `jos_vm_payment_method` (
  `payment_method_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `payment_method_name` varchar(255) default NULL,
  `payment_class` varchar(50) NOT NULL default '',
  `shopper_group_id` int(11) default NULL,
  `payment_method_discount` decimal(12,2) default NULL,
  `payment_method_discount_is_percent` tinyint(1) NOT NULL,
  `payment_method_discount_max_amount` decimal(10,2) NOT NULL,
  `payment_method_discount_min_amount` decimal(10,2) NOT NULL,
  `list_order` int(11) default NULL,
  `payment_method_code` varchar(8) default NULL,
  `enable_processor` char(1) default NULL,
  `is_creditcard` tinyint(1) NOT NULL default '0',
  `payment_enabled` char(1) NOT NULL default 'N',
  `accepted_creditcards` varchar(128) NOT NULL default '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  PRIMARY KEY  (`payment_method_id`),
  KEY `idx_payment_method_vendor_id` (`vendor_id`),
  KEY `idx_payment_method_name` (`payment_method_name`),
  KEY `idx_payment_method_list_order` (`list_order`),
  KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `jos_vm_payment_method`
--

INSERT INTO `jos_vm_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `payment_method_discount_is_percent`, `payment_method_discount_max_amount`, `payment_method_discount_min_amount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(1, 1, 'Purchase Order', '', 6, '0.00', 0, '0.00', '0.00', 4, 'PO', 'N', 0, 'Y', '', '', ''),
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 0, '0.00', '0.00', 5, 'COD', 'N', 0, 'Y', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, '0.00', '0.00', 0, 'AN', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(4, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, '0.00', '0.00', 0, 'PP', 'P', 0, 'Y', '', '<?php\r\n$db1 = new ps_DB();\r\n$q = "SELECT country_2_code FROM #__vm_country WHERE country_3_code=''".$user->country."'' ORDER BY country_2_code ASC";\r\n$db1->query($q);\r\n\r\n$url = "https://www.paypal.com/cgi-bin/webscr";\r\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\r\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\r\n$post_variables = Array(\r\n"cmd" => "_ext-enter",\r\n"redirect_cmd" => "_xclick",\r\n"upload" => "1",\r\n"business" => PAYPAL_EMAIL,\r\n"receiver_email" => PAYPAL_EMAIL,\r\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\r\n"order_id" => $db->f("order_id"),\r\n"invoice" => $db->f("order_number"),\r\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\r\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\r\n"currency_code" => $_SESSION[''vendor_currency''],\r\n\r\n"address_override" => "1",\r\n"first_name" => $dbbt->f(''first_name''),\r\n"last_name" => $dbbt->f(''last_name''),\r\n"address1" => $dbbt->f(''address_1''),\r\n"address2" => $dbbt->f(''address_2''),\r\n"zip" => $dbbt->f(''zip''),\r\n"city" => $dbbt->f(''city''),\r\n"state" => $dbbt->f(''state''),\r\n"country" => $db1->f(''country_2_code''),\r\n"email" => $dbbt->f(''user_email''),\r\n"night_phone_b" => $dbbt->f(''phone_1''),\r\n"cpp_header_image" => $vendor_image_url,\r\n\r\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\r\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\r\n"cancel_return" => SECUREURL ."index.php",\r\n"undefined_quantity" => "0",\r\n\r\n"test_ipn" => PAYPAL_DEBUG,\r\n"pal" => "NRUBJXESJTY24",\r\n"no_shipping" => "1",\r\n"no_note" => "1"\r\n);\r\nif( $page == "checkout.thankyou" ) {\r\n$query_string = "?";\r\nforeach( $post_variables as $name => $value ) {\r\n$query_string .= $name. "=" . urlencode($value) ."&";\r\n}\r\nvmRedirect( $url . $query_string );\r\n} else {\r\necho ''<form action="''.$url.''" method="post" target="_blank">'';\r\necho ''<input type="image" name="submit" src="https://www.paypal.com/en_US/i/btn/x-click-but6.gif" alt="Click to pay with PayPal - it is fast, free and secure!" />'';\r\n\r\nforeach( $post_variables as $name => $value ) {\r\necho ''<input type="hidden" name="''.$name.''" value="''.htmlspecialchars($value).''" />'';\r\n}\r\necho ''</form>'';\r\n\r\n}\r\n?>', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, '0.00', '0.00', 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, '0.00', '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', ''),
(7, 1, '2Checkout', 'ps_twocheckout', 5, '0.00', 0, '0.00', '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, '0.00', '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, '0.00', '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, '0.00', '0.00', 0, 'EWAY', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, '0.00', '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, '0.00', '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, '0.00', '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, '0.00', '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', ''),
(15, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, '0.00', 0, '0.00', '0.00', 0, 'PFP', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(16, 1, 'Dankort/PBS via ePay', 'ps_epay', 5, '0.00', 0, '0.00', '0.00', 0, 'EPAY', 'P', 0, 'Y', '', '<?php\r\nrequire_once(CLASSPATH ."payment/ps_epay.cfg.php");\r\n$url=basename($mosConfig_live_site);\r\nfunction get_iso_code($code) {\r\nswitch ($code) {\r\ncase "ADP": return "020"; break;\r\ncase "AED": return "784"; break;\r\ncase "AFA": return "004"; break;\r\ncase "ALL": return "008"; break;\r\ncase "AMD": return "051"; break;\r\ncase "ANG": return "532"; break;\r\ncase "AOA": return "973"; break;\r\ncase "ARS": return "032"; break;\r\ncase "AUD": return "036"; break;\r\ncase "AWG": return "533"; break;\r\ncase "AZM": return "031"; break;\r\ncase "BAM": return "977"; break;\r\ncase "BBD": return "052"; break;\r\ncase "BDT": return "050"; break;\r\ncase "BGL": return "100"; break;\r\ncase "BGN": return "975"; break;\r\ncase "BHD": return "048"; break;\r\ncase "BIF": return "108"; break;\r\ncase "BMD": return "060"; break;\r\ncase "BND": return "096"; break;\r\ncase "BOB": return "068"; break;\r\ncase "BOV": return "984"; break;\r\ncase "BRL": return "986"; break;\r\ncase "BSD": return "044"; break;\r\ncase "BTN": return "064"; break;\r\ncase "BWP": return "072"; break;\r\ncase "BYR": return "974"; break;\r\ncase "BZD": return "084"; break;\r\ncase "CAD": return "124"; break;\r\ncase "CDF": return "976"; break;\r\ncase "CHF": return "756"; break;\r\ncase "CLF": return "990"; break;\r\ncase "CLP": return "152"; break;\r\ncase "CNY": return "156"; break;\r\ncase "COP": return "170"; break;\r\ncase "CRC": return "188"; break;\r\ncase "CUP": return "192"; break;\r\ncase "CVE": return "132"; break;\r\ncase "CYP": return "196"; break;\r\ncase "CZK": return "203"; break;\r\ncase "DJF": return "262"; break;\r\ncase "DKK": return "208"; break;\r\ncase "DOP": return "214"; break;\r\ncase "DZD": return "012"; break;\r\ncase "ECS": return "218"; break;\r\ncase "ECV": return "983"; break;\r\ncase "EEK": return "233"; break;\r\ncase "EGP": return "818"; break;\r\ncase "ERN": return "232"; break;\r\ncase "ETB": return "230"; break;\r\ncase "EUR": return "978"; break;\r\ncase "FJD": return "242"; break;\r\ncase "FKP": return "238"; break;\r\ncase "GBP": return "826"; break;\r\ncase "GEL": return "981"; break;\r\ncase "GHC": return "288"; break;\r\ncase "GIP": return "292"; break;\r\ncase "GMD": return "270"; break;\r\ncase "GNF": return "324"; break;\r\ncase "GTQ": return "320"; break;\r\ncase "GWP": return "624"; break;\r\ncase "GYD": return "328"; break;\r\ncase "HKD": return "344"; break;\r\ncase "HNL": return "340"; break;\r\ncase "HRK": return "191"; break;\r\ncase "HTG": return "332"; break;\r\ncase "HUF": return "348"; break;\r\ncase "IDR": return "360"; break;\r\ncase "ILS": return "376"; break;\r\ncase "INR": return "356"; break;\r\ncase "IQD": return "368"; break;\r\ncase "IRR": return "364"; break;\r\ncase "ISK": return "352"; break;\r\ncase "JMD": return "388"; break;\r\ncase "JOD": return "400"; break;\r\ncase "JPY": return "392"; break;\r\ncase "KES": return "404"; break;\r\ncase "KGS": return "417"; break;\r\ncase "KHR": return "116"; break;\r\ncase "KMF": return "174"; break;\r\ncase "KPW": return "408"; break;\r\ncase "KRW": return "410"; break;\r\ncase "KWD": return "414"; break;\r\ncase "KYD": return "136"; break;\r\ncase "KZT": return "398"; break;\r\ncase "LAK": return "418"; break;\r\ncase "LBP": return "422"; break;\r\ncase "LKR": return "144"; break;\r\ncase "LRD": return "430"; break;\r\ncase "LSL": return "426"; break;\r\ncase "LTL": return "440"; break;\r\ncase "LVL": return "428"; break;\r\ncase "LYD": return "434"; break;\r\ncase "MAD": return "504"; break;\r\ncase "MDL": return "498"; break;\r\ncase "MGF": return "450"; break;\r\ncase "MKD": return "807"; break;\r\ncase "MMK": return "104"; break;\r\ncase "MNT": return "496"; break;\r\ncase "MOP": return "446"; break;\r\ncase "MRO": return "478"; break;\r\ncase "MTL": return "470"; break;\r\ncase "MUR": return "480"; break;\r\ncase "MVR": return "462"; break;\r\ncase "MWK": return "454"; break;\r\ncase "MXN": return "484"; break;\r\ncase "MXV": return "979"; break;\r\ncase "MYR": return "458"; break;\r\ncase "MZM": return "508"; break;\r\ncase "NAD": return "516"; break;\r\ncase "NGN": return "566"; break;\r\ncase "NIO": return "558"; break;\r\ncase "NOK": return "578"; break;\r\ncase "NPR": return "524"; break;\r\ncase "NZD": return "554"; break;\r\ncase "OMR": return "512"; break;\r\ncase "PAB": return "590"; break;\r\ncase "PEN": return "604"; break;\r\ncase "PGK": return "598"; break;\r\ncase "PHP": return "608"; break;\r\ncase "PKR": return "586"; break;\r\ncase "PLN": return "985"; break;\r\ncase "PYG": return "600"; break;\r\ncase "QAR": return "634"; break;\r\ncase "ROL": return "642"; break;\r\ncase "RUB": return "643"; break;\r\ncase "RUR": return "810"; break;\r\ncase "RWF": return "646"; break;\r\ncase "SAR": return "682"; break;\r\ncase "SBD": return "090"; break;\r\ncase "SCR": return "690"; break;\r\ncase "SDD": return "736"; break;\r\ncase "SEK": return "752"; break;\r\ncase "SGD": return "702"; break;\r\ncase "SHP": return "654"; break;\r\ncase "SIT": return "705"; break;\r\ncase "SKK": return "703"; break;\r\ncase "SLL": return "694"; break;\r\ncase "SOS": return "706"; break;\r\ncase "SRG": return "740"; break;\r\ncase "STD": return "678"; break;\r\ncase "SVC": return "222"; break;\r\ncase "SYP": return "760"; break;\r\ncase "SZL": return "748"; break;\r\ncase "THB": return "764"; break;\r\ncase "TJS": return "972"; break;\r\ncase "TMM": return "795"; break;\r\ncase "TND": return "788"; break;\r\ncase "TOP": return "776"; break;\r\ncase "TPE": return "626"; break;\r\ncase "TRL": return "792"; break;\r\ncase "TRY": return "949"; break;\r\ncase "TTD": return "780"; break;\r\ncase "TWD": return "901"; break;\r\ncase "TZS": return "834"; break;\r\ncase "UAH": return "980"; break;\r\ncase "UGX": return "800"; break;\r\ncase "USD": return "840"; break;\r\ncase "UYU": return "858"; break;\r\ncase "UZS": return "860"; break;\r\ncase "VEB": return "862"; break;\r\ncase "VND": return "704"; break;\r\ncase "VUV": return "548"; break;\r\ncase "XAF": return "950"; break;\r\ncase "XCD": return "951"; break;\r\ncase "XOF": return "952"; break;\r\ncase "XPF": return "953"; break;\r\ncase "YER": return "886"; break;\r\ncase "YUM": return "891"; break;\r\ncase "ZAR": return "710"; break;\r\ncase "ZMK": return "894"; break;\r\ncase "ZWD": return "716"; break;\r\n}\r\nreturn "XXX"; // return invalid code if the currency is not found \r\n}\r\n\r\nfunction calculateePayCurrency($order_id)\r\n{\r\n$db =& new ps_DB;\r\n$currency_code = "208";\r\n$q = "SELECT order_currency FROM #__vm_orders where order_id = " . $order_id;\r\n$db->query($q);\r\nif ($db->next_record()) {\r\n	$currency_code = get_iso_code($db->f("order_currency"));\r\n}\r\nreturn $currency_code;\r\n}\r\n echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_HEADER'');\r\n?>\r\n<script type="text/javascript" src="http://www.epay.dk/js/standardwindow.js"></script>\r\n<script type="text/javascript">\r\nfunction printCard(cardId)\r\n{\r\ndocument.write ("<table border=0 cellspacing=10 cellpadding=10>");\r\nswitch (cardId) {\r\ncase 1: document.write ("<input type=hidden name=cardtype value=1>"); break;\r\ncase 2: document.write ("<input type=hidden name=cardtype value=2>"); break;\r\ncase 3: document.write ("<input type=hidden name=cardtype value=3>"); break;\r\ncase 4: document.write ("<input type=hidden name=cardtype value=4>"); break;\r\ncase 5: document.write ("<input type=hidden name=cardtype value=5>"); break;\r\ncase 6: document.write ("<input type=hidden name=cardtype value=6>"); break;\r\ncase 7: document.write ("<input type=hidden name=cardtype value=7>"); break;\r\ncase 8: document.write ("<input type=hidden name=cardtype value=8>"); break;\r\ncase 9: document.write ("<input type=hidden name=cardtype value=9>"); break;\r\ncase 10: document.write ("<input type=hidden name=cardtype value=10>"); break;\r\ncase 12: document.write ("<input type=hidden name=cardtype value=12>"); break;\r\ncase 13: document.write ("<input type=hidden name=cardtype value=13>"); break;\r\ncase 14: document.write ("<input type=hidden name=cardtype value=14>"); break;\r\ncase 15: document.write ("<input type=hidden name=cardtype value=15>"); break;\r\ncase 16: document.write ("<input type=hidden name=cardtype value=16>"); break;\r\ncase 17: document.write ("<input type=hidden name=cardtype value=17>"); break;\r\ncase 18: document.write ("<input type=hidden name=cardtype value=18>"); break;\r\ncase 19: document.write ("<input type=hidden name=cardtype value=19>"); break;\r\ncase 21: document.write ("<input type=hidden name=cardtype value=21>"); break;\r\ncase 22: document.write ("<input type=hidden name=cardtype value=22>"); break;\r\n}\r\ndocument.write ("</table>");\r\n}\r\n</script>\r\n<form action="https://ssl.ditonlinebetalingssystem.dk/popup/default.asp" method="post" name="ePay" target="ePay_window" id="ePay">\r\n<input type="hidden" name="merchantnumber" value="<?php echo EPAY_MERCHANTNUMBER ?>">\r\n<input type="hidden" name="amount" value="<?php echo round($db->f("order_total")*100, 2 ) ?>">\r\n<input type="hidden" name="currency" value="<?php echo calculateePayCurrency($order_id)?>">\r\n<input type="hidden" name="orderid" value="<?php echo $order_id ?>">\r\n<input type="hidden" name="ordretext" value="">\r\n<?php \r\nif (EPAY_CALLBACK == "1")\r\n{\r\n	echo ''<input type="hidden" name="callbackurl" value="'' . $mosConfig_live_site . ''/index.php?page=checkout.epay_result&accept=1&sessionid='' . $sessionid . ''&option=com_virtuemart&Itemid=1">'';\r\n}\r\n?>\r\n<input type="hidden" name="accepturl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=1&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="declineurl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=0&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="group" value="<?php echo EPAY_GROUP ?>">\r\n<input type="hidden" name="instant" value="<?php echo EPAY_INSTANT_CAPTURE ?>">\r\n<input type="hidden" name="language" value="<?php echo EPAY_LANGUAGE ?>">\r\n<input type="hidden" name="authsms" value="<?php echo EPAY_AUTH_SMS ?>">\r\n<input type="hidden" name="authmail" value="<?php echo EPAY_AUTH_MAIL . (strlen(EPAY_AUTH_MAIL) > 0 && EPAY_AUTHEMAILCUSTOMER == 1 ? ";" : "") . (EPAY_AUTHEMAILCUSTOMER == 1 ? $user->user_email : ""); ?>">\r\n<input type="hidden" name="windowstate" value="<?php echo EPAY_WINDOW_STATE ?>">\r\n<input type="hidden" name="use3D" value="<?php echo EPAY_3DSECURE ?>">\r\n<input type="hidden" name="addfee" value="<?php echo EPAY_ADDFEE ?>">\r\n<input type="hidden" name="subscription" value="<?php echo EPAY_SUBSCRIPTION ?>">\r\n<input type="hidden" name="MD5Key" value="<?php if (EPAY_MD5_TYPE == 2) echo md5( calculateePayCurrency($order_id) . round($db->f("order_total")*100, 2 ) . $order_id  . EPAY_MD5_KEY)?>">\r\n<?php\r\nif (EPAY_CARDTYPES_1 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(1)</script>";\r\nif (EPAY_CARDTYPES_2 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(2)</script>";\r\nif (EPAY_CARDTYPES_3 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(3)</script>";\r\nif (EPAY_CARDTYPES_4 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(4)</script>";\r\nif (EPAY_CARDTYPES_5 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(5)</script>";\r\nif (EPAY_CARDTYPES_6 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(6)</script>";\r\nif (EPAY_CARDTYPES_7 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(7)</script>";\r\nif (EPAY_CARDTYPES_8 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(8)</script>";\r\nif (EPAY_CARDTYPES_9 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(9)</script>";\r\nif (EPAY_CARDTYPES_10 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(10)</script>";\r\nif (EPAY_CARDTYPES_11 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(11)</script>";\r\nif (EPAY_CARDTYPES_12 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(12)</script>";\r\nif (EPAY_CARDTYPES_14 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(14)</script>";\r\nif (EPAY_CARDTYPES_15 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(15)</script>";\r\nif (EPAY_CARDTYPES_16 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(16)</script>";\r\nif (EPAY_CARDTYPES_17 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(17)</script>";\r\nif (EPAY_CARDTYPES_18 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(18)</script>";\r\nif (EPAY_CARDTYPES_19 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(19)</script>";\r\nif (EPAY_CARDTYPES_21 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(21)</script>";\r\nif (EPAY_CARDTYPES_22 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(22)</script>";;\r\n?>\r\n</form>\r\n<script>open_ePay_window();</script>\r\n<br>\r\n<table border="0" width="100%"><tr><td><input type="button" onClick="open_ePay_window()" value="<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_BUTTON_OPEN_WINDOW'') ?>"></td><td width="100%" id="flashLoader"></td></tr></table><br><br><br>\r\n<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_FOOTER'') ?>\r\n<br><br>\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/epay_logo.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/mastercard_securecode.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/pci.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/verisign_secure.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/visa_secure.gif" border="0">&nbsp;&nbsp;&nbsp;;', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `product_parent_id` int(11) NOT NULL default '0',
  `product_sku` varchar(64) NOT NULL default '',
  `product_s_desc` varchar(255) default NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) default NULL,
  `product_full_image` varchar(255) default NULL,
  `product_publish` char(1) default NULL,
  `product_weight` decimal(10,4) default NULL,
  `product_weight_uom` varchar(32) default 'pounds.',
  `product_length` decimal(10,4) default NULL,
  `product_width` decimal(10,4) default NULL,
  `product_height` decimal(10,4) default NULL,
  `product_lwh_uom` varchar(32) default 'inches',
  `product_url` varchar(255) default NULL,
  `product_in_stock` int(11) NOT NULL default '0',
  `product_available_date` int(11) default NULL,
  `product_availability` varchar(56) NOT NULL default '',
  `product_special` char(1) default NULL,
  `product_discount_id` int(11) default NULL,
  `ship_code_id` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_name` varchar(64) default NULL,
  `product_sales` int(11) NOT NULL default '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` tinyint(2) NOT NULL default '0',
  `product_unit` varchar(32) default NULL,
  `product_packaging` int(11) default NULL,
  `child_options` varchar(45) default NULL,
  `quantity_options` varchar(45) default NULL,
  `child_option_ids` varchar(45) default NULL,
  `product_order_levels` varchar(45) default NULL,
  PRIMARY KEY  (`product_id`),
  KEY `idx_product_vendor_id` (`vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`),
  KEY `idx_product_ship_code_id` (`ship_code_id`),
  KEY `idx_product_name` (`product_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All products are stored here.' AUTO_INCREMENT=38 ;

--
-- Dumping data for table `jos_vm_product`
--

INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`) VALUES
(1, 1, 0, 'BB05', '', '', 'resized/BlackBerry_7730_49ef4427af64a_90x90.gif', 'BlackBerry_7730_49ef4427b57f3.gif', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -5, 1240333200, '', 'Y', 0, NULL, 1240371500, 1240420875, 'BlackBerry 7730', 5, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(2, 1, 0, 'N01', '', '', 'resized/N6210_49ef44d9f1900_90x90.jpg', 'N6210_49ef44d9f383f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240371764, 1240422969, 'Nokia 6210', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(3, 1, 0, 'N02', '', '', 'resized/N3210_49ef454fd5da5_90x90.jpg', 'N3210_49ef454fd983d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240371782, 1240422934, 'Nokia 3210', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(4, 1, 0, 'N03', '', '', 'resized/N5510_49ef45e15473a_90x90.jpg', 'N5510_49ef45e15c43b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240371802, 1240422955, 'Nokia 5510', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(5, 1, 0, 'N04', '', '', 'resized/N3510I_49ef467866eb3_90x90.jpg', 'N3510I_49ef4678695ce.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240383378, 1240422945, 'Nokia 3510I', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(6, 1, 0, 'N05', '', '', 'resized/6210_49ef46b37ef84_90x90.jpg', '6210_49ef46b38495d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240383397, 1240422837, 'Nokia 6210', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(7, 1, 0, 'N06', '', '', 'resized/Nokia1110i_49eebfb5a388a_90x90.jpg', 'Nokia1110i_49eebfb5a9263.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240383413, 1240418065, 'Nokia1110i', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(8, 1, 0, 'N07', '', '', 'resized/Nokia1110i_49ef474ecb436_90x90.jpg', 'Nokia1110i_49ef474ecdf2d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240383429, 1240422779, 'Nokia 3310', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(9, 1, 0, 'BB01', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/8700_49ef51f988ba6_90x90.jpg', '8700_49ef51f98d5d9.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240416755, 1240420887, 'BlackBerry 8700', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(10, 1, 0, 'BB02', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1800<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/1mb">1MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• USB<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Pin :</td><td class="compare_text" valign="top">Pin tiêu chuẩn, Li-Ion</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">5giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">384giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Built-in handsfree<br />• HTML<br />• JAVA<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">113 x 75 x 20 mm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/7290_49ef51a101824_90x90.jpg', '7290_49ef51a106e12.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240416995, 1240420901, 'BlackBerry 7290', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(11, 1, 0, 'BB03', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1800<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/1mb">1MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• USB<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Pin :</td><td class="compare_text" valign="top">Pin tiêu chuẩn, Li-Ion</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">5giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">384giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Built-in handsfree<br />• HTML<br />• JAVA<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">113 x 75 x 20 mm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/7230_49ef43626fd97_90x90.jpg', '7230_49ef43628366a.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240417122, 1240420919, 'BlackBerry 7230', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(12, 1, 0, 'N08', '', '', 'resized/1100_49ef47f82e4d2_90x90.jpg', '1100_49ef47f833592.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240418279, 1240422752, 'Nokia 1100', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(13, 1, 0, 'N09', '', '', 'resized/3650_49ef4865c498f_90x90.jpg', '3650_49ef4865c8427.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240418405, 1240422790, 'Nokia 3650', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(14, 1, 0, 'N10', '', '', 'resized/6820_49ef48c812de4_90x90.jpg', '6820_49ef48c817818.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240418504, 1240422893, 'Nokia 6820', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(15, 1, 0, 'N011', '', '', 'resized/6800_49ef4c83d14b2_90x90.jpg', '6800_49ef4c83d4393.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240419459, 1240422882, 'Nokia 6800', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(16, 1, 0, 'N012', '', '', 'resized/8310_49ef4ccaf07ca_90x90.jpg', '8310_49ef4ccaf36aa.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240419530, 1240422924, 'Nokia 8310', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(17, 1, 0, 'Nokia N12', '', '', 'resized/5210_49ef4d3c53997_90x90.jpg', '5210_49ef4d3c57446.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240419644, 1240422815, 'Nokia 5210', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(18, 1, 0, 'N13', '', '', 'resized/8210_49ef4ddf771f8_90x90.jpg', '8210_49ef4ddf79521.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240419807, 1240422903, 'Nokia 8210', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(19, 1, 0, 'N14', '', '', 'resized/8250_49ef4e496ecc3_90x90.jpg', '8250_49ef4e49717bb.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240419913, 1240422913, 'Nokia 8250', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(20, 1, 0, 'N15', '', '', 'resized/6310i_49ef4ea950018_90x90.jpg', '6310i_49ef4ea952b10.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240420009, 1240422871, 'Nokia 6310i', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(21, 1, 0, 'N16', '', '', 'resized/3300_49ef4ee9d1040_90x90.jpg', '3300_49ef4ee9d4ec1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240420073, 1240422766, 'Nokia 3300', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(22, 1, 0, 'N17', '', '', 'resized/6288_49ef4f5375a69_90x90.jpg', '6288_49ef4f537db52.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240420179, 1240422849, 'Nokia 6288', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(23, 1, 0, 'N18', '', '', 'resized/6131_49ef4fec8f648_90x90.jpg', '6131_49ef4fec957f0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240420332, 1240422826, 'Nokia 6131', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(24, 1, 0, 'N20', '', '', 'resized/6300_49ef506e32f4a_90x90.jpg', '6300_49ef506e3759a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240420462, 1240422859, 'Nokia 6300', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(25, 1, 0, 'BB06', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8100__49ef52bb7bf48_90x90.jpg', 'BlackBerry_8100__49ef52bb828c4.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421051, 1240421051, 'BlackBerry 8100 Black', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(26, 1, 0, 'BB07', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8100__49ef53115faa6_90x90.jpg', 'BlackBerry_8100__49ef5311640f4.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421137, 1240421137, 'BlackBerry 8100 White', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(27, 1, 0, 'BB08', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8100__49ef536283057_90x90.jpg', 'BlackBerry_8100__49ef53628e008.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421218, 1240421218, 'BlackBerry 8100 red', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(28, 1, 0, 'BB09', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8800_49ef54055b596_90x90.jpg', 'BlackBerry_8800_49ef540560b87.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421381, 1240421381, 'BlackBerry 8800', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(29, 1, 0, 'BB10', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8820_49ef548e89e8a_90x90.jpg', 'BlackBerry_8820_49ef548e92854.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421518, 1240421518, 'BlackBerry 8820', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(30, 1, 0, 'BB11', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8110_49ef5520ddbaa_90x90.jpg', 'BlackBerry_8110_49ef5520e4d0f.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421664, 1240421664, 'BlackBerry 8110', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(31, 1, 0, 'BB12', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8120_49ef558edddb6_90x90.jpg', 'BlackBerry_8120_49ef558ee3ae0.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240421774, 1240421774, 'BlackBerry 8120', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`) VALUES
(32, 1, 0, 'BB13', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8310_49ef568fcde3c_90x90.jpg', 'BlackBerry_8310_49ef568fd630c.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240422031, 1240422031, 'BlackBerry 8310', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(33, 1, 0, 'BB14', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_8320_49ef56f81aefa_90x90.jpg', 'BlackBerry_8320_49ef56f8233c9.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240422136, 1240422136, 'BlackBerry 8320', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(34, 1, 0, 'BB15', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_Bold__49ef5748a237a_90x90.jpg', 'BlackBerry_Bold__49ef5748a7d55.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240422216, 1240422216, 'BlackBerry Bold 9000', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(35, 1, 0, 'BB16', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_Javer_49ef57d4654f5_90x90.jpg', 'BlackBerry_Javer_49ef57d46a6fc.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240422356, 1240422356, 'BlackBerry Javerlin 8900', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(36, 1, 0, 'BB17', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_9500_49ef585e1f8b9_90x90.jpg', 'BlackBerry_9500_49ef585e25679.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240422494, 1240422494, 'BlackBerry 9500', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(37, 1, 0, 'BB18', '', '<table border="0" cellpadding="3" width="99%" class="detail_text" style="border: 1px solid #cccccc"><tbody><tr><td class="compare_fixedrow" width="45%" align="right" valign="top">Hãng sản xuất :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/blackberry">BlackBerry</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Mạng :</td><td class="compare_text" valign="top">• GSM900<br />• GSM1900<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ vi xử lý</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Bộ nhớ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại Ram :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/sram">SRAM</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng RAM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/2mb">2MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Dung lượng ROM :</td><td class="compare_text" valign="top"><a href="http://www.vatgia.com/s/16mb">16MB</a></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thẻ nhớ :</td><td class="compare_text" valign="top">• -<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Màn hình</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Loại màn hình :</td><td class="compare_text" valign="top">Màn hình đơn sắc</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Phần mềm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tin nhắn  :</td><td class="compare_text" valign="top">• SMS<br />• Push Email<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Kết nối</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Đồng bộ hóa Dữ liệu :</td><td class="compare_text" valign="top">• GPRS<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Cách nhập dữ liệu :</td><td class="compare_text" valign="top">• Bàn phím<br />• Control Pad<br /></td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Media</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Tích hợp Camera :</td><td class="compare_text" valign="top">Không</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Quay Video :</td><td class="compare_text" valign="top">Không</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Pin</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian đàm thoại :</td><td class="compare_text" valign="top">4giờ</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thời gian chờ :</td><td class="compare_text" valign="top">240giờ</td></tr><tr class="compare_seperate_title"><td colspan="2" align="center">Các thông số khác</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Thông số khác :</td><td class="compare_text" valign="top">• Lịch nhắc việc<br /></td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Kích thước (mm) :</td><td class="compare_text" valign="top">121 x 77 x 18cm</td></tr><tr> <td class="compare_fixedrow" width="45%" align="right" valign="top">Trọng lượng :</td><td class="compare_text" valign="top">136g</td></tr></tbody></table>', 'resized/BlackBerry_7130_49ef58c754293_90x90.jpg', 'BlackBerry_7130_49ef58c758d95.jpg', 'Y', '0.0000', 'cân nặng', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1240333200, '', 'Y', 0, NULL, 1240422599, 1240422599, 'BlackBerry 7130', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_attribute`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_value` char(255) NOT NULL default '',
  PRIMARY KEY  (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores attributes + their specific values for Child Products' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_product_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_list` int(11) NOT NULL default '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Attributes for a Parent Product used by its Child Products';

--
-- Dumping data for table `jos_vm_product_attribute_sku`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_category_xref` (
  `category_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_list` int(11) default NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `jos_vm_product_category_xref`
--

INSERT INTO `jos_vm_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
(1, 12, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(2, 10, 1),
(2, 9, 1),
(2, 11, 1),
(2, 1, 1),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 1),
(1, 19, 1),
(1, 20, 1),
(1, 21, 1),
(1, 22, 1),
(1, 23, 1),
(1, 24, 1),
(2, 25, 1),
(2, 26, 1),
(2, 27, 1),
(2, 28, 1),
(2, 29, 1),
(2, 30, 1),
(2, 31, 1),
(2, 32, 1),
(2, 33, 1),
(2, 34, 1),
(2, 35, 1),
(2, 36, 1),
(2, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_discount`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `amount` decimal(12,2) NOT NULL default '0.00',
  `is_percent` tinyint(1) NOT NULL default '0',
  `start_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Discounts that can be assigned to products' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_product_discount`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_download`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_download` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `download_max` int(11) NOT NULL default '0',
  `download_id` varchar(32) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Active downloads for selling downloadable goods';

--
-- Dumping data for table `jos_vm_product_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_files`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_files` (
  `file_id` int(19) NOT NULL auto_increment,
  `file_product_id` int(11) NOT NULL default '0',
  `file_name` varchar(128) NOT NULL default '',
  `file_title` varchar(128) NOT NULL default '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL default '',
  `file_mimetype` varchar(64) NOT NULL default '',
  `file_url` varchar(254) NOT NULL default '',
  `file_published` tinyint(1) NOT NULL default '0',
  `file_is_image` tinyint(1) NOT NULL default '0',
  `file_image_height` int(11) NOT NULL default '0',
  `file_image_width` int(11) NOT NULL default '0',
  `file_image_thumb_height` int(11) NOT NULL default '50',
  `file_image_thumb_width` int(11) NOT NULL default '0',
  PRIMARY KEY  (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_product_files`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_mf_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_mf_xref` (
  `product_id` int(11) default NULL,
  `manufacturer_id` int(11) default NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

--
-- Dumping data for table `jos_vm_product_mf_xref`
--

INSERT INTO `jos_vm_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_price`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_price` (
  `product_price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `product_price` decimal(12,5) default NULL,
  `product_currency` char(16) default NULL,
  `product_price_vdate` int(11) default NULL,
  `product_price_edate` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `price_quantity_start` int(11) unsigned NOT NULL default '0',
  `price_quantity_end` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`product_price_id`),
  KEY `idx_product_price_product_id` (`product_id`),
  KEY `idx_product_price_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product' AUTO_INCREMENT=38 ;

--
-- Dumping data for table `jos_vm_product_price`
--

INSERT INTO `jos_vm_product_price` (`product_price_id`, `product_id`, `product_price`, `product_currency`, `product_price_vdate`, `product_price_edate`, `cdate`, `mdate`, `shopper_group_id`, `price_quantity_start`, `price_quantity_end`) VALUES
(1, 1, '500000.00000', 'USD', 0, 0, 1240371500, 1240420875, 5, 0, 0),
(2, 2, '290000.00000', 'USD', 0, 0, 1240371764, 1240422969, 5, 0, 0),
(3, 3, '120000.00000', 'USD', 0, 0, 1240371782, 1240422934, 5, 0, 0),
(4, 4, '350000.00000', 'USD', 0, 0, 1240371802, 1240422955, 5, 0, 0),
(5, 5, '240000.00000', 'USD', 0, 0, 1240383378, 1240422945, 5, 0, 0),
(6, 6, '300000.00000', 'USD', 0, 0, 1240383397, 1240422837, 5, 0, 0),
(7, 7, '400000.00000', 'USD', 0, 0, 1240383413, 1240418065, 5, 0, 0),
(8, 8, '190000.00000', 'USD', 0, 0, 1240383429, 1240422779, 5, 0, 0),
(9, 9, '1600000.00000', 'USD', 0, 0, 1240416755, 1240420887, 5, 0, 0),
(10, 10, '750000.00000', 'USD', 0, 0, 1240416995, 1240420901, 5, 0, 0),
(11, 11, '500000.00000', 'USD', 0, 0, 1240417122, 1240420919, 5, 0, 0),
(12, 12, '300000.00000', 'USD', 0, 0, 1240418279, 1240422752, 5, 0, 0),
(13, 13, '580000.00000', 'USD', 0, 0, 1240418405, 1240422790, 5, 0, 0),
(14, 14, '530000.00000', 'USD', 0, 0, 1240418504, 1240422893, 5, 0, 0),
(15, 15, '560000.00000', 'USD', 0, 0, 1240419459, 1240422882, 5, 0, 0),
(16, 16, '350000.00000', 'USD', 0, 0, 1240419531, 1240422924, 5, 0, 0),
(17, 17, '250000.00000', 'USD', 0, 0, 1240419644, 1240422815, 5, 0, 0),
(18, 18, '210000.00000', 'USD', 0, 0, 1240419807, 1240422903, 5, 0, 0),
(19, 19, '250000.00000', 'USD', 0, 0, 1240419913, 1240422913, 5, 0, 0),
(20, 20, '580000.00000', 'USD', 0, 0, 1240420009, 1240422871, 5, 0, 0),
(21, 21, '630000.00000', 'USD', 0, 0, 1240420073, 1240422766, 5, 0, 0),
(22, 22, '1500000.00000', 'USD', 0, 0, 1240420179, 1240422849, 5, 0, 0),
(23, 23, '1300000.00000', 'USD', 0, 0, 1240420332, 1240422826, 5, 0, 0),
(24, 24, '1950000.00000', 'USD', 0, 0, 1240420462, 1240422859, 5, 0, 0),
(25, 25, '1650000.00000', 'USD', 0, 0, 1240421051, 1240421051, 5, 0, 0),
(26, 26, '1700000.00000', 'USD', 0, 0, 1240421137, 1240421137, 5, 0, 0),
(27, 27, '1700000.00000', 'USD', 0, 0, 1240421218, 1240421218, 5, 0, 0),
(28, 28, '2700000.00000', 'USD', 0, 0, 1240421381, 1240421381, 5, 0, 0),
(29, 29, '3200000.00000', 'USD', 0, 0, 1240421518, 1240421568, 5, 0, 0),
(30, 30, '2500000.00000', 'USD', 0, 0, 1240421664, 1240421664, 5, 0, 0),
(31, 31, '3000000.00000', 'USD', 0, 0, 1240421774, 1240421774, 5, 0, 0),
(32, 32, '2700000.00000', 'USD', 0, 0, 1240422031, 1240422031, 5, 0, 0),
(33, 33, '3200000.00000', 'USD', 0, 0, 1240422136, 1240422136, 5, 0, 0),
(34, 34, '8500000.00000', 'USD', 0, 0, 1240422216, 1240422216, 5, 0, 0),
(35, 35, '8500000.00000', 'USD', 0, 0, 1240422356, 1240422356, 5, 0, 0),
(36, 36, '8500000.00000', 'USD', 0, 0, 1240422494, 1240422494, 5, 0, 0),
(37, 37, '950000.00000', 'USD', 0, 0, 1240422599, 1240422599, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_product_type_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL default '0',
  `product_type_id` int(11) NOT NULL default '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps products to a product type';

--
-- Dumping data for table `jos_vm_product_product_type_xref`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_relations`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_relations` (
  `product_id` int(11) NOT NULL default '0',
  `related_products` text,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_vm_product_relations`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_reviews`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL default '0',
  `time` int(11) NOT NULL default '0',
  `user_rating` tinyint(1) NOT NULL default '0',
  `review_ok` int(11) NOT NULL default '0',
  `review_votes` int(11) NOT NULL default '0',
  `published` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`review_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_product_reviews`
--

INSERT INTO `jos_vm_product_reviews` (`review_id`, `product_id`, `comment`, `userid`, `time`, `user_rating`, `review_ok`, `review_votes`, `published`) VALUES
(1, 3, 'Hàng đẹp Hàng đẹp Hàng đẹp Hàng đẹp Hàng đẹp Hàng đẹp<br />\r\nHàng đẹp Hàng đẹp Hàng đẹp Hàng đẹp Hàng đẹp Hàng đẹp', 62, 1240423337, 5, 0, 0, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_type`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type` (
  `product_type_id` int(11) NOT NULL auto_increment,
  `product_type_name` varchar(255) NOT NULL default '',
  `product_type_description` text,
  `product_type_publish` char(1) default NULL,
  `product_type_browsepage` varchar(255) default NULL,
  `product_type_flypage` varchar(255) default NULL,
  `product_type_list_order` int(11) default NULL,
  PRIMARY KEY  (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_product_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_type_parameter`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL default '0',
  `parameter_name` varchar(255) NOT NULL default '',
  `parameter_label` varchar(255) NOT NULL default '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL default '0',
  `parameter_type` char(1) NOT NULL default 'T',
  `parameter_values` varchar(255) default NULL,
  `parameter_multiselect` char(1) default NULL,
  `parameter_default` varchar(255) default NULL,
  `parameter_unit` varchar(32) default NULL,
  PRIMARY KEY  (`product_type_id`,`parameter_name`),
  KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameters which are part of a product type';

--
-- Dumping data for table `jos_vm_product_type_parameter`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_votes`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_votes` (
  `product_id` int(255) NOT NULL default '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL default '0',
  `rating` tinyint(1) NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all votes for a product';

--
-- Dumping data for table `jos_vm_product_votes`
--

INSERT INTO `jos_vm_product_votes` (`product_id`, `votes`, `allvotes`, `rating`, `lastip`) VALUES
(3, '5', 1, 5, '117.1.59.60');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL auto_increment,
  `shipping_carrier_name` char(80) NOT NULL default '',
  `shipping_carrier_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_carrier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipping Carriers as used by the Standard Shipping Module' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_shipping_carrier`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_label`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_label` (
  `order_id` int(11) NOT NULL default '0',
  `shipper_class` varchar(32) default NULL,
  `ship_date` varchar(32) default NULL,
  `service_code` varchar(32) default NULL,
  `special_service` varchar(32) default NULL,
  `package_type` varchar(16) default NULL,
  `order_weight` decimal(10,2) default NULL,
  `is_international` tinyint(1) default NULL,
  `additional_protection_type` varchar(16) default NULL,
  `additional_protection_value` decimal(10,2) default NULL,
  `duty_value` decimal(10,2) default NULL,
  `content_desc` varchar(255) default NULL,
  `label_is_generated` tinyint(1) NOT NULL default '0',
  `tracking_number` varchar(32) default NULL,
  `label_image` blob,
  `have_signature` tinyint(1) NOT NULL default '0',
  `signature_image` blob,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores information used in generating shipping labels';

--
-- Dumping data for table `jos_vm_shipping_label`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL auto_increment,
  `shipping_rate_name` varchar(255) NOT NULL default '',
  `shipping_rate_carrier_id` int(11) NOT NULL default '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL default '',
  `shipping_rate_zip_end` varchar(32) NOT NULL default '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL default '0',
  `shipping_rate_vat_id` int(11) NOT NULL default '0',
  `shipping_rate_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipping Rates, used by the Standard Shipping Module' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_shipping_rate`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shopper_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `shopper_group_name` varchar(32) default NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL default '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL default '1',
  `default` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`shopper_group_id`),
  KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_vm_shopper_group`
--

INSERT INTO `jos_vm_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `show_price_including_tax`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1, 1),
(6, 1, 'Gold Level', 'Gold Level phpShoppers.', '0.00', 1, 0),
(7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shopper_vendor_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_vendor_xref` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `customer_number` varchar(32) default NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a Shopper Group of a Vendor';

--
-- Dumping data for table `jos_vm_shopper_vendor_xref`
--

INSERT INTO `jos_vm_shopper_vendor_xref` (`user_id`, `vendor_id`, `shopper_group_id`, `customer_number`) VALUES
(62, 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_state`
--

CREATE TABLE IF NOT EXISTS `jos_vm_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL default '1',
  `state_name` varchar(64) default NULL,
  `state_3_code` char(3) default NULL,
  `state_2_code` char(2) default NULL,
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country' AUTO_INCREMENT=449 ;

--
-- Dumping data for table `jos_vm_state`
--

INSERT INTO `jos_vm_state` (`state_id`, `country_id`, `state_name`, `state_3_code`, `state_2_code`) VALUES
(1, 223, 'Alabama', 'ALA', 'AL'),
(2, 223, 'Alaska', 'ALK', 'AK'),
(3, 223, 'Arizona', 'ARZ', 'AZ'),
(4, 223, 'Arkansas', 'ARK', 'AR'),
(5, 223, 'California', 'CAL', 'CA'),
(6, 223, 'Colorado', 'COL', 'CO'),
(7, 223, 'Connecticut', 'CCT', 'CT'),
(8, 223, 'Delaware', 'DEL', 'DE'),
(9, 223, 'District Of Columbia', 'DOC', 'DC'),
(10, 223, 'Florida', 'FLO', 'FL'),
(11, 223, 'Georgia', 'GEA', 'GA'),
(12, 223, 'Hawaii', 'HWI', 'HI'),
(13, 223, 'Idaho', 'IDA', 'ID'),
(14, 223, 'Illinois', 'ILL', 'IL'),
(15, 223, 'Indiana', 'IND', 'IN'),
(16, 223, 'Iowa', 'IOA', 'IA'),
(17, 223, 'Kansas', 'KAS', 'KS'),
(18, 223, 'Kentucky', 'KTY', 'KY'),
(19, 223, 'Louisiana', 'LOA', 'LA'),
(20, 223, 'Maine', 'MAI', 'ME'),
(21, 223, 'Maryland', 'MLD', 'MD'),
(22, 223, 'Massachusetts', 'MSA', 'MA'),
(23, 223, 'Michigan', 'MIC', 'MI'),
(24, 223, 'Minnesota', 'MIN', 'MN'),
(25, 223, 'Mississippi', 'MIS', 'MS'),
(26, 223, 'Missouri', 'MIO', 'MO'),
(27, 223, 'Montana', 'MOT', 'MT'),
(28, 223, 'Nebraska', 'NEB', 'NE'),
(29, 223, 'Nevada', 'NEV', 'NV'),
(30, 223, 'New Hampshire', 'NEH', 'NH'),
(31, 223, 'New Jersey', 'NEJ', 'NJ'),
(32, 223, 'New Mexico', 'NEM', 'NM'),
(33, 223, 'New York', 'NEY', 'NY'),
(34, 223, 'North Carolina', 'NOC', 'NC'),
(35, 223, 'North Dakota', 'NOD', 'ND'),
(36, 223, 'Ohio', 'OHI', 'OH'),
(37, 223, 'Oklahoma', 'OKL', 'OK'),
(38, 223, 'Oregon', 'ORN', 'OR'),
(39, 223, 'Pennsylvania', 'PEA', 'PA'),
(40, 223, 'Rhode Island', 'RHI', 'RI'),
(41, 223, 'South Carolina', 'SOC', 'SC'),
(42, 223, 'South Dakota', 'SOD', 'SD'),
(43, 223, 'Tennessee', 'TEN', 'TN'),
(44, 223, 'Texas', 'TXS', 'TX'),
(45, 223, 'Utah', 'UTA', 'UT'),
(46, 223, 'Vermont', 'VMT', 'VT'),
(47, 223, 'Virginia', 'VIA', 'VA'),
(48, 223, 'Washington', 'WAS', 'WA'),
(49, 223, 'West Virginia', 'WEV', 'WV'),
(50, 223, 'Wisconsin', 'WIS', 'WI'),
(51, 223, 'Wyoming', 'WYO', 'WY'),
(52, 38, 'Alberta', 'ALB', 'AB'),
(53, 38, 'British Columbia', 'BRC', 'BC'),
(54, 38, 'Manitoba', 'MAB', 'MB'),
(55, 38, 'New Brunswick', 'NEB', 'NB'),
(56, 38, 'Newfoundland and Labrador', 'NFL', 'NL'),
(57, 38, 'Northwest Territories', 'NWT', 'NT'),
(58, 38, 'Nova Scotia', 'NOS', 'NS'),
(59, 38, 'Nunavut', 'NUT', 'NU'),
(60, 38, 'Ontario', 'ONT', 'ON'),
(61, 38, 'Prince Edward Island', 'PEI', 'PE'),
(62, 38, 'Quebec', 'QEC', 'QC'),
(63, 38, 'Saskatchewan', 'SAK', 'SK'),
(64, 38, 'Yukon', 'YUT', 'YT'),
(65, 222, 'England', 'ENG', 'EN'),
(66, 222, 'Northern Ireland', 'NOI', 'NI'),
(67, 222, 'Scotland', 'SCO', 'SD'),
(68, 222, 'Wales', 'WLS', 'WS'),
(69, 13, 'Australian Capital Territory', 'ACT', 'AT'),
(70, 13, 'New South Wales', 'NSW', 'NW'),
(71, 13, 'Northern Territory', 'NOT', 'NT'),
(72, 13, 'Queensland', 'QLD', 'QL'),
(73, 13, 'South Australia', 'SOA', 'SA'),
(74, 13, 'Tasmania', 'TAS', 'TA'),
(75, 13, 'Victoria', 'VIC', 'VI'),
(76, 13, 'Western Australia', 'WEA', 'WA'),
(77, 138, 'Aguascalientes', 'AGS', 'AG'),
(78, 138, 'Baja California Norte', 'BCN', 'BN'),
(79, 138, 'Baja California Sur', 'BCS', 'BS'),
(80, 138, 'Campeche', 'CAM', 'CA'),
(81, 138, 'Chiapas', 'CHI', 'CS'),
(82, 138, 'Chihuahua', 'CHA', 'CH'),
(83, 138, 'Coahuila', 'COA', 'CO'),
(84, 138, 'Colima', 'COL', 'CM'),
(85, 138, 'Distrito Federal', 'DFM', 'DF'),
(86, 138, 'Durango', 'DGO', 'DO'),
(87, 138, 'Guanajuato', 'GTO', 'GO'),
(88, 138, 'Guerrero', 'GRO', 'GU'),
(89, 138, 'Hidalgo', 'HGO', 'HI'),
(90, 138, 'Jalisco', 'JAL', 'JA'),
(91, 138, 'México (Estado de)', 'EDM', 'EM'),
(92, 138, 'Michoacán', 'MCN', 'MI'),
(93, 138, 'Morelos', 'MOR', 'MO'),
(94, 138, 'Nayarit', 'NAY', 'NY'),
(95, 138, 'Nuevo León', 'NUL', 'NL'),
(96, 138, 'Oaxaca', 'OAX', 'OA'),
(97, 138, 'Puebla', 'PUE', 'PU'),
(98, 138, 'Querétaro', 'QRO', 'QU'),
(99, 138, 'Quintana Roo', 'QUR', 'QR'),
(100, 138, 'San Luis Potosí', 'SLP', 'SP'),
(101, 138, 'Sinaloa', 'SIN', 'SI'),
(102, 138, 'Sonora', 'SON', 'SO'),
(103, 138, 'Tabasco', 'TAB', 'TA'),
(104, 138, 'Tamaulipas', 'TAM', 'TM'),
(105, 138, 'Tlaxcala', 'TLX', 'TX'),
(106, 138, 'Veracruz', 'VER', 'VZ'),
(107, 138, 'Yucatán', 'YUC', 'YU'),
(108, 138, 'Zacatecas', 'ZAC', 'ZA'),
(109, 30, 'Acre', 'ACR', 'AC'),
(110, 30, 'Alagoas', 'ALG', 'AL'),
(111, 30, 'Amapá', 'AMP', 'AP'),
(112, 30, 'Amazonas', 'AMZ', 'AM'),
(113, 30, 'Bahía', 'BAH', 'BA'),
(114, 30, 'Ceará', 'CEA', 'CE'),
(115, 30, 'Distrito Federal', 'DFB', 'DF'),
(116, 30, 'Espirito Santo', 'ESS', 'ES'),
(117, 30, 'Goiás', 'GOI', 'GO'),
(118, 30, 'Maranhão', 'MAR', 'MA'),
(119, 30, 'Mato Grosso', 'MAT', 'MT'),
(120, 30, 'Mato Grosso do Sul', 'MGS', 'MS'),
(121, 30, 'Minas Geraís', 'MIG', 'MG'),
(122, 30, 'Paraná', 'PAR', 'PR'),
(123, 30, 'Paraíba', 'PRB', 'PB'),
(124, 30, 'Pará', 'PAB', 'PA'),
(125, 30, 'Pernambuco', 'PER', 'PE'),
(126, 30, 'Piauí', 'PIA', 'PI'),
(127, 30, 'Rio Grande do Norte', 'RGN', 'RN'),
(128, 30, 'Rio Grande do Sul', 'RGS', 'RS'),
(129, 30, 'Rio de Janeiro', 'RDJ', 'RJ'),
(130, 30, 'Rondônia', 'RON', 'RO'),
(131, 30, 'Roraima', 'ROR', 'RR'),
(132, 30, 'Santa Catarina', 'SAC', 'SC'),
(133, 30, 'Sergipe', 'SER', 'SE'),
(134, 30, 'São Paulo', 'SAP', 'SP'),
(135, 30, 'Tocantins', 'TOC', 'TO'),
(136, 44, 'Anhui', 'ANH', '34'),
(137, 44, 'Beijing', 'BEI', '11'),
(138, 44, 'Chongqing', 'CHO', '50'),
(139, 44, 'Fujian', 'FUJ', '35'),
(140, 44, 'Gansu', 'GAN', '62'),
(141, 44, 'Guangdong', 'GUA', '44'),
(142, 44, 'Guangxi Zhuang', 'GUZ', '45'),
(143, 44, 'Guizhou', 'GUI', '52'),
(144, 44, 'Hainan', 'HAI', '46'),
(145, 44, 'Hebei', 'HEB', '13'),
(146, 44, 'Heilongjiang', 'HEI', '23'),
(147, 44, 'Henan', 'HEN', '41'),
(148, 44, 'Hubei', 'HUB', '42'),
(149, 44, 'Hunan', 'HUN', '43'),
(150, 44, 'Jiangsu', 'JIA', '32'),
(151, 44, 'Jiangxi', 'JIX', '36'),
(152, 44, 'Jilin', 'JIL', '22'),
(153, 44, 'Liaoning', 'LIA', '21'),
(154, 44, 'Nei Mongol', 'NML', '15'),
(155, 44, 'Ningxia Hui', 'NIH', '64'),
(156, 44, 'Qinghai', 'QIN', '63'),
(157, 44, 'Shandong', 'SNG', '37'),
(158, 44, 'Shanghai', 'SHH', '31'),
(159, 44, 'Shaanxi', 'SHX', '61'),
(160, 44, 'Sichuan', 'SIC', '51'),
(161, 44, 'Tianjin', 'TIA', '12'),
(162, 44, 'Xinjiang Uygur', 'XIU', '65'),
(163, 44, 'Xizang', 'XIZ', '54'),
(164, 44, 'Yunnan', 'YUN', '53'),
(165, 44, 'Zhejiang', 'ZHE', '33'),
(166, 104, 'Gaza Strip', 'GZS', 'GZ'),
(167, 104, 'West Bank', 'WBK', 'WB'),
(168, 104, 'Other', 'OTH', 'OT'),
(169, 151, 'St. Maarten', 'STM', 'SM'),
(170, 151, 'Bonaire', 'BNR', 'BN'),
(171, 151, 'Curacao', 'CUR', 'CR'),
(172, 175, 'Alba', 'ABA', 'AB'),
(173, 175, 'Arad', 'ARD', 'AR'),
(174, 175, 'Arges', 'ARG', 'AG'),
(175, 175, 'Bacau', 'BAC', 'BC'),
(176, 175, 'Bihor', 'BIH', 'BH'),
(177, 175, 'Bistrita-Nasaud', 'BIS', 'BN'),
(178, 175, 'Botosani', 'BOT', 'BT'),
(179, 175, 'Braila', 'BRL', 'BR'),
(180, 175, 'Brasov', 'BRA', 'BV'),
(181, 175, 'Bucuresti', 'BUC', 'B'),
(182, 175, 'Buzau', 'BUZ', 'BZ'),
(183, 175, 'Calarasi', 'CAL', 'CL'),
(184, 175, 'Caras Severin', 'CRS', 'CS'),
(185, 175, 'Cluj', 'CLJ', 'CJ'),
(186, 175, 'Constanta', 'CST', 'CT'),
(187, 175, 'Covasna', 'COV', 'CV'),
(188, 175, 'Dambovita', 'DAM', 'DB'),
(189, 175, 'Dolj', 'DLJ', 'DJ'),
(190, 175, 'Galati', 'GAL', 'GL'),
(191, 175, 'Giurgiu', 'GIU', 'GR'),
(192, 175, 'Gorj', 'GOR', 'GJ'),
(193, 175, 'Hargita', 'HRG', 'HR'),
(194, 175, 'Hunedoara', 'HUN', 'HD'),
(195, 175, 'Ialomita', 'IAL', 'IL'),
(196, 175, 'Iasi', 'IAS', 'IS'),
(197, 175, 'Ilfov', 'ILF', 'IF'),
(198, 175, 'Maramures', 'MAR', 'MM'),
(199, 175, 'Mehedinti', 'MEH', 'MH'),
(200, 175, 'Mures', 'MUR', 'MS'),
(201, 175, 'Neamt', 'NEM', 'NT'),
(202, 175, 'Olt', 'OLT', 'OT'),
(203, 175, 'Prahova', 'PRA', 'PH'),
(204, 175, 'Salaj', 'SAL', 'SJ'),
(205, 175, 'Satu Mare', 'SAT', 'SM'),
(206, 175, 'Sibiu', 'SIB', 'SB'),
(207, 175, 'Suceava', 'SUC', 'SV'),
(208, 175, 'Teleorman', 'TEL', 'TR'),
(209, 175, 'Timis', 'TIM', 'TM'),
(210, 175, 'Tulcea', 'TUL', 'TL'),
(211, 175, 'Valcea', 'VAL', 'VL'),
(212, 175, 'Vaslui', 'VAS', 'VS'),
(213, 175, 'Vrancea', 'VRA', 'VN'),
(214, 105, 'Agrigento', 'AGR', 'AG'),
(215, 105, 'Alessandria', 'ALE', 'AL'),
(216, 105, 'Ancona', 'ANC', 'AN'),
(217, 105, 'Aosta', 'AOS', 'AO'),
(218, 105, 'Arezzo', 'ARE', 'AR'),
(219, 105, 'Ascoli Piceno', 'API', 'AP'),
(220, 105, 'Asti', 'AST', 'AT'),
(221, 105, 'Avellino', 'AVE', 'AV'),
(222, 105, 'Bari', 'BAR', 'BA'),
(223, 105, 'Belluno', 'BEL', 'BL'),
(224, 105, 'Benevento', 'BEN', 'BN'),
(225, 105, 'Bergamo', 'BEG', 'BG'),
(226, 105, 'Biella', 'BIE', 'BI'),
(227, 105, 'Bologna', 'BOL', 'BO'),
(228, 105, 'Bolzano', 'BOZ', 'BZ'),
(229, 105, 'Brescia', 'BRE', 'BS'),
(230, 105, 'Brindisi', 'BRI', 'BR'),
(231, 105, 'Cagliari', 'CAG', 'CA'),
(232, 105, 'Caltanissetta', 'CAL', 'CL'),
(233, 105, 'Campobasso', 'CBO', 'CB'),
(234, 105, 'Carbonia-Iglesias', 'CAR', 'CI'),
(235, 105, 'Caserta', 'CAS', 'CE'),
(236, 105, 'Catania', 'CAT', 'CT'),
(237, 105, 'Catanzaro', 'CTZ', 'CZ'),
(238, 105, 'Chieti', 'CHI', 'CH'),
(239, 105, 'Como', 'COM', 'CO'),
(240, 105, 'Cosenza', 'COS', 'CS'),
(241, 105, 'Cremona', 'CRE', 'CR'),
(242, 105, 'Crotone', 'CRO', 'KR'),
(243, 105, 'Cuneo', 'CUN', 'CN'),
(244, 105, 'Enna', 'ENN', 'EN'),
(245, 105, 'Ferrara', 'FER', 'FE'),
(246, 105, 'Firenze', 'FIR', 'FI'),
(247, 105, 'Foggia', 'FOG', 'FG'),
(248, 105, 'Forli-Cesena', 'FOC', 'FC'),
(249, 105, 'Frosinone', 'FRO', 'FR'),
(250, 105, 'Genova', 'GEN', 'GE'),
(251, 105, 'Gorizia', 'GOR', 'GO'),
(252, 105, 'Grosseto', 'GRO', 'GR'),
(253, 105, 'Imperia', 'IMP', 'IM'),
(254, 105, 'Isernia', 'ISE', 'IS'),
(255, 105, 'L''Aquila', 'AQU', 'AQ'),
(256, 105, 'La Spezia', 'LAS', 'SP'),
(257, 105, 'Latina', 'LAT', 'LT'),
(258, 105, 'Lecce', 'LEC', 'LE'),
(259, 105, 'Lecco', 'LCC', 'LC'),
(260, 105, 'Livorno', 'LIV', 'LI'),
(261, 105, 'Lodi', 'LOD', 'LO'),
(262, 105, 'Lucca', 'LUC', 'LU'),
(263, 105, 'Macerata', 'MAC', 'MC'),
(264, 105, 'Mantova', 'MAN', 'MN'),
(265, 105, 'Massa-Carrara', 'MAS', 'MS'),
(266, 105, 'Matera', 'MAA', 'MT'),
(267, 105, 'Medio Campidano', 'MED', 'VS'),
(268, 105, 'Messina', 'MES', 'ME'),
(269, 105, 'Milano', 'MIL', 'MI'),
(270, 105, 'Modena', 'MOD', 'MO'),
(271, 105, 'Napoli', 'NAP', 'NA'),
(272, 105, 'Novara', 'NOV', 'NO'),
(273, 105, 'Nuoro', 'NUR', 'NU'),
(274, 105, 'Ogliastra', 'OGL', 'OG'),
(275, 105, 'Olbia-Tempio', 'OLB', 'OT'),
(276, 105, 'Oristano', 'ORI', 'OR'),
(277, 105, 'Padova', 'PDA', 'PD'),
(278, 105, 'Palermo', 'PAL', 'PA'),
(279, 105, 'Parma', 'PAA', 'PR'),
(280, 105, 'Pavia', 'PAV', 'PV'),
(281, 105, 'Perugia', 'PER', 'PG'),
(282, 105, 'Pesaro e Urbino', 'PES', 'PU'),
(283, 105, 'Pescara', 'PSC', 'PE'),
(284, 105, 'Piacenza', 'PIA', 'PC'),
(285, 105, 'Pisa', 'PIS', 'PI'),
(286, 105, 'Pistoia', 'PIT', 'PT'),
(287, 105, 'Pordenone', 'POR', 'PN'),
(288, 105, 'Potenza', 'PTZ', 'PZ'),
(289, 105, 'Prato', 'PRA', 'PO'),
(290, 105, 'Ragusa', 'RAG', 'RG'),
(291, 105, 'Ravenna', 'RAV', 'RA'),
(292, 105, 'Reggio Calabria', 'REG', 'RC'),
(293, 105, 'Reggio Emilia', 'REE', 'RE'),
(294, 105, 'Rieti', 'RIE', 'RI'),
(295, 105, 'Rimini', 'RIM', 'RN'),
(296, 105, 'Roma', 'ROM', 'RM'),
(297, 105, 'Rovigo', 'ROV', 'RO'),
(298, 105, 'Salerno', 'SAL', 'SA'),
(299, 105, 'Sassari', 'SAS', 'SS'),
(300, 105, 'Savona', 'SAV', 'SV'),
(301, 105, 'Siena', 'SIE', 'SI'),
(302, 105, 'Siracusa', 'SIR', 'SR'),
(303, 105, 'Sondrio', 'SOO', 'SO'),
(304, 105, 'Taranto', 'TAR', 'TA'),
(305, 105, 'Teramo', 'TER', 'TE'),
(306, 105, 'Terni', 'TRN', 'TR'),
(307, 105, 'Torino', 'TOR', 'TO'),
(308, 105, 'Trapani', 'TRA', 'TP'),
(309, 105, 'Trento', 'TRE', 'TN'),
(310, 105, 'Treviso', 'TRV', 'TV'),
(311, 105, 'Trieste', 'TRI', 'TS'),
(312, 105, 'Udine', 'UDI', 'UD'),
(313, 105, 'Varese', 'VAR', 'VA'),
(314, 105, 'Venezia', 'VEN', 'VE'),
(315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB'),
(316, 105, 'Vercelli', 'VER', 'VC'),
(317, 105, 'Verona', 'VRN', 'VR'),
(318, 105, 'Vibo Valenzia', 'VIV', 'VV'),
(319, 105, 'Vicenza', 'VII', 'VI'),
(320, 105, 'Viterbo', 'VIT', 'VT'),
(321, 195, 'A Coruña', 'ACO', '15'),
(322, 195, 'Alava', 'ALA', '01'),
(323, 195, 'Albacete', 'ALB', '02'),
(324, 195, 'Alicante', 'ALI', '03'),
(325, 195, 'Almeria', 'ALM', '04'),
(326, 195, 'Asturias', 'AST', '33'),
(327, 195, 'Avila', 'AVI', '05'),
(328, 195, 'Badajoz', 'BAD', '06'),
(329, 195, 'Baleares', 'BAL', '07'),
(330, 195, 'Barcelona', 'BAR', '08'),
(331, 195, 'Burgos', 'BUR', '09'),
(332, 195, 'Caceres', 'CAC', '10'),
(333, 195, 'Cadiz', 'CAD', '11'),
(334, 195, 'Cantabria', 'CAN', '39'),
(335, 195, 'Castellon', 'CAS', '12'),
(336, 195, 'Ceuta', 'CEU', '51'),
(337, 195, 'Ciudad Real', 'CIU', '13'),
(338, 195, 'Cordoba', 'COR', '14'),
(339, 195, 'Cuenca', 'CUE', '16'),
(340, 195, 'Girona', 'GIR', '17'),
(341, 195, 'Granada', 'GRA', '18'),
(342, 195, 'Guadalajara', 'GUA', '19'),
(343, 195, 'Guipuzcoa', 'GUI', '20'),
(344, 195, 'Huelva', 'HUL', '21'),
(345, 195, 'Huesca', 'HUS', '22'),
(346, 195, 'Jaen', 'JAE', '23'),
(347, 195, 'La Rioja', 'LRI', '26'),
(348, 195, 'Las Palmas', 'LPA', '35'),
(349, 195, 'Leon', 'LEO', '24'),
(350, 195, 'Lleida', 'LLE', '25'),
(351, 195, 'Lugo', 'LUG', '27'),
(352, 195, 'Madrid', 'MAD', '28'),
(353, 195, 'Malaga', 'MAL', '29'),
(354, 195, 'Melilla', 'MEL', '52'),
(355, 195, 'Murcia', 'MUR', '30'),
(356, 195, 'Navarra', 'NAV', '31'),
(357, 195, 'Ourense', 'OUR', '32'),
(358, 195, 'Palencia', 'PAL', '34'),
(359, 195, 'Pontevedra', 'PON', '36'),
(360, 195, 'Salamanca', 'SAL', '37'),
(361, 195, 'Santa Cruz de Tenerife', 'SCT', '38'),
(362, 195, 'Segovia', 'SEG', '40'),
(363, 195, 'Sevilla', 'SEV', '41'),
(364, 195, 'Soria', 'SOR', '42'),
(365, 195, 'Tarragona', 'TAR', '43'),
(366, 195, 'Teruel', 'TER', '44'),
(367, 195, 'Toledo', 'TOL', '45'),
(368, 195, 'Valencia', 'VAL', '46'),
(369, 195, 'Valladolid', 'VLL', '47'),
(370, 195, 'Vizcaya', 'VIZ', '48'),
(371, 195, 'Zamora', 'ZAM', '49'),
(372, 195, 'Zaragoza', 'ZAR', '50'),
(373, 11, 'Aragatsotn', 'ARG', 'AG'),
(374, 11, 'Ararat', 'ARR', 'AR'),
(375, 11, 'Armavir', 'ARM', 'AV'),
(376, 11, 'Gegharkunik', 'GEG', 'GR'),
(377, 11, 'Kotayk', 'KOT', 'KT'),
(378, 11, 'Lori', 'LOR', 'LO'),
(379, 11, 'Shirak', 'SHI', 'SH'),
(380, 11, 'Syunik', 'SYU', 'SU'),
(381, 11, 'Tavush', 'TAV', 'TV'),
(382, 11, 'Vayots-Dzor', 'VAD', 'VD'),
(383, 11, 'Yerevan', 'YER', 'ER'),
(384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI'),
(385, 99, 'Andhra Pradesh', 'AND', 'AN'),
(386, 99, 'Arunachal Pradesh', 'ARU', 'AR'),
(387, 99, 'Assam', 'ASS', 'AS'),
(388, 99, 'Bihar', 'BIH', 'BI'),
(389, 99, 'Chandigarh', 'CHA', 'CA'),
(390, 99, 'Chhatisgarh', 'CHH', 'CH'),
(391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD'),
(392, 99, 'Daman & Diu', 'DAM', 'DA'),
(393, 99, 'Delhi', 'DEL', 'DE'),
(394, 99, 'Goa', 'GOA', 'GO'),
(395, 99, 'Gujarat', 'GUJ', 'GU'),
(396, 99, 'Haryana', 'HAR', 'HA'),
(397, 99, 'Himachal Pradesh', 'HIM', 'HI'),
(398, 99, 'Jammu & Kashmir', 'JAM', 'JA'),
(399, 99, 'Jharkhand', 'JHA', 'JH'),
(400, 99, 'Karnataka', 'KAR', 'KA'),
(401, 99, 'Kerala', 'KER', 'KE'),
(402, 99, 'Lakshadweep', 'LAK', 'LA'),
(403, 99, 'Madhya Pradesh', 'MAD', 'MD'),
(404, 99, 'Maharashtra', 'MAH', 'MH'),
(405, 99, 'Manipur', 'MAN', 'MN'),
(406, 99, 'Meghalaya', 'MEG', 'ME'),
(407, 99, 'Mizoram', 'MIZ', 'MI'),
(408, 99, 'Nagaland', 'NAG', 'NA'),
(409, 99, 'Orissa', 'ORI', 'OR'),
(410, 99, 'Pondicherry', 'PON', 'PO'),
(411, 99, 'Punjab', 'PUN', 'PU'),
(412, 99, 'Rajasthan', 'RAJ', 'RA'),
(413, 99, 'Sikkim', 'SIK', 'SI'),
(414, 99, 'Tamil Nadu', 'TAM', 'TA'),
(415, 99, 'Tripura', 'TRI', 'TR'),
(416, 99, 'Uttaranchal', 'UAR', 'UA'),
(417, 99, 'Uttar Pradesh', 'UTT', 'UT'),
(418, 99, 'West Bengal', 'WES', 'WE'),
(419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO'),
(420, 101, 'Ardabil', 'ARD', 'AR'),
(421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG'),
(422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS'),
(423, 101, 'Bushehr', 'BUS', 'BU'),
(424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM'),
(425, 101, 'Esfahan', 'ESF', 'ES'),
(426, 101, 'Fars', 'FAR', 'FA'),
(427, 101, 'Gilan', 'GIL', 'GI'),
(428, 101, 'Gorgan', 'GOR', 'GO'),
(429, 101, 'Hamadan', 'HAM', 'HA'),
(430, 101, 'Hormozgan', 'HOR', 'HO'),
(431, 101, 'Ilam', 'ILA', 'IL'),
(432, 101, 'Kerman', 'KER', 'KE'),
(433, 101, 'Kermanshah', 'BAK', 'BA'),
(434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ'),
(435, 101, 'Khorasan-e Razavi', 'KHR', 'KR'),
(436, 101, 'Khorasan-e Shomali', 'KHS', 'KS'),
(437, 101, 'Khuzestan', 'KHU', 'KH'),
(438, 101, 'Kordestan', 'KOR', 'KO'),
(439, 101, 'Lorestan', 'LOR', 'LO'),
(440, 101, 'Markazi', 'MAR', 'MR'),
(441, 101, 'Mazandaran', 'MAZ', 'MZ'),
(442, 101, 'Qazvin', 'QAS', 'QA'),
(443, 101, 'Qom', 'QOM', 'QO'),
(444, 101, 'Semnan', 'SEM', 'SE'),
(445, 101, 'Sistan va Baluchestan', 'SBA', 'SB'),
(446, 101, 'Tehran', 'TEH', 'TE'),
(447, 101, 'Yazd', 'YAZ', 'YA'),
(448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_tax_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `tax_state` varchar(64) default NULL,
  `tax_country` varchar(64) default NULL,
  `mdate` int(11) default NULL,
  `tax_rate` decimal(10,4) default NULL,
  PRIMARY KEY  (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The tax rates for your store' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_vm_tax_rate`
--

INSERT INTO `jos_vm_tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'CA', 'USA', 964565926, '0.0825');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_userfield`
--

CREATE TABLE IF NOT EXISTS `jos_vm_userfield` (
  `fieldid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL default '',
  `maxlength` int(11) default NULL,
  `size` int(11) default NULL,
  `required` tinyint(4) default '0',
  `ordering` int(11) default NULL,
  `cols` int(11) default NULL,
  `rows` int(11) default NULL,
  `value` varchar(50) default NULL,
  `default` int(11) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `registration` tinyint(1) NOT NULL default '0',
  `shipping` tinyint(1) NOT NULL default '0',
  `account` tinyint(1) NOT NULL default '1',
  `readonly` tinyint(1) NOT NULL default '0',
  `calculated` tinyint(1) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  `vendor_id` int(11) default NULL,
  `params` mediumtext,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `jos_vm_userfield`
--

INSERT INTO `jos_vm_userfield` (`fieldid`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `shipping`, `account`, `readonly`, `calculated`, `sys`, `vendor_id`, `params`) VALUES
(1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, ''),
(35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL),
(8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL),
(21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, ''),
(26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL),
(28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL),
(29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_userfield_values`
--

CREATE TABLE IF NOT EXISTS `jos_vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL auto_increment,
  `fieldid` int(11) NOT NULL default '0',
  `fieldtitle` varchar(255) NOT NULL default '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fieldvalueid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_vm_userfield_values`
--

INSERT INTO `jos_vm_userfield_values` (`fieldvalueid`, `fieldid`, `fieldtitle`, `fieldvalue`, `ordering`, `sys`) VALUES
(1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1),
(2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1),
(3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_user_info` (
  `user_info_id` varchar(32) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `perms` varchar(40) NOT NULL default 'shopper',
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`user_info_id`),
  KEY `idx_user_info_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `jos_vm_user_info`
--

INSERT INTO `jos_vm_user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`, `perms`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
('a3a0f0e4b7355c1ae4985db86f08ea74', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'manhtqvnn4@gmail.com', NULL, NULL, NULL, NULL, NULL, 1240369783, 1240344886, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor` (
  `vendor_id` int(11) NOT NULL auto_increment,
  `vendor_name` varchar(64) default NULL,
  `contact_last_name` varchar(32) NOT NULL default '',
  `contact_first_name` varchar(32) NOT NULL default '',
  `contact_middle_name` varchar(32) default NULL,
  `contact_title` varchar(32) default NULL,
  `contact_phone_1` varchar(32) NOT NULL default '',
  `contact_phone_2` varchar(32) default NULL,
  `contact_fax` varchar(32) default NULL,
  `contact_email` varchar(255) default NULL,
  `vendor_phone` varchar(32) default NULL,
  `vendor_address_1` varchar(64) NOT NULL default '',
  `vendor_address_2` varchar(64) default NULL,
  `vendor_city` varchar(32) NOT NULL default '',
  `vendor_state` varchar(32) NOT NULL default '',
  `vendor_country` varchar(32) NOT NULL default 'US',
  `vendor_zip` varchar(32) NOT NULL default '',
  `vendor_store_name` varchar(128) NOT NULL default '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) default NULL,
  `vendor_thumb_image` varchar(255) default NULL,
  `vendor_full_image` varchar(255) default NULL,
  `vendor_currency` varchar(16) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `vendor_image_path` varchar(255) default NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL default '',
  `vendor_min_pov` decimal(10,2) default NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL default '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL default '',
  `vendor_accepted_currencies` text NOT NULL,
  `vendor_address_format` text NOT NULL,
  `vendor_date_format` varchar(255) NOT NULL,
  PRIMARY KEY  (`vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`),
  KEY `idx_vendor_category_id` (`vendor_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_vendor`
--

INSERT INTO `jos_vm_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`, `vendor_accepted_currencies`, `vendor_address_format`, `vendor_date_format`) VALUES
(1, 'Washupito\\''s Tiendita', 'Owner', 'Demo', 'Store', 'Mr.', '555-555-1212', '555-555-1212', '555-555-1212', 'manhtqvnn4@gmail.com', '555-555-1212', '100 Washupito Avenue, N.W.', '', 'Lake Forest', 'CA', 'USA', '92630', 'Washupito\\''s Tiendita', '', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'USD', 950302468, 1240423817, 'shop_image/', '<h5>You haven\\''t configured any terms of service yet. Click <a href=\\"administrator/index2.php?page=store.store_form&option=com_virtuemart\\">here</a> to change this text.</h5>', 'http://mobilesieure.com', '0.00', '0.00', '1|VND|0|.| |1|1', 'USD', '{storename}\r\n{address_1}\r\n{address_2}\r\n{city}, {zip}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_vendor_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL auto_increment,
  `vendor_category_name` varchar(64) default NULL,
  `vendor_category_desc` text,
  PRIMARY KEY  (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The categories that vendors are assigned to' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_vm_vendor_category`
--

INSERT INTO `jos_vm_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_waiting_list`
--

CREATE TABLE IF NOT EXISTS `jos_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `notify_email` varchar(150) NOT NULL default '',
  `notified` enum('0','1') default '0',
  `notify_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_vm_waiting_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_zone_shipping`
--

CREATE TABLE IF NOT EXISTS `jos_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_name` varchar(255) default NULL,
  `zone_cost` decimal(10,2) default NULL,
  `zone_limit` decimal(10,2) default NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipping Module' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_vm_zone_shipping`
--

INSERT INTO `jos_vm_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');
