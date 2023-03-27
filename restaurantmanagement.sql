-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 06:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(15) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CustomerAddress` varchar(80) NOT NULL,
  `CustomerPhone` varchar(12) NOT NULL,
  `CustomerEmail` varchar(30) NOT NULL,
  `RestaurantID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerAddress`, `CustomerPhone`, `CustomerEmail`, `RestaurantID`) VALUES
('CUS-1', 'MUSTAFA CAN', 'exampleadress', '444 5 555', 'example@gmail.com', 'RES-1'),
('CUS-2', 'KAMİL', 'exampleaddress', '444  7 555', 'example@gmail.com', 'RES-2'),
('CUS-3', 'AGAH', 'example', '444 3 555', 'example@gmail.com', 'RES-1');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` varchar(15) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `EmployeeGender` varchar(6) NOT NULL,
  `EmployeeAddress` varchar(80) NOT NULL,
  `EmployeePhone` varchar(12) NOT NULL,
  `EmployeeEmail` varchar(30) NOT NULL,
  `EmployeeType` varchar(20) NOT NULL,
  `EmployeeSalary` varchar(10) NOT NULL,
  `RestaurantID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `EmployeeName`, `EmployeeGender`, `EmployeeAddress`, `EmployeePhone`, `EmployeeEmail`, `EmployeeType`, `EmployeeSalary`, `RestaurantID`) VALUES
('EMP-1', 'HASAN', 'male', 'example', '05052224547', 'example@gmail.com', 'waiter', '3500', 'RES-1'),
('EMP-2', 'CANAN', 'famale', 'example', '0505044505', 'example@gmail.com', 'MANAGER', '6000', 'RES-1'),
('EMP-3', 'JOSEPH', 'male', 'example', '444 8 444', 'example@gmail.com', 'BOSS', '8000', 'RES-1'),
('EMP-4', 'KERIM', 'male', 'exampleaddress', '444 5 444', 'example@gmail.com', 'waiter', '4000', 'RES-2');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `FoodID` varchar(15) NOT NULL,
  `FoodName` varchar(20) NOT NULL,
  `FoodPrepTime` varchar(10) NOT NULL,
  `FoodCost` varchar(10) NOT NULL,
  `MenuID` varchar(15) NOT NULL,
  `FoodIngridients` varchar(20) NOT NULL,
  `calories` varchar(20) NOT NULL,
  `FoodAllergyPotential` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`FoodID`, `FoodName`, `FoodPrepTime`, `FoodCost`, `MenuID`, `FoodIngridients`, `calories`, `FoodAllergyPotential`) VALUES
('FO-1', 'PİLAV', '15', '45', 'MENU-1', 'RİCE', '220', 'RİCE'),
('FO-2', 'ISKENDER', '30', '50', 'MENU-1', 'MEAT', '500', 'MEAT'),
('FO-3', 'MENEMEN', '10', '30', 'MENU-2', 'EGG', '200', 'EGG'),
('FO-4', 'ÇORBA', '15', '40', 'MENU-2', 'CHICKEN', '2800', 'CHICKEN');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `MenuID` varchar(15) NOT NULL,
  `MenuName` varchar(50) NOT NULL,
  `MenuType` varchar(40) NOT NULL,
  `RestaurantID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`MenuID`, `MenuName`, `MenuType`, `RestaurantID`) VALUES
('MENU-1', 'suger', 'desert', 'RES-1'),
('MENU-2', 'example', 'example', 'RES-2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(20) NOT NULL,
  `CustomerID` varchar(15) NOT NULL,
  `OrderDate` date NOT NULL,
  `FoodID` varchar(15) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`, `FoodID`, `quantity`) VALUES
('ORD-2', 'CUS-1', '2021-05-26', 'FO-2', '5'),
('ORD-3', 'CUS-1', '2021-05-26', 'FO-3', '4');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `CustomerID` varchar(15) NOT NULL,
  `TotalCost` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`CustomerID`, `TotalCost`) VALUES
('CUS-1', '460');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `RestaurantID` varchar(20) NOT NULL,
  `RestaurantName` varchar(50) NOT NULL,
  `RestaurantAddress` varchar(80) NOT NULL,
  `RestaurantPhone` varchar(12) NOT NULL,
  `RestaurantEmail` varchar(30) NOT NULL,
  `RestaurantType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`RestaurantID`, `RestaurantName`, `RestaurantAddress`, `RestaurantPhone`, `RestaurantEmail`, `RestaurantType`) VALUES
('RES-1', 'unlu', 'adressexample', '053701212125', 'example@gmail.com', 'turkish'),
('RES-2', 'hasangiller', 'example2', '4440444', 'example1@gmail.com', 'italian'),
('RES-3', 'great', 'example', '4441444', 'example3@gmail.com', 'american');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `RestaurantID` (`RestaurantID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `RestaurantID` (`RestaurantID`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`FoodID`),
  ADD KEY `MenuID` (`MenuID`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`MenuID`),
  ADD KEY `RestaurantID` (`RestaurantID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `FoodID` (`FoodID`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`RestaurantID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`MenuID`) REFERENCES `menus` (`MenuID`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`FoodID`) REFERENCES `foods` (`FoodID`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
