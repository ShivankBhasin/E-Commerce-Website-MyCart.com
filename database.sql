CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
);

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Shivank', 'shivank2609@gmail.com', 'dswproject', '0'),

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
);

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'BOVTY'),
(2, 'HRX'),
(3, 'Levis');

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
);

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
);

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Ladies Wears'),
(3, 'Mens Wear'),
(4, 'Accesories');

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
);

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`,`product_price`, `product_qty`, `product_desc`, `product_keywords`) VALUES
(1, 12, 'Athena', 400, 50, 'Dress','Ladies Wear' );