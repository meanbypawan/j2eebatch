-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2024 at 08:43 PM
-- Server version: 8.0.37-0ubuntu0.20.04.3
-- PHP Version: 7.4.3-4ubuntu2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `userId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

CREATE TABLE `cartItems` (
  `id` int NOT NULL,
  `productId` int DEFAULT NULL,
  `cartId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cartItems`
--

INSERT INTO `cartItems` (`id`, `productId`, `cartId`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `name`, `url`) VALUES
(1, 'beauty', 'Beauty', 'https://dummyjson.com/products/category/beauty'),
(2, 'fragrances', 'Fragrances', 'https://dummyjson.com/products/category/fragrances'),
(3, 'furniture', 'Furniture', 'https://dummyjson.com/products/category/furniture'),
(4, 'groceries', 'Groceries', 'https://dummyjson.com/products/category/groceries'),
(5, 'home-decoration', 'Home Decoration', 'https://dummyjson.com/products/category/home-decoration'),
(6, 'kitchen-accessories', 'Kitchen Accessories', 'https://dummyjson.com/products/category/kitchen-accessories'),
(7, 'laptops', 'Laptops', 'https://dummyjson.com/products/category/laptops'),
(8, 'mens-shirts', 'Mens Shirts', 'https://dummyjson.com/products/category/mens-shirts'),
(9, 'mens-shoes', 'Mens Shoes', 'https://dummyjson.com/products/category/mens-shoes'),
(10, 'mens-watches', 'Mens Watches', 'https://dummyjson.com/products/category/mens-watches'),
(11, 'mobile-accessories', 'Mobile Accessories', 'https://dummyjson.com/products/category/mobile-accessories'),
(12, 'motorcycle', 'Motorcycle', 'https://dummyjson.com/products/category/motorcycle'),
(13, 'skin-care', 'Skin Care', 'https://dummyjson.com/products/category/skin-care'),
(14, 'smartphones', 'Smartphones', 'https://dummyjson.com/products/category/smartphones'),
(15, 'sports-accessories', 'Sports Accessories', 'https://dummyjson.com/products/category/sports-accessories'),
(16, 'sunglasses', 'Sunglasses', 'https://dummyjson.com/products/category/sunglasses'),
(17, 'tablets', 'Tablets', 'https://dummyjson.com/products/category/tablets'),
(18, 'tops', 'Tops', 'https://dummyjson.com/products/category/tops'),
(19, 'vehicle', 'Vehicle', 'https://dummyjson.com/products/category/vehicle'),
(20, 'womens-bags', 'Womens Bags', 'https://dummyjson.com/products/category/womens-bags'),
(21, 'womens-dresses', 'Womens Dresses', 'https://dummyjson.com/products/category/womens-dresses'),
(22, 'womens-jewellery', 'Womens Jewellery', 'https://dummyjson.com/products/category/womens-jewellery'),
(23, 'womens-shoes', 'Womens Shoes', 'https://dummyjson.com/products/category/womens-shoes'),
(24, 'womens-watches', 'Womens Watches', 'https://dummyjson.com/products/category/womens-watches');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` double(12,2) DEFAULT NULL,
  `discountPercentage` double(12,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `warrantyInformation` varchar(100) DEFAULT NULL,
  `shippingInformation` varchar(100) DEFAULT NULL,
  `availabilityStatus` varchar(100) DEFAULT NULL,
  `returnPolicy` varchar(100) DEFAULT NULL,
  `minimumOrderQuantity` int DEFAULT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `category`, `price`, `discountPercentage`, `stock`, `brand`, `sku`, `weight`, `warrantyInformation`, `shippingInformation`, `availabilityStatus`, `returnPolicy`, `minimumOrderQuantity`, `images`, `thumbnail`) VALUES
(1, 'Essence Mascara Lash Princess', 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', 'beauty', 9.99, 7.17, 5, 'Essence', 'RCH45Q1A', 2, '1 month warranty', 'Ships in 1 month', 'Low Stock', '30 days return policy', 24, 'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png', 'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png'),
(2, 'Eyeshadow Palette with Mirror', 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', 'beauty', 19.99, 5.50, 44, 'Glamour Beauty', 'MVCFH27F', 3, '1 year warranty', 'Ships in 2 weeks', 'In Stock', '30 days return policy', 32, 'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png', 'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/thumbnail.png'),
(3, 'Powder Canister', 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', 'beauty', 14.99, 18.14, 59, 'Velvet Touch', '9EN8WLT2', 8, '2 year warranty', 'Ships in 1-2 business days', 'In Stock', '60 days return policy', 25, 'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/1.png', 'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/thumbnail.png'),
(4, 'Red Lipstick', 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', 'beauty', 12.99, 19.03, 68, 'Chic Cosmetics', 'O5IF1NTA', 5, 'Lifetime warranty', 'Ships in 2 weeks', 'In Stock', '90 days return policy', 6, 'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/1.png', 'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/thumbnail.png'),
(5, 'Red Nail Polish', 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', 'beauty', 8.99, 2.46, 71, 'Nail Couture', 'YUIIIP4W', 9, '1 year warranty', 'Ships in 1 week', 'In Stock', 'No return policy', 46, 'https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/1.png', 'https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/thumbnail.png'),
(6, 'Calvin Klein CK One', 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', 'fragrances', 49.99, 0.32, 17, 'Calvin Klein', 'DZM2JQZE', 5, '5 year warranty', 'Ships overnight', 'In Stock', 'No return policy', 20, 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/1.png,https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/2.png,https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/3.png', 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/thumbnail.png'),
(7, 'Chanel Coco Noir Eau De', 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', 'fragrances', 129.99, 18.64, 41, 'Chanel', 'K71HBCGS', 4, '1 week warranty', 'Ships in 1 month', 'In Stock', '60 days return policy', 5, 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/1.png,https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/2.png,https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/3.png', 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/thumbnail.png'),
(8, 'Dior J\'adore', 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', 'fragrances', 89.99, 17.44, 91, 'Dior', 'E70NB03B', 10, 'Lifetime warranty', 'Ships in 2 weeks', 'In Stock', '7 days return policy', 8, 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/1.png,https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/2.png,https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/3.png', 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/thumbnail.png'),
(9, 'Dolce Shine Eau de', 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', 'fragrances', 69.99, 11.47, 3, 'Dolce & Gabbana', '1NBFK980', 5, '5 year warranty', 'Ships in 1-2 business days', 'Low Stock', '30 days return policy', 9, 'https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/1.png,https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/2.png,https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/3.png', 'https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/thumbnail.png'),
(10, 'Gucci Bloom Eau de', 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', 'fragrances', 79.99, 8.90, 93, 'Gucci', 'FFKZ6HOF', 10, 'No warranty', 'Ships in 2 weeks', 'In Stock', 'No return policy', 10, 'https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/1.png,https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/2.png,https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/3.png', 'https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/thumbnail.png'),
(11, 'Annibale Colombo Bed', 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', 'furniture', 1899.99, 0.29, 47, 'Annibale Colombo', '4KMDTZWF', 3, '2 year warranty', 'Ships overnight', 'In Stock', '7 days return policy', 1, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/1.png,https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/2.png,https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/3.png', 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/thumbnail.png'),
(12, 'Annibale Colombo Sofa', 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', 'furniture', 2499.99, 18.54, 16, 'Annibale Colombo', 'LUU95CQP', 3, '1 month warranty', 'Ships overnight', 'In Stock', '7 days return policy', 1, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/1.png,https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/2.png,https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/3.png', 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/thumbnail.png'),
(13, 'Bedside Table African Cherry', 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', 'furniture', 299.99, 9.58, 16, 'Furniture Co.', 'OWPLTZYX', 10, '6 months warranty', 'Ships in 1-2 business days', 'In Stock', 'No return policy', 5, 'https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/1.png,https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/2.png,https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/3.png', 'https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/thumbnail.png'),
(14, 'Knoll Saarinen Executive Conference Chair', 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', 'furniture', 499.99, 15.23, 47, 'Knoll', 'RKHVJ4FE', 3, 'Lifetime warranty', 'Ships in 3-5 business days', 'In Stock', '30 days return policy', 5, 'https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/1.png,https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/2.png,https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/3.png', 'https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/thumbnail.png'),
(15, 'Wooden Bathroom Sink With Mirror', 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', 'furniture', 799.99, 11.22, 95, 'Bath Trends', '7OLTIEVO', 6, '6 months warranty', 'Ships in 3-5 business days', 'In Stock', '7 days return policy', 1, 'https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/1.png,https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/2.png,https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/3.png', 'https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/thumbnail.png'),
(16, 'Apple', 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', 'groceries', 1.99, 1.97, 9, NULL, 'QTROUV79', 8, '2 year warranty', 'Ships in 2 weeks', 'In Stock', '60 days return policy', 44, 'https://cdn.dummyjson.com/products/images/groceries/Apple/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Apple/thumbnail.png'),
(17, 'Beef Steak', 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', 'groceries', 12.99, 17.99, 96, NULL, 'BWWA2MSO', 9, '1 month warranty', 'Ships overnight', 'In Stock', '90 days return policy', 21, 'https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/thumbnail.png'),
(18, 'Cat Food', 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', 'groceries', 8.99, 9.57, 13, NULL, 'C3F8QN6O', 9, '3 months warranty', 'Ships in 1-2 business days', 'In Stock', '7 days return policy', 48, 'https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/thumbnail.png'),
(19, 'Chicken Meat', 'Fresh and tender chicken meat, suitable for various culinary preparations.', 'groceries', 9.99, 10.46, 69, NULL, 'G5YEHW7B', 7, 'Lifetime warranty', 'Ships in 1 month', 'In Stock', '7 days return policy', 46, 'https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/1.png,https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/2.png', 'https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/thumbnail.png'),
(20, 'Cooking Oil', 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', 'groceries', 4.99, 18.89, 22, NULL, 'Q6ZP1UY8', 8, 'Lifetime warranty', 'Ships in 1 month', 'In Stock', '60 days return policy', 2, 'https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/thumbnail.png'),
(21, 'Cucumber', 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', 'groceries', 1.49, 11.44, 22, NULL, '6KGF2K6Z', 9, '5 year warranty', 'Ships overnight', 'In Stock', '30 days return policy', 7, 'https://cdn.dummyjson.com/products/images/groceries/Cucumber/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Cucumber/thumbnail.png'),
(22, 'Dog Food', 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', 'groceries', 10.99, 18.15, 40, NULL, 'A6QRCH37', 2, '1 year warranty', 'Ships in 1 month', 'In Stock', '90 days return policy', 29, 'https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/thumbnail.png'),
(23, 'Eggs', 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', 'groceries', 2.99, 5.80, 10, NULL, 'YA617RI7', 4, '3 year warranty', 'Ships overnight', 'In Stock', '30 days return policy', 43, 'https://cdn.dummyjson.com/products/images/groceries/Eggs/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Eggs/thumbnail.png'),
(24, 'Fish Steak', 'Quality fish steak, suitable for grilling, baking, or pan-searing.', 'groceries', 14.99, 7.00, 99, NULL, 'XNIH1MTA', 8, '1 year warranty', 'Ships in 1 month', 'In Stock', '30 days return policy', 49, 'https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/thumbnail.png'),
(25, 'Green Bell Pepper', 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', 'groceries', 1.29, 15.50, 89, NULL, 'HU7S7VQ0', 7, '5 year warranty', 'Ships overnight', 'In Stock', '30 days return policy', 1, 'https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/thumbnail.png'),
(26, 'Green Chili Pepper', 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', 'groceries', 0.99, 18.51, 8, NULL, 'Y4RM3JCB', 2, 'No warranty', 'Ships in 1-2 business days', 'In Stock', '30 days return policy', 43, 'https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/thumbnail.png'),
(27, 'Honey Jar', 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', 'groceries', 6.99, 1.91, 25, NULL, 'BTBNIIOU', 9, '2 year warranty', 'Ships overnight', 'In Stock', '90 days return policy', 1, 'https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/thumbnail.png'),
(28, 'Ice Cream', 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', 'groceries', 5.49, 7.58, 76, NULL, 'VEZMU1EQ', 5, '2 year warranty', 'Ships in 2 weeks', 'In Stock', 'No return policy', 19, 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/1.png,https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/2.png,https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/3.png,https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/4.png', 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/thumbnail.png'),
(29, 'Juice', 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', 'groceries', 3.99, 5.45, 99, NULL, 'M2K19S06', 2, '1 week warranty', 'Ships in 1-2 business days', 'In Stock', '90 days return policy', 26, 'https://cdn.dummyjson.com/products/images/groceries/Juice/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Juice/thumbnail.png'),
(30, 'Kiwi', 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', 'groceries', 2.49, 10.32, 1, NULL, '0X3NORB9', 8, '6 months warranty', 'Ships in 3-5 business days', 'Low Stock', '7 days return policy', 8, 'https://cdn.dummyjson.com/products/images/groceries/Kiwi/1.png', 'https://cdn.dummyjson.com/products/images/groceries/Kiwi/thumbnail.png');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `reviewerName` varchar(100) DEFAULT NULL,
  `reviewerEmail` varchar(100) DEFAULT NULL,
  `productId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `rating`, `comment`, `date`, `reviewerName`, `reviewerEmail`, `productId`) VALUES
(1, 2, 'Very unhappy with my purchase!', '2024-05-23T08:56:21.618Z', 'John Doe', 'john.doe@x.dummyjson.com', 1),
(2, 2, 'Not as described!', '2024-05-23T08:56:21.618Z', 'Nolan Gonzalez', 'nolan.gonzalez@x.dummyjson.com', 1),
(3, 5, 'Very satisfied!', '2024-05-23T08:56:21.618Z', 'Scarlett Wright', 'scarlett.wright@x.dummyjson.com', 1),
(4, 4, 'Very satisfied!', '2024-05-23T08:56:21.618Z', 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 2),
(5, 1, 'Very disappointed!', '2024-05-23T08:56:21.618Z', 'Nora Russell', 'nora.russell@x.dummyjson.com', 2),
(6, 5, 'Highly impressed!', '2024-05-23T08:56:21.618Z', 'Elena Baker', 'elena.baker@x.dummyjson.com', 2),
(7, 5, 'Very happy with my purchase!', '2024-05-23T08:56:21.618Z', 'Ethan Thompson', 'ethan.thompson@x.dummyjson.com', 3),
(8, 4, 'Great value for money!', '2024-05-23T08:56:21.618Z', 'Levi Hicks', 'levi.hicks@x.dummyjson.com', 3),
(9, 5, 'Highly impressed!', '2024-05-23T08:56:21.618Z', 'Hazel Gardner', 'hazel.gardner@x.dummyjson.com', 3),
(10, 5, 'Great product!', '2024-05-23T08:56:21.619Z', 'Leo Rivera', 'leo.rivera@x.dummyjson.com', 4),
(11, 4, 'Very pleased!', '2024-05-23T08:56:21.619Z', 'Oscar Powers', 'oscar.powers@x.dummyjson.com', 4),
(12, 5, 'Very pleased!', '2024-05-23T08:56:21.619Z', 'Carter Rivera', 'carter.rivera@x.dummyjson.com', 4),
(13, 5, 'Very pleased!', '2024-05-23T08:56:21.619Z', 'Leo Rivera', 'leo.rivera@x.dummyjson.com', 5),
(14, 5, 'Great product!', '2024-05-23T08:56:21.619Z', 'Evan Reed', 'evan.reed@x.dummyjson.com', 5),
(15, 4, 'Highly recommended!', '2024-05-23T08:56:21.619Z', 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 5),
(16, 5, 'Great value for money!', '2024-05-23T08:56:21.619Z', 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 6),
(17, 3, 'Very disappointed!', '2024-05-23T08:56:21.619Z', 'Madison Collins', 'madison.collins@x.dummyjson.com', 6),
(18, 1, 'Poor quality!', '2024-05-23T08:56:21.619Z', 'Maya Reed', 'maya.reed@x.dummyjson.com', 6),
(19, 1, 'Disappointing product!', '2024-05-23T08:56:21.619Z', 'Lincoln Kelly', 'lincoln.kelly@x.dummyjson.com', 7),
(20, 4, 'Great product!', '2024-05-23T08:56:21.619Z', 'Lincoln Kelly', 'lincoln.kelly@x.dummyjson.com', 7),
(21, 4, 'Excellent quality!', '2024-05-23T08:56:21.619Z', 'Lucas Allen', 'lucas.allen@x.dummyjson.com', 7),
(22, 5, 'Fast shipping!', '2024-05-23T08:56:21.619Z', 'Zoe Nicholson', 'zoe.nicholson@x.dummyjson.com', 8),
(23, 4, 'Excellent quality!', '2024-05-23T08:56:21.619Z', 'Addison Wright', 'addison.wright@x.dummyjson.com', 8),
(24, 4, 'Would buy again!', '2024-05-23T08:56:21.619Z', 'Clara Berry', 'clara.berry@x.dummyjson.com', 8),
(25, 4, 'Very satisfied!', '2024-05-23T08:56:21.619Z', 'Xavier Wright', 'xavier.wright@x.dummyjson.com', 9),
(26, 1, 'Poor quality!', '2024-05-23T08:56:21.619Z', 'Mila Hernandez', 'mila.hernandez@x.dummyjson.com', 9),
(27, 5, 'Very happy with my purchase!', '2024-05-23T08:56:21.619Z', 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 9),
(28, 5, 'Great value for money!', '2024-05-23T08:56:21.620Z', 'Aria Parker', 'aria.parker@x.dummyjson.com', 10),
(29, 4, 'Excellent quality!', '2024-05-23T08:56:21.620Z', 'Natalie Harris', 'natalie.harris@x.dummyjson.com', 10),
(30, 4, 'Fast shipping!', '2024-05-23T08:56:21.620Z', 'Ava Harris', 'ava.harris@x.dummyjson.com', 10),
(31, 4, 'Great value for money!', '2024-05-23T08:56:21.620Z', 'Julian Newton', 'julian.newton@x.dummyjson.com', 11),
(32, 5, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Madison Collins', 'madison.collins@x.dummyjson.com', 11),
(33, 4, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Clara Berry', 'clara.berry@x.dummyjson.com', 11),
(34, 5, 'Very satisfied!', '2024-05-23T08:56:21.620Z', 'Tyler Davis', 'tyler.davis@x.dummyjson.com', 12),
(35, 5, 'Excellent quality!', '2024-05-23T08:56:21.620Z', 'Hannah Robinson', 'hannah.robinson@x.dummyjson.com', 12),
(36, 3, 'Waste of money!', '2024-05-23T08:56:21.620Z', 'Madison Collins', 'madison.collins@x.dummyjson.com', 12),
(37, 5, 'Very happy with my purchase!', '2024-05-23T08:56:21.620Z', 'John Doe', 'john.doe@x.dummyjson.com', 13),
(38, 4, 'Highly recommended!', '2024-05-23T08:56:21.620Z', 'Avery Carter', 'avery.carter@x.dummyjson.com', 13),
(39, 4, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 13),
(40, 4, 'Very happy with my purchase!', '2024-05-23T08:56:21.620Z', 'Leah Gutierrez', 'leah.gutierrez@x.dummyjson.com', 14),
(41, 4, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Nolan Gonzalez', 'nolan.gonzalez@x.dummyjson.com', 14),
(42, 2, 'Waste of money!', '2024-05-23T08:56:21.620Z', 'Stella Morris', 'stella.morris@x.dummyjson.com', 14),
(43, 5, 'Highly recommended!', '2024-05-23T08:56:21.620Z', 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 15),
(44, 1, 'Would not recommend!', '2024-05-23T08:56:21.620Z', 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 15),
(45, 2, 'Not worth the price!', '2024-05-23T08:56:21.620Z', 'Ava Harrison', 'ava.harrison@x.dummyjson.com', 15),
(46, 4, 'Great product!', '2024-05-23T08:56:21.620Z', 'Logan Lee', 'logan.lee@x.dummyjson.com', 16),
(47, 4, 'Great product!', '2024-05-23T08:56:21.620Z', 'Elena Long', 'elena.long@x.dummyjson.com', 16),
(48, 1, 'Not as described!', '2024-05-23T08:56:21.620Z', 'Grayson Coleman', 'grayson.coleman@x.dummyjson.com', 16),
(49, 4, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 17),
(50, 3, 'Disappointing product!', '2024-05-23T08:56:21.620Z', 'Owen Fisher', 'owen.fisher@x.dummyjson.com', 17),
(51, 4, 'Very happy with my purchase!', '2024-05-23T08:56:21.620Z', 'Scarlett Wright', 'scarlett.wright@x.dummyjson.com', 17),
(52, 5, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Mateo Bennett', 'mateo.bennett@x.dummyjson.com', 18),
(53, 5, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Aurora Barnes', 'aurora.barnes@x.dummyjson.com', 18),
(54, 5, 'Great value for money!', '2024-05-23T08:56:21.620Z', 'Ellie Stewart', 'ellie.stewart@x.dummyjson.com', 18),
(55, 5, 'Very satisfied!', '2024-05-23T08:56:21.620Z', 'Sophia Jones', 'sophia.jones@x.dummyjson.com', 19),
(56, 5, 'Great value for money!', '2024-05-23T08:56:21.620Z', 'Maya Reed', 'maya.reed@x.dummyjson.com', 19),
(57, 4, 'Highly recommended!', '2024-05-23T08:56:21.620Z', 'Harper Turner', 'harper.turner@x.dummyjson.com', 19),
(58, 5, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Mason Parker', 'mason.parker@x.dummyjson.com', 20),
(59, 3, 'Poor quality!', '2024-05-23T08:56:21.620Z', 'Jonathan Pierce', 'jonathan.pierce@x.dummyjson.com', 20),
(60, 5, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Alexander Hernandez', 'alexander.hernandez@x.dummyjson.com', 20),
(61, 4, 'Very satisfied!', '2024-05-23T08:56:21.620Z', 'Elijah Hill', 'elijah.hill@x.dummyjson.com', 21),
(62, 5, 'Fast shipping!', '2024-05-23T08:56:21.620Z', 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 21),
(63, 4, 'Excellent quality!', '2024-05-23T08:56:21.620Z', 'Ella Cook', 'ella.cook@x.dummyjson.com', 21),
(64, 5, 'Highly impressed!', '2024-05-23T08:56:21.620Z', 'Leo Rivera', 'leo.rivera@x.dummyjson.com', 22),
(65, 4, 'Highly recommended!', '2024-05-23T08:56:21.620Z', 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 22),
(66, 4, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Addison Wright', 'addison.wright@x.dummyjson.com', 22),
(67, 2, 'Very unhappy with my purchase!', '2024-05-23T08:56:21.620Z', 'Mateo Perez', 'mateo.perez@x.dummyjson.com', 23),
(68, 4, 'Very happy with my purchase!', '2024-05-23T08:56:21.620Z', 'Cameron Perez', 'cameron.perez@x.dummyjson.com', 23),
(69, 5, 'Very happy with my purchase!', '2024-05-23T08:56:21.620Z', 'Aurora Barnes', 'aurora.barnes@x.dummyjson.com', 23),
(70, 5, 'Great value for money!', '2024-05-23T08:56:21.620Z', 'Michael Johnson', 'michael.johnson@x.dummyjson.com', 24),
(71, 4, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Julian Newton', 'julian.newton@x.dummyjson.com', 24),
(72, 5, 'Excellent quality!', '2024-05-23T08:56:21.620Z', 'Lila Hudson', 'lila.hudson@x.dummyjson.com', 24),
(73, 4, 'Excellent quality!', '2024-05-23T08:56:21.620Z', 'Maya Reed', 'maya.reed@x.dummyjson.com', 25),
(74, 4, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Madison Collins', 'madison.collins@x.dummyjson.com', 25),
(75, 5, 'Would buy again!', '2024-05-23T08:56:21.620Z', 'Ethan Thompson', 'ethan.thompson@x.dummyjson.com', 25),
(76, 2, 'Disappointing product!', '2024-05-23T08:56:21.620Z', 'Mateo Bennett', 'mateo.bennett@x.dummyjson.com', 26),
(77, 5, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Natalie Price', 'natalie.price@x.dummyjson.com', 26),
(78, 4, 'Very satisfied!', '2024-05-23T08:56:21.620Z', 'Avery Barnes', 'avery.barnes@x.dummyjson.com', 26),
(79, 4, 'Fast shipping!', '2024-05-23T08:56:21.620Z', 'Nicholas Bailey', 'nicholas.bailey@x.dummyjson.com', 27),
(80, 5, 'Awesome product!', '2024-05-23T08:56:21.620Z', 'Gabriel Hayes', 'gabriel.hayes@x.dummyjson.com', 27),
(81, 5, 'Highly impressed!', '2024-05-23T08:56:21.620Z', 'James Garcia', 'james.garcia@x.dummyjson.com', 27),
(82, 5, 'Great product!', '2024-05-23T08:56:21.620Z', 'Elena Baker', 'elena.baker@x.dummyjson.com', 28),
(83, 5, 'Highly impressed!', '2024-05-23T08:56:21.620Z', 'Madeline Simpson', 'madeline.simpson@x.dummyjson.com', 28),
(84, 5, 'Very happy with my purchase!', '2024-05-23T08:56:21.620Z', 'Caleb Nelson', 'caleb.nelson@x.dummyjson.com', 28),
(85, 4, 'Very satisfied!', '2024-05-23T08:56:21.620Z', 'Leo Rivera', 'leo.rivera@x.dummyjson.com', 29),
(86, 2, 'Not worth the price!', '2024-05-23T08:56:21.620Z', 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 29),
(87, 4, 'Excellent quality!', '2024-05-23T08:56:21.620Z', 'Max Parker', 'max.parker@x.dummyjson.com', 29),
(88, 5, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Nora Russell', 'nora.russell@x.dummyjson.com', 30),
(89, 5, 'Very pleased!', '2024-05-23T08:56:21.620Z', 'Dylan Wells', 'dylan.wells@x.dummyjson.com', 30),
(90, 5, 'Great product!', '2024-05-23T08:56:21.620Z', 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 30);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'test', 'test@gmail.com', '1245');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userId` (`userId`);

--
-- Indexes for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartId` (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Constraints for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD CONSTRAINT `cartItems_ibfk_1` FOREIGN KEY (`cartId`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cartItems_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
