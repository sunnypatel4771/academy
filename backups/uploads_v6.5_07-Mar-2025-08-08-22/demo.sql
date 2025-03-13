DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext,
  `purchase_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES ('1', 'f3dba375ca', 'Specialists', '0', 'specialists', '1741150800', NULL, 'fas fa-chess', 'category-thumbnail.png'), ('2', 'f46d41aecf', 'ENTs', '1', 'ents', '1741150800', NULL, 'fas fa-chess', NULL), ('3', 'e3f5698d5c', 'dermatologists', '1', 'dermatologists', '1741150800', NULL, 'fas fa-chess', NULL), ('4', '8427a7e85f', 'surgeons', '1', 'surgeons', '1741150800', NULL, 'fas fa-chess', NULL);
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ea7hvvh29bhn7fqgtqsa31blop3lt4bu', '127.0.0.1', '1741180027', '__ci_last_regenerate|i:1741180024;cart_items|a:0:{}language|s:7:\"english\";'), ('qg6taiap6r31af60dh3ck4fik159ees0', '127.0.0.1', '1741180027', '__ci_last_regenerate|i:1741180024;cart_items|a:0:{}language|s:7:\"english\";'), ('qgahqk1ouh54is2dcpc64t8ekaojuiv8', '127.0.0.1', '1741180027', '__ci_last_regenerate|i:1741180024;cart_items|a:0:{}language|s:7:\"english\";'), ('84k3kc338s73m2mdo3al1l09o2c0uod2', '127.0.0.1', '1741180027', '__ci_last_regenerate|i:1741180024;cart_items|a:0:{}language|s:7:\"english\";'), ('dpaho99lq3630atoocptpq97gmf23tto', '127.0.0.1', '1741180027', '__ci_last_regenerate|i:1741180024;cart_items|a:0:{}language|s:7:\"english\";'), ('7uqnfav3a4ch9tbfpt5bue66135rdg4l', '127.0.0.1', '1741180027', '__ci_last_regenerate|i:1741180024;cart_items|a:0:{}language|s:7:\"english\";'), ('gcvbmusku3g24c8snc1brfmbpkt08f0o', '127.0.0.1', '1741180028', '__ci_last_regenerate|i:1741180027;cart_items|a:0:{}language|s:7:\"english\";'), ('t5g8eo3ifg08j4jdi3j3tfahvdpgnqe6', '127.0.0.1', '1741352888', '__ci_last_regenerate|i:1741180027;cart_items|a:1:{i:0;s:1:\"1\";}language|s:7:\"english\";layout|s:4:\"list\";applied_coupon|N;total_price_of_checking_out|i:10;url_history|s:47:\"http://localhost/Academy-LMS/home/shopping_cart\";custom_session_limit|i:1742216888;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:11:\"Sunny Patel\";is_instructor|s:1:\"1\";admin_login|s:1:\"1\";'), ('cej4i6spg8dt9cq724dsqc5qs8pec9v8', '127.0.0.1', '1741181011', '__ci_last_regenerate|i:1741180942;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1742045011;user_id|s:1:\"2\";role_id|s:1:\"2\";role|s:4:\"User\";name|s:11:\"sunny patel\";is_instructor|s:1:\"0\";user_login|s:1:\"1\";layout|s:4:\"list\";');
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `has_read` int(11) DEFAULT NULL,
  `replied` int(11) DEFAULT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `outcomes` longtext COLLATE utf8_unicode_ci,
  `faqs` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT '0',
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `expiry_period` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`, `expiry_period`) VALUES ('1', 'Basic', 'Basic', '<p>Basic</p>', '[]', '[]', 'english', '1', '2', '[1]', '[]', '10', NULL, '1', 'beginner', '1', NULL, '', '1741150800', NULL, 'general', '0', '1', 'active', '', '', '', NULL, '0', '0', '1', NULL);
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT '0',
  `iyzico_supported` int(11) DEFAULT '0',
  `paystack_supported` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES ('1', 'US Dollar', 'USD', '$', '1', '1', '0', '0', '0'), ('2', 'Albanian Lek', 'ALL', 'Lek', '0', '1', '0', '0', '0'), ('3', 'Algerian Dinar', 'DZD', '??', '1', '1', '0', '0', '0'), ('4', 'Angolan Kwanza', 'AOA', 'Kz', '1', '1', '0', '0', '0'), ('5', 'Argentine Peso', 'ARS', '$', '1', '1', '0', '0', '0'), ('6', 'Armenian Dram', 'AMD', '?', '1', '1', '0', '0', '0'), ('7', 'Aruban Florin', 'AWG', 'É', '1', '1', '0', '0', '0'), ('8', 'Australian Dollar', 'AUD', '$', '1', '1', '0', '0', '0'), ('9', 'Azerbaijani Manat', 'AZN', 'm', '1', '1', '0', '0', '0'), ('10', 'Bahamian Dollar', 'BSD', 'B$', '1', '1', '0', '0', '0'), ('11', 'Bahraini Dinar', 'BHD', '.?.?', '1', '1', '0', '0', '0'), ('12', 'Bangladeshi Taka', 'BDT', '?', '1', '1', '0', '0', '0'), ('13', 'Barbadian Dollar', 'BBD', 'Bds$', '1', '1', '0', '0', '0'), ('14', 'Belarusian Ruble', 'BYR', 'Br', '0', '0', '0', '0', '0'), ('15', 'Belgian Franc', 'BEF', 'fr', '1', '1', '0', '0', '0'), ('16', 'Belize Dollar', 'BZD', '$', '1', '1', '0', '0', '0'), ('17', 'Bermudan Dollar', 'BMD', '$', '1', '1', '0', '0', '0'), ('18', 'Bhutanese Ngultrum', 'BTN', 'Nu.', '1', '1', '0', '0', '0'), ('19', 'Bitcoin', 'BTC', '?', '1', '1', '0', '0', '0'), ('20', 'Bolivian Boliviano', 'BOB', 'Bs.', '1', '1', '0', '0', '0'), ('21', 'Bosnia', 'BAM', 'KM', '1', '1', '0', '0', '0'), ('22', 'Botswanan Pula', 'BWP', 'P', '1', '1', '0', '0', '0'), ('23', 'Brazilian Real', 'BRL', 'R$', '1', '1', '0', '0', '0'), ('24', 'British Pound Sterling', 'GBP', '£', '1', '1', '0', '0', '0'), ('25', 'Brunei Dollar', 'BND', 'B$', '1', '1', '0', '0', '0'), ('26', 'Bulgarian Lev', 'BGN', '??.', '1', '1', '0', '0', '0'), ('27', 'Burundian Franc', 'BIF', 'FBu', '1', '1', '0', '0', '0'), ('28', 'Cambodian Riel', 'KHR', 'KHR', '1', '1', '0', '0', '0'), ('29', 'Canadian Dollar', 'CAD', '$', '1', '1', '0', '0', '0'), ('30', 'Cape Verdean Escudo', 'CVE', '$', '1', '1', '0', '0', '0'), ('31', 'Cayman Islands Dollar', 'KYD', '$', '1', '1', '0', '0', '0'), ('32', 'CFA Franc BCEAO', 'XOF', 'CFA', '1', '1', '0', '0', '0'), ('33', 'CFA Franc BEAC', 'XAF', 'FCFA', '1', '1', '0', '0', '0'), ('34', 'CFP Franc', 'XPF', '?', '1', '1', '0', '0', '0'), ('35', 'Chilean Peso', 'CLP', '$', '1', '1', '0', '0', '0'), ('36', 'Chinese Yuan', 'CNY', '•', '1', '1', '0', '0', '0'), ('37', 'Colombian Peso', 'COP', '$', '1', '1', '0', '0', '0'), ('38', 'Comorian Franc', 'KMF', 'CF', '1', '1', '0', '0', '0'), ('39', 'Congolese Franc', 'CDF', 'FC', '1', '1', '0', '0', '0'), ('40', 'Costa Rican Col√≥n', 'CRC', '?', '1', '1', '0', '0', '0'), ('41', 'Croatian Kuna', 'HRK', 'kn', '1', '1', '0', '0', '0'), ('42', 'Cuban Convertible Peso', 'CUC', '$, CUC', '1', '1', '0', '0', '0'), ('43', 'Czech Republic Koruna', 'CZK', 'K?', '1', '1', '0', '0', '0'), ('44', 'Danish Krone', 'DKK', 'Kr.', '1', '1', '0', '0', '0'), ('45', 'Djiboutian Franc', 'DJF', 'Fdj', '1', '1', '0', '0', '0'), ('46', 'Dominican Peso', 'DOP', '$', '1', '1', '0', '0', '0'), ('47', 'East Caribbean Dollar', 'XCD', '$', '1', '1', '0', '0', '0'), ('48', 'Egyptian Pound', 'EGP', '?.?', '1', '1', '0', '0', '0'), ('49', 'Eritrean Nakfa', 'ERN', 'Nfk', '1', '1', '0', '0', '0'), ('50', 'Estonian Kroon', 'EEK', 'kr', '1', '1', '0', '0', '0'), ('51', 'Ethiopian Birr', 'ETB', 'Nkf', '1', '1', '0', '0', '0'), ('52', 'Euro', 'EUR', 'Ä', '1', '1', '0', '0', '0'), ('53', 'Falkland Islands Pound', 'FKP', '£', '1', '1', '0', '0', '0'), ('54', 'Fijian Dollar', 'FJD', 'FJ$', '1', '1', '0', '0', '0'), ('55', 'Gambian Dalasi', 'GMD', 'D', '1', '1', '0', '0', '0'), ('56', 'Georgian Lari', 'GEL', '?', '1', '1', '0', '0', '0'), ('57', 'German Mark', 'DEM', 'DM', '1', '1', '0', '0', '0'), ('58', 'Ghanaian Cedi', 'GHS', 'GH?', '1', '1', '0', '0', '0'), ('59', 'Gibraltar Pound', 'GIP', '£', '1', '1', '0', '0', '0'), ('60', 'Greek Drachma', 'GRD', '?, ???, ??', '1', '1', '0', '0', '0'), ('61', 'Guatemalan Quetzal', 'GTQ', 'Q', '1', '1', '0', '0', '0'), ('62', 'Guinean Franc', 'GNF', 'FG', '1', '1', '0', '0', '0'), ('63', 'Guyanaese Dollar', 'GYD', '$', '1', '1', '0', '0', '0'), ('64', 'Haitian Gourde', 'HTG', 'G', '1', '1', '0', '0', '0'), ('65', 'Honduran Lempira', 'HNL', 'L', '1', '1', '0', '0', '0'), ('66', 'Hong Kong Dollar', 'HKD', '$', '1', '1', '0', '0', '0'), ('67', 'Hungarian Forint', 'HUF', 'Ft', '1', '1', '0', '0', '0'), ('68', 'Icelandic Kr√≥na', 'ISK', 'kr', '1', '1', '0', '0', '0'), ('69', 'Indian Rupee', 'INR', '?', '1', '1', '1', '0', '0'), ('70', 'Indonesian Rupiah', 'IDR', 'Rp', '1', '1', '0', '0', '0'), ('71', 'Iranian Rial', 'IRR', '?', '1', '1', '0', '0', '0'), ('72', 'Iraqi Dinar', 'IQD', '?.?', '1', '1', '0', '0', '0'), ('73', 'Israeli New Sheqel', 'ILS', '?', '1', '1', '0', '0', '0'), ('74', 'Italian Lira', 'ITL', 'L,£', '1', '1', '0', '0', '0'), ('75', 'Jamaican Dollar', 'JMD', 'J$', '1', '1', '0', '0', '0'), ('76', 'Japanese Yen', 'JPY', '•', '1', '1', '0', '0', '0'), ('77', 'Jordanian Dinar', 'JOD', '?.?', '1', '1', '0', '0', '0'), ('78', 'Kazakhstani Tenge', 'KZT', '??', '1', '1', '0', '0', '0'), ('79', 'Kenyan Shilling', 'KES', 'KSh', '1', '1', '0', '0', '0'), ('80', 'Kuwaiti Dinar', 'KWD', '?.?', '1', '1', '0', '0', '0'), ('81', 'Kyrgystani Som', 'KGS', '??', '1', '1', '0', '0', '0'), ('82', 'Laotian Kip', 'LAK', '?', '1', '1', '0', '0', '0'), ('83', 'Latvian Lats', 'LVL', 'Ls', '0', '0', '0', '0', '0'), ('84', 'Lebanese Pound', 'LBP', '£', '1', '1', '0', '0', '0'), ('85', 'Lesotho Loti', 'LSL', 'L', '1', '1', '0', '0', '0'), ('86', 'Liberian Dollar', 'LRD', '$', '1', '1', '0', '0', '0'), ('87', 'Libyan Dinar', 'LYD', '?.?', '1', '1', '0', '0', '0'), ('88', 'Lithuanian Litas', 'LTL', 'Lt', '0', '0', '0', '0', '0'), ('89', 'Macanese Pataca', 'MOP', '$', '1', '1', '0', '0', '0'), ('90', 'Macedonian Denar', 'MKD', '???', '1', '1', '0', '0', '0'), ('91', 'Malagasy Ariary', 'MGA', 'Ar', '1', '1', '0', '0', '0'), ('92', 'Malawian Kwacha', 'MWK', 'MK', '1', '1', '0', '0', '0'), ('93', 'Malaysian Ringgit', 'MYR', 'RM', '1', '1', '0', '0', '0'), ('94', 'Maldivian Rufiyaa', 'MVR', 'Rf', '1', '1', '0', '0', '0'), ('95', 'Mauritanian Ouguiya', 'MRO', 'MRU', '1', '1', '0', '0', '0'), ('96', 'Mauritian Rupee', 'MUR', '?', '1', '1', '0', '0', '0'), ('97', 'Mexican Peso', 'MXN', '$', '1', '1', '0', '0', '0'), ('98', 'Moldovan Leu', 'MDL', 'L', '1', '1', '0', '0', '0'), ('99', 'Mongolian Tugrik', 'MNT', '?', '1', '1', '0', '0', '0'), ('100', 'Moroccan Dirham', 'MAD', 'MAD', '1', '1', '0', '0', '0'), ('101', 'Mozambican Metical', 'MZM', 'MT', '1', '1', '0', '0', '0'), ('102', 'Myanmar Kyat', 'MMK', 'K', '1', '1', '0', '0', '0'), ('103', 'Namibian Dollar', 'NAD', '$', '1', '1', '0', '0', '0'), ('104', 'Nepalese Rupee', 'NPR', '?', '1', '1', '0', '0', '0'), ('105', 'Netherlands Antillean Guilder', 'ANG', 'É', '1', '1', '0', '0', '0'), ('106', 'New Taiwan Dollar', 'TWD', '$', '1', '1', '0', '0', '0'), ('107', 'New Zealand Dollar', 'NZD', '$', '1', '1', '0', '0', '0'), ('108', 'Nicaraguan C√≥rdoba', 'NIO', 'C$', '1', '1', '0', '0', '0'), ('109', 'Nigerian Naira', 'NGN', '?', '1', '1', '0', '0', '1'), ('110', 'North Korean Won', 'KPW', '?', '0', '0', '0', '0', '0'), ('111', 'Norwegian Krone', 'NOK', 'kr', '1', '1', '0', '0', '0'), ('112', 'Omani Rial', 'OMR', '.?.?', '0', '0', '0', '0', '0'), ('113', 'Pakistani Rupee', 'PKR', '?', '1', '1', '0', '0', '0'), ('114', 'Panamanian Balboa', 'PAB', 'B/.', '1', '1', '0', '0', '0'), ('115', 'Papua New Guinean Kina', 'PGK', 'K', '1', '1', '0', '0', '0'), ('116', 'Paraguayan Guarani', 'PYG', '?', '1', '1', '0', '0', '0'), ('117', 'Peruvian Nuevo Sol', 'PEN', 'S/.', '1', '1', '0', '0', '0'), ('118', 'Philippine Peso', 'PHP', '?', '1', '1', '0', '0', '0'), ('119', 'Polish Zloty', 'PLN', 'z?', '1', '1', '0', '0', '0'), ('120', 'Qatari Rial', 'QAR', '?.?', '1', '1', '0', '0', '0'), ('121', 'Romanian Leu', 'RON', 'lei', '1', '1', '0', '0', '0'), ('122', 'Russian Ruble', 'RUB', '?', '1', '1', '0', '0', '0'), ('123', 'Rwandan Franc', 'RWF', 'FRw', '1', '1', '0', '0', '0'), ('124', 'Salvadoran Col√≥n', 'SVC', '?', '0', '0', '0', '0', '0'), ('125', 'Samoan Tala', 'WST', 'SAT', '1', '1', '0', '0', '0'), ('126', 'Saudi Riyal', 'SAR', '?', '1', '1', '0', '0', '0'), ('127', 'Serbian Dinar', 'RSD', 'din', '1', '1', '0', '0', '0'), ('128', 'Seychellois Rupee', 'SCR', 'SRe', '1', '1', '0', '0', '0'), ('129', 'Sierra Leonean Leone', 'SLL', 'Le', '1', '1', '0', '0', '0'), ('130', 'Singapore Dollar', 'SGD', '$', '1', '1', '0', '0', '0'), ('131', 'Slovak Koruna', 'SKK', 'Sk', '1', '1', '0', '0', '0'), ('132', 'Solomon Islands Dollar', 'SBD', 'Si$', '1', '1', '0', '0', '0'), ('133', 'Somali Shilling', 'SOS', 'Sh.so.', '1', '1', '0', '0', '0'), ('134', 'South African Rand', 'ZAR', 'R', '1', '1', '0', '0', '0'), ('135', 'South Korean Won', 'KRW', '?', '1', '1', '0', '0', '0'), ('136', 'Special Drawing Rights', 'XDR', 'SDR', '1', '1', '0', '0', '0'), ('137', 'Sri Lankan Rupee', 'LKR', 'Rs', '1', '1', '0', '0', '0'), ('138', 'St. Helena Pound', 'SHP', '£', '1', '1', '0', '0', '0'), ('139', 'Sudanese Pound', 'SDG', '.?.?', '1', '1', '0', '0', '0'), ('140', 'Surinamese Dollar', 'SRD', '$', '1', '1', '0', '0', '0'), ('141', 'Swazi Lilangeni', 'SZL', 'E', '1', '1', '0', '0', '0'), ('142', 'Swedish Krona', 'SEK', 'kr', '1', '1', '0', '0', '0'), ('143', 'Swiss Franc', 'CHF', 'CHf', '1', '1', '0', '0', '0'), ('144', 'Syrian Pound', 'SYP', 'LS', '0', '0', '0', '0', '0'), ('145', 'S„o TomÈ and PrÌncipe Dobra', 'STD', 'Db', '1', '1', '0', '0', '0'), ('146', 'Tajikistani Somoni', 'TJS', 'SM', '1', '1', '0', '0', '0'), ('147', 'Tanzanian Shilling', 'TZS', 'TSh', '1', '1', '0', '0', '0'), ('148', 'Thai Baht', 'THB', '?', '1', '1', '0', '0', '0'), ('149', 'Tongan pa\'anga', 'TOP', '$', '1', '1', '0', '0', '0'), ('150', 'Trinidad & Tobago Dollar', 'TTD', '$', '1', '1', '0', '0', '0'), ('151', 'Tunisian Dinar', 'TND', '?.?', '1', '1', '0', '0', '0'), ('152', 'Turkish Lira', 'TRY', '?', '1', '1', '0', '1', '0'), ('153', 'Turkmenistani Manat', 'TMT', 'T', '1', '1', '0', '0', '0'), ('154', 'Ugandan Shilling', 'UGX', 'USh', '1', '1', '0', '0', '0'), ('155', 'Ukrainian Hryvnia', 'UAH', '?', '1', '1', '0', '0', '0'), ('156', 'United Arab Emirates Dirham', 'AED', '?.?', '1', '1', '0', '0', '0'), ('157', 'Uruguayan Peso', 'UYU', '$', '1', '1', '0', '0', '0'), ('158', 'Afghan Afghani', 'AFA', '?', '1', '1', '0', '0', '0'), ('159', 'Uzbekistan Som', 'UZS', '??', '1', '1', '0', '0', '0'), ('160', 'Vanuatu Vatu', 'VUV', 'VT', '1', '1', '0', '0', '0'), ('161', 'Venezuelan Bol√var', 'VEF', 'Bs', '0', '0', '0', '0', '0'), ('162', 'Vietnamese Dong', 'VND', '?', '1', '1', '0', '0', '0'), ('163', 'Yemeni Rial', 'YER', '?', '1', '1', '0', '0', '0'), ('164', 'Zambian Kwacha', 'ZMK', 'ZK', '1', '1', '0', '0', '0');
DROP TABLE IF EXISTS `custom_page`;
CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`custom_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `enrol`;
CREATE TABLE `enrol` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `gifted_by` int(11) NOT NULL DEFAULT '0',
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `gifted_by`, `expiry_date`, `date_added`, `last_modified`) VALUES ('1', '2', '1', '0', NULL, '1741150800', NULL);
DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE `frontend_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('1', 'banner_title', 'Start learning from best Platform'), ('2', 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'), ('4', 'about_us', '<p></p><h2><span xss=\"removed\">About us</span></h2>'), ('10', 'terms_and_condition', '<h2>Terms and Condition</h2>'), ('11', 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>'), ('13', 'theme', 'default-new'), ('14', 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'), ('15', 'cookie_status', 'active'), ('16', 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'), ('17', 'banner_image', '{\"home_1\":\"home-1.png\"}'), ('18', 'light_logo', 'logo-light.png'), ('19', 'dark_logo', 'logo-dark.png'), ('20', 'small_logo', 'logo-light-sm.png'), ('21', 'favicon', 'favicon.png'), ('22', 'recaptcha_status', '0'), ('23', 'recaptcha_secretkey', 'Valid-secret-key'), ('24', 'recaptcha_sitekey', 'Valid-site-key'), ('25', 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'), ('26', 'facebook', 'https://facebook.com'), ('27', 'twitter', 'https://twitter.com'), ('28', 'linkedin', ''), ('31', 'blog_page_title', 'Where possibilities begin'), ('32', 'blog_page_subtitle', 'Weíre a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'), ('33', 'blog_page_banner', 'blog-page.png'), ('34', 'instructors_blog_permission', '0'), ('35', 'blog_visibility_on_the_home_page', '1'), ('37', 'website_faqs', '[]'), ('38', 'motivational_speech', '[]'), ('39', 'home_page', 'home_1'), ('40', 'contact_info', '{\"email\":\"admin@example.com,\\r\\nsystem@example.com\",\"phone\":\"609-502-5899\\r\\n345-444-2122\",\"address\":\"455 Wolff Streets Suite 674\",\"office_hours\":\"10:00 AM - 6:00 PM\"}'), ('41', 'custom_css', ''), ('42', 'embed_code', ''), ('43', 'top_course_section', '1'), ('44', 'latest_course_section', '1'), ('45', 'top_category_section', '1'), ('46', 'upcoming_course_section', '1'), ('47', 'faq_section', '1'), ('48', 'top_instructor_section', '1'), ('49', 'motivational_speech_section', '1'), ('50', 'promotional_section', '1');
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=578 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES ('1', '404_not_found', '404 not found'), ('2', '404_not_found', '404 not found'), ('3', 'courses', 'Courses'), ('4', 'courses', 'Courses'), ('5', 'courses', 'Courses'), ('6', 'all_courses', 'All courses'), ('7', 'all_courses', 'All courses'), ('8', 'search', 'Search'), ('9', 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'), ('10', 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'), ('11', 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'), ('12', 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'), ('13', 'checkout', 'Checkout'), ('14', 'checkout', 'Checkout'), ('15', 'checkout', 'Checkout'), ('16', 'checkout', 'Checkout'), ('17', 'login', 'Login'), ('18', 'login', 'Login'), ('19', 'login', 'Login'), ('20', 'join_now', 'Join now'), ('21', 'join_now', 'Join now'), ('22', 'join_now', 'Join now'), ('23', 'sign_up', 'Sign up'), ('24', 'sign_up', 'Sign up'), ('25', 'cart', 'Cart'), ('26', 'categories', 'Categories'), ('27', 'cookie_policy', 'Cookie policy'), ('28', 'cookie_policy', 'Cookie policy'), ('29', 'accept', 'Accept'), ('30', 'home', 'Home'), ('31', 'home', 'Home'), ('32', 'home', 'Home'), ('33', 'home', 'Home'), ('34', 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'), ('35', 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'), ('36', 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'), ('37', 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'), ('38', 'check_the_spelling_of_the_url', 'Check the spelling of the url'), ('39', 'check_the_spelling_of_the_url', 'Check the spelling of the url'), ('40', 'check_the_spelling_of_the_url', 'Check the spelling of the url'), ('41', 'check_the_spelling_of_the_url', 'Check the spelling of the url'), ('42', 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'), ('43', 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'), ('44', 'back_to_home', 'Back to home'), ('45', 'back_to_home', 'Back to home'), ('46', 'back_to_home', 'Back to home'), ('47', 'back_to_home', 'Back to home'), ('48', 'top_categories', 'Top categories'), ('49', 'top_categories', 'Top categories'), ('50', 'top_categories', 'Top categories'), ('51', 'top_categories', 'Top categories'), ('52', 'useful_links', 'Useful links'), ('53', 'become_an_instructor', 'Become an instructor'), ('54', 'blog', 'Blog'), ('55', 'blog', 'Blog'), ('56', 'blog', 'Blog'), ('57', 'help', 'Help'), ('58', 'help', 'Help'), ('59', 'help', 'Help'), ('60', 'contact_us', 'Contact us'), ('61', 'contact_us', 'Contact us'), ('62', 'contact_us', 'Contact us'), ('63', 'about_us', 'About us'), ('64', 'about_us', 'About us'), ('65', 'about_us', 'About us'), ('66', 'privacy_policy', 'Privacy policy'), ('67', 'privacy_policy', 'Privacy policy'), ('68', 'privacy_policy', 'Privacy policy'), ('69', 'terms_and_condition', 'Terms and condition'), ('70', 'terms_and_condition', 'Terms and condition'), ('71', 'terms_and_condition', 'Terms and condition'), ('72', 'faq', 'Faq'), ('73', 'faq', 'Faq'), ('74', 'faq', 'Faq'), ('75', 'refund_policy', 'Refund policy'), ('76', 'refund_policy', 'Refund policy'), ('77', 'refund_policy', 'Refund policy'), ('78', 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'), ('79', 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'), ('80', 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'), ('81', 'enter_your_email_address', 'Enter your email address'), ('82', 'enter_your_email_address', 'Enter your email address'), ('83', 'enter_your_email_address', 'Enter your email address'), ('84', 'creativeitem', 'Creativeitem'), ('85', 'creativeitem', 'Creativeitem'), ('86', 'are_you_sure', 'Are you sure'), ('87', 'are_you_sure', 'Are you sure'), ('88', 'are_you_sure', 'Are you sure'), ('89', 'are_you_sure', 'Are you sure'), ('90', 'yes', 'Yes'), ('91', 'yes', 'Yes'), ('92', 'yes', 'Yes'), ('93', 'yes', 'Yes'), ('94', 'no', 'No'), ('95', 'no', 'No'), ('96', 'no', 'No'), ('97', 'no', 'No'), ('98', 'log_in', 'Log in'), ('99', 'explore,_learn,_and_grow_with_us._enjoy_a_seamless_and_enriching_educational_journey._lets_begin!', 'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!'), ('100', 'your_email', 'Your email'), ('101', 'enter_your_email', 'Enter your email'), ('102', 'password', 'Password'), ('103', 'enter_your_valid_password', 'Enter your valid password'), ('104', 'forgot_password?', 'Forgot password?'), ('105', 'don`t_have_an_account?', 'Don`t have an account?'), ('106', 'or', 'Or'), ('107', 'welcome', 'Welcome'), ('108', 'dashboard', 'Dashboard'), ('109', 'quick_actions', 'Quick actions'), ('110', 'create_course', 'Create course'), ('111', 'add_course', 'Add course'), ('112', 'add_new_lesson', 'Add new lesson'), ('113', 'add_lesson', 'Add lesson'), ('114', 'add_student', 'Add student'), ('115', 'enrol_a_student', 'Enrol a student'), ('116', 'enrol_student', 'Enrol student'), ('117', 'help_center', 'Help center'), ('118', 'read_documentation', 'Read documentation'), ('119', 'watch_video_tutorial', 'Watch video tutorial'), ('120', 'get_customer_support', 'Get customer support'), ('121', 'order_customization', 'Order customization'), ('122', 'request_a_new_feature', 'Request a new feature'), ('123', 'browse_addons', 'Browse addons'), ('124', 'remove_all', 'Remove all'), ('125', 'notification', 'Notification'), ('126', 'no_notification', 'No notification'), ('127', 'stay_tuned!', 'Stay tuned!'), ('128', 'notifications_about_your_activity_will_show_up_here.', 'Notifications about your activity will show up here.'), ('129', 'notification_settings', 'Notification settings'), ('130', 'mark_all_as_read', 'Mark all as read'), ('131', 'admin', 'Admin'), ('132', 'my_account', 'My account'), ('133', 'settings', 'Settings'), ('134', 'logout', 'Logout'), ('135', 'visit_website', 'Visit website'), ('136', 'navigation', 'Navigation'), ('137', 'manage_courses', 'Manage courses'), ('138', 'add_new_course', 'Add new course'), ('139', 'course_category', 'Course category'), ('140', 'coupons', 'Coupons'), ('141', 'enrollments', 'Enrollments'), ('142', 'course_enrollment', 'Course enrollment'), ('143', 'enrol_history', 'Enrol history'), ('144', 'report', 'Report'), ('145', 'admin_revenue', 'Admin revenue'), ('146', 'instructor_revenue', 'Instructor revenue'), ('147', 'purchase_history', 'Purchase history'), ('148', 'users', 'Users'), ('149', 'admins', 'Admins'), ('150', 'manage_admins', 'Manage admins'), ('151', 'add_new_admin', 'Add new admin'), ('152', 'instructors', 'Instructors'), ('153', 'manage_instructors', 'Manage instructors'), ('154', 'add_new_instructor', 'Add new instructor'), ('155', 'instructor_payout', 'Instructor payout'), ('156', 'instructor_settings', 'Instructor settings'), ('157', 'applications', 'Applications'), ('158', 'students', 'Students'), ('159', 'manage_students', 'Manage students'), ('160', 'add_new_student', 'Add new student'), ('161', 'message', 'Message'), ('162', 'newsletter', 'Newsletter'), ('163', 'all_newsletter', 'All newsletter'), ('164', 'subscribed_user', 'Subscribed user'), ('165', 'contact', 'Contact'), ('166', 'all_blogs', 'All blogs'), ('167', 'pending_blog', 'Pending blog'), ('168', 'blog_category', 'Blog category'), ('169', 'blog_settings', 'Blog settings'), ('170', 'addons', 'Addons'), ('171', 'themes', 'Themes'), ('172', 'system_settings', 'System settings'), ('173', 'website_settings', 'Website settings'), ('174', 'academy_cloud', 'Academy cloud'), ('175', 'drip_content_settings', 'Drip content settings'), ('176', 'payment_settings', 'Payment settings'), ('177', 'language_settings', 'Language settings'), ('178', 'social_login', 'Social login'), ('179', 'custom_page_builder', 'Custom page builder'), ('180', 'data_center', 'Data center'), ('181', 'about', 'About'), ('182', 'manage_profile', 'Manage profile'), ('183', 'admin_revenue_this_year', 'Admin revenue this year'), ('184', 'number_courses', 'Number courses'), ('185', 'number_of_lessons', 'Number of lessons'), ('186', 'number_of_enrolment', 'Number of enrolment'), ('187', 'number_of_student', 'Number of student'), ('188', 'course_overview', 'Course overview'), ('189', 'active_courses', 'Active courses'), ('190', 'pending_courses', 'Pending courses'), ('191', 'requested_withdrawal', 'Requested withdrawal'), ('192', 'january', 'January'), ('193', 'february', 'February'), ('194', 'march', 'March'), ('195', 'april', 'April'), ('196', 'may', 'May'), ('197', 'june', 'June'), ('198', 'july', 'July'), ('199', 'august', 'August'), ('200', 'september', 'September'), ('201', 'october', 'October'), ('202', 'november', 'November'), ('203', 'december', 'December'), ('204', 'this_year', 'This year'), ('205', 'active_course', 'Active course'), ('206', 'pending_course', 'Pending course'), ('207', 'heads_up', 'Heads up'), ('208', 'congratulations', 'Congratulations'), ('209', 'oh_snap', 'Oh snap'), ('210', 'please_fill_all_the_required_fields', 'Please fill all the required fields'), ('211', 'close', 'Close'), ('212', 'cancel', 'Cancel'), ('213', 'continue', 'Continue'), ('214', 'ok', 'Ok'), ('215', 'success', 'Success'), ('216', 'your_server_does_not_allow_uploading_files_that_large.', 'Your server does not allow uploading files that large.'), ('217', 'your_servers_file_upload_limit_is_256mb', 'Your servers file upload limit is 256mb'), ('218', 'successfully', 'Successfully'), ('219', 'div_added_to_bottom_', 'Div added to bottom '), ('220', 'div_has_been_deleted_', 'Div has been deleted '), ('221', 'course_adding_form', 'Course adding form'), ('222', 'back_to_course_list', 'Back to course list'), ('223', 'basic', 'Basic'), ('224', 'info', 'Info'), ('225', 'pricing', 'Pricing'), ('226', 'media', 'Media'), ('227', 'seo', 'Seo'), ('228', 'finish', 'Finish'), ('229', 'course_title', 'Course title'), ('230', 'enter_course_title', 'Enter course title'), ('231', 'short_description', 'Short description'), ('232', 'description', 'Description'), ('233', 'category', 'Category'), ('234', 'select_a_category', 'Select a category'), ('235', 'select_sub_category', 'Select sub category'), ('236', 'level', 'Level'), ('237', 'beginner', 'Beginner'), ('238', 'advanced', 'Advanced'), ('239', 'intermediate', 'Intermediate'), ('240', 'language_made_in', 'Language made in'), ('241', 'enable_drip_content', 'Enable drip content'), ('242', 'create_as_a', 'Create as a'), ('243', 'private_course', 'Private course'), ('244', 'upcoming_course', 'Upcoming course'), ('245', 'check_if_this_course_is_top_course', 'Check if this course is top course'), ('246', 'course_faq', 'Course faq'), ('247', 'faq_question', 'Faq question'), ('248', 'answer', 'Answer'), ('249', 'requirements', 'Requirements'), ('250', 'provide_requirements', 'Provide requirements'), ('251', 'outcomes', 'Outcomes'), ('252', 'provide_outcomes', 'Provide outcomes'), ('253', 'check_if_this_is_a_free_course', 'Check if this is a free course'), ('254', 'course_price', 'Course price'), ('255', 'enter_course_course_price', 'Enter course course price'), ('256', 'check_if_this_course_has_discount', 'Check if this course has discount'), ('257', 'discounted_price', 'Discounted price'), ('258', 'this_course_has', 'This course has'), ('259', 'discount', 'Discount'), ('260', 'expiry_period', 'Expiry period'), ('261', 'lifetime', 'Lifetime'), ('262', 'limited_time', 'Limited time'), ('263', 'number_of_month', 'Number of month'), ('264', 'after_purchase,_students_can_access_the_course_until_your_selected_time.', 'After purchase, students can access the course until your selected time.'), ('265', 'course_overview_provider', 'Course overview provider'), ('266', 'youtube', 'Youtube'), ('267', 'vimeo', 'Vimeo'), ('268', 'html5', 'Html5'), ('269', 'course_overview_url', 'Course overview url'), ('270', 'course_thumbnail', 'Course thumbnail'), ('271', 'meta_keywords', 'Meta keywords'), ('272', 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button'), ('273', 'meta_description', 'Meta description'), ('274', 'thank_you', 'Thank you'), ('275', 'you_are_just_one_click_away', 'You are just one click away'), ('276', 'submit', 'Submit'), ('277', 'administration', 'Administration'), ('278', 'log_out', 'Log out'), ('279', 'upcoming_courses', 'Upcoming courses'), ('280', 'free_courses', 'Free courses'), ('281', 'paid_courses', 'Paid courses'), ('282', 'course_list', 'Course list'), ('283', 'all', 'All'), ('284', 'status', 'Status'), ('285', 'active', 'Active'), ('286', 'pending', 'Pending'), ('287', 'private', 'Private'), ('288', 'upcoming', 'Upcoming'), ('289', 'instructor', 'Instructor'), ('290', 'price', 'Price'), ('291', 'free', 'Free'), ('292', 'paid', 'Paid'), ('293', 'filter', 'Filter'), ('294', 'title', 'Title'), ('295', 'lesson_and_section', 'Lesson and section'), ('296', 'enrolled_student', 'Enrolled student'), ('297', 'actions', 'Actions'), ('298', 'add_new_category', 'Add new category'), ('299', 'add_category', 'Add category'), ('300', 'category_add_form', 'Category add form'), ('301', 'category_code', 'Category code'), ('302', 'category_title', 'Category title'), ('303', 'parent', 'Parent'), ('304', 'none', 'None'), ('305', 'select_none_to_create_a_parent_category', 'Select none to create a parent category'), ('306', 'icon_picker', 'Icon picker'), ('307', 'category_thumbnail', 'Category thumbnail'), ('308', 'the_image_size_should_be', 'The image size should be'), ('309', 'choose_thumbnail', 'Choose thumbnail'), ('310', 'data_added_successfully', 'Data added successfully'), ('311', 'sub_categories', 'Sub categories'), ('312', 'edit', 'Edit'), ('313', 'delete', 'Delete'), ('314', 'course_has_been_added_successfully', 'Course has been added successfully'), ('315', 'edit_course', 'Edit course'), ('316', 'update', 'Update'), ('317', 'course_manager', 'Course manager'), ('318', 'view_on_frontend', 'View on frontend'), ('319', 'curriculum', 'Curriculum'), ('320', 'academic_progress', 'Academic progress'), ('321', 'add_new_section', 'Add new section'), ('322', 'add_section', 'Add section'), ('323', 'course_type', 'Course type'), ('324', 'general', 'General'), ('325', 'the_course_type_can_not_be_editable', 'The course type can not be editable'), ('326', 'instructor_of_this_course', 'Instructor of this course'), ('327', 'updated_as_a', 'Updated as a'), ('328', 'provide_a_section_name', 'Provide a section name'), ('329', 'date_of_study_plan', 'Date of study plan'), ('330', 'optional', 'Optional'), ('331', 'restriction_of_study_plan', 'Restriction of study plan'), ('332', 'no_restriction', 'No restriction'), ('333', 'until_the_start_date,_keep_this_section_locked', 'Until the start date, keep this section locked'), ('334', 'keep_this_section_open_only_within_the_selected_date_range', 'Keep this section open only within the selected date range'), ('335', 'section_has_been_added_successfully', 'Section has been added successfully'), ('336', 'add_new_quiz', 'Add new quiz'), ('337', 'add_quiz', 'Add quiz'), ('338', 'sort_sections', 'Sort sections'), ('339', 'section', 'Section'), ('340', 'sort_lessons', 'Sort lessons'), ('341', 'sort_lesson', 'Sort lesson'), ('342', 'update_section', 'Update section'), ('343', 'edit_section', 'Edit section'), ('344', 'delete_section', 'Delete section'), ('345', 'quiz_title', 'Quiz title'), ('346', 'quiz_duration', 'Quiz duration'), ('347', 'if_you_want_to_disable_the_timer,_set_the_duration_to', 'If you want to disable the timer, set the duration to'), ('348', 'total_marks', 'Total marks'), ('349', 'number_of_quiz_retakes', 'Number of quiz retakes'), ('350', 'enter_0_if_you_want_to_disable_multiple_attempts', 'Enter 0 if you want to disable multiple attempts'), ('351', 'instruction', 'Instruction'), ('352', 'quiz_has_been_added_successfully', 'Quiz has been added successfully'), ('353', 'quiz_results', 'Quiz results'), ('354', 'manage_quiz_questions', 'Manage quiz questions'), ('355', 'quiz_questions', 'Quiz questions'), ('356', 'update_quiz_information', 'Update quiz information'), ('357', 'quiz', 'Quiz'), ('358', 'course_content', 'Course content'), ('359', 'mark_as_complete', 'Mark as complete'), ('360', 'total_questions', 'Total questions'), ('361', 'total_participant_students', 'Total participant students'), ('362', 'participant_students', 'Participant students'), ('363', 'select_student', 'Select student'), ('364', 'select_a_student_to_view_the_answer_sheet', 'Select a student to view the answer sheet'), ('365', 'summary', 'Summary'), ('366', 'quiz_has_been_updated_successfully', 'Quiz has been updated successfully'), ('367', 'questions_of', 'Questions of'), ('368', 'update_sorting', 'Update sorting'), ('369', 'add_new_question', 'Add new question'), ('370', 'questions_have_been_sorted', 'Questions have been sorted'), ('371', 'write_your_question', 'Write your question'), ('372', 'question_type', 'Question type'), ('373', 'select_question_type', 'Select question type'), ('374', 'multiple_choice', 'Multiple choice'), ('375', 'single_choice', 'Single choice'), ('376', 'and', 'And'), ('377', 'plain_text', 'Plain text'), ('378', 'fill_in_the_blank', 'Fill in the blank'), ('379', 'submit_quiz_question', 'Submit quiz question'), ('380', 'question_has_been_added', 'Question has been added'), ('381', 'number_of_options', 'Number of options'), ('382', 'option', 'Option'), ('383', 'option_', 'Option '), ('384', 'update_quiz_question', 'Update quiz question'), ('385', 'enter_which_word_of_your_question_you_want_to_show_blank', 'Enter which word of your question you want to show blank'), ('386', 'press_the_enter_key_after_writing_your_every_word', 'Press the enter key after writing your every word'), ('387', 'start_learning_from_best_platform', 'Start learning from best platform'), ('388', 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'), ('389', 'what_do_you_want_to_learn', 'What do you want to learn'), ('390', 'happy', 'Happy'), ('391', 'experienced', 'Experienced'), ('392', 'online_courses', 'Online courses'), ('393', 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'), ('394', 'expert_instruction', 'Expert instruction'), ('395', 'find_the_right_course_for_you', 'Find the right course for you'), ('396', 'smart_solution', 'Smart solution'), ('397', 'learn_on_your_schedule', 'Learn on your schedule'), ('398', 'top_courses', 'Top courses'), ('399', 'these_are_the_most_popular_courses_among_listen_courses_learners_worldwide', 'These are the most popular courses among listen courses learners worldwide'), ('400', 'top', 'Top'), ('401', 'latest_courses', 'Latest courses'), ('402', 'these_are_the_most_latest_courses_among_listen_courses_learners_worldwide', 'These are the most latest courses among listen courses learners worldwide'), ('403', 'hours', 'Hours'), ('404', 'reviews', 'Reviews'), ('405', 'compare', 'Compare'), ('406', 'last_updated', 'Last updated'), ('407', 'lessons', 'Lessons'), ('408', 'remove_from_cart', 'Remove from cart'), ('409', 'add_to_cart', 'Add to cart'), ('410', 'join_now_to_start_learning', 'Join now to start learning'), ('411', 'learn_from_our_quality_instructors!', 'Learn from our quality instructors!'), ('412', 'get_started', 'Get started'), ('413', 'become_a_new_instructor', 'Become a new instructor'), ('414', 'teach_thousands_of_students_and_earn_money!', 'Teach thousands of students and earn money!'), ('415', 'all_category', 'All category'), ('416', 'show_more', 'Show more'), ('417', 'show_less', 'Show less'), ('418', 'language', 'Language'), ('419', 'ratings', 'Ratings'), ('420', 'list_view', 'List view'), ('421', 'grid_view', 'Grid view'), ('422', 'reset', 'Reset'), ('423', 'showing', 'Showing'), ('424', 'of', 'Of'), ('425', 'results', 'Results'), ('426', 'newly_published', 'Newly published'), ('427', 'highest_rating', 'Highest rating'), ('428', 'lowest_price', 'Lowest price'), ('429', 'highest_price', 'Highest price'), ('430', 'discounted', 'Discounted'), ('431', 'english', 'English'), ('432', 'course', 'Course'), ('433', 'created_by', 'Created by'), ('434', 'enrolled', 'Enrolled'), ('435', 'overview', 'Overview'), ('436', 'course_description', 'Course description'), ('437', 'what_will_i_learn?', 'What will i learn?'), ('438', 'view_profile', 'View profile'), ('439', 'compare_this_course', 'Compare this course'), ('440', 'lectures', 'Lectures'), ('441', 'quizzes', 'Quizzes'), ('442', 'skill_level', 'Skill level'), ('443', 'buy_now', 'Buy now'), ('444', 'related_courses', 'Related courses'), ('445', 'course_enrolment', 'Course enrolment'), ('446', 'enrolment_form', 'Enrolment form'), ('447', 'course_to_enrol', 'Course to enrol'), ('448', 'select_a_course', 'Select a course'), ('449', 'student_add', 'Student add'), ('450', 'student_add_form', 'Student add form'), ('451', 'basic_info', 'Basic info'), ('452', 'login_credentials', 'Login credentials'), ('453', 'social_information', 'Social information'), ('454', 'payment_info', 'Payment info'), ('455', 'first_name', 'First name'), ('456', 'last_name', 'Last name'), ('457', 'biography', 'Biography'), ('458', 'phone', 'Phone'), ('459', 'address', 'Address'), ('460', 'user_image', 'User image'), ('461', 'choose_user_image', 'Choose user image'), ('462', 'email', 'Email'), ('463', 'facebook', 'Facebook'), ('464', 'twitter', 'Twitter'), ('465', 'linkedin', 'Linkedin'), ('466', 'paypal', 'Paypal'), ('467', 'sandbox_client_id', 'Sandbox client id'), ('468', 'required_for_instructor', 'Required for instructor'), ('469', 'sandbox_secret_key', 'Sandbox secret key'), ('470', 'production_client_id', 'Production client id'), ('471', 'production_secret_key', 'Production secret key'), ('472', 'stripe', 'Stripe'), ('473', 'public_key', 'Public key'), ('474', 'secret_key', 'Secret key'), ('475', 'public_live_key', 'Public live key'), ('476', 'secret_live_key', 'Secret live key'), ('477', 'razorpay', 'Razorpay'), ('478', 'key_id', 'Key id'), ('479', 'theme_color', 'Theme color'), ('480', 'xendit', 'Xendit'), ('481', 'api_key', 'Api key'), ('482', 'other_parameter', 'Other parameter'), ('483', 'payu', 'Payu'), ('484', 'pos_id', 'Pos id'), ('485', 'second_key', 'Second key'), ('486', 'client_id', 'Client id'), ('487', 'client_secret', 'Client secret'), ('488', 'pagseguro', 'Pagseguro'), ('489', 'ssl_commerz', 'Ssl commerz'), ('490', 'store_id', 'Store id'), ('491', 'store_password', 'Store password'), ('492', 'skrill', 'Skrill'), ('493', 'skrill_merchant_email', 'Skrill merchant email'), ('494', 'secret_passphrase', 'Secret passphrase'), ('495', 'doku', 'Doku'), ('496', 'shared_key', 'Shared key'), ('497', 'bkash', 'Bkash'), ('498', 'app_key', 'App key'), ('499', 'app_secret', 'App secret'), ('500', 'username', 'Username'), ('501', 'cashfree', 'Cashfree'), ('502', 'maxicash', 'Maxicash'), ('503', 'merchant_id', 'Merchant id'), ('504', 'merchant_password', 'Merchant password'), ('505', 'by', 'By'), ('506', 'user_added_successfully', 'User added successfully'), ('507', 'student', 'Student'), ('508', 'photo', 'Photo'), ('509', 'name', 'Name'), ('510', 'enrolled_courses', 'Enrolled courses'), ('511', 'student_has_been_enrolled', 'Student has been enrolled'), ('512', 'enrol_histories', 'Enrol histories'), ('513', 'user_name', 'User name'), ('514', 'enrolled_course', 'Enrolled course'), ('515', 'enrollment_date', 'Enrollment date'), ('516', 'expiry_date', 'Expiry date'), ('517', 'lifetime_access', 'Lifetime access'), ('518', 'my_course', 'My course'), ('519', 'you_have_no_items_in_your_wishlist!', 'You have no items in your wishlist!'), ('520', 'go_to_wishlist', 'Go to wishlist'), ('521', 'my_courses', 'My courses'), ('522', 'my_wishlist', 'My wishlist'), ('523', 'my_messages', 'My messages'), ('524', 'user_profile', 'User profile'), ('525', 'start_now', 'Start now'), ('526', 'gift_someone_else', 'Gift someone else'), ('527', 'top_instructors', 'Top instructors'), ('528', 'they_efficiently_serve_large_number_of_students_on_our_platform', 'They efficiently serve large number of students on our platform'), ('529', 'write_a_review', 'Write a review'), ('530', '1_start_rating', '1 start rating'), ('531', '2_start_rating', '2 start rating'), ('532', '3_start_rating', '3 start rating'), ('533', '4_start_rating', '4 start rating'), ('534', '5_start_rating', '5 start rating'), ('535', 'write_your_comment', 'Write your comment'), ('536', 'quiz_submission_successfully', 'Quiz submission successfully'), ('537', 'completed', 'Completed'), ('538', 'uncheck', 'Uncheck'), ('539', 'obtained_marks', 'Obtained marks'), ('540', 'wrong', 'Wrong'), ('541', 'correct_answer', 'Correct answer'), ('542', 'correct', 'Correct'), ('543', 'take_the_quiz_again', 'Take the quiz again'), ('544', 'shopping_cart', 'Shopping cart'), ('545', 'your_cart_items', 'Your cart items'), ('546', 'items', 'Items'), ('547', 'total', 'Total'), ('548', 'subtotal', 'Subtotal'), ('549', 'apply_coupon', 'Apply coupon'), ('550', 'apply', 'Apply'), ('551', 'send_as_a_gift', 'Send as a gift'), ('552', 'email_address', 'Email address'), ('553', 'continue_to_payment', 'Continue to payment'), ('554', 'searching', 'Searching'), ('555', 'invalid_login_credentials', 'Invalid login credentials'), ('556', 'not_found', 'Not found'), ('557', 'about_this_application', 'About this application'), ('558', 'software_version', 'Software version'), ('559', 'check_update', 'Check update'), ('560', 'php_version', 'Php version'), ('561', 'curl_enable', 'Curl enable'), ('562', 'enabled', 'Enabled'), ('563', 'purchase_code', 'Purchase code'), ('564', 'product_license', 'Product license'), ('565', 'invalid', 'Invalid'), ('566', 'enter_valid_purchase_code', 'Enter valid purchase code'), ('567', 'customer_support_status', 'Customer support status'), ('568', 'support_expiry_date', 'Support expiry date'), ('569', 'customer_name', 'Customer name'), ('570', 'customer_support', 'Customer support'), ('571', 'import_your_data', 'Import your data'), ('572', 'choose_your_demo_file', 'Choose your demo file'), ('573', 'import', 'Import'), ('574', 'backup_your_website', 'Backup your website'), ('575', 'backup_your_current_data', 'Backup your current data'), ('576', 'keep_a_backup', 'Keep a backup'), ('577', 'no_backup', 'No backup');
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `is_free` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `quiz_attempt` int(11) NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `quiz_attempt`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES ('1', 'fiest', '0:00:00', '1', '1', NULL, NULL, NULL, '1741150800', '1741150800', 'quiz', '{\"total_marks\":\"10\"}', 'json', NULL, '', '0', '0', '2', NULL, NULL, NULL);
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `notification_settings`;
CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_types` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_notification` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_notification` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` longtext COLLATE utf8_unicode_ci,
  `setting_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`) VALUES ('1', 'signup', '1', NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"0\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1693215071'), ('2', 'email_verification', '0', NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777'), ('3', 'forget_password_mail', '0', NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name][verification_link][minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383'), ('4', 'new_device_login_confirmation', '0', NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383'), ('6', 'course_purchase', '1', NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456'), ('7', 'course_completion_mail', '1', NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1699431547'), ('8', 'certificate_eligibility', '1', 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460'), ('9', 'offline_payment_suspended_mail', '1', 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463'), ('10', 'bundle_purchase', '1', 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467'), ('13', 'add_new_user_as_affiliator', '0', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}', '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777'), ('14', 'affiliator_approval_notification', '1', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472'), ('15', 'affiliator_request_cancellation', '1', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473'), ('16', 'affiliation_amount_withdrawal_request', '1', 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476'), ('17', 'approval_affiliation_amount_withdrawal_request', '1', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480'), ('18', 'course_gift', '1', NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1691818623'), ('20', 'noticeboard', '1', 'noticeboard', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"1\"}', '{\"student\":\"Noticeboard\"}', '{\"student\":\"Hi, You have a new notice by [instructor_name]. The course [course_title] [notice_title][notice_description]\"}', 'Course Noticeboard', 'Notify to enrolled students when announcements are created by the instructor for a particular course.\n', '1699525375');
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keys` text COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES ('1', 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', '1', '1', '0', '', '1673263724'), ('2', 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', '1', '1', '0', '', '1673263724'), ('3', 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', '1', '1', '0', '', '1700476796'), ('4', 'xendit', 'USD', 'Xendit', '', '{\"api_key\":\"xnd_development_44KVee2PG4HeeZxG69R5eXOJHVD7t84FZUIH8dMxa37ZU3bZ8KDKV9ugPfy5fRK\",\"secret_key\":\"your_xendit_secret_key\",\"other_parameter\":\"value\"}', 'Payment_model', '1', '1', '0', '', '1700647736'), ('5', 'payu', 'PLN', 'Payu', '', '{\"pos_id\":\"473444\",\"second_key\":\"e290d48271f6c524e1551a9c8a1fc41b\",\"client_id\":\"473444\",\"client_secret\":\"8d4f6d74bb71bdcda3f51be258ea9df9\"}', 'Payment_model', '1', '1', '0', '', '1699797124'), ('6', 'pagseguro', 'USD', 'Pagseguro', '', '{\"api_key\":\"your_pagseguro_api_key\",\"secret_key\":\"your_pagseguro_secret_key\",\"other_parameter\":\"value\"}', 'Payment_model', '1', '1', '0', '', '1673264610'), ('7', 'sslcommerz', 'USD', 'SSL Commerz', '', '{\"store_id\":\"sslcommerz_store_id\",\"store_password\":\"sslcommerz_store_password\"}', 'Payment_model', '1', '1', '0', '', '1673264610'), ('8', 'skrill', 'USD', 'Skrill', '', '{\"skrill_merchant_email\":\"urwatech@gmail.com\",\"secret_passphrase\":\"your_skrill_secret_key\"}', 'Payment_model', '1', '1', '0', '', '1700647745'), ('10', 'doku', 'USD', 'Doku', '', '{\"client_id\":\"BRN-0271-1700996849302\",\"shared_key\":\"SK-BxOS4PfUdIEMHLccyMI3\"}', 'Payment_model', '1', '1', '0', '', '1700997440'), ('11', 'bkash', 'BDT', 'Bkash', '', '{\"app_key\":\"app-key\",\"app_secret\":\"app-secret\",\"username\":\"username\",\"password\":\"passwoed\"}', 'Payment_model', '1', '1', '0', '1700997440', '1701596645'), ('12', 'cashfree', 'INR', 'CashFree', '', '{\"client_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"client_secret\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}', 'Payment_model', '1', '1', '0', '1700997440', '1701688995'), ('13', 'maxicash', 'USD', 'Maxicash', '', '{\"merchant_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"merchant_password\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}', 'Payment_model', '1', '1', '0', '1700997440', '1701688995');
DROP TABLE IF EXISTS `payout`;
CREATE TABLE `payout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES ('1', '1', '&lt;p&gt;How are you?&lt;/p&gt;', 'single_choice', '3', '[\"good\",\"not\",\"wel\"]', '[\"2\"]', '0'), ('2', '1', '&lt;p&gt;Hello&lt;/p&gt;', 'single_choice', '2', '[\"true\",\"false\"]', '[\"1\"]', '0');
DROP TABLE IF EXISTS `quiz_results`;
CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_submitted` int(11) NOT NULL,
  PRIMARY KEY (`quiz_result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `quiz_results` (`quiz_result_id`, `quiz_id`, `user_id`, `user_answers`, `correct_answers`, `total_obtained_marks`, `date_added`, `date_updated`, `is_submitted`) VALUES ('1', '1', '2', '{\"1\":[\"3\"],\"2\":[\"1\"]}', '[\"2\"]', '5', '1741180989', '1741180992', '1'), ('2', '1', '2', '{\"1\":[\"3\"],\"2\":[\"1\"]}', '[\"2\"]', '5', '1741180999', '1741181002', '1'), ('3', '1', '2', '[]', '[]', '0', '1741181009', '1741181009', '0');
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `resource_files`;
CREATE TABLE `resource_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES ('1', 'Admin', '1234567890', '1234567890'), ('2', 'User', '1234567890', '1234567890');
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `section` (`id`, `title`, `course_id`, `start_date`, `end_date`, `restricted_by`, `order`) VALUES ('1', 'test', '1', NULL, NULL, NULL, '0');
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('1', 'language', 'english'), ('2', 'system_name', 'Expo LMS'), ('3', 'system_title', 'Academy Learning Club'), ('4', 'system_email', 'academy@example.com'), ('5', 'address', 'Sydney, Australia'), ('6', 'phone', '+143-52-9933631'), ('7', 'purchase_code', 'your-purchase-code'), ('8', 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'), ('9', 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'), ('10', 'youtube_api_key', 'youtube-and-google-drive-api-key'), ('11', 'vimeo_api_key', 'vimeo-api-key'), ('12', 'slogan', 'A course based video CMS'), ('13', 'text_align', NULL), ('14', 'allow_instructor', '1'), ('15', 'instructor_revenue', '70'), ('16', 'system_currency', 'USD'), ('17', 'paypal_currency', 'USD'), ('18', 'stripe_currency', 'USD'), ('19', 'author', 'Creativeitem'), ('20', 'currency_position', 'left'), ('21', 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'), ('22', 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'), ('23', 'footer_text', 'Creativeitem'), ('24', 'footer_link', 'https://creativeitem.com/'), ('25', 'protocol', 'smtp'), ('26', 'smtp_host', 'smtp.gmail.com'), ('27', 'smtp_port', '587'), ('28', 'smtp_user', 'admin@example.com'), ('29', 'smtp_pass', 'Enter-your-app-password'), ('30', 'version', '6.5'), ('31', 'student_email_verification', 'disable'), ('32', 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'), ('33', 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'), ('34', 'razorpay_currency', 'USD'), ('35', 'fb_app_id', NULL), ('36', 'fb_app_secret', NULL), ('37', 'fb_social_login', NULL), ('38', 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'), ('41', 'course_accessibility', 'publicly'), ('42', 'smtp_crypto', 'tls'), ('43', 'allowed_device_number_of_loging', '5'), ('47', 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'), ('48', 'course_selling_tax', '0'), ('49', 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'), ('50', 'ccavenue_currency', 'INR'), ('51', 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'), ('52', 'iyzico_currency', 'TRY'), ('53', 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'), ('54', 'paystack_currency', 'NGN'), ('55', 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'), ('57', 'google_analytics_id', ''), ('58', 'meta_pixel_id', ''), ('59', 'smtp_from_email', 'admin@example.com'), ('61', 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}'), ('62', 'timezone', 'America/New_York'), ('63', 'account_disable', '0'), ('64', 'offline_bank_information', 'Enter your bank information');
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci,
  `biography` longtext COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `payment_keys` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessions` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES ('1', 'Sunny', 'Patel', 'sunnypatel477@gmail.com', NULL, NULL, 'a29c57c6894dee6e8251510d58c07078ee3f49bf', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, '1', NULL, NULL, NULL, NULL, '', NULL, '1', '1', NULL, ''), ('2', 'sunny', 'patel', 'sunny.patel477@gmail.com', '', '', 'a29c57c6894dee6e8251510d58c07078ee3f49bf', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', '2', '1741180935', NULL, '[]', NULL, '{\"paypal\":{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\",\"theme_color\":\"\"},\"xendit\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"payu\":{\"pos_id\":\"\",\"second_key\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"pagseguro\":{\"api_key\":\"\",\"secret_key\":\"\",\"other_parameter\":\"\"},\"sslcommerz\":{\"store_id\":\"\",\"store_password\":\"\"},\"skrill\":{\"skrill_merchant_email\":\"\",\"secret_passphrase\":\"\"},\"doku\":{\"client_id\":\"\",\"shared_key\":\"\"},\"bkash\":{\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"},\"cashfree\":{\"client_id\":\"\",\"client_secret\":\"\"},\"maxicash\":{\"merchant_id\":\"\",\"merchant_password\":\"\"}}', NULL, '1', '0', 'b1dc378848bc93d8dde3782a22bb584d', '[\"cej4i6spg8dt9cq724dsqc5qs8pec9v8\"]');
DROP TABLE IF EXISTS `watch_histories`;
CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext COLLATE utf8_unicode_ci NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext COLLATE utf8_unicode_ci NOT NULL,
  `completed_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`watch_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `completed_date`, `date_added`, `date_updated`) VALUES ('1', '1', '1', '', '0', '1', '', NULL, '1741180592', '1741180836'), ('2', '1', '2', '[]', '0', '1', '', '1741180994', '1741180987', '1741181009');
DROP TABLE IF EXISTS `watched_duration`;
CREATE TABLE `watched_duration` (
  `watched_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`watched_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
