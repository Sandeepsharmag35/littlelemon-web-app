-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_littlelemon`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add booking', 7, 'add_booking'),
(26, 'Can change booking', 7, 'change_booking'),
(27, 'Can delete booking', 7, 'delete_booking'),
(28, 'Can view booking', 7, 'view_booking'),
(29, 'Can add menu', 8, 'add_menu'),
(30, 'Can change menu', 8, 'change_menu'),
(31, 'Can delete menu', 8, 'delete_menu'),
(32, 'Can view menu', 8, 'view_menu');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$SbMCFBH3gE37hhef6Dq6V7$UesAcWN1k+60tws8GT73a3aJyz9ysJCI4TUAGxRL+1c=', '2024-06-23 05:24:17.815232', 1, 'admin', '', '', 'admin@littlelemon.com', 1, 1, '2024-06-23 05:24:03.241296');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-23 05:38:31.706052', '1', 'Bruschetta', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-06-23 05:39:57.418246', '2', 'Grilled Fish', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-06-23 05:40:37.323022', '3', 'Greek Salad', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-06-23 05:41:17.418416', '4', 'Lemon Dessert', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-06-23 05:41:34.074534', '2', 'Grilled Fish', 2, '[]', 8, 1),
(6, '2024-06-23 05:55:27.746439', '1', 'Bruschetta', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(7, '2024-06-23 05:55:37.679698', '2', 'Grilled Fish', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(8, '2024-06-23 05:55:46.961159', '3', 'Greek Salad', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(9, '2024-06-23 05:55:55.225510', '4', 'Lemon Dessert', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(10, '2024-06-23 06:00:09.842396', '2', 'Grilled Fish', 2, '[{\"changed\": {\"fields\": [\"Menu item description\"]}}]', 8, 1),
(11, '2024-06-23 06:59:45.985208', '5', 'Pasta', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-06-23 07:00:18.167209', '5', 'Pasta', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(13, '2024-06-23 07:01:02.907074', '4', 'Lemon Dessert', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(14, '2024-06-23 07:01:11.024940', '3', 'Greek Salad', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(15, '2024-06-23 07:01:27.759145', '2', 'Grilled Fish', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(16, '2024-06-23 07:01:34.595789', '1', 'Bruschetta', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'restaurant', 'booking'),
(8, 'restaurant', 'menu'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-23 05:17:56.223957'),
(2, 'auth', '0001_initial', '2024-06-23 05:17:57.237438'),
(3, 'admin', '0001_initial', '2024-06-23 05:17:57.493592'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-23 05:17:57.504779'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-23 05:17:57.518832'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-23 05:17:57.683652'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-23 05:17:57.728088'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-23 05:17:57.753425'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-23 05:17:57.767444'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-23 05:17:57.863266'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-23 05:17:57.867254'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-23 05:17:57.880219'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-23 05:17:57.904156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-23 05:17:57.926097'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-23 05:17:57.953024'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-23 05:17:57.973969'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-23 05:17:58.002893'),
(18, 'restaurant', '0001_initial', '2024-06-23 05:17:58.052757'),
(19, 'restaurant', '0002_menu_menu_item_description', '2024-06-23 05:17:58.076694'),
(20, 'restaurant', '0003_remove_booking_comment_remove_booking_guest_number_and_more', '2024-06-23 05:17:58.166746'),
(21, 'sessions', '0001_initial', '2024-06-23 05:17:58.247530'),
(22, 'restaurant', '0004_menu_image', '2024-06-23 05:54:51.251881'),
(23, 'restaurant', '0005_alter_menu_price', '2024-06-23 06:57:50.042063');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cv01a9dowciowtdi3pr9vff9kds3t6vt', '.eJxVjMsOwiAQRf-FtSEFLA-X7vsNhGFmpGogKe3K-O_apAvd3nPOfYmYtrXErdMSZxQXocTpd4OUH1R3gPdUb03mVtdlBrkr8qBdTg3peT3cv4OSevnWg-fREFgdyGWvtbcKkULCYJVlPhs_GO88W9bIoMwImQKpwKMDZxjF-wPgvjgu:1sLFi5:BL0i-4SUPSeTsQ68fNaaKdrQZocR37lH9fueLUhTsY0', '2024-07-07 05:24:17.830748');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_booking`
--

CREATE TABLE `restaurant_booking` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `reservation_date` date NOT NULL,
  `reservation_slot` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_booking`
--

INSERT INTO `restaurant_booking` (`id`, `first_name`, `reservation_date`, `reservation_slot`) VALUES
(1, 'Sandip Sharma', '2024-06-23', 15),
(2, 'Ram Kumar', '2024-06-25', 16),
(3, 'Mr XYZ', '2024-06-30', 18);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_menu`
--

CREATE TABLE `restaurant_menu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `menu_item_description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_menu`
--

INSERT INTO `restaurant_menu` (`id`, `name`, `price`, `menu_item_description`, `image`) VALUES
(1, 'Bruschetta', 8.99, 'Our classic Bruschetta is a delightful start to your meal at Little Lemon. This traditional Italian appetizer features freshly toasted slices of artisan baguette, generously rubbed with garlic and drizzled with extra virgin olive oil. Each slice is topped with a vibrant medley of vine-ripened tomatoes, fresh basil, and a hint of balsamic glaze. Finished with a sprinkle of sea salt and cracked black pepper, our Bruschetta is a perfect blend of crisp, savory, and refreshing flavors. It\'s a simple yet elegant dish that highlights the beauty of fresh, high-quality ingredients. Enjoy it as a shareable starter or a light bite to complement your dining experience.', 'menu_items/Bruschetta.jpg'),
(2, 'Grilled Fish', 22.99, 'Savor the exquisite taste of our Grilled Fish at Little Lemon, a dish that embodies simplicity and flavor at its finest. We select the freshest catch of the day, marinated with a blend of Mediterranean herbs and a touch of lemon zest. The fish is expertly grilled to perfection, ensuring a tender, flaky texture with a subtle char that enhances its natural flavors.\r\n\r\nAccompanied by a side of seasonal vegetables and a choice of wild rice or creamy mashed potatoes, this dish is a delightful harmony of tastes and textures. A light drizzle of our homemade herb-infused olive oil and a garnish of fresh parsley complete the presentation, making it as visually appealing as it is delicious.\r\n\r\nPerfect for a wholesome lunch or a sophisticated dinner, our Grilled Fish is a testament to our commitment to quality and tradition. Enjoy a taste of the Mediterranean with every bite.', 'menu_items/Grilled_Fish.jpg'),
(3, 'Greek Salad', 11.99, 'Indulge in the fresh and vibrant flavors of our Greek Salad at Little Lemon. This classic Mediterranean dish features a colorful mix of crisp romaine lettuce, juicy vine-ripened tomatoes, crunchy cucumbers, and thinly sliced red onions. Topped with briny Kalamata olives and creamy feta cheese, it’s a refreshing combination of textures and tastes. Our Greek Salad is finished with a light drizzle of extra virgin olive oil, a splash of red wine vinegar, and a sprinkle of oregano, bringing together all the authentic flavors of Greece in one delightful bowl. Perfect as a starter or a light main course, this salad is a celebration of simplicity and quality.', 'menu_items/Greek_Salad.jpg'),
(4, 'Lemon Dessert', 7.99, 'Delight in the zesty and refreshing flavors of our Lemon Dessert at Little Lemon. This sweet treat features a luscious lemon mousse, layered with a buttery graham cracker crust and topped with a light, fluffy whipped cream. Infused with the perfect balance of tart lemon and sweet cream, each bite is a burst of citrusy goodness. Garnished with a lemon zest curl and a sprig of fresh mint, our Lemon Dessert is the perfect way to end your meal on a bright and cheerful note. Enjoy this deliciously light and creamy dessert that embodies the essence of summer all year round.', 'menu_items/Lemon_Dessert.jpg'),
(5, 'Pasta', 14.99, 'Enjoy the comforting flavors of our Pasta at Little Lemon. This hearty dish features al dente pasta tossed in a rich and savory marinara sauce made from vine-ripened tomatoes, garlic, and a blend of Italian herbs. It\'s a classic and satisfying meal topped with freshly grated Parmesan cheese and a sprinkle of basil. Whether you prefer it with succulent meatballs, grilled chicken, or a medley of fresh vegetables, our Pasta is a delicious and versatile option that will leave you craving more. Perfect for lunch or dinner, it\'s a timeless favorite that\'s sure to please.', 'menu_items/pasta.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `restaurant_booking`
--
ALTER TABLE `restaurant_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_menu`
--
ALTER TABLE `restaurant_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `restaurant_booking`
--
ALTER TABLE `restaurant_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurant_menu`
--
ALTER TABLE `restaurant_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
