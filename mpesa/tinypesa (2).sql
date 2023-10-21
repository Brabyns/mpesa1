-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 04:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tinypesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `stk_push`
--

CREATE TABLE `stk_push` (
  `id` int(11) NOT NULL,
  `merchantRequestID` varchar(64) NOT NULL,
  `checkoutRequestID` varchar(64) NOT NULL,
  `resultCode` int(2) NOT NULL,
  `resultDesc` varchar(255) NOT NULL,
  `amount` int(32) NOT NULL,
  `mpesaReceiptNumber` varchar(64) NOT NULL,
  `transactionDate` date NOT NULL,
  `phoneNumber` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stk_push`
--

INSERT INTO `stk_push` (`id`, `merchantRequestID`, `checkoutRequestID`, `resultCode`, `resultDesc`, `amount`, `mpesaReceiptNumber`, `transactionDate`, `phoneNumber`) VALUES
(7, '25373-26457142-2', 'ws_CO_24052023055827495741925368', 0, 'The service request is processed successfully.', 1, 'REO5ABL75L', '2023-05-24', 2147483647),
(8, '', '', 0, '', 0, '', '0000-00-00', 0),
(9, '22262-27042351-1', 'ws_CO_24052023060156409741925368', 0, 'The service request is processed successfully.', 1, 'REO9ABMOON', '2023-05-24', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tinypesa`
--

CREATE TABLE `tinypesa` (
  `ID` int(11) NOT NULL,
  `CheckoutRequestID` varchar(500) NOT NULL,
  `ResultCode` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `MpesaReceiptNumber` varchar(500) NOT NULL,
  `PhoneNumber` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tinypesa`
--

INSERT INTO `tinypesa` (`ID`, `CheckoutRequestID`, `ResultCode`, `amount`, `MpesaReceiptNumber`, `PhoneNumber`) VALUES
(12, 'ws_CO_23052023072804682743930704', '0', '1', 'REN27PN5BG', '254743930704'),
(13, 'ws_CO_23052023072952104743930704', '0', '1', 'REN67PPSHE', '254743930704'),
(14, 'ws_CO_23052023075205578743930704', '0', '1', 'REN87R31T6', '254743930704'),
(15, 'ws_CO_23052023080640587743930704', '0', '1', 'REN37S32PX', '254743930704'),
(16, 'ws_CO_23052023190341873743930704', '0', '1', 'REN09JYMM4', '254743930704'),
(17, 'ws_CO_23052023213008234741925368', '0', '1', 'REN8A2O4HQ', '254741925368'),
(18, 'ws_CO_23052023220314142741925368', '0', '1', 'REN7A51A0B', '254741925368'),
(19, 'ws_CO_23052023222323489741925368', '0', '1', 'REN0A65KNG', '254741925368');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stk_push`
--
ALTER TABLE `stk_push`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinypesa`
--
ALTER TABLE `tinypesa`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stk_push`
--
ALTER TABLE `stk_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tinypesa`
--
ALTER TABLE `tinypesa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
