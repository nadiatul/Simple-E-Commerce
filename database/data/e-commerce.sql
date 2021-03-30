-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2021 at 11:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example-app`
--

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'DELL', 'A Variety Of Designs, Memory & Features To Suit You. See All Laptops & Computers. Buy Now! Free Shipping. Customize your laptop. Chat Support. Price Match.', '2021-03-30 01:30:51', '2021-03-30 01:30:51'),
(2, 'HP', 'HP ENVY 14 Laptop. Experience the power of 11th Gen Intel® Core™ processor and graphics with an immersive display with incredible, true-to-life color.', '2021-03-30 01:30:51', '2021-03-30 01:30:51');

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'A Variety Of Designs, Memory & Features To Suit You. See All Laptops & Computers. Buy Now! ', '2021-03-30 01:29:08', '2021-03-30 01:29:08'),
(2, 'BAG', 'A Variety Of Bag To Suit You. See All bag Laptops. Buy Now!. Price Match.', '2021-03-30 01:29:08', '2021-03-30 01:29:08');

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `description`, `discount_percent`, `created_at`, `updated_at`) VALUES
(1, 'Silver', 'Basic membership will get 2% discounts', '2', '2021-03-30 07:00:54', '2021-03-30 07:00:54'),
(2, 'Platinum', 'Platinum membership get 4% discount', '4', '2021-03-30 07:00:54', '2021-03-30 07:00:54'),
(3, 'Gold', 'Gold membership allowed to enjoy 6% discount', '6', '2021-03-30 07:02:34', '2021-03-30 07:02:34');

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `quantity`, `status`, `brands_id`, `categories_id`, `suppliers_id`, `created_at`, `updated_at`) VALUES
(1, 'DELL Latitude A', '<div class=\"mt-2 text-gray-500\"><p class=\"my-2\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada quam justo, vel euismod dolor hendrerit eu. Phasellus varius risus sit amet tincidunt maximus. Vivamus tincidunt ut ipsum et accumsan. Integer accumsan mauris vitae molestie pulvinar. Aenean eget lorem tempor, dictum augue vitae, mattis est. Donec ac arcu et ligula scelerisque luctus. Sed quis venenatis ante. Aenean scelerisque sodales sapien malesuada sodales.</p> <p class=\"my-2\">Vestibulum aliquam nisl in ornare mollis. Cras fermentum fermentum mauris non pulvinar. Maecenas in ullamcorper ligula. Fusce laoreet dignissim orci sit amet posuere. Morbi feugiat egestas erat, quis pulvinar arcu vehicula vel. Phasellus faucibus arcu nunc. Donec non pretium turpis. Nullam consequat, sem id ullamcorper lacinia, ligula mi luctus sapien, quis finibus diam justo vel erat. Phasellus commodo blandit dictum. Quisque accumsan purus velit, sit amet laoreet erat molestie et. Nunc eros ex, rutrum vitae lacus nec, vulputate cursus tellus. Suspendisse finibus volutpat quam id finibus. Aenean eget mauris eget dui hendrerit fringilla. Quisque elementum vel urna at semper. Nam sodales ut purus in placerat.</p> <p class=\"my-2\">Ut quis nulla urna. Nulla varius, felis at ullamcorper posuere, felis lectus iaculis justo, vel ultricies metus ante ut tellus. Nulla quis posuere ex, et pretium est. Nam vehicula massa in tempus pulvinar. Nulla porta nunc lorem, nec accumsan eros consectetur tincidunt. Nunc sed lacus lacus. Suspendisse eget massa laoreet, tempus diam et, faucibus nulla.</p> <p class=\"my-2\">Vestibulum diam augue, feugiat non luctus nec, laoreet sed libero. Aenean eu risus vitae nisi vehicula pretium. Sed sem nisl, fermentum et feugiat quis, commodo nec velit. Sed convallis dolor urna, eu finibus nibh placerat eget. Ut luctus mollis dolor, eget porttitor neque gravida eu. Nulla id neque vehicula, aliquet neque et, euismod nibh. Aenean aliquam urna erat, id ultricies erat finibus eu. Maecenas vehicula mi id dui aliquam, in efficitur turpis euismod. Phasellus sed urna at justo sagittis aliquet ut non massa. Proin viverra condimentum ante posuere dapibus. Fusce nisl lectus, ultrices non ipsum egestas, porttitor accumsan tellus. Vivamus efficitur lacus at tincidunt dictum.</p> <p class=\"my-2\">Aliquam urna magna, luctus feugiat hendrerit a, semper eu tortor. Sed ornare eget magna euismod placerat. Fusce eros elit, fringilla in tincidunt vitae, viverra at tellus. Nam consequat faucibus gravida. Donec quis faucibus dui, id cursus nisi. Aenean auctor luctus nisl, non tempor justo molestie eget. Vivamus dui ipsum, porttitor at ante venenatis, molestie sollicitudin dui. Pellentesque vel porta massa. Aliquam eget congue justo. Nam vel tortor ac neque imperdiet pharetra. Integer venenatis quam in nisl convallis, ut rhoncus justo tempor.</p></div>', 'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=889&q=80', '5900.00', 10, 'Available', 1, 1, 1, '2021-03-01 01:16:56', '2021-03-01 01:16:56'),
(2, 'DELL Latitude B', '<div class=\"mt-2 text-gray-500\"><p class=\"my-2\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada quam justo, vel euismod dolor hendrerit eu. Phasellus varius risus sit amet tincidunt maximus. Vivamus tincidunt ut ipsum et accumsan. Integer accumsan mauris vitae molestie pulvinar. Aenean eget lorem tempor, dictum augue vitae, mattis est. Donec ac arcu et ligula scelerisque luctus. Sed quis venenatis ante. Aenean scelerisque sodales sapien malesuada sodales.</p> <p class=\"my-2\">Vestibulum aliquam nisl in ornare mollis. Cras fermentum fermentum mauris non pulvinar. Maecenas in ullamcorper ligula. Fusce laoreet dignissim orci sit amet posuere. Morbi feugiat egestas erat, quis pulvinar arcu vehicula vel. Phasellus faucibus arcu nunc. Donec non pretium turpis. Nullam consequat, sem id ullamcorper lacinia, ligula mi luctus sapien, quis finibus diam justo vel erat. Phasellus commodo blandit dictum. Quisque accumsan purus velit, sit amet laoreet erat molestie et. Nunc eros ex, rutrum vitae lacus nec, vulputate cursus tellus. Suspendisse finibus volutpat quam id finibus. Aenean eget mauris eget dui hendrerit fringilla. Quisque elementum vel urna at semper. Nam sodales ut purus in placerat.</p> <p class=\"my-2\">Ut quis nulla urna. Nulla varius, felis at ullamcorper posuere, felis lectus iaculis justo, vel ultricies metus ante ut tellus. Nulla quis posuere ex, et pretium est. Nam vehicula massa in tempus pulvinar. Nulla porta nunc lorem, nec accumsan eros consectetur tincidunt. Nunc sed lacus lacus. Suspendisse eget massa laoreet, tempus diam et, faucibus nulla.</p> <p class=\"my-2\">Vestibulum diam augue, feugiat non luctus nec, laoreet sed libero. Aenean eu risus vitae nisi vehicula pretium. Sed sem nisl, fermentum et feugiat quis, commodo nec velit. Sed convallis dolor urna, eu finibus nibh placerat eget. Ut luctus mollis dolor, eget porttitor neque gravida eu. Nulla id neque vehicula, aliquet neque et, euismod nibh. Aenean aliquam urna erat, id ultricies erat finibus eu. Maecenas vehicula mi id dui aliquam, in efficitur turpis euismod. Phasellus sed urna at justo sagittis aliquet ut non massa. Proin viverra condimentum ante posuere dapibus. Fusce nisl lectus, ultrices non ipsum egestas, porttitor accumsan tellus. Vivamus efficitur lacus at tincidunt dictum.</p> <p class=\"my-2\">Aliquam urna magna, luctus feugiat hendrerit a, semper eu tortor. Sed ornare eget magna euismod placerat. Fusce eros elit, fringilla in tincidunt vitae, viverra at tellus. Nam consequat faucibus gravida. Donec quis faucibus dui, id cursus nisi. Aenean auctor luctus nisl, non tempor justo molestie eget. Vivamus dui ipsum, porttitor at ante venenatis, molestie sollicitudin dui. Pellentesque vel porta massa. Aliquam eget congue justo. Nam vel tortor ac neque imperdiet pharetra. Integer venenatis quam in nisl convallis, ut rhoncus justo tempor.</p></div>', 'https://images.unsplash.com/photo-1542744095-291d1f67b221?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', '6000.00', 10, 'Available', 1, 1, 1, '2021-03-30 01:20:43', '2021-03-30 01:20:43'),
(3, 'HP Spectre', '<div class=\"mt-2 text-gray-500\"><p class=\"my-2\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada quam justo, vel euismod dolor hendrerit eu. Phasellus varius risus sit amet tincidunt maximus. Vivamus tincidunt ut ipsum et accumsan. Integer accumsan mauris vitae molestie pulvinar. Aenean eget lorem tempor, dictum augue vitae, mattis est. Donec ac arcu et ligula scelerisque luctus. Sed quis venenatis ante. Aenean scelerisque sodales sapien malesuada sodales.</p> <p class=\"my-2\">Vestibulum aliquam nisl in ornare mollis. Cras fermentum fermentum mauris non pulvinar. Maecenas in ullamcorper ligula. Fusce laoreet dignissim orci sit amet posuere. Morbi feugiat egestas erat, quis pulvinar arcu vehicula vel. Phasellus faucibus arcu nunc. Donec non pretium turpis. Nullam consequat, sem id ullamcorper lacinia, ligula mi luctus sapien, quis finibus diam justo vel erat. Phasellus commodo blandit dictum. Quisque accumsan purus velit, sit amet laoreet erat molestie et. Nunc eros ex, rutrum vitae lacus nec, vulputate cursus tellus. Suspendisse finibus volutpat quam id finibus. Aenean eget mauris eget dui hendrerit fringilla. Quisque elementum vel urna at semper. Nam sodales ut purus in placerat.</p> <p class=\"my-2\">Ut quis nulla urna. Nulla varius, felis at ullamcorper posuere, felis lectus iaculis justo, vel ultricies metus ante ut tellus. Nulla quis posuere ex, et pretium est. Nam vehicula massa in tempus pulvinar. Nulla porta nunc lorem, nec accumsan eros consectetur tincidunt. Nunc sed lacus lacus. Suspendisse eget massa laoreet, tempus diam et, faucibus nulla.</p> <p class=\"my-2\">Vestibulum diam augue, feugiat non luctus nec, laoreet sed libero. Aenean eu risus vitae nisi vehicula pretium. Sed sem nisl, fermentum et feugiat quis, commodo nec velit. Sed convallis dolor urna, eu finibus nibh placerat eget. Ut luctus mollis dolor, eget porttitor neque gravida eu. Nulla id neque vehicula, aliquet neque et, euismod nibh. Aenean aliquam urna erat, id ultricies erat finibus eu. Maecenas vehicula mi id dui aliquam, in efficitur turpis euismod. Phasellus sed urna at justo sagittis aliquet ut non massa. Proin viverra condimentum ante posuere dapibus. Fusce nisl lectus, ultrices non ipsum egestas, porttitor accumsan tellus. Vivamus efficitur lacus at tincidunt dictum.</p> <p class=\"my-2\">Aliquam urna magna, luctus feugiat hendrerit a, semper eu tortor. Sed ornare eget magna euismod placerat. Fusce eros elit, fringilla in tincidunt vitae, viverra at tellus. Nam consequat faucibus gravida. Donec quis faucibus dui, id cursus nisi. Aenean auctor luctus nisl, non tempor justo molestie eget. Vivamus dui ipsum, porttitor at ante venenatis, molestie sollicitudin dui. Pellentesque vel porta massa. Aliquam eget congue justo. Nam vel tortor ac neque imperdiet pharetra. Integer venenatis quam in nisl convallis, ut rhoncus justo tempor.</p></div>', 'https://images.unsplash.com/photo-1542744095-291d1f67b221?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', '6099.00', 99, 'Available', 1, 2, 1, '2021-03-30 01:20:43', '2021-03-30 01:20:43');

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'DELL Supplier SDN BHD', '', '2021-03-30 01:32:56', '2021-03-30 01:32:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
