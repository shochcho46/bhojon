SET sql_mode = '';

DROP TABLE IF EXISTS `accesslog`;
CREATE TABLE IF NOT EXISTS `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--

DROP TABLE IF EXISTS `acc_account_name`;
CREATE TABLE IF NOT EXISTS `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(1, 'Employee Salary', 0);
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(3, 'Example', 1);
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(4, 'Loan Expense', 0);
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(5, 'Loan Income', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

DROP TABLE IF EXISTS `acc_coa`;
CREATE TABLE IF NOT EXISTS `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000001', '145454-HmIsahaq', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2018-12-17 15:10:19', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021403', 'AC', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2013-09-18 15:29:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020201', 'Advance', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020103', 'Advance House Rent', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-12-31 16:46:24');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020602', 'Advertisement and Publicity', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010410', 'Air Cooler', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-05-23 12:13:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020603', 'AIT Against Advertisement', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010204', 'Attendance Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40216', 'Audit Fee', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2017-07-18 12:54:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021002', 'Bank Charge', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:21:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30203', 'Bank Interest', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010104', 'Book Shelf', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010407', 'Books and Journal', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:45:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010207', 'Brac Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-01-18 10:10:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020604', 'Business Development Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020606', 'Campaign Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020502', 'Campus Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40212', 'Car Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:28:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 15:57:55');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-19 13:43:59', 'admin', '2015-10-15 15:32:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-31 12:56:28', 'admin', '2016-05-23 12:05:43');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30101', 'Cash Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:26', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010207', 'CCTV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:24', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020102', 'CEO Current A/C', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-25 11:54:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010206', 'City Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-01-18 10:09:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010101', 'Class Room Chair', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020601', 'Commision on Admission', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010206', 'Computer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021410', 'Computer (R)', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010102', 'Computer Table', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', 4, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:40:40', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('403', 'Cost of Sale', 'Expence', 0, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-08 10:37:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30102', 'Credit Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020709', 'Cultural Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2017-04-29 12:45:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-12-06 13:54:42', 'admin', '2018-07-07 11:23:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030101', 'cusL-0001-Walkin', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2019-01-08 09:14:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030102', 'cusL-0002-Rahat Khan', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-09-07 19:16:14', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030103', 'cusL-0003-Ali riza Selcuk', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '3', '2020-09-07 19:45:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, '0.00', '2', '2019-01-08 09:15:08', 'admin', '2018-07-07 12:31:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40100002', 'cw-Chichawatni', 'Store Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-08-02 16:30:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', 3, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020605', 'Design & Printing Expense', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:55:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020404', 'Dish Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40215', 'Dividend', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2016-09-25 14:07:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020403', 'Drinking Water Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010211', 'DSLR Camera', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010205', 'Dutch-Bangla Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-01-18 09:49:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000007', 'E3Y1WJMB-John Maria', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 05:55:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000010', 'E4Y91CAX-onlineorder', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-02-03 11:20:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000004', 'E97E9SJT-Manik Hassan', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-09 14:32:22', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020908', 'Earned Leave', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:38', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000006', 'EBK2UPRA-John Carlos', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 05:51:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020607', 'Education Fair Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000011', 'EK9BYZVY-test sdafdssdfds', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-02-24 14:07:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010602', 'Electric Equipment', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010203', 'Electric Kettle', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10106', 'Electrical Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:43:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020407', 'Electricity Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10202010501', 'employ', 'Salary', 5, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:47:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('405', 'Entertainment', 'Expence', 1, 1, 1, 0, 'E', 1, 1, '1.00', '2', '2020-01-18 07:49:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000012', 'ENVBUZKE-kabirkhan', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2020-10-12 10:57:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000002', 'EQLAJFUW-AinalHaque', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2018-12-17 15:08:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000009', 'EU3APTYY-JohnDoe', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 06:02:46', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000005', 'EW9PM201-test emp', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-09 14:38:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000008', 'EXL9WSCL-Mitchel Santner', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 05:58:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000003', 'EY2T1OWA-jahangirAhmad', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2018-12-17 15:11:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021404', 'Fax Machine', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010103', 'File Cabinet', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40210', 'Financial Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010403', 'Fire Extingushier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:39:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021408', 'Furniture', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:47', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10101', 'Furniture & Fixturers', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020406', 'Gas Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:20', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('20201', 'General Reserve', 'Reserve & Surplus', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10105', 'Generator', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021414', 'Generator Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-06-16 10:21:05', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40213', 'Generator Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:29:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10103', 'Groceries and Cutleries', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-12 10:02:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010408', 'Gym Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:46:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020907', 'Honorarium', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:26', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40205', 'House Rent', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-24 10:26:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40100001', 'HP-Hasilpur', 'Academic Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-29 03:44:23', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020702', 'HR Recruitment Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:55:49', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020703', 'Incentive on Admission', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:56:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5020302', 'Income Tax Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020302', 'Insurance Premium', 'Prepayment', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-19 13:10:57', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021001', 'Interest on Loan', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:20:53', 'admin', '2016-09-19 14:53:34');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020401', 'Internet Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:56:55', 'admin', '2015-10-15 18:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 15:21:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10205010101', 'Jahangir', 'Hasan', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 10:40:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010210', 'LCD TV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:52:27', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30103', 'Lease Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:52', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50203', 'Liabilities for Expenses', 'Current Liabilities', 2, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020707', 'Library Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-01-10 15:34:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021409', 'Lift', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:36:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50101', 'Long Term Borrowing', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020901', 'Medical Allowance', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:11:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010411', 'Metal Ditector', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-08-22 10:55:22', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021413', 'Micro Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-05-12 14:53:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30202', 'Miscellaneous (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:54:39', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40207', 'Miscellaneous Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010401', 'Mobile Phone', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020101', 'Mr Ashiqur Rahman', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-12-31 16:47:23', 'admin', '2016-09-25 11:55:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010212', 'Network Accessories', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-02 16:23:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020106', 'new head dfhgfh', 'Advance', 3, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2020-01-16 06:25:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020408', 'News Paper Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-01-02 15:55:57', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 15:29:11');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('406', 'Office Accessories', 'Expence', 1, 1, 1, 0, 'E', 1, 1, '1.00', '2', '2020-01-18 07:51:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010404', 'Office Decoration', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10102', 'Office Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30201', 'Office Stationary (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('402', 'Other Expenses', 'Expence', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('302', 'Other Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40211', 'Others (Non Academic Expenses)', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30205', 'Others (Non-Academic Income)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10104', 'Others Assets', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020910', 'Outstanding Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 11:56:50', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021405', 'Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021412', 'PABX-Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 14:40:18', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020902', 'Part-time Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:06', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010202', 'Photocopy & Fax Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3020503', 'Practical Fee', 'Others (Non-Academic Income)', 3, 1, 1, 1, 'I', 0, 0, '0.00', 'admin', '2017-07-22 18:00:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010201', 'Printer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('407', 'Product Purchase', 'Expence', 0, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2020-01-23 07:09:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:28:05', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30207', 'Professional Training Course(Oracal)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010208', 'Projector', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40206', 'Promonational Expence', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40214', 'Repair and Maintenance', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:32:46', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('202', 'Reserve & Surplus', 'Equity', 1, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('20102', 'Retained Earnings', 'Share Holders Equity', 2, 1, 1, 1, 'L', 0, 0, '0.00', 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020708', 'River Cruse', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-04-24 15:35:25', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020105', 'Salary', 'Advance', 4, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:46:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40209', 'Salary & Allowances', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-12-12 11:22:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('404', 'Sale Discount', 'Expence', 1, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-19 10:15:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('303', 'Sale Income', 'Income', 0, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2020-01-23 06:58:20', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010406', 'Security Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:41:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('20101', 'Share Capital', 'Share Holders Equity', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('201', 'Share Holders Equity', 'Equity', 1, 1, 0, 0, 'L', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 19:43:51');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50201', 'Short Term Borrowing', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020906', 'Special Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50102', 'Sponsors Loan', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:48:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020706', 'Sports Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2016-11-09 13:16:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('401', 'Store Expenses', 'Expence', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 13:38:59', 'admin', '2015-10-15 17:58:46');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:24:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010601', 'Sub Station', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020501', 'sup_002-Kamal Hossain', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-01-18 10:49:49', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020504', 'sup_002-Supplier_1', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-08 14:26:40', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020502', 'sup_003-Maruf', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-01-18 10:56:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020503', 'sup_004-Saiful', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-01-18 10:57:04', '2', '2020-01-21 13:10:59');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5020205', 'Suppliers', 'Account Payable', 3, 1, 0, 1, 'L', 0, 0, '0.00', '2', '2018-12-15 06:50:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-08 13:03:04', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020501', 'TDS on House Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030201', 'TDS Payable House Rent', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030202', 'TDS Payable on Salary', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:17', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021402', 'Tea Kettle', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020402', 'Telephone Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:57:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010209', 'Telephone Set & PABX', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020104', 'Test', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:42:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40203', 'Travelling & Conveyance', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021406', 'TV', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010205', 'UPS', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:50:38', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40204', 'Utility Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020503', 'VAT on House Rent Exp', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5020301', 'VAT Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:51:11', 'admin', '2016-09-28 13:23:53');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010409', 'Vehicle A/C', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-05-12 12:13:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010405', 'Voltage Stablizer', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010105', 'Waiting Sofa - Steel', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020405', 'WASA Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010402', 'Water Purifier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 11:14:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-15 12:42:47', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010309', 'iyzico', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:32:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020103', 'Online Payment', 'Cash & Cash Equivalent', 2, 1, 0, 1, 'A', 0, 0, '0.00', '2', '2020-10-18 14:26:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010308', 'Orange Money payment', 'Online Payment', 2, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:32:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010301', 'Paypal', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:27:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010306', 'Paystack Payments', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:30:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010307', 'Paytm Payments', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:31:23', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010311', 'RMA PAYMENT GATEWAY', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:33:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010310', 'SIPS Office', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:32:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010304', 'Square Payments', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:29:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010302', 'SSLCommerz', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:28:06', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010305', 'Stripe Payment', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:29:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010303', 'Two Checkout', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:28:29', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_customer_income`
--

DROP TABLE IF EXISTS `acc_customer_income`;
CREATE TABLE IF NOT EXISTS `acc_customer_income` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_glsummarybalance`
--

DROP TABLE IF EXISTS `acc_glsummarybalance`;
CREATE TABLE IF NOT EXISTS `acc_glsummarybalance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_income_expence`
--

DROP TABLE IF EXISTS `acc_income_expence`;
CREATE TABLE IF NOT EXISTS `acc_income_expence` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Student_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Perpose` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci NOT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_temp`
--

DROP TABLE IF EXISTS `acc_temp`;
CREATE TABLE IF NOT EXISTS `acc_temp` (
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

DROP TABLE IF EXISTS `acc_transaction`;
CREATE TABLE IF NOT EXISTS `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acn_account_transaction`
--

DROP TABLE IF EXISTS `acn_account_transaction`;
CREATE TABLE IF NOT EXISTS `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `tran_date` date NOT NULL,
  `payment_id` int(11) NOT NULL,
  `create_by_id` varchar(25) NOT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

DROP TABLE IF EXISTS `add_ons`;
CREATE TABLE IF NOT EXISTS `add_ons` (
  `add_on_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_on_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`add_on_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`add_on_id`, `add_on_name`, `price`, `is_active`) VALUES(1, 'souc', '5.00', 1);
INSERT INTO `add_ons` (`add_on_id`, `add_on_name`, `price`, `is_active`) VALUES(2, 'Butter', '10.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_summary`
--

DROP TABLE IF EXISTS `bank_summary`;
CREATE TABLE IF NOT EXISTS `bank_summary` (
  `bank_id` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` float DEFAULT NULL,
  `cr` float DEFAULT NULL,
  `ammount` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `service_charge` float NOT NULL,
  `shipping_type` int(11) DEFAULT NULL COMMENT '1=home,2=pickup,3=none',
  `delivarydate` datetime DEFAULT NULL,
  `VAT` float NOT NULL,
  `bill_amount` float NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time NOT NULL,
  `bill_status` tinyint(1) NOT NULL COMMENT '0=unpaid, 1=paid',
  `payment_method_id` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_card_payment`
--

DROP TABLE IF EXISTS `bill_card_payment`;
CREATE TABLE IF NOT EXISTS `bill_card_payment` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(20) NOT NULL,
  `multipay_id` int(11) DEFAULT NULL,
  `card_no` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terminal_name` int(11) NOT NULL,
  `bank_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_basic_info`
--

DROP TABLE IF EXISTS `candidate_basic_info`;
CREATE TABLE IF NOT EXISTS `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidate_basic_info`
--

INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('150073689333S', 'Rishab ', 'Pant', 'pant@bdtask.com', '987654323456', '976544564567', 'South Ferri Ghat,Padma River,Chandpur', 'South Ferri Ghat,Padma River,Chandpur', './application/modules/circularprocess/assets/images/2017-07-22/hum1.jpg', '', '', '', 0);
INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('150078881074S', 'Mr', 'Kabir', 'kabir@gmail.com', '01955110016', '01730164623', 'Mirpur', 'Shariatpur', './application/modules/circularprocess/assets/images/2017-09-14/145.jpg', '', '', '', 0);
INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('150080778404S', 'Tory', 'Burhan', 'tory@bdtask.com', '123456789078', '876543456789', 'South Ferri Ghat,Padma River,Chandpur', '231,East Patalipur,Sonamuri', './application/modules/circularprocess/assets/images/2017-09-09/chr.jpg', '', '', '', 0);
INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('15052929747581L', 'Jasim', 'Uddin', 'jassim@gmail.com', '01621815163', '14645541', 'Barishal', 'Dhanmonci', './application/modules/circularprocess/assets/images/2017-09-18/1458.jpg', '', '', '', 0);
INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('15386317585979L', 'Md', 'Sala uddin', 'salauddin@gmail.com', '03123165', '5465464', 'ijlkjo', '555', './application/modules/circularprocess/assets/images/2018-10-04/isa.png', '1212313', '', '', 0);
INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('154020580259L', 'sdfsd', 'fsdf', 'fsdf@gmail.com', '234234', '234234', 'fsdf', 'sdfsdf', './application/modules/circularprocess/assets/images/2018-10-22/log.jpg', '234234', '', '', 0);
INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `ssn`, `state`, `city`, `zip`) VALUES('15402730915417L', 'A.', 'Zabbar', 'jabbar@gmail.com', '03216456', '21545', 'khilkhet,dhaka', '545', './application/modules/circularprocess/assets/images/2018-10-23/ava.png', '12645', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education_info`
--

DROP TABLE IF EXISTS `candidate_education_info`;
CREATE TABLE IF NOT EXISTS `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_edu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--

DROP TABLE IF EXISTS `candidate_interview`;
CREATE TABLE IF NOT EXISTS `candidate_interview` (
  `can_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_int_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_selection`
--

DROP TABLE IF EXISTS `candidate_selection`;
CREATE TABLE IF NOT EXISTS `candidate_selection` (
  `can_sel_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_sel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_shortlist`
--

DROP TABLE IF EXISTS `candidate_shortlist`;
CREATE TABLE IF NOT EXISTS `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_short_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_workexperience`
--

DROP TABLE IF EXISTS `candidate_workexperience`;
CREATE TABLE IF NOT EXISTS `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_workexp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `common_setting`
--

DROP TABLE IF EXISTS `common_setting`;
CREATE TABLE IF NOT EXISTS `common_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `powerbytxt` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `common_setting`
--

INSERT INTO `common_setting` (`id`, `address`, `email`, `phone`, `logo`, `powerbytxt`) VALUES(1, '98 Green Road, Farmgate, Dhaka-1215.', 'support@bdtask.com', '0123456789', 'assets/img/2020-01-06/b4.png', '© 2019 Hungry All Right Reserved. Developed by BDTASK.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currencyid` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(50) NOT NULL,
  `curr_icon` varchar(50) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1 COMMENT '1=left.2=right',
  `curr_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES(1, 'BDT', '৳', 2, '83.00');
INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES(2, 'USD', '$', 1, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE IF NOT EXISTS `customer_info` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuntomer_no` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `customer_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favorite_delivery_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `cuntomer_no`, `customer_name`, `customer_email`, `password`, `customer_token`, `customer_address`, `customer_phone`, `customer_picture`, `favorite_delivery_address`, `is_active`) VALUES(1, 'cusL-0001', 'Walkin', 'test@gmail.com', NULL, 'cO_Sa2fwscE:APA91bEFDD0sbV52pZPwJEl8MEUCcHBg2wIGjKfelfbiytAj4nJlPsKf8sSupfElBq-nm36DCkjYDEoUcA7qvtzKu4vDqjutF23f6Y_0uw4L_PlJIrtl61y4s-t5OKFAmdaU9OUQTtYS', 'dhaka', '8801717426371', NULL, 'ddd', 1);
INSERT INTO `customer_info` (`customer_id`, `cuntomer_no`, `customer_name`, `customer_email`, `password`, `customer_token`, `customer_address`, `customer_phone`, `customer_picture`, `favorite_delivery_address`, `is_active`) VALUES(2, 'cusL-0002', 'Rahat Khan', '123589384948@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'Not Set', '123589384948', NULL, 'Not Set', 1);
INSERT INTO `customer_info` (`customer_id`, `cuntomer_no`, `customer_name`, `customer_email`, `password`, `customer_token`, `customer_address`, `customer_phone`, `customer_picture`, `favorite_delivery_address`, `is_active`) VALUES(3, 'cusL-0003', 'Jamil', 'jamil@gmail.com', NULL, NULL, 'Dhaka', '01684964913', NULL, 'Dhaka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_membership_map`
--

DROP TABLE IF EXISTS `customer_membership_map`;
CREATE TABLE IF NOT EXISTS `customer_membership_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `active_date` date NOT NULL,
  `active_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saleinvoice` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marge_order_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal,1>all Third Party',
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:15:00',
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anyreason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=Pending, 2=Processing, 3=Ready, 4=Served,5=Cancel',
  `nofification` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  `orderacceptreject` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
CREATE TABLE IF NOT EXISTS `customer_type` (
  `customer_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT 0,
  PRIMARY KEY (`customer_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(1, 'Walk In Customer', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(2, 'Online Customer', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(3, 'Third Party', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(4, 'Take Way', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(99, 'QR Customer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_table`
--

DROP TABLE IF EXISTS `custom_table`;
CREATE TABLE IF NOT EXISTS `custom_table` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_table`
--

INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(9, 'Teacher Name', 2, 'Abdul Halim', 'EF6MQRAX');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(12, 'Primary School', 1, 'Test Primary School', 'E4ZNFBIC');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(13, 'High School Name', 2, 'Taker Hat High school', 'E4ZNFBIC');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(14, 'Versity Name', 3, 'Nu', 'E4ZNFBIC');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(15, 'Company Name', 1, 'Bdtask', 'ER6RJAY8');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(16, 'House Name', 3, 'Shikder Bari', 'ER6RJAY8');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(17, 'Person name', 2, 'Tuhin', 'ER6RJAY8');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(21, 'customfield1', 1, 'custom value1', 'E0LHJ447');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(22, 'dsfsdf', 1, 'sdfdsf', 'E0LHJ447');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(23, 'dsfsd', 1, 'fdsfsdf', 'E0LHJ447');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(24, '', 1, '', 'E0LHJ447');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(25, '', 1, '', 'E0LHJ447');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(34, 'isahadf', 1, '23424', 'ELPGMMRL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(35, 'dfsdf', 1, 'dfgdfg', 'ELPGMMRL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(36, 'hhh', 1, 'sdfsdf', 'ELPGMMRL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(37, 'fdfgdfg', 1, 'dfg', 'ELPGMMRL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(38, 'dfgdfg', 1, '', 'ELPGMMRL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(39, 'First isahaq', 1, 'sdfsdf', 'E4K0I0DA');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(40, 'sdfsadf', 1, 'sdfsdf', 'EYOBEEFQ');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(41, 'fsdfsadf', 1, '234234324', 'EHBEEFQQ');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(43, 'My Mother', 1, 'Ma', 'E4Y9T7CJ');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(44, 'rrrr', 2, '07-08-2018', 'E78PIKVA');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(52, 'Chinese Cuisine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EU3APTYY');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(54, 'French Suicine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EXL9WSCL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(55, 'Chinese Cuisine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'E3Y1WJMB');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(56, 'Kitchen Lead', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EBK2UPRA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(8, 'ACCOUNTING', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(9, 'Human Resource', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(10, 'Delivery department', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(11, 'Garage and Parking', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(12, 'Manager', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(13, 'Restaurant', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(14, 'Waiter', 13);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(15, 'Senior Accountant', 8);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(16, 'Kitchen Manager', 12);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(17, 'Chef', 13);

-- --------------------------------------------------------

--
-- Table structure for table `duty_type`
--

DROP TABLE IF EXISTS `duty_type`;
CREATE TABLE IF NOT EXISTS `duty_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duty_type`
--

INSERT INTO `duty_type` (`id`, `type_name`) VALUES(1, 'Full Time');
INSERT INTO `duty_type` (`id`, `type_name`) VALUES(2, 'Part Time');
INSERT INTO `duty_type` (`id`, `type_name`) VALUES(3, 'Contructual');
INSERT INTO `duty_type` (`id`, `type_name`) VALUES(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
CREATE TABLE IF NOT EXISTS `email_config` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`email_config_id`, `smtp_host`, `smtp_port`, `smtp_password`, `protocol`, `mailpath`, `mailtype`, `sender`, `api_key`, `status`) VALUES(1, 'ssl://smtp.googlemail.com', '465', '123456789', 'smtp', '/usr/sbin/sendmail', 'html', 'ainalcse@gmail.com', '22c4c92a-e5a8-4293-b64c-befc9248521e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_benifit`
--

DROP TABLE IF EXISTS `employee_benifit`;
CREATE TABLE IF NOT EXISTS `employee_benifit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
CREATE TABLE IF NOT EXISTS `employee_history` (
  `emp_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) DEFAULT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(2) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `original_hire_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date NOT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) DEFAULT NULL,
  `class_code_desc` varchar(100) DEFAULT NULL,
  `class_acc_date` date DEFAULT NULL,
  `class_status` tinyint(4) DEFAULT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) NOT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) DEFAULT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) NOT NULL,
  PRIMARY KEY (`emp_his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(162, 'EY2T1OWA', '4', 'jahangir', NULL, 'Ahmad', 'jahangir@gmail.com', '0195511016', NULL, NULL, NULL, './application/modules/employee/assets/images/2018-09-20/pra.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 3, NULL, 'New York', 'New', 234234, 0, 1, '2018-09-19', '2018-09-19', '2018-09-19', 'sdfasdf', 2, '2018-09-26', 1, 323, 2, '234', 324234, 2523, '234', '234532', '', '', '1970-01-01', 1, NULL, '0', 'dfasdfsdf', '2018-09-19', 1, 'Bangladesh', 2, 'sunni', '234324', '23423', 1, 1, 'u@gmail.com', 'b@gmail.com', 'dsfsdf', 'dsfdsf', 'sdfsdf', '42342323', '234234', '234234', '2343', '234', '324234', '324324');
INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(165, '145454', '6', 'Hm', NULL, 'Isahaq', 'hmisahaq@gmail.com', '2344098234', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 6, NULL, 'Alabama', 'deom', 3243, 0, 1, '2018-09-20', '2018-09-20', '2018-09-29', 'fsdf', 1, '2018-09-29', 1, 234, 3, '234', 0, 0, '', '', '', '', '1970-01-01', 1, NULL, '0', '324', '2018-09-29', 1, 'Bangladesh', 1, 'sdfsdf', '', '23423', 1, 1, '234', 'sd', '82309423', '', '234', '324234', '34242', '546456', '', '', '', '');
INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(166, 'EQLAJFUW', '6', 'Ainal', '', 'Haque', 'ainal@gmail.com', '01715234991', NULL, NULL, NULL, './application/modules/hrm/assets/images/2019-01-22/u.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 0, NULL, 'Alabama', '', 0, 1, 1, '2018-11-12', '2018-11-12', '2018-11-12', '', 1, '2018-11-12', 1, 100, 1, '', 0, 0, '', '', '', '', '2018-11-12', 1, NULL, '0', '', '2018-11-12', 1, 'Bangladesh', 1, '', '', '3425', 1, 1, '', '', '017123657332', '', '017123657332', '017123657332', '017123657332', '017123657332', '', '', '', '');
INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(168, 'E97E9SJT', '6', 'Manik ', '', 'Hassan', 'manik@gmail.com', '01913251229', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 0, NULL, 'Alabama', 'Dhaka', 143325, 1, 1, '2019-01-01', '2019-01-01', '2021-01-31', 'sdfs', 1, '2022-01-09', 1, 100, 1, '', 0, 0, '', '', '', '', '2019-01-09', 1, NULL, '0', '', '1970-01-01', 1, 'Bangladesh', 1, '', '', 'e4dfg', 1, 1, '', '', '34353636', '', '3636', '345345', '3453', '3453', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_performance`
--

DROP TABLE IF EXISTS `employee_performance`;
CREATE TABLE IF NOT EXISTS `employee_performance` (
  `emp_per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

DROP TABLE IF EXISTS `employee_salary_payment`;
CREATE TABLE IF NOT EXISTS `employee_salary_payment` (
  `emp_sal_pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

DROP TABLE IF EXISTS `employee_salary_setup`;
CREATE TABLE IF NOT EXISTS `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sal_pay_type`
--

DROP TABLE IF EXISTS `employee_sal_pay_type`;
CREATE TABLE IF NOT EXISTS `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) UNSIGNED NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

DROP TABLE IF EXISTS `emp_attendance`;
CREATE TABLE IF NOT EXISTS `emp_attendance` (
  `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `staytime` time DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

DROP TABLE IF EXISTS `expense_item`;
CREATE TABLE IF NOT EXISTS `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `foodvariable`
--

DROP TABLE IF EXISTS `foodvariable`;
CREATE TABLE IF NOT EXISTS `foodvariable` (
  `availableID` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `availday` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`availableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES(1, 'Male');
INSERT INTO `gender` (`id`, `gender_name`) VALUES(2, 'Female');
INSERT INTO `gender` (`id`, `gender_name`) VALUES(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `grand_loan`
--

DROP TABLE IF EXISTS `grand_loan`;
CREATE TABLE IF NOT EXISTS `grand_loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `uom_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(2, 'Oil', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(3, 'Onion', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(4, 'Ginger', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(5, 'Beef Meat', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(6, 'Mutton', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(7, 'Sugar', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(8, 'Egg', 7, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(9, 'ground beef', 9, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(10, 'Worcestershire', 10, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(11, 'salt', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(12, 'hamburger buns', 7, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(13, 'mayonnaise', 3, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(14, 'tomato', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(15, 'Wheat', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(16, 'Corn Meal', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(17, 'soy oil', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(18, 'yeast', 5, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(19, 'Soybean oil', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(20, 'Sodium caseinate', 5, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(21, 'Pork and beef', 1, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(22, '7 UP', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(23, 'COCA COLA', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(24, 'Fizz UP', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(25, 'Red Bull', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(26, 'Pepsi', 2, 1);
INSERT INTO `ingredients` (`id`, `ingredient_name`, `uom_id`, `is_active`) VALUES(27, 'Rice', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
CREATE TABLE IF NOT EXISTS `item_category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(255) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `CategoryIsActive` int(11) DEFAULT NULL,
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date NOT NULL DEFAULT '0000-00-00',
  `isoffer` int(11) DEFAULT 0,
  `parentid` int(11) DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`CategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_foods`
--

DROP TABLE IF EXISTS `item_foods`;
CREATE TABLE IF NOT EXISTS `item_foods` (
  `ProductsID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(200) DEFAULT NULL,
  `bigthumb` varchar(255) NOT NULL,
  `medium_thumb` varchar(255) NOT NULL,
  `small_thumb` varchar(255) NOT NULL,
  `component` text DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `productvat` int(11) DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `OffersRate` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer rate',
  `offerIsavailable` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer available,0=No Offer',
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date DEFAULT '0000-00-00',
  `Position` int(11) DEFAULT NULL,
  `kitchenid` int(11) NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:00:00',
  `ProductsIsActive` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ProductsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisement`
--

DROP TABLE IF EXISTS `job_advertisement`;
CREATE TABLE IF NOT EXISTS `job_advertisement` (
  `job_adv_id` int(10) UNSIGNED NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `spanish` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1254 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(2, 'login', 'Login', 'fghgf');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(3, 'email', 'Email Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(4, 'password', 'Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(5, 'reset', 'Reset', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(6, 'dashboard', 'Dashboard', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(7, 'home', 'Home', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(8, 'profile', 'Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(9, 'profile_setting', 'Profile Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(10, 'firstname', 'First Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(11, 'lastname', 'Last Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(12, 'about', 'About', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(13, 'preview', 'Preview', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(14, 'image', 'Image', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(15, 'save', 'Save', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(16, 'upload_successfully', 'Upload Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(17, 'user_added_successfully', 'User Added Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(18, 'please_try_again', 'Please Try Again...', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(19, 'inbox_message', 'Inbox Messages', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(20, 'sent_message', 'Sent Message', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(21, 'message_details', 'Message Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(22, 'new_message', 'New Message', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(23, 'receiver_name', 'Receiver Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(24, 'sender_name', 'Sender Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(25, 'subject', 'Subject', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(26, 'message', 'Message', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(27, 'message_sent', 'Message Sent!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(28, 'ip_address', 'IP Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(29, 'last_login', 'Last Login', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(30, 'last_logout', 'Last Logout', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(31, 'status', 'Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(32, 'delete_successfully', 'Delete Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(33, 'send', 'Send', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(34, 'date', 'Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(35, 'action', 'Action', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(36, 'sl_no', 'SL No.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(37, 'are_you_sure', 'Are You Sure ? ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(38, 'application_setting', 'Application Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(39, 'application_title', 'Application Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(40, 'address', 'Address', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(41, 'phone', 'Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(42, 'favicon', 'Favicon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(43, 'logo', 'Logo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(44, 'language', 'Language', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(45, 'left_to_right', 'Left To Right', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(46, 'right_to_left', 'Right To Left', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(47, 'footer_text', 'Footer Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(48, 'site_align', 'Application Alignment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(49, 'welcome_back', 'Welcome Back!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(50, 'please_contact_with_admin', 'Please Contact With Admin', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(51, 'incorrect_email_or_password', 'Incorrect Email/Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(52, 'select_option', 'Select Option', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(53, 'ftp_setting', 'Data Synchronize [FTP Setting]', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(54, 'hostname', 'Host Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(55, 'username', 'User Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(56, 'ftp_port', 'FTP Port', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(57, 'ftp_debug', 'FTP Debug', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(58, 'project_root', 'Project Root', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(59, 'update_successfully', 'Update Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(60, 'save_successfully', 'Save Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(61, 'delete_successfully', 'Delete Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(62, 'internet_connection', 'Internet Connection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(63, 'ok', 'Ok', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(64, 'not_available', 'Not Available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(65, 'available', 'Available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(66, 'outgoing_file', 'Outgoing File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(67, 'incoming_file', 'Incoming File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(68, 'data_synchronize', 'Data Synchronize', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(69, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(70, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(71, 'download_successfully', 'Download Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(72, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(73, 'data_import_first', 'Data Import First', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(74, 'data_import_successfully', 'Data Import Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(75, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(76, 'download_data_from_server', 'Download Data from Server', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(77, 'data_import_to_database', 'Data Import To Database', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(79, 'data_upload_to_server', 'Data Upload to Server', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(80, 'please_wait', 'Please Wait...', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(81, 'ooops_something_went_wrong', ' Ooops something went wrong...', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(82, 'module_permission_list', 'Module Permission List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(83, 'user_permission', 'User Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(84, 'add_module_permission', 'Add Module Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(85, 'module_permission_added_successfully', 'Module Permission Added Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(86, 'update_module_permission', 'Update Module Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(87, 'download', 'Download', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(88, 'module_name', 'Module Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(89, 'create', 'Create', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(90, 'read', 'Read', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(91, 'update', 'Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(92, 'delete', 'Delete', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(93, 'module_list', 'Module List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(94, 'add_module', 'Add Module', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(95, 'directory', 'Module Direcotory', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(96, 'description', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(97, 'image_upload_successfully', 'Image Upload Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(98, 'module_added_successfully', 'Module Added Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(99, 'inactive', 'Inactive', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(100, 'active', 'Active', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(101, 'user_list', 'User List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(102, 'see_all_message', 'See All Messages', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(103, 'setting', 'Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(104, 'logout', 'Logout', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(105, 'admin', 'Admin', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(106, 'add_user', 'Add User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(107, 'user', 'User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(108, 'module', 'Module', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(109, 'new', 'New', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(110, 'inbox', 'Inbox', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(111, 'sent', 'Sent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(112, 'synchronize', 'Synchronize', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(113, 'data_synchronizer', 'Data Synchronizer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(114, 'module_permission', 'Module Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(115, 'backup_now', 'Backup Now!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(116, 'restore_now', 'Restore Now!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(117, 'backup_and_restore', 'Backup and Restore', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(118, 'captcha', 'Captcha Word', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(119, 'database_backup', 'Database Backup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(120, 'restore_successfully', 'Restore Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(121, 'backup_successfully', 'Backup Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(122, 'filename', 'File Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(123, 'file_information', 'File Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(124, 'size', 'size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(125, 'backup_date', 'Backup Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(126, 'overwrite', 'Overwrite', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(127, 'invalid_file', 'Invalid File!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(128, 'invalid_module', 'Invalid Module', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(129, 'remove_successfully', 'Remove Successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(130, 'install', 'Install', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(131, 'uninstall', 'Uninstall', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(132, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(133, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(134, 'enquiry', 'Enquiry', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(135, 'read_unread', 'Read/Unread', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(136, 'enquiry_information', 'Enquiry Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(137, 'user_agent', 'User Agent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(138, 'checked_by', 'Checked By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(139, 'new_enquiry', 'New Enquiry', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(140, 'crud', 'Crud', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(141, 'view', 'View', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(142, 'name', 'Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(143, 'add', 'Address', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(144, 'ph', 'Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(145, 'cid', 'SL No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(146, 'view_atn', 'AttendanceView', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(147, 'mang', 'Employemanagement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(148, 'designation', 'Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(149, 'test', 'Test', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(150, 'sl', 'SL', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(151, 'bdtask', 'BDTASK', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(152, 'practice', 'Practice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(153, 'branch_name', 'Branch Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(154, 'chairman_name', 'Chairman', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(155, 'b_photo', 'Photo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(156, 'b_address', 'Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(157, 'position', 'Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(158, 'advertisement', 'Advertisement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(159, 'position_name', 'Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(160, 'position_details', 'Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(161, 'circularprocess', 'Recruitment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(162, 'pos_id', 'Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(163, 'adv_circular_date', 'Publish Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(164, 'circular_dadeline', 'Dadeline', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(165, 'adv_file', 'Documents', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(166, 'adv_details', 'Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(167, 'attendance', 'Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(168, 'employee', 'Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(169, 'emp_id', 'Employee Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(170, 'sign_in', 'Sign In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(171, 'sign_out', 'Sign Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(172, 'staytime', 'Stay Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(173, 'abc', '1', 'Abc');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(174, 'first_name', 'First Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(175, 'last_name', 'Last Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(176, 'alter_phone', 'Alternative Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(177, 'present_address', 'Present Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(178, 'parmanent_address', 'Permanent Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(179, 'candidateinfo', 'Candidate Info', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(180, 'add_advertisement', 'Add Advertisement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(181, 'advertisement_list', 'Manage Advertisement ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(182, 'candidate_basic_info', 'Candidate Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(183, 'can_basicinfo_list', 'Manage Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(184, 'add_canbasic_info', 'Add New Candidate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(185, 'candidate_education_info', 'Candidate Educational Info', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(186, 'can_educationinfo_list', 'Candidate Edu Info list', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(187, 'add_edu_info', 'Add Educational Info', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(188, 'can_id', 'Candidate Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(189, 'degree_name', 'Obtained Degree', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(190, 'university_name', 'University', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(191, 'cgp', 'CGPA', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(192, 'comments', 'Comments', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(193, 'signature', 'Signature', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(194, 'candidate_workexperience', 'Candidate Work Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(195, 'can_workexperience_list', 'Work Experience list', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(196, 'add_can_experience', 'Add Work Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(197, 'company_name', 'Company Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(198, 'working_period', 'Working Period', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(199, 'duties', 'Duties', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(200, 'supervisor', 'Supervisor', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(201, 'candidate_workexpe', 'Candidate Work Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(202, 'candidate_shortlist', 'Candidate Shortlist', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(203, 'shortlist_view', 'Manage Shortlist', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(204, 'add_shortlist', 'Add Shortlist', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(205, 'date_of_shortlist', 'Shortlist Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(206, 'interview_date', 'Interview Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(207, 'submit', 'Submit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(208, 'candidate_id', 'Your ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(209, 'job_adv_id', 'Job Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(210, 'sequence', 'Sequence', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(211, 'candidate_interview', 'Interview', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(212, 'interview_list', 'Interview list', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(213, 'add_interview', 'Add interview', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(214, 'interviewer_id', 'Interviewer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(215, 'interview_marks', 'Viva Marks', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(216, 'written_total_marks', 'Written Total Marks', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(217, 'mcq_total_marks', 'MCQ Total Marks', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(218, 'recommandation', 'Recommandation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(219, 'selection', 'Selection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(220, 'details', 'Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(221, 'candidate_selection', 'Candidate Selection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(222, 'selection_list', 'Selection List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(223, 'add_selection', 'Add Selection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(224, 'employee_id', 'Employee Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(225, 'position_id', '1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(226, 'selection_terms', 'Selection Terms', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(227, 'total_marks', 'Total Marks', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(228, 'photo', 'Picture', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(229, 'your_id', 'Your ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(230, 'change_image', 'Change Photo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(231, 'picture', 'Photograph', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(232, 'ad', 'Add', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(233, 'write_y_p_info', 'Write Your Persoanal Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(234, 'emp_position', 'Employee Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(235, 'add_pos', 'Add Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(236, 'list_pos', 'List of Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(237, 'emp_salary_stup', 'Employee Salary SetUp', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(238, 'add_salary_stup', 'Add Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(239, 'list_salarystup', 'List of Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(240, 'emp_sal_name', 'Salary Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(241, 'emp_sal_type', 'Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(242, 'emp_performance', 'Employee Performance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(243, 'add_performance', 'Add Performance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(244, 'list_performance', 'List of Performance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(245, 'note', 'Note', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(246, 'note_by', 'Note By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(247, 'number_of_star', 'Number of Star', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(248, 'updated_by', 'Updated By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(249, 'emp_sal_payment', 'Manage Employee Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(250, 'add_payment', 'Add Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(251, 'list_payment', 'List of payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(252, 'total_salary', 'Total Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(253, 'total_working_minutes', 'Working Hour', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(254, 'payment_due', 'Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(255, 'payment_date', 'Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(256, 'paid_by', 'Paid By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(257, 'view_employee_payment', 'Employee Payment List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(258, 'sal_payment_type', 'Salary Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(259, 'add_payment_type', 'Add Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(260, 'list_payment_type', 'List of Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(261, 'payment_period', 'Payment Period', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(262, 'payment_type', 'Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(263, 'time', 'Punch Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(264, 'shift', 'Shift', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(265, 'location', 'Location', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(266, 'logtype', 'Log Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(267, 'branch', 'Location', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(268, 'student', 'Students', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(269, 'csv', 'CSV', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(270, 'save_successfull', 'Your Data Save Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(271, 'successfully_updated', 'Your Data Successfully Updated', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(272, 'atn_form', 'Attendance Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(273, 'atn_report', 'Attendance Reports', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(274, 'end_date', 'To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(275, 'start_date', 'From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(276, 'done', 'Done', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(277, 'employee_id_se', 'Write Employee Id or name here ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(278, 'attendance_repor', 'Attendance Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(279, 'e_time', 'End Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(280, 's_time', 'Start Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(281, 'atn_datewiserer', 'Date Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(282, 'atn_report_id', 'Date And Id base Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(283, 'atn_report_time', 'Date And Time report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(284, 'payroll', 'Payroll', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(285, 'loan', 'Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(286, 'loan_grand', 'Grant Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(287, 'add_loan', 'Add Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(288, 'loan_list', 'List of Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(289, 'loan_details', 'Loan Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(290, 'amount', 'Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(291, 'interest_rate', 'Interest Percentage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(292, 'installment_period', 'Installment Period', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(293, 'repayment_amount', 'Repayment Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(294, 'date_of_approve', 'Approve Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(295, 'repayment_start_date', 'Repayment From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(296, 'permission_by', 'Permitted By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(297, 'grand', 'Grand', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(298, 'installment', 'Installment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(299, 'loan_status', 'status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(300, 'installment_period_m', 'Installment Period in Month', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(301, 'successfully_inserted', 'Your loan Successfully Granted', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(302, 'loan_installment', 'Loan Installment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(303, 'add_installment', 'Add Installment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(304, 'installment_list', 'List of Installment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(305, 'loan_id', 'Loan No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(306, 'installment_amount', 'Installment Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(307, 'payment', 'Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(308, 'received_by', 'Receiver', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(309, 'installment_no', 'Install No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(310, 'notes', 'Notes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(311, 'paid', 'Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(312, 'loan_report', 'Loan Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(313, 'e_r_id', 'Enter Your Employee ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(314, 'leave', 'Leave', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(315, 'add_leave', 'Add Leave', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(316, 'list_leave', 'List of Leave', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(317, 'dayname', 'Weekly Leave Day', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(318, 'holiday', 'Holiday', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(319, 'list_holiday', 'List of Holidays', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(320, 'no_of_days', 'Number of Days', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(321, 'holiday_name', 'Holiday Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(322, 'set', 'SET', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(323, 'tax', 'Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(324, 'tax_setup', 'Tax Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(325, 'add_tax_setup', 'Add Tax Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(326, 'list_tax_setup', 'List of Tax setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(327, 'tax_collection', 'Tax collection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(328, 'start_amount', 'Start Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(329, 'end_amount', 'End Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(330, 'rate', 'Tax Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(331, 'date_start', 'Date Start', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(332, 'amount_tax', 'Tax Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(333, 'collection_by', 'Collection By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(334, 'date_end', 'Date End', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(335, 'income_net_period', 'Income  Net period', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(336, 'default_amount', 'Default Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(337, 'add_sal_type', 'Add Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(338, 'list_sal_type', 'Salary Type List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(339, 'salary_type_setup', 'Salary Type Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(340, 'salary_setup', 'Salary SetUp', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(341, 'add_sal_setup', 'Add Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(342, 'list_sal_setup', 'Salary Setup List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(343, 'salary_type_id', 'Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(344, 'salary_generate', 'Salary Generate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(345, 'add_sal_generate', 'Generate Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(346, 'list_sal_generate', 'Generated Salary List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(347, 'gdate', 'Generate Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(348, 'start_dates', 'Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(349, 'generate', 'Generate ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(350, 'successfully_saved_saletup', ' Set up Successfull', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(351, 's_date', 'Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(352, 'e_date', 'End Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(353, 'salary_payable', 'Payable Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(354, 'tax_manager', 'Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(355, 'generate_by', 'Generate By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(356, 'successfully_paid', 'Successfully Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(357, 'direct_empl', ' Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(358, 'add_emp_info', 'Add New Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(359, 'new_empl_pos', 'Add New Employee Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(360, 'manage', 'Manage Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(361, 'ad_advertisement', 'ADD POSITION', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(362, 'moduless', 'Modules', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(363, 'next', 'Next', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(364, 'finish', 'Finish', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(365, 'request', 'Request', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(366, 'successfully_saved', 'Your Data Successfully Saved', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(367, 'sal_type', 'Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(368, 'sal_name', 'Salary Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(369, 'leave_application', 'Leave Application', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(370, 'apply_strt_date', 'Application Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(371, 'apply_end_date', 'Application End date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(372, 'leave_aprv_strt_date', 'Approve Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(373, 'leave_aprv_end_date', 'Approved End Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(374, 'num_aprv_day', 'Aproved Day', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(375, 'reason', 'Reason', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(376, 'approve_date', 'Approved Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(377, 'leave_type', 'Leave Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(378, 'apply_hard_copy', 'Application Hard Copy', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(379, 'approved_by', 'Approved By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(380, 'notice', 'Notice Board', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(381, 'noticeboard', 'Notice Board', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(382, 'notice_descriptiion', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(383, 'notice_date', 'Notice Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(384, 'notice_type', 'Notice Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(385, 'notice_by', 'Notice By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(386, 'notice_attachment', 'Attachment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(387, 'account_name', 'Account Name', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(388, 'account_type', 'Account Type', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(389, 'account_id', 'Account Name', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(390, 'transaction_description', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(391, 'payment_id', 'Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(392, 'create_by_id', 'Created By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(393, 'account', 'Account', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(394, 'account_add', 'Add Account', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(395, 'account_transaction', 'Transaction', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(396, 'award', 'Award', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(397, 'new_award', 'New Award', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(398, 'award_name', 'Award Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(399, 'aw_description', 'Award Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(400, 'awr_gift_item', 'Gift Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(401, 'awarded_by', 'Award By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(402, 'employee_name', 'Employee Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(403, 'employee_list', 'Atn List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(404, 'department', 'Department', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(405, 'department_name', 'Department Name ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(406, 'clockout', 'ClockOut', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(407, 'se_account_id', 'Select Account Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(408, 'division', 'Division', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(409, 'add_division', 'Add Division', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(410, 'update_division', 'Update Division', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(411, 'division_name', 'Division Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(412, 'division_list', 'Manage Division ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(413, 'designation_list', 'Designation List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(414, 'manage_designation', 'Manage Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(415, 'add_designation', 'Add Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(416, 'select_division', 'Select Division', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(417, 'select_designation', 'Select Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(418, 'asset', 'Asset', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(419, 'asset_type', 'Asset Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(420, 'add_type', 'Add Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(421, 'type_list', 'Type List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(422, 'type_name', 'Type Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(423, 'select_type', 'Select Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(424, 'equipment_name', 'Equipment Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(425, 'model', 'Model', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(426, 'serial_no', 'Serial No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(427, 'equipment', 'Equipment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(428, 'add_equipment', 'Add Equipment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(429, 'equipment_list', 'Equipment List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(430, 'type', 'Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(431, 'equipment_maping', 'Equipment Mapping', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(432, 'add_maping', 'Add Mapping', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(433, 'maping_list', 'Mapping List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(434, 'update_equipment', 'Update Equipment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(435, 'select_employee', 'Select Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(436, 'select_equipment', 'Select Equipment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(437, 'basic_info', 'Basic Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(438, 'middle_name', 'Middle Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(439, 'state', 'State', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(440, 'city', 'City', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(441, 'zip_code', 'Zip Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(442, 'maiden_name', 'Maiden Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(443, 'add_employee', 'Add Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(444, 'manage_employee', 'Manage Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(445, 'employee_update_form', 'Employee Update Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(446, 'what_you_search', 'What You Search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(447, 'search', 'Search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(448, 'duty_type', 'Duty Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(449, 'hire_date', 'Hire Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(450, 'original_h_date', 'Original Hire Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(451, 'voluntary_termination', 'Voluntary Termination', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(452, 'termination_reason', 'Termination Reason', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(453, 'termination_date', 'Termination Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(454, 're_hire_date', 'Re Hire Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(455, 'rate_type', 'Rate Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(456, 'pay_frequency', 'Pay Frequency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(457, 'pay_frequency_txt', 'Pay Frequency Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(458, 'hourly_rate2', 'Hourly rate2', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(459, 'hourly_rate3', 'Hourly Rate3', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(460, 'home_department', 'Home Department', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(461, 'department_text', 'Department Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(462, 'benifit_class_code', 'Benifite Class code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(463, 'benifit_desc', 'Benifit Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(464, 'benifit_acc_date', 'Benifit Accrual Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(465, 'benifit_sta', 'Benifite Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(466, 'super_visor_name', 'Supervisor Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(467, 'is_super_visor', 'Is Supervisor', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(468, 'supervisor_report', 'Supervisor Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(469, 'dob', 'Date of Birth', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(470, 'gender', 'Gender', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(471, 'marital_stats', 'Marital Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(472, 'ethnic_group', 'Ethnic Group', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(473, 'eeo_class_gp', 'EEO Class', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(474, 'ssn', 'SSN', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(475, 'work_in_state', 'Work in State', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(476, 'live_in_state', 'Live in State', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(477, 'home_email', 'Home Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(478, 'business_email', 'Business Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(479, 'home_phone', 'Home Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(480, 'business_phone', 'Business Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(481, 'cell_phone', 'Cell Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(482, 'emerg_contct', 'Emergency Contact', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(483, 'emerg_home_phone', 'Emergency Home Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(484, 'emrg_w_phone', 'Emergency Work Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(485, 'emer_con_rela', 'Emergency Contact Relation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(486, 'alt_em_contct', 'Alter Emergency Contact', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(487, 'alt_emg_h_phone', 'Alt Emergency Home Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(488, 'alt_emg_w_phone', 'Alt Emergency  Work Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(489, 'reports', 'Reports', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(490, 'employee_reports', 'Employee Reports', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(491, 'demographic_report', 'Demographic Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(492, 'posting_report', 'Positional Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(493, 'custom_report', 'Custom Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(494, 'benifit_report', 'Benifit Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(495, 'demographic_info', 'Demographical Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(496, 'positional_info', 'Positional Info', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(497, 'assets_info', 'Assets Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(498, 'custom_field', 'Custom Field', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(499, 'custom_value', 'Custom Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(500, 'adhoc_report', 'Adhoc Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(501, 'asset_assignment', 'Asset Assignment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(502, 'assign_asset', 'Assign Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(503, 'assign_list', 'Assign List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(504, 'update_assign', 'Update Assign', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(505, 'citizenship', 'Citizenship', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(506, 'class_sta', 'Class status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(507, 'class_acc_date', 'Class Accrual date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(508, 'class_descript', 'Class Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(509, 'class_code', 'Class Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(510, 'return_asset', 'Return Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(511, 'dept_id', 'Department ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(512, 'parent_id', 'Parent ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(513, 'equipment_id', 'Equipment ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(514, 'issue_date', 'Issue Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(515, 'damarage_desc', 'Damarage Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(516, 'return_date', 'Return Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(517, 'is_assign', 'Is Assign', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(518, 'emp_his_id', 'Employee History ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(519, 'damarage_descript', 'Damage Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(520, 'return', 'Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(521, 'return_successfull', 'Return Successfull', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(522, 'return_list', 'Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(523, 'custom_data', 'Custom Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(524, 'passing_year', 'Passing Year', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(525, 'is_admin', 'Is Admin', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(526, 'zip', 'Zip Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(527, 'original_hire_date', 'Original Hire Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(528, 'rehire_date', 'Rehire Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(529, 'class_code_desc', 'Class Code Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(530, 'class_status', 'Class Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(531, 'super_visor_id', 'Supervisor ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(532, 'marital_status', 'Marital Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(533, 'emrg_h_phone', 'Emergency Home Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(534, 'emgr_contct_relation', 'Emergency Contact Relation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(535, 'id', 'ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(536, 'type_id', 'Equipment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(537, 'custom_id', 'Custom ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(538, 'custom_data_type', 'Custom Data Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(539, 'role_permission', 'Role Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(540, 'permission_setup', 'Permission Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(541, 'add_role', 'Add Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(542, 'role_list', 'Role List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(543, 'user_access_role', 'User Access Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(544, 'menu_item_list', 'Menu Item List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(545, 'ins_menu_for_application', 'Ins Menu  For Application', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(546, 'menu_title', 'Menu Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(547, 'page_url', 'Page Url', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(548, 'parent_menu', 'Parent Menu', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(549, 'role', 'Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(550, 'role_name', 'Role Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(551, 'single_checkin', 'Single Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(552, 'bulk_checkin', 'Bulk Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(553, 'manage_attendance', 'Manage Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(554, 'attendance_list', 'Attendance List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(555, 'checkin', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(556, 'checkout', 'Check Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(557, 'stay', 'Stay', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(558, 'attendance_report', 'Attendance Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(559, 'work_hour', 'Work Hour', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(560, 'cancel', 'Cancel', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(561, 'confirm_clock', 'Confirm Checkout', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(562, 'add_attendance', 'Add Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(563, 'upload_csv', 'Upload CSV', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(564, 'import_attendance', 'Import Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(565, 'manage_account', 'Manage Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(566, 'add_account', 'Add Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(567, 'add_new_account', 'Add New Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(568, 'account_details', 'Account Details', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(569, 'manage_transaction', 'Manage Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(570, 'add_expence', 'Add Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(571, 'add_income', 'Add Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(572, 'return_now', 'Return Now !!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(573, 'manage_award', 'Manage Award', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(574, 'add_new_award', 'Add New Award', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(575, 'personal_information', 'Personal Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(576, 'educational_information', 'Educational Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(577, 'past_experience', 'Past Experience', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(578, 'basic_information', 'Basic Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(579, 'result', 'Result', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(580, 'institute_name', 'Institute Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(581, 'education', 'Education', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(582, 'manage_shortlist', 'Manage Short List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(583, 'manage_interview', 'Manage Interview', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(584, 'manage_selection', 'Manage Selection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(585, 'add_new_dept', 'Add New Department', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(586, 'manage_dept', 'Manage Department', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(587, 'successfully_checkout', 'Checkout Successful !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(588, 'grant_loan', 'Grant Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(589, 'successfully_installed', 'Successfully Installed', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(590, 'total_loan', 'Total Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(591, 'total_amount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(592, 'filter', 'Filter', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(593, 'weekly_holiday', 'Weekly Holiday', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(594, 'manage_application', 'Manage Application', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(595, 'add_application', 'Add Application', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(596, 'manage_holiday', 'Manage Holiday', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(597, 'add_more_holiday', 'Add More Holiday', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(598, 'manage_weekly_holiday', 'Manage Weekly Holiday', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(599, 'add_weekly_holiday', 'Add Weekly Holiday', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(600, 'manage_granted_loan', 'Manage Granted Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(601, 'manage_installment', 'Manage Installment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(602, 'add_new_notice', 'Add New Notice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(603, 'manage_notice', 'Manage Notice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(604, 'salary_type', 'Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(605, 'manage_salary_generate', 'Manage Salary Generate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(606, 'generate_now', 'Generate Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(607, 'add_salary_setup', 'Add Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(608, 'manage_salary_setup', 'Manage Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(609, 'add_salary_type', 'Add Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(610, 'manage_salary_type', 'Manage Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(611, 'manage_tax_setup', 'Manage Tax Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(612, 'setup_tax', 'Setup Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(613, 'add_more', 'Add More', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(614, 'tax_rate', 'Tax Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(615, 'no', 'No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(616, 'setup', 'Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(617, 'biographicalinfo', 'Bio-Graphical Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(618, 'positional_information', 'Positional Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(620, 'benifits', 'Benifits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(621, 'others_leave_application', 'Others Leave', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(622, 'add_leave_type', 'Add Leave Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(623, 'others_leave', 'Apply Leave', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(624, 'number_of_leave_days', 'Number of Leave Days', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(625, 'itemmanage', 'Food Management', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(626, 'manage_category', 'Manage Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(627, 'add_category', 'Add Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(628, 'category_list', 'Category List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(629, 'manage_food', 'Manage Food', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(630, 'add_food', 'Add Food', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(631, 'food_list', 'Food List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(632, 'category_name', 'Category Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(633, 'food_name', 'Food Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(634, 'category_subtitle', 'Category Subtitle', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(635, 'update_category', 'Update Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(636, 'update_fooditem', 'Update Food Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(713, 'food_list', 'Food List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(714, 'food_name', 'Food Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(715, 'add_category', 'Add Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(716, 'add_food', 'Add Food', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(717, 'category_name', 'Category Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(718, 'category_list', 'Category List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(719, 'itemmanage', 'Food Management', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(720, 'manage_category', 'Manage Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(721, 'manage_food', 'Manage Food', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(722, 'offerdate', 'Offer Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(723, 'manage_addons', 'Manage Adons', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(724, 'add_adons', 'Add Add-ons', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(725, 'menu_addons', 'Add-ons Menu', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(726, 'addons_list', 'Add-ons List', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(727, 'assign_adons', 'Add-ons Assign', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(728, 'assign_adons_list', 'Add-ons Assign List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(729, 'update_adons', 'Update Add-ons', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(730, 'item_name', 'Food Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(731, 'price', 'Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(732, 'offerenddate', 'Offer End Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(733, 'units', 'Unit and Ingredients', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(734, 'manage_unitmeasurement', 'Unit Measurement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(735, 'unit_list', 'Unit Measurement List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(736, 'unit_add', 'Add Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(737, 'unit_update', 'Unit Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(738, 'unit_name', 'Unit Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(739, 'manage_ingradient', 'Manage Ingredients', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(740, 'ingradient_list', 'Ingredient List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(741, 'add_ingredient', 'Add Ingredient', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(742, 'ingredient_name', 'Ingredient Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(743, 'unit_short_name', 'Short Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(744, 'update_ingredient', 'Update Ingredient', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(745, 'component', 'Components', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(746, 'vat_tax', 'Vat', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(747, 'addons_name', 'Add-ons Name ', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(748, 'food_varient', 'Food Variant', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(749, 'food_availablity', 'Food Availablity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(750, 'add_varient', 'Add Variant', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(751, 'varient_name', 'Variant Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(752, 'variant_list', 'Variant List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(753, 'variant_edit', 'Update Variant', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(754, 'food_availablelist', 'Food Available List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(755, 'add_availablity', 'Add Available Day & Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(756, 'edit_availablity', 'Update Available Day & Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(757, 'available_day', 'Available Day', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(758, 'available_time', 'Available Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(759, 'membership_management', 'Membership Management', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(760, 'membership_list', 'Membership List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(761, 'membership_name', 'Membership Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(762, 'discount', 'Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(763, 'other_facilities', 'Other Facilities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(764, 'membership_add', 'Add Membership', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(765, 'membership_edit', 'Update Membership', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(766, 'payment_setting', 'Payment Method Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(767, 'paymentmethod_list', 'Payment Method List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(768, 'payment_add', 'Add Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(769, 'payment_edit', 'Update Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(770, 'payment_name', 'Payment Method Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(771, 'shipping_setting', 'Shipping Method Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(772, 'shipping_list', 'Shipping Method List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(773, 'shipping_name', 'Shipping Method Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(774, 'shipping_add', 'Add Shipping Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(775, 'shipping_edit', 'Update Shipping Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(776, 'shippingrate', 'Shipping Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(777, 'supplier_manage', 'Supplier Manage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(778, 'supplier_name', 'Supplier Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(779, 'supplier_list', 'Supplier List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(780, 'mobile', 'Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(781, 'address', 'Address', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(782, 'supplier_add', 'Add Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(783, 'supplier_edit', 'Update Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(784, 'purchase_item', 'Purchase Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(785, 'purchase', 'Purchase Manage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(786, 'purchase_list', 'Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(787, 'purchase_add', 'Add Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(788, 'purchase_edit', 'Update Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(789, 'quantity', 'Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(790, 'supplier_information', 'Supplier Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(791, 'add_new_order', 'Add New Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(792, 'pending_order', 'Pending Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(793, 'processing_order', 'Processing Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(794, 'cancel_order', 'Cancel Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(795, 'complete_order', 'Complete Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(796, 'pos_invoice', 'Pos Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(797, 'ordermanage', 'Manage Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(798, 'table_manage', 'Manage Table', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(799, 'table_edit', 'Update Table', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(800, 'table_list', 'Table List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(801, 'table_name', 'Table Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(802, 'customer_type', 'Customer Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(803, 'customertype_list', 'Customer Type List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(804, 'production', 'Production', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(805, 'add_table', 'Table Add', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(806, 'table_add', 'Add Table', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(807, 'add_new_table', 'Add Table', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(808, 'order_list', 'Order List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(809, 'currency', 'Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(810, 'currency_list', 'Currency List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(811, 'currency_name', 'Currency Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(812, 'currency_add', 'Add Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(813, 'currency_edit', 'Update Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(814, 'currency_icon', 'Currency Icon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(815, 'currency_rate', 'Conversation Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(816, 'report', 'Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(817, 'purchase_report', 'Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(818, 'purchase_report_ingredient', 'Stock Report (Kitchen)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(819, 'stock_report', 'Stock Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(820, 'sell_report', 'Sell Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(821, 'stock_report_product_wise', 'Stock Report (Product Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(822, 'accounts', 'Accounts', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(823, 'c_o_a', 'Chart of Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(824, 'debit_voucher', 'Debit Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(825, 'credit_voucher', 'Credit Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(826, 'contra_voucher', 'Contra Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(827, 'journal_voucher', 'Journal Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(828, 'voucher_approval', 'Voucher Approval', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(829, 'account_report', 'Account Report', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(830, 'voucher_report', 'Voucher Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(831, 'cash_book', 'Cash Book', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(832, 'bank_book', 'Bank Book', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(833, 'general_ledger', 'General Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(834, 'trial_balance', 'Trial Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(835, 'profit_loss', 'Profit Loss', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(836, 'cash_flow', 'Cash Flow', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(837, 'coa_print', 'Coa Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(838, 'in_quantity', 'In Qnty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(839, 'out_quantity', 'Out Qnty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(840, 'stock', 'Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(841, 'find', 'Find', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(842, 'from_date', 'From Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(843, 'to_date', 'To Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(844, 'approved', 'Approved', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(845, 'total_ammount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(846, 'total_purchase', 'Total Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(847, 'total_sale', 'Total Sale', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(848, 'csv_file_informaion', 'CSV File Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(849, 'import_product_csv', 'Import product (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(850, 'set_productionunit', 'Set Production Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(851, 'production_set_list', 'Production Set List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(852, 'production_add', 'Add Production', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(853, 'production_list', 'Production List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(854, 'billing_from', 'Billing From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(855, 'invoice', 'Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(856, 'invoice_no', 'Invoice No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(857, 'billing_date', 'Billing Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(858, 'billing_to', 'Billing To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(859, 'reservation', 'Reservation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(860, 'take_reservation', 'Take A Reservation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(861, 'update_table', 'Table Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(862, 'reserve_time', 'Reservation Table', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(863, 'reservation_table', 'Add Booking', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(864, 'table_setting', 'Table Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(865, 'capacity', 'Capacity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(866, 'icon', 'Icon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(867, 'purchase_return', 'Purchase Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(868, 'purchase_qty', 'Purchase Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(869, 'return_qty', 'Return Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(870, 'total', 'Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(871, 'select', 'Select', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(872, 'return_invoice', 'Return Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(873, 'invoice_view', 'View Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(874, 'grand_total', 'Grand Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(875, 'supplier', 'Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(876, 'po_no', 'Invoice No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(877, 'grant', 'Grant', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(878, 'hrm', 'Human Resource', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(879, 'departmentfrm', 'Add Department', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(880, 'benefits', 'Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(881, 'class', 'Class', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(882, 'biographical_info', 'Biographical Info', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(883, 'additional_address', 'Additional Address', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(884, 'custom', 'Custom', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(885, 'pay_now', 'Pay Now ??', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(886, 'paymentmethod_setup', 'Payment Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(887, 'add_paymentsetup', 'Add New Payment Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(888, 'edit_setup', 'Update Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(889, 'marchantid', 'Marchant ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(890, 'order_successfully', 'Your Payment was Completed!!!.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(891, 'order_fail', 'Payment Incomplete!!!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(892, 'voucher_no', 'Voucher No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(893, 'remark', 'Remark', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(894, 'code', 'Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(895, 'debit', 'Debit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(896, 'credit', 'Credit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(897, 'template_name', 'Template Name ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(898, 'sms_template', 'SMS Template', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(899, 'sms_template_warning', 'please use \"{id}\" format without quotation to set dynamic value inside template', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(900, 'userid', 'UserId', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(901, 'from', 'From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(902, 'opening_cash_and_equivalent', 'Opening Cash && Equivalent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(903, 'amount_in_Dollar', 'Amount In Dollar', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(904, 'pre_balance', 'Pre Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(905, 'current_balance', 'Current Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(906, 'with_details', 'With Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(907, 'credit_account_head', 'Credit Account Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(908, 'gl_head', 'GL Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(909, 'transaction_head', 'Transaction Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(910, 'confirm', 'Confirm', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(911, 's_rate', 'Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(912, 'web_setting', 'Web Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(913, 'banner_setting', 'Banner Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(914, 'menu_setting', 'Menu Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(915, 'widget_setting', 'Widget Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(916, 'add_banner', 'Add Banner', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(917, 'bannertype', 'Add Banner Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(918, 'banner_list', 'Banner List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(919, 'title', 'Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(920, 'subtitle', 'Sub Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(921, 'banner_type', 'Banner Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(922, 'link_url', 'Link URL', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(923, 'banner_edit', 'Banner Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(924, 'menu_name', 'Menu Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(925, 'menu_url', 'Menu Slug', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(926, 'sub_menu', 'Sub Menu', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(927, 'add_menu', 'Add Menu', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(928, 'parent_menu', 'Parent Menu', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(929, 'widget_name', 'Widget Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(930, 'widget_title', 'Widget Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(931, 'widget_desc', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(932, 'add_widget', 'Add New', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(933, 'common_setting', 'Common Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(934, 'bannersize', 'Banner Size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(935, 'width', 'Width', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(936, 'height', 'Height', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(937, 'exclusive', 'Exclusive', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(938, 'best_Offers', 'BEST OFFERS', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(939, 'invalid_size', 'Invalid Size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(940, 'confirm_reservation', 'Confirm Reservation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(941, 'food_details', 'Food Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(942, 'email_setting', 'Email Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(943, 'contact_email_list', 'Contact List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(944, 'subscribelist', 'Subscribe List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(945, 'contact_send', 'Your Contact Information Send Successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(946, 'couponlist', 'Coupon List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(947, 'add_coupon', 'Add Coupon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(948, 'coupon_Code', 'Coupon Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(949, 'coupon_rate', 'Coupon Value', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(950, 'coupon_startdate', 'Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(951, 'coupon_enddate', 'End Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(952, 'coupon_edit', 'Update Coupon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(953, 'rating', 'Rating ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(954, 'add_rating', 'Add Rating', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(955, 'reviewtxt', 'Review Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(956, 'rating_edit', 'Rating Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(957, 'customer_rating', 'Customer Rating', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(958, 'country_list', 'Country List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(959, 'countryname', 'Country Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(960, 'add_country', 'Add Country', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(961, 'edit_country', 'Update Country', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(962, 'add_state', 'Add State', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(963, 'edit_state', 'State Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(964, 'state', 'State', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(965, 'city', 'City', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(966, 'add_city', 'Add City', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(967, 'edit_city', 'City Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(968, 'country', 'Country', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(969, 'state_list', 'State List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(970, 'city_list', 'All City', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(971, 'server_setting', 'App Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(972, 'netip', 'Your Local Host Full Url', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(973, 'ip_port', 'Your Online Url', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(974, 'onlinebdname', 'Online Database Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(975, 'dbuser', 'Database User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(976, 'dbpassword', 'Database Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(977, 'dbhost', 'Database Host Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(978, 'social_setting', 'Social Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(979, 'url_link', 'Url', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(980, 'sicon', 'Select Icon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(981, 'ord_failed', 'Order Failed!!!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(982, 'failed_msg', 'Order not placed due to some reason. Please Try Again!!!. Thank You !!!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(983, 'ord_succ', 'Order Placed Successfully!!!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(984, 'succ_smg', 'Are you Sure to Print This Invoice????', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(985, 'no_order_run', 'No Order Running', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(986, 'thirdpartycustomer_list', 'Third-Party Customers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(987, '3rd_customer_list', 'Third-Party Customes List', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(988, '3rdcompany_name', 'Company Name', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(989, 'add_3rdparty_comapny', 'Add New Company', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(990, 'update_3rdparty', 'Update Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(991, 'commision', 'Commission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(992, 'list_of_card_terminal', 'Card Terminal List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(993, 'add_new_terminal', 'Add New Terminal', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(994, 'update_terminal', 'Update Terminal', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(995, 'card_terminal_name', 'Card Terminal Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(996, 'list_of_bank', 'Bank List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(997, 'add_bank', 'Add New Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(998, 'update_bank', 'Update Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(999, 'bank_name', 'Bank Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1000, 'sell_report_filter', 'Sell Report Filtering', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1001, 'sms_setting', 'SMS Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1002, 'sms_configuration', 'SMS Configuration', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1003, 'sms_temp', 'SMS Template', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1004, 'candidate_name', 'Candidate Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1005, 'assign1_role', 'Assign Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1006, 'customer_list', 'Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1007, 'customer_name', 'Customer Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1008, 'update_ord', 'Update Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1009, 'final_report', 'Final Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1010, 'ehrm', 'HRM', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1011, 'add_expense_item', 'Add Expense Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1012, 'manage_expense_item', 'Manage Expense Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1013, 'add_expense', 'Add Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1014, 'manage_expense', 'Manage Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1015, 'expense_statement', 'Expense Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1016, 'expense_type', 'Expense Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1017, 'expense_item_name', 'Expense Item Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1018, 'expense', 'Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1020, 'signature_pic', 'Signature Picture', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1021, 'branch1', 'Branch', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1022, 'ac_no', 'A/C Number', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1023, 'ac_name', 'A/C Name', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1024, 'bank_transaction', 'Bank Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1025, 'bank', 'Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1026, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1027, 'bank_ledger', 'Bank Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1028, 'note_name', 'Note Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1029, 'balance', 'Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1030, 'previous_balance', 'Previous Credit Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1031, 'manage_supplier_ledger', 'Manage supplier ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1032, 'supplier_ledger', 'Supplier Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1033, 'print', 'Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1034, 'select_supplier', 'Select Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1035, 'deposite_id', 'Deposite ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1036, 'print_date', 'Print Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1037, 'manage_bank', 'Manage Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1038, 'add_new_bank', 'Add New Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1039, 'bank_list', 'Bank List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1040, 'bank_edit', 'Bank Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1041, 'debit_plus', 'Debit (+)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1042, 'credit_minus', 'Credit (-)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1043, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1044, 'cash_adjustment', 'Cash Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1045, 'adjustment_type', 'Adjustment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1046, 'supplier_payment', 'Supplier Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1047, 'prepared_by', 'Prepared By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1048, 'authorized_signature', 'Authorized Signature', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1049, 'chairman', 'Chairman', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1050, 'kitchen_dashboard', 'Kitchen Dashboard', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1051, 'counter_dashboard', 'Counter Dashboard', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1052, 'nw_order', 'New Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1053, 'ongoingorder', 'On Going Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1054, 'tdayorder', 'Today Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1055, 'onlineord', 'Online Order ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1056, 'table', 'Table', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1057, 'waiter', 'Waiter', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1058, 'del_company', 'Delivary Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1059, 'cookedtime', 'Cooking Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1060, 'ord_num', 'Order Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1061, 'cmplt', 'Complete', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1062, 'sl_payment', 'Select Your Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1063, 'paymd', 'Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1064, 'crd_terminal', 'Card Terminal', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1065, 'sl_bank', 'Select Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1066, 'lstdigit', 'Last 4 Digit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1067, 'cuspayment', 'Customer Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1068, 'cng_amount', 'Changes Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1069, 'pay_print', 'Pay Now & Print Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1070, 'payn', 'Pay Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1071, 'ordid', 'Order Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1072, 'can_reason', 'Cancel Reason', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1073, 'can_ord', 'Cancel Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1074, 'close', 'Close', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1075, 'add_customer', 'Add Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1076, 'fav_addesrr', 'Favourite Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1077, 'tabltno', 'Table No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1078, 'ordate', 'Order Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1079, 'payment_status', 'Payment Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1080, 'ordtcoun', 'Order Time Coundown Board', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1081, 'remtime', 'Remaining Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1082, 'ordtime', 'Order time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1083, 'ord', 'Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1084, 'tok', 'Token', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1085, 'view_ord', 'View Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1086, 'fdready', 'Food Ready', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1087, 'fdnready', 'Food Not Ready', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1088, 'foodrfs', 'Food is Ready for Served!!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1089, 'foodnrfs', 'Food Not Ready for Served', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1090, 'ordready', 'Order Ready', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1091, 'sele_by_date', 'sell By Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1092, 'withdetails', 'With Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1093, 'topeneqv', 'Total Opening Cash & Cash Equivalent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1094, 'cashopen', 'Cashflow from Operating Activities', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1095, 'payact', 'Payment for Other Operating Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1096, 'cash_gand_lie', 'Cash generated from Operating Activites before Changing in Opereating Assets &amp; Liabilities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1097, 'casfactive', 'Cashflow from Non Operating Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1098, 'cashnonlia', 'Cash generated from Non Operating Activites before Changing in Opereating Assets &amp; Liabilities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1099, 'incdre', 'Increase/Decrease in Operating Assets &amp; Liabilites', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1100, 'Tincdre', 'Total Increase/Decrease', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1101, 'netopenactv', 'Net Cash From Operating/Non Operating Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1102, 'cfact', 'Cash Flow from Investing Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1103, 'ncuia', 'Net Cash Used Investing Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1104, 'cfffa', 'Cash Flow from Financing Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1105, 'netcufa', 'Net  Cash Used Financing Activities', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1106, 'ncio', 'Net Cash Inflow/Outflow', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1107, 'pflos', 'Profit Loss', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1108, 'clcEq', 'Closing Cash & Cash Equivalent:', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1109, 'TcccE', 'Total Closing Cash & Cash Equivalent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1110, 'pp_by', 'Prepared By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1111, 'act', 'Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1112, 'ausig', 'Authorized Signature', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1113, 'particls', 'Particulars', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1114, 'back', 'Back', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1115, 'bk_vouchar', 'Bank Book Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1116, 'errorajdata', 'Error get data from ajax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1117, 'reach_limit', 'You have reached the limit of adding', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1118, 'inpt', 'inputs', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1119, 'cantdel', 'There only one row you can\'t delete.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1120, 'slsuplier', 'Select Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1121, 'ptype', 'Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1122, 'casp', 'Cash Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1123, 'bnkp', 'Bank Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1124, 'slbank', 'Select Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1125, 'cscrv', 'Cash Credit Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1126, 'ac_code', 'Account Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1127, 'ac_head', 'Account Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1128, 'iword', 'In word', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1129, 'ac_office', 'Accounts Officer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1130, 'latestv', 'Latest version', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1131, 'after19', 'Auto Update Feature working On  after 1.9', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1132, 'crver', 'Current version', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1133, 'notesupdate', 'note: strongly recomanded to backup your <b>SOURCE FILE</b> and <b>DATABASE</b> before update.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1134, 'noupdates', 'No Update available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1135, 'lic_pur_key', 'Licence/Purchase key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1136, 'lifeord', 'Lifetime Orders', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1137, 'tdaysell', 'Today Sell', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1138, 'tcustomer', 'Total Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1139, 'tdeliv', 'Total Delivered', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1140, 'treserv', 'Total Reservation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1141, 'latestord', 'Latest Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1142, 'latest_reser', 'Latest Reservation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1143, 'ord_number', 'Order No.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1144, 'latestolorder', 'Latest Online Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1145, 'monsalamntorder', 'Monthly Sales Amount and Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1146, 'onlineofline', 'Online Vs Offline Order and sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1147, 'pending_ord', 'Pending Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1148, 'onlinesamnt', 'Online Sale Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1149, 'onlineordnum', 'Online Order number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1150, 'offsalamnt', 'Offline Sale Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1151, 'offlordnum', 'Offline Order number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1152, 'saleamnt', 'Sale Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1153, 'ordnumb', 'Order number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1154, 'store_name', 'Store Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1155, 'opent', 'Opening Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1156, 'closeTime', 'Close Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1157, 'sldistype', 'Seletet Discount Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1158, 'distype', 'Discount Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1159, 'percent', 'Percent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1160, 'sl_se_ch_ty', 'Seletet Service Charge Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1161, 'vatset', 'VAT Setting(%)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1162, 'mindeltime', 'Min. Delivary Time:', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1163, 'dateformat', 'Date Format', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1164, 'sedateformat', 'Seletet Date Format', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1165, 'add_menu_item', 'Add Menu Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1166, 'menu_title', 'Menue Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1167, 'can_create', 'Can Create', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1168, 'can_read', 'Can Read', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1169, 'can_edit', 'Can Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1170, 'can_delete', 'Can Delete', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1171, 'smsrankgateway', 'To get <b>50</b> free sms from smsrank.com click', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1172, 'ranktext', ' and register in registration section click Already envato user and put your envato purchace key and product id  after registration put your username and password into the password and user name field this form.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1173, 'managementsection', 'This section is use Only for Store Management.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1174, 'width', 'Widht', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1175, 'protocal', 'Protocol', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1176, 'mailpath', 'MailPath', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1177, 'Mail_type', 'MailType', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1178, 'smtp_host', 'Smtp Host', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1179, 'smtp_post', 'Smtp Port', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1180, 'sender_email', 'Sender Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1181, 'smtp_password', 'Smtp Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1182, 'api_key', 'Api Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1183, 'powered_by', 'Powered By Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1184, 'item_information', 'Item Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1185, 'size', 'Size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1186, 'qty', 'Qty.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1187, 'addons_name', 'Addons Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1188, 'addons_qty', 'Addons Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1189, 'add_to_cart', 'Add To cart', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1190, 'item', 'Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1191, 'unit_price', 'Unit Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1192, 'total_price', 'Total Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1193, 'order_status', 'Order Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1194, 'served', 'Served', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1195, 'cancel_reason', 'Cancel Reason', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1196, 'customer_order', 'Customer Notes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1197, 'customerpicktime', 'Customer Pick-up Date and time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1198, 'subtotal', 'Subtotal', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1199, 'service_chrg', 'Service Charge', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1200, 'customer_paid_amount', 'Customer Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1201, 'change_due', 'Change Due', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1202, 'total_due', 'Total Due', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1203, 'powerbybdtask', 'Powered  By: BDTASK, www.bdtask.com', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1204, 'recept', 'Receipt  No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1205, 'orderno', 'Order No.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1206, 'ref_page', 'Refresh Page', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1207, 'orderid', 'Orderid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1208, 'all', 'All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1209, 'vat_tax1', 'Vat/Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1210, 'ord_uodate_success', 'Order Update Successfully!!!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1211, 'do_print_token', 'Do you Want to Print Token No.???', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1212, 'req_failed', 'Request Failed, Please check your code and try again!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1213, 'ord_places', 'Order Placed Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1214, 'do_print_in', 'Do you Want to Print Invoice???', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1215, 'ord_complte', 'Order Completed', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1216, 'ord_com_sucs', 'Order Completed Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1217, 'token_no', 'Token NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1218, 'qr-order', 'QR Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1219, 'cuschange', 'Customer Change', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1220, 'order_successfully_placed', 'Order has been placed successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1221, 'kitchen_setting', 'kitchen Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1222, 'kitchen_name', 'Kitchen Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1223, 'kitchen_user_assign', 'Assign Kitchen User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1224, 'kitchen_list', 'Kitchen List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1225, 'add_kitchen', 'Add Kitchen', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1226, 'kitchen_assign', 'Kitchen Assign', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1227, 'kitchen_edit', 'Kitchen Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1228, 'please_try_again_userassign', 'This user is already assign in this kitchen', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1229, 'select_kitchen', 'Select Kitchen', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1230, 'memberid', 'Member Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1231, 'member_name', 'Member Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1232, 'add_member', 'Add New Member', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1233, 'update_member', 'Update Member', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1234, 'member_list', 'Member List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1235, 'order_successfully_placed', 'Order has been placed successfully!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1236, 'meminfo', 'Member Manage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1237, 'blocked', 'Blocked', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1238, 'memberid_exist', 'Member ID Already Exists. Please Try Another.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1239, 'add_new_payment_type', 'Add New Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1240, 'sell_report_items', 'Sell Report Items', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1241, 'sell_report_waiters', 'Sell Reort Waiters', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1242, 'sell_report_delvirytype', 'Sell Report Delivery Type ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1243, 'sell_report_casher', 'Sell Report Casher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1244, 'ready_all_ietm', 'All Item Ready', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1245, 'unpaid_sell', 'Unpaid Sell', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1246, 'kitchen_sell', 'Kitchen Sell', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1247, 'order_total', 'Order Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1248, 'scharge_report', 'Service Charge Repoert', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1249, 'seo_setting', 'Seo Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1250, 'seo_title', 'Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1251, 'seo_keyword', 'Keyword', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1252, 'seo_description', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1253, 'pos_setting', 'POS Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1254, 'buy_now', 'Buy Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES(1255, 'purchase_key', 'Purchase Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`) VALUES (1256, 'kitchen_status', 'Kitchen Status', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--

DROP TABLE IF EXISTS `leave_apply`;
CREATE TABLE IF NOT EXISTS `leave_apply` (
  `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(2) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  PRIMARY KEY (`leave_appl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_apply`
--

INSERT INTO `leave_apply` (`leave_appl_id`, `employee_id`, `leave_type_id`, `apply_strt_date`, `apply_end_date`, `apply_day`, `leave_aprv_strt_date`, `leave_aprv_end_date`, `num_aprv_day`, `reason`, `apply_hard_copy`, `apply_date`, `approve_date`, `approved_by`, `leave_type`) VALUES(1, 'E1Q5NMGS', 2, '21-12-2018', '23-12-2018', 0, '23-12-2018', '24-12-2018', 'NaN', '', NULL, '2018-12-17', '2018-12-17', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
CREATE TABLE IF NOT EXISTS `leave_type` (
  `leave_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(2) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`leave_type_id`, `leave_type`, `leave_days`) VALUES(2, 'Earn Leave', 5);

-- --------------------------------------------------------

--
-- Table structure for table `loan_installment`
--

DROP TABLE IF EXISTS `loan_installment`;
CREATE TABLE IF NOT EXISTS `loan_installment` (
  `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_inst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_installment`
--

INSERT INTO `loan_installment` (`loan_inst_id`, `employee_id`, `loan_id`, `installment_amount`, `payment`, `date`, `received_by`, `installment_no`, `notes`) VALUES(1, 'EQLAJFUW', '2', '172', 'Card Payment', '2018-12-18', 'EQLAJFUW', '1', 'hyjg');

-- --------------------------------------------------------

--
-- Table structure for table `marital_info`
--

DROP TABLE IF EXISTS `marital_info`;
CREATE TABLE IF NOT EXISTS `marital_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_sta` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marital_info`
--

INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(1, 'Single');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(2, 'Married');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(3, 'Divorced');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(4, 'Widowed');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
CREATE TABLE IF NOT EXISTS `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float NOT NULL,
  `other_facilities` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES(1, 'Premium Member', 20, 'Get a souse', 2, '2018-11-07', 2, '2018-11-07');
INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES(2, 'Silver Member', 18, '', 2, '2018-11-07', 2, '2018-11-07');
INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES(3, 'Gold Member', 20, '', 2, '2018-11-07', 2, '2018-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `menu_add_on`
--

DROP TABLE IF EXISTS `menu_add_on`;
CREATE TABLE IF NOT EXISTS `menu_add_on` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

DROP TABLE IF EXISTS `module_permission`;
CREATE TABLE IF NOT EXISTS `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `multipay_bill`
--

DROP TABLE IF EXISTS `multipay_bill`;
CREATE TABLE IF NOT EXISTS `multipay_bill` (
  `multipay_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `multipayid` varchar(30) DEFAULT NULL,
  `payment_type_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`multipay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

DROP TABLE IF EXISTS `order_menu`;
CREATE TABLE IF NOT EXISTS `order_menu` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuqty` float NOT NULL,
  `add_on_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `addonsqty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `varientid` int(11) NOT NULL,
  `food_status` int(11) DEFAULT 0,
  `allfoodready` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentsetup`
--

DROP TABLE IF EXISTS `paymentsetup`;
CREATE TABLE IF NOT EXISTS `paymentsetup` (
  `setupid` int(11) NOT NULL AUTO_INCREMENT,
  `paymentid` int(11) NOT NULL,
  `marchantid` varchar(255) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `Islive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`setupid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymentsetup`
--

INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(1, 5, 'bdtas5e772deb8ff87', 'bdtas5e772deb8ff87@ssl', 'ainalcse@gmail.com', 'BDT', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(2, 3, '', '', 'tareq7500personal2@gmail.com', 'USD', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(3, 2, '901400787', '', 'ainalcse@gmail.com', 'USD', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(4, 6, '002020000000001', '002020000000001_KEY1', '1', '', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(5, 7, 'BE10000072', 'BE10000072', 'karmadorji@gmail.com', 'BTN', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(6, 8, 'sandbox-sq0idb-ShIOgPUIHSXxsjCPG4oh_A', 'EAAAEE3gxSvOVaHIq-5A5P_yFkUbkAfUM2-JiQju2FTxQ4n7epxmvKpaOhECxHcN', '5SNY8GNKAZM00', 'AUD', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(7, 9, 'sk_test_ol4WUcbGsqxNJItpeOi1ecDT00k5mDyC2G', 'pk_test_TrVFpmZBkgasCE6WTPkZgMPr00UzVVOqgp', 'ainalcse@gmail.com', 'USD', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(8, 10, 'sk_test_71353c2613675acb967ea532f4c4c8105ea175b8', 'pk_test_328da55755b88b1aaed96c5cda215b2fd887edb9', 'ainalcse@gmail.com', 'NGN', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(9, 11, NULL, '', '', '', 0, 0);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(10, 12, '7BUkXCbuHDcx1ZyQqmcKVtsLnFxF0r3f', 'vmUIfeoHXpZSKc20Wt50d6hqeIY5FcWtFR6prg0Ubak8IvmmZEFDDpQr5ZMEdnoS', '', 'XAF', 0, 1);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`) VALUES(12, 13, 'sandbox-5rd4uUC2yAz7LWDaalyJAOEsH2rxrqVB', 'sandbox-FsKRCZpk0BpdUss3wVsNLhvs5Ty5PSpi', '', 'TRY', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `payment_method_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(1, 'Card Payment', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(2, 'Two Checkout', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(3, 'Paypal', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(4, 'Cash Payment', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(5, 'SSLCommerz', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(6, 'SIPS Office', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(7, 'RMA PAYMENT GATEWAY', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(8, 'Square Payments', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(9, 'Stripe Payment', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(10, 'Paystack Payments', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(11, 'Paytm Payments', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(12, 'Orange Money payment', 1);
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES(13, 'iyzico', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_holiday`
--

DROP TABLE IF EXISTS `payroll_holiday`;
CREATE TABLE IF NOT EXISTS `payroll_holiday` (
  `payrl_holi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`payrl_holi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payroll_holiday`
--

INSERT INTO `payroll_holiday` (`payrl_holi_id`, `holiday_name`, `start_date`, `end_date`, `no_of_days`, `created_by`, `updated_by`) VALUES(1, 'Eid Ul Azha', '2019-06-20', '2019-06-27', '8', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

DROP TABLE IF EXISTS `payroll_tax_setup`;
CREATE TABLE IF NOT EXISTS `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pay_frequency`
--

DROP TABLE IF EXISTS `pay_frequency`;
CREATE TABLE IF NOT EXISTS `pay_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_frequency`
--

INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(1, 'Weekly');
INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(2, 'Biweekly');
INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(3, 'Annual');
INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(4, 'Monthly');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position_details` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(1, 'chef', 'Responsible for the pastry shop in a foodservice establishment. Ensures that the products produced in the pastry shop meet the quality standards in conjunction with the executive chef.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(2, 'HRM', 'Recruits and hires qualified employees, creates in-house job-training programs, and assists employees with their career needs.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(3, 'Kitchen manager', 'Supervises and coordinates activities concerning all back-of-the-house operations and personnel, including food preparation, kitchen and storeroom areas.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(4, 'Counter server', 'Responsible for providing quick and efficient service to customers. Greets customers, takes their food and beverage orders, rings orders into register, and prepares and serves hot and cold drinks.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(6, 'Waiter', 'Most waiters and waitresses, also called servers, work in full-service restaurants. They greet customers, take food orders, bring food and drinks to the tables and take payment and make change.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(7, 'Accounts', 'Play a key role in every restaurant. ');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
CREATE TABLE IF NOT EXISTS `production` (
  `productionid` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `itemquantity` int(11) NOT NULL,
  `savedby` int(11) NOT NULL,
  `saveddate` date NOT NULL,
  `productionexpiredate` date NOT NULL,
  PRIMARY KEY (`productionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `production_details`
--

DROP TABLE IF EXISTS `production_details`;
CREATE TABLE IF NOT EXISTS `production_details` (
  `pro_detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `ingredientid` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`pro_detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

DROP TABLE IF EXISTS `product_tbl`;
CREATE TABLE IF NOT EXISTS `product_tbl` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fk_prod_category_id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pos_item_weight` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_short_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_retail_price` float DEFAULT NULL,
  `unit_per_case` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `case_discount` float DEFAULT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `fk_client_id` int(11) DEFAULT NULL,
  `comparison_product` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date NOT NULL,
  `create_by` int(11) NOT NULL,
  `p_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=product,2=pos_item',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

DROP TABLE IF EXISTS `purchaseitem`;
CREATE TABLE IF NOT EXISTS `purchaseitem` (
  `purID` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` varchar(50) DEFAULT NULL,
  `suplierID` int(11) NOT NULL,
  `paymenttype` int(11) DEFAULT NULL,
  `bankid` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `details` text DEFAULT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  `savedby` int(11) NOT NULL,
  PRIMARY KEY (`purID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`purID`, `invoiceid`, `suplierID`, `paymenttype`, `bankid`, `total_price`, `paid_amount`, `details`, `purchasedate`, `purchaseexpiredate`, `savedby`) VALUES(1, '5463453254', 1, 1, 0, '51200.00', '50000.00', '', '2020-09-08', '2020-10-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
CREATE TABLE IF NOT EXISTS `purchase_details` (
  `detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseid` int(11) NOT NULL,
  `indredientid` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(80) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `totalprice` decimal(10,2) NOT NULL DEFAULT 0.00,
  `purchaseby` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`detailsid`, `purchaseid`, `indredientid`, `quantity`, `unitname`, `price`, `totalprice`, `purchaseby`, `purchasedate`, `purchaseexpiredate`) VALUES(1, 1, 5, '100.00', '', '500.00', '50000.00', 2, '2020-09-08', '2020-10-31');
INSERT INTO `purchase_details` (`detailsid`, `purchaseid`, `indredientid`, `quantity`, `unitname`, `price`, `totalprice`, `purchaseby`, `purchasedate`, `purchaseexpiredate`) VALUES(2, 1, 4, '10.00', '', '120.00', '1200.00', 2, '2020-09-08', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

DROP TABLE IF EXISTS `purchase_return`;
CREATE TABLE IF NOT EXISTS `purchase_return` (
  `preturn_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `po_no` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`preturn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

DROP TABLE IF EXISTS `purchase_return_details`;
CREATE TABLE IF NOT EXISTS `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_type`
--

DROP TABLE IF EXISTS `rate_type`;
CREATE TABLE IF NOT EXISTS `rate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate_type`
--

INSERT INTO `rate_type` (`id`, `r_type_name`) VALUES(1, 'Hourly');
INSERT INTO `rate_type` (`id`, `r_type_name`) VALUES(2, 'Salary');

-- --------------------------------------------------------

--
-- Table structure for table `rest_table`
--

DROP TABLE IF EXISTS `rest_table`;
CREATE TABLE IF NOT EXISTS `rest_table` (
  `tableid` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `table_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=booked,0=free',
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rest_table`
--

INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(1, '1', 2, 'assets/img/icons/resttable/1.png', 1);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(2, '2', 4, 'assets/img/icons/resttable/4.png', 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(3, '3', 2, 'assets/img/icons/resttable/2.png', 1);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(4, '4', 5, 'assets/img/icons/resttable/table11.png', 1);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(5, '5', 6, 'assets/img/icons/resttable/table7.png', 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(6, '6', 3, 'assets/img/icons/resttable/3.png', 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(7, '7', 8, 'assets/img/icons/resttable/8.png', 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(8, '8', 4, 'assets/img/icons/resttable/4.png', 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `status`) VALUES(9, '9', 3, 'assets/img/icons/resttable/3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_header`
--

DROP TABLE IF EXISTS `salary_setup_header`;
CREATE TABLE IF NOT EXISTS `salary_setup_header` (
  `s_s_h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 NOT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`s_s_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

DROP TABLE IF EXISTS `salary_sheet_generate`;
CREATE TABLE IF NOT EXISTS `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

DROP TABLE IF EXISTS `salary_type`;
CREATE TABLE IF NOT EXISTS `salary_type` (
  `salary_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sec_menu_item`
--

DROP TABLE IF EXISTS `sec_menu_item`;
CREATE TABLE IF NOT EXISTS `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_menu_item`
--

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(1, 'manage_category', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(2, 'category_list', 'item_category', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(3, 'add_category', 'create', 'itemmanage', 2, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(4, 'manage_food', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(5, 'food_list', 'item_food', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(6, 'add_food', 'index', 'itemmanage', 5, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(7, 'food_varient', 'foodvarientlist', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(8, 'add_varient', 'addvariant', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(9, 'food_availablity', 'availablelist', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(10, 'add_availablity', 'addavailable', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(11, 'manage_addons', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(12, 'addons_list', 'menu_addons', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(13, 'add_adons', 'create', 'itemmanage', 8, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(14, 'manage_unitmeasurement', '', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(15, 'unit_list', 'unitmeasurement', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(16, 'unit_add', 'create', 'units', 12, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(17, 'manage_ingradient', '', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(18, 'ingradient_list', 'ingradient', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(19, 'add_ingredient', 'create', 'units', 15, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(20, 'assign_adons_list', 'assignaddons', 'itemmanage', 8, 0, 2, '2018-11-06 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(21, 'assign_adons', 'assignaddonscreate', 'itemmanage', 8, 0, 2, '2018-11-06 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(28, 'membership_management', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(29, 'membership_list', 'index', 'setting', 28, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(30, 'membership_add', 'create', 'setting', 29, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(31, 'payment_setting', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(32, 'paymentmethod_list', 'index', 'setting', 31, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(33, 'payment_add', 'create', 'setting', 32, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(34, 'shipping_setting', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(35, 'shipping_list', 'index', 'setting', 34, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(36, 'shipping_add', 'create', 'setting', 35, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(37, 'supplier_manage', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(38, 'supplier_list', 'index', 'setting', 37, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(39, 'supplier_add', 'create', 'setting', 38, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(40, 'purchase_item', 'index', 'purchase', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(41, 'purchase_add', 'create', 'purchase', 40, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(42, 'table_manage', '', 'setting', 0, 0, 2, '2018-11-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(43, 'add_new_table', 'create', 'setting', 44, 0, 2, '2018-11-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(44, 'table_list', 'restauranttable', 'setting', 42, 0, 2, '2018-11-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(45, 'ordermanage', 'index', 'ordermanage', 0, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(46, 'add_new_order', 'neworder', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(47, 'order_list', 'orderlist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(48, 'pending_order', 'pendingorder', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(49, 'processing_order', 'processing', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(50, 'complete_order', 'completelist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(51, 'cancel_order', 'cancellist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(52, 'pos_invoice', 'pos_invoice', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(53, 'c_o_a', 'treeview', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(54, 'debit_voucher', 'debit_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(55, 'credit_voucher', 'credit_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(56, 'contra_voucher', 'contra_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(57, 'journal_voucher', 'journal_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(58, 'voucher_approval', 'voucher_approval', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(59, 'account_report', '', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(60, 'voucher_report', 'coa', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(61, 'cash_book', 'cash_book', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(62, 'bank_book', 'bank_book', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(63, 'general_ledger', 'general_ledger', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(64, 'trial_balance', 'trial_balance', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(65, 'profit_loss', 'profit_loss_report', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(66, 'cash_flow', 'cash_flow_report', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(67, 'coa_print', 'coa_print', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(68, 'hrm', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(69, 'attendance', 'Home', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(70, 'atn_form', 'atnview', 'hrm', 69, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(71, 'atn_report', 'attendance_list', 'hrm', 69, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(72, 'award', 'Award_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(73, 'new_award', 'create_award', 'hrm', 72, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(74, 'circularprocess', 'Candidate', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(75, 'add_canbasic_info', 'caninfo_create', 'hrm', 74, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(76, 'can_basicinfo_list', 'canInfoview', 'hrm', 74, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(77, 'candidate_basic_info', 'Candidate_select', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(78, 'candidate_shortlist', 'shortlist_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(79, 'candidate_interview', 'interview_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(80, 'candidate_selection', 'selection_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(81, 'department', 'Department_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(82, 'departmentfrm', 'create_dept', 'hrm', 81, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(83, 'division', 'Division_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(84, 'add_division', 'division_form', 'hrm', 83, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(85, 'division_list', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(86, 'position', 'position_form', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(87, 'Direct_Empl', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(88, 'add_employee', 'employ_form', 'hrm', 87, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(89, 'manage_employee', 'employee_view', 'hrm', 87, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(90, 'emp_performance', 'emp_performance_form', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(91, 'emp_sal_payment', 'paymentview', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(92, 'leave', 'leave', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(93, 'weekly_holiday', 'weeklyform', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(94, 'holiday', 'holiday_form', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(95, 'others_leave_application', 'others_leave', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(96, 'add_leave_type', 'leave_type_form', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(97, 'leave_application', 'others_leave', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(98, 'loan', 'loan', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(99, 'loan_grand', 'create_grandloan', 'hrm', 98, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(100, 'loan_installment', 'create_installment', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(101, 'manage_installment', 'installmentView', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(102, 'manage_granted_loan', 'loan_view', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(103, 'loan_report', 'loan_report', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(104, 'payroll', 'Payroll', 'hrm', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(105, 'salary_type_setup', 'create_salary_setup', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(106, 'manage_salary_setup', 'emp_salary_setup_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(107, 'salary_setup', 'create_s_setup', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(108, 'manage_salary_type', 'salary_setup_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(109, 'salary_generate', 'create_salary_generate', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(110, 'manage_salary_generate', 'salary_generate_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(111, 'purchase_return', 'return_form', 'purchase', 40, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(112, 'return_invoice', 'return_invoice', 'purchase', 40, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(113, 'report', 'reports', 'report', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(114, 'purchase_report', 'index', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(115, 'stock_report_product_wise', 'productwise', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(116, 'purchase_report_ingredient', 'ingredientwise', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(117, 'sell_report', 'sellrpt', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(118, 'table_setting', 'tablesetting', 'setting', 44, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(119, 'customer_type', '', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(120, 'customertype_list', 'customertype', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(121, 'add_type', 'create', 'setting', 120, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(122, 'currency', '', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(123, 'currency_list', 'currency', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(124, 'currency_add', 'create', 'setting', 123, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(125, 'production', '', 'production', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(126, 'production_set_list', 'production', 'production', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(127, 'set_productionunit', 'productionunit', 'production', 126, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(128, 'production_add', 'create', 'production', 126, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(129, 'production_list', 'addproduction', 'production', 126, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(130, 'reservation', '', 'reservation', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(131, 'reservation_table', 'tablebooking', 'reservation', 130, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(132, 'update_ord', 'updateorder', 'ordermanage', 45, 0, 2, '2019-12-11 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(133, 'kitchen_dashboard', 'kitchen', 'ordermanage', 45, 0, 2, '2020-02-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(134, 'counter_dashboard', 'counterboard', 'ordermanage', 45, 0, 2, '2020-02-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission`
--

DROP TABLE IF EXISTS `sec_role_permission`;
CREATE TABLE IF NOT EXISTS `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_role_permission`
--

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(1, 1, 53, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(2, 1, 54, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(3, 1, 55, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(4, 1, 56, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(5, 1, 57, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(6, 1, 58, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(7, 1, 59, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(8, 1, 60, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(9, 1, 61, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(10, 1, 62, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(11, 1, 63, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(12, 1, 64, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(13, 1, 65, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(14, 1, 66, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(15, 1, 67, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(16, 1, 68, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(17, 1, 69, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(18, 1, 70, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(19, 1, 71, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(20, 1, 72, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(21, 1, 73, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(22, 1, 74, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(23, 1, 75, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(24, 1, 76, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(25, 1, 77, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(26, 1, 78, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(27, 1, 79, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(28, 1, 80, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(29, 1, 81, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(30, 1, 82, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(31, 1, 83, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(32, 1, 84, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(33, 1, 85, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(34, 1, 86, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(35, 1, 87, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(36, 1, 88, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(37, 1, 89, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(38, 1, 90, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(39, 1, 91, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(40, 1, 92, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(41, 1, 93, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(42, 1, 94, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(43, 1, 95, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(44, 1, 96, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(45, 1, 97, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(46, 1, 98, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(47, 1, 99, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(48, 1, 100, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(49, 1, 101, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(50, 1, 102, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(51, 1, 103, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(52, 1, 104, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(53, 1, 105, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(54, 1, 106, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(55, 1, 107, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(56, 1, 108, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(57, 1, 109, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(58, 1, 110, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(59, 1, 1, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(60, 1, 2, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(61, 1, 3, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(62, 1, 4, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(63, 1, 5, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(64, 1, 6, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(65, 1, 7, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(66, 1, 8, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(67, 1, 9, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(68, 1, 10, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(69, 1, 11, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(70, 1, 12, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(71, 1, 13, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(72, 1, 20, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(73, 1, 21, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(74, 1, 45, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(75, 1, 46, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(76, 1, 47, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(77, 1, 48, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(78, 1, 49, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(79, 1, 50, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(80, 1, 51, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(81, 1, 52, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(82, 1, 132, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(83, 1, 133, 1, 1, 1, 1, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(84, 1, 134, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(85, 1, 125, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(86, 1, 126, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(87, 1, 127, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(88, 1, 128, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(89, 1, 129, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(90, 1, 40, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(91, 1, 41, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(92, 1, 111, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(93, 1, 112, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(94, 1, 113, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(95, 1, 114, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(96, 1, 115, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(97, 1, 116, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(98, 1, 117, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(99, 1, 130, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(100, 1, 131, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(101, 1, 28, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(102, 1, 29, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(103, 1, 30, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(104, 1, 31, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(105, 1, 32, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(106, 1, 33, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(107, 1, 34, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(108, 1, 35, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(109, 1, 36, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(110, 1, 37, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(111, 1, 38, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(112, 1, 39, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(113, 1, 42, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(114, 1, 43, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(115, 1, 44, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(116, 1, 118, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(117, 1, 119, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(118, 1, 120, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(119, 1, 121, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(120, 1, 122, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(121, 1, 123, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(122, 1, 124, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(123, 1, 14, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(124, 1, 15, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(125, 1, 16, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(126, 1, 17, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(127, 1, 18, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(128, 1, 19, 0, 0, 0, 0, 2, '2020-10-12 10:27:03');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(129, 2, 53, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(130, 2, 54, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(131, 2, 55, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(132, 2, 56, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(133, 2, 57, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(134, 2, 58, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(135, 2, 59, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(136, 2, 60, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(137, 2, 61, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(138, 2, 62, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(139, 2, 63, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(140, 2, 64, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(141, 2, 65, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(142, 2, 66, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(143, 2, 67, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(144, 2, 68, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(145, 2, 69, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(146, 2, 70, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(147, 2, 71, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(148, 2, 72, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(149, 2, 73, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(150, 2, 74, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(151, 2, 75, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(152, 2, 76, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(153, 2, 77, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(154, 2, 78, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(155, 2, 79, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(156, 2, 80, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(157, 2, 81, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(158, 2, 82, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(159, 2, 83, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(160, 2, 84, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(161, 2, 85, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(162, 2, 86, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(163, 2, 87, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(164, 2, 88, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(165, 2, 89, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(166, 2, 90, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(167, 2, 91, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(168, 2, 92, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(169, 2, 93, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(170, 2, 94, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(171, 2, 95, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(172, 2, 96, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(173, 2, 97, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(174, 2, 98, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(175, 2, 99, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(176, 2, 100, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(177, 2, 101, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(178, 2, 102, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(179, 2, 103, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(180, 2, 104, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(181, 2, 105, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(182, 2, 106, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(183, 2, 107, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(184, 2, 108, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(185, 2, 109, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(186, 2, 110, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(187, 2, 1, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(188, 2, 2, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(189, 2, 3, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(190, 2, 4, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(191, 2, 5, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(192, 2, 6, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(193, 2, 7, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(194, 2, 8, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(195, 2, 9, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(196, 2, 10, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(197, 2, 11, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(198, 2, 12, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(199, 2, 13, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(200, 2, 20, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(201, 2, 21, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(202, 2, 45, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(203, 2, 46, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(204, 2, 47, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(205, 2, 48, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(206, 2, 49, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(207, 2, 50, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(208, 2, 51, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(209, 2, 52, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(210, 2, 132, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(211, 2, 133, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(212, 2, 134, 1, 1, 1, 1, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(213, 2, 125, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(214, 2, 126, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(215, 2, 127, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(216, 2, 128, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(217, 2, 129, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(218, 2, 40, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(219, 2, 41, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(220, 2, 111, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(221, 2, 112, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(222, 2, 113, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(223, 2, 114, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(224, 2, 115, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(225, 2, 116, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(226, 2, 117, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(227, 2, 130, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(228, 2, 131, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(229, 2, 28, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(230, 2, 29, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(231, 2, 30, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(232, 2, 31, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(233, 2, 32, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(234, 2, 33, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(235, 2, 34, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(236, 2, 35, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(237, 2, 36, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(238, 2, 37, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(239, 2, 38, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(240, 2, 39, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(241, 2, 42, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(242, 2, 43, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(243, 2, 44, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(244, 2, 118, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(245, 2, 119, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(246, 2, 120, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(247, 2, 121, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(248, 2, 122, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(249, 2, 123, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(250, 2, 124, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(251, 2, 14, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(252, 2, 15, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(253, 2, 16, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(254, 2, 17, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(255, 2, 18, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(256, 2, 19, 0, 0, 0, 0, 2, '2020-10-12 10:27:45');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(257, 3, 53, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(258, 3, 54, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(259, 3, 55, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(260, 3, 56, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(261, 3, 57, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(262, 3, 58, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(263, 3, 59, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(264, 3, 60, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(265, 3, 61, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(266, 3, 62, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(267, 3, 63, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(268, 3, 64, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(269, 3, 65, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(270, 3, 66, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(271, 3, 67, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(272, 3, 68, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(273, 3, 69, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(274, 3, 70, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(275, 3, 71, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(276, 3, 72, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(277, 3, 73, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(278, 3, 74, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(279, 3, 75, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(280, 3, 76, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(281, 3, 77, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(282, 3, 78, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(283, 3, 79, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(284, 3, 80, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(285, 3, 81, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(286, 3, 82, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(287, 3, 83, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(288, 3, 84, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(289, 3, 85, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(290, 3, 86, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(291, 3, 87, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(292, 3, 88, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(293, 3, 89, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(294, 3, 90, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(295, 3, 91, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(296, 3, 92, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(297, 3, 93, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(298, 3, 94, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(299, 3, 95, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(300, 3, 96, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(301, 3, 97, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(302, 3, 98, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(303, 3, 99, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(304, 3, 100, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(305, 3, 101, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(306, 3, 102, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(307, 3, 103, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(308, 3, 104, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(309, 3, 105, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(310, 3, 106, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(311, 3, 107, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(312, 3, 108, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(313, 3, 109, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(314, 3, 110, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(315, 3, 1, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(316, 3, 2, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(317, 3, 3, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(318, 3, 4, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(319, 3, 5, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(320, 3, 6, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(321, 3, 7, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(322, 3, 8, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(323, 3, 9, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(324, 3, 10, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(325, 3, 11, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(326, 3, 12, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(327, 3, 13, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(328, 3, 20, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(329, 3, 21, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(330, 3, 45, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(331, 3, 46, 1, 1, 1, 1, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(332, 3, 47, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(333, 3, 48, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(334, 3, 49, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(335, 3, 50, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(336, 3, 51, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(337, 3, 52, 1, 1, 1, 1, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(338, 3, 132, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(339, 3, 133, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(340, 3, 134, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(341, 3, 125, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(342, 3, 126, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(343, 3, 127, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(344, 3, 128, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(345, 3, 129, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(346, 3, 40, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(347, 3, 41, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(348, 3, 111, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(349, 3, 112, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(350, 3, 113, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(351, 3, 114, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(352, 3, 115, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(353, 3, 116, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(354, 3, 117, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(355, 3, 130, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(356, 3, 131, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(357, 3, 28, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(358, 3, 29, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(359, 3, 30, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(360, 3, 31, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(361, 3, 32, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(362, 3, 33, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(363, 3, 34, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(364, 3, 35, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(365, 3, 36, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(366, 3, 37, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(367, 3, 38, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(368, 3, 39, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(369, 3, 42, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(370, 3, 43, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(371, 3, 44, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(372, 3, 118, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(373, 3, 119, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(374, 3, 120, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(375, 3, 121, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(376, 3, 122, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(377, 3, 123, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(378, 3, 124, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(379, 3, 14, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(380, 3, 15, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(381, 3, 16, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(382, 3, 17, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(383, 3, 18, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES(384, 3, 19, 0, 0, 0, 0, 2, '2020-10-12 10:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_tbl`
--

DROP TABLE IF EXISTS `sec_role_tbl`;
CREATE TABLE IF NOT EXISTS `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sec_role_tbl`
--

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES(1, 'kitchen', 'manage kitchen', 2, '2020-10-12 10:27:03', 1);
INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES(2, 'Counter', 'Display Order timing', 2, '2020-10-12 10:27:45', 1);
INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES(3, 'Waiter', 'Order Taken and served food', 2, '2020-10-12 10:29:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_access_tbl`
--

DROP TABLE IF EXISTS `sec_user_access_tbl`;
CREATE TABLE IF NOT EXISTS `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `storename` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logoweb` varchar(255) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `opentime` varchar(255) DEFAULT NULL,
  `closetime` varchar(255) DEFAULT NULL,
  `vat` int(11) NOT NULL DEFAULT 0,
  `discount_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `servicecharge` decimal(10,0) NOT NULL DEFAULT 0,
  `service_chargeType` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `currency` int(11) DEFAULT 0,
  `min_prepare_time` varchar(50) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `dateformat` text NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `powerbytxt` text DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `storename`, `address`, `email`, `phone`, `logo`, `logoweb`, `favicon`, `opentime`, `closetime`, `vat`, `discount_type`, `servicecharge`, `service_chargeType`, `currency`, `min_prepare_time`, `language`, `timezone`, `dateformat`, `site_align`, `powerbytxt`, `footer_text`) VALUES(2, 'Bhojon Restaurant', 'Dhaka Restaurant', '98 Green Road, Farmgate, Dhaka-1215.', 'bdtask@gmail.com', '0123456789', 'assets/img/icons/2019-10-29/h.png', NULL, 'assets/img/icons/m.png', '9:00AM', '10:00PM', 15, 1, '20', 0, 2, '1:00 Hour', 'english', 'Asia/Dhaka', 'd/m/Y', 'LTR', 'Powered By: BDTASK, www.bdtask.com\r\n', '2017©Copyright');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
CREATE TABLE IF NOT EXISTS `shipping_method` (
  `ship_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method` varchar(150) NOT NULL,
  `shippingrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `is_active`) VALUES(1, 'Home Delivary', '60.00', 1);
INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `is_active`) VALUES(2, 'Pickup', '0.00', 1);
INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `is_active`) VALUES(3, 'In the restaurant', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_configuration`
--

DROP TABLE IF EXISTS `sms_configuration`;
CREATE TABLE IF NOT EXISTS `sms_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `gateway` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_configuration`
--

INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES(1, 'http://smsrank.com/', 'SMS Rank', 'rabbani', '123456', 'smsrank', '', 1);
INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES(2, 'https://www.nexmo.com/', 'nexmo', '50489b88', 'z1cBmtrDeQrOaqhg', 'restaurant', '', 0);
INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES(3, 'https://www.budgetsms.net/', 'budgetsms', 'user1', '1e753da74', 'budgetsms', '21547', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

DROP TABLE IF EXISTS `sms_template`;
CREATE TABLE IF NOT EXISTS `sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `default_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(1, 'one', 'your Order {id} is cancel for some reason.', 'Cancel', 0, 0, '2019-01-02 01:08:07', '0000-00-00 00:00:00');
INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(2, 'two', 'your order {id} is completed', 'CompleteOrder', 0, 1, '2019-01-02 02:58:19', '0000-00-00 00:00:00');
INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(3, 'three', 'your order {id} is processing', 'Processing', 0, 1, '2018-11-09 01:00:46', '0000-00-00 00:00:00');
INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(8, 'four', 'Your Order Has been Placed Successfully.', 'Neworder', 1, 0, '2019-01-02 02:59:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_emaillist`
--

DROP TABLE IF EXISTS `subscribe_emaillist`;
CREATE TABLE IF NOT EXISTS `subscribe_emaillist` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `dateinsert` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `supid` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_code` varchar(255) NOT NULL,
  `supName` varchar(100) NOT NULL,
  `supEmail` varchar(100) NOT NULL,
  `supMobile` varchar(50) NOT NULL,
  `supAddress` text NOT NULL,
  PRIMARY KEY (`supid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supid`, `suplier_code`, `supName`, `supEmail`, `supMobile`, `supAddress`) VALUES(1, 'sup_002', 'Supplier_1', '', '5486454', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et.');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

DROP TABLE IF EXISTS `supplier_ledger`;
CREATE TABLE IF NOT EXISTS `supplier_ledger` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `d_c` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_ledger`
--

INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES(1, 'sup_002', 1, 'Adjustment ', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2020-09-08', 1, 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES(5, '5463453254', 1, '5463453254', NULL, '50000.00', 'Purchase From Supplier. ', NULL, NULL, '2020-09-08', 1, 'd');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES(4, '5463453254', 1, '5463453254', NULL, '51200.00', '', NULL, NULL, '2020-09-08', 1, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

DROP TABLE IF EXISTS `synchronizer_setting`;
CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `synchronizer_setting`
--

INSERT INTO `synchronizer_setting` (`id`, `hostname`, `username`, `password`, `port`, `debug`, `project_root`) VALUES(8, '70.35.198.244', 'softest3bdtask', 'Ux5O~MBJ#odK', '21', 'true', './public_html/');

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

DROP TABLE IF EXISTS `table_setting`;
CREATE TABLE IF NOT EXISTS `table_setting` (
  `settingid` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `iconpos` text NOT NULL,
  PRIMARY KEY (`settingid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_setting`
--

INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(1, 2, 'position: relative; left: 289px; top: 21px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(2, 4, 'position: relative; left: 137px; top: 94px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(3, 3, 'position: relative; left: -98px; top: 126px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(4, 1, 'position: relative; left: -93px; top: 3px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(5, 8, 'position: relative; left: -274px; top: 51px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(6, 6, 'position: relative; left: -203px; top: 176px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(7, 5, 'position: relative; left: 322px; top: 160px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(8, 7, 'position: relative; left: -481px; top: 204px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(9, 9, 'position: relative; left: -474px; top: 95px;');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

DROP TABLE IF EXISTS `tblreservation`;
CREATE TABLE IF NOT EXISTS `tblreservation` (
  `reserveid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `tableid` int(11) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `formtime` time NOT NULL,
  `totime` time NOT NULL,
  `reserveday` date NOT NULL,
  `customer_notes` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=free,2=booked',
  `notif` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  PRIMARY KEY (`reserveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblserver`
--

DROP TABLE IF EXISTS `tblserver`;
CREATE TABLE IF NOT EXISTS `tblserver` (
  `serverid` int(11) NOT NULL AUTO_INCREMENT,
  `localhost_url` varchar(255) NOT NULL,
  `online_url` varchar(255) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblserver`
--

INSERT INTO `tblserver` (`serverid`, `localhost_url`, `online_url`) VALUES(1, 'http://localhost/restaurant_v2', 'http://soft14.bdtask.com/restaurant_v2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_kitchen`
--

DROP TABLE IF EXISTS `tbl_assign_kitchen`;
CREATE TABLE IF NOT EXISTS `tbl_assign_kitchen` (
  `assignid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`assignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

DROP TABLE IF EXISTS `tbl_bank`;
CREATE TABLE IF NOT EXISTS `tbl_bank` (
  `bankid` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `signature_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bankid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES(1, 'Dutch-Bangla Bank', 'Ainal Haque', '110535764655', 'Mirpur 10', './application/modules/hrm/assets/images/2020-01-18/c.jpg');
INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES(2, 'City Bank', 'Kamal Hassan', '3869583', 'Uttara', './application/modules/hrm/assets/images/2020-01-18/e.jpg');
INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES(3, 'Brac Bank', 'Robiul Islam', '9356346', 'Motijeel', './application/modules/hrm/assets/images/2020-01-18/f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billingaddress`
--

DROP TABLE IF EXISTS `tbl_billingaddress`;
CREATE TABLE IF NOT EXISTS `tbl_billingaddress` (
  `billaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`billaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_terminal`
--

DROP TABLE IF EXISTS `tbl_card_terminal`;
CREATE TABLE IF NOT EXISTS `tbl_card_terminal` (
  `card_terminalid` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_name` varchar(255) NOT NULL,
  PRIMARY KEY (`card_terminalid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card_terminal`
--

INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES(1, 'Nexus Terminal');
INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES(2, 'Brac Bank Terminal');
INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES(3, 'Visa-Master Terminal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
CREATE TABLE IF NOT EXISTS `tbl_city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(70) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(1, 'Bangladesh', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(2, 'United State', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(3, 'United Kingdom', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(4, 'India', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generatedreport`
--

DROP TABLE IF EXISTS `tbl_generatedreport`;
CREATE TABLE IF NOT EXISTS `tbl_generatedreport` (
  `generateid` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `saleinvoice` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `anyreason` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `nofification` int(11) NOT NULL,
  `orderacceptreject` int(11) DEFAULT NULL,
  `reportDate` date NOT NULL,
  PRIMARY KEY (`generateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen`
--

DROP TABLE IF EXISTS `tbl_kitchen`;
CREATE TABLE IF NOT EXISTS `tbl_kitchen` (
  `kitchenid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kitchenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen_order`
--

DROP TABLE IF EXISTS `tbl_kitchen_order`;
CREATE TABLE IF NOT EXISTS `tbl_kitchen_order` (
  `ktid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchenid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `varient` int(11) DEFAULT NULL,
  PRIMARY KEY (`ktid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posetting`
--

DROP TABLE IF EXISTS `tbl_posetting`;
CREATE TABLE IF NOT EXISTS `tbl_posetting` (
  `possettingid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  PRIMARY KEY (`possettingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_posetting`
--

INSERT INTO `tbl_posetting` (`possettingid`, `waiter`, `tableid`, `cooktime`) VALUES(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `ratingid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `reviewtxt` text DEFAULT NULL,
  `proid` int(11) NOT NULL,
  `rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `ratetime` datetime NOT NULL,
  PRIMARY KEY (`ratingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seoption`
--

DROP TABLE IF EXISTS `tbl_seoption`;
CREATE TABLE IF NOT EXISTS `tbl_seoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_slug` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_seoption`
--

INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(1, 'Bhojon Home page', 'home', 'restaurant,food,reservation', 'Best Restautant Management Software');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(3, 'Menu', 'menu', 'Desert,Meet,fish,meet,bevarage', 'Menu Page');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(4, 'Food Details', 'food_details', 'Meet,solt', 'Details foodÂ  information');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(5, 'Reservation', 'reservation', 'Table,booking,reservation', 'Table Reservation');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(6, 'Cart Page', 'cart_page', 'food,menu', 'Cart Page');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(7, 'Checkout', 'checkout', 'Checkout', 'Checkout');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(8, 'Login', 'login', 'Login', 'Login');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(9, 'Registration', 'registration', 'Registration', 'Registration');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(10, 'Payment information', 'payment_information', 'Online Payment information', 'Payment information');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(11, 'Stripe Payment information', 'stripe_payment_information', 'Stripe Payment', 'Stripe Payment information');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(12, 'About us', 'about_us', 'About restaurant', 'About us');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(13, 'Contact Us', 'contact_us', 'Contact Us', 'Contact Us');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(14, 'Privacy Policy', 'privacy_policy', 'privacy', 'Privacy Policy');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(15, 'Our Terms', 'our_terms', 'Our Terms', 'Our Terms');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(16, 'My Profile', 'my_profile', 'My Profile', 'My Profile');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(17, 'My Order List', 'my_order_list', 'My Order List', 'My Order List');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(18, 'View Order', 'view_order', 'View Order', 'View Order');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(19, 'My Reservation', 'my_reservation', 'My Reservation', 'My Reservation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shippingaddress`
--

DROP TABLE IF EXISTS `tbl_shippingaddress`;
CREATE TABLE IF NOT EXISTS `tbl_shippingaddress` (
  `shipaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`shipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `slid` int(11) NOT NULL AUTO_INCREMENT,
  `Sltypeid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `slink` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`slid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(1, 1, 'Welcome To', 'Book Your Table', '', '#', 1, 0, 1920, 902);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(2, 1, 'Find Your', 'Best Cafe Deals', '', '#', 1, 0, 1920, 902);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(3, 1, 'Exclusive', 'Coffee Shop', '', '#', 1, 0, 1920, 902);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(4, 2, 'Discover', 'OUR STORY', '', '#', 1, 0, 263, 332);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(5, 2, 'Discover', 'OUR STORY', '', '#', 1, 0, 263, 332);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(6, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 332);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(7, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 177);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(8, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 177);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(9, 4, 'right', 'ads', '', '#', 1, 0, 252, 621);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_type`
--

DROP TABLE IF EXISTS `tbl_slider_type`;
CREATE TABLE IF NOT EXISTS `tbl_slider_type` (
  `stype_id` int(11) NOT NULL AUTO_INCREMENT,
  `STypeName` varchar(255) DEFAULT NULL,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider_type`
--

INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(1, 'Home Top Slider', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(2, 'Home our story', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(3, 'Home our menu', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(4, 'Menu Page right Banner', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sociallink`
--

DROP TABLE IF EXISTS `tbl_sociallink`;
CREATE TABLE IF NOT EXISTS `tbl_sociallink` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `socialurl` text DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sociallink`
--

INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(1, 'Facebook', 'https://www.facebook.com', 'fab fa-facebook', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(2, 'Twitter', 'https://www.twitter.com', 'fab fa-twitter', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(3, 'Google Plus', 'https://plus.google.com', 'fab fa-google-plus', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(4, 'Pinterest', 'https://www.pinterest.com/', 'fab fa-pinterest', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(6, 'Linkedin', 'https://linkedin.com', 'fab fa-linkedin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

DROP TABLE IF EXISTS `tbl_state`;
CREATE TABLE IF NOT EXISTS `tbl_state` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(1, 2, 'Alabama', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(2, 2, 'Alaska', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(3, 2, 'Arizona', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(4, 2, 'Arkansas', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(5, 2, 'California', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(6, 2, 'Florida', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(7, 2, 'New Mexico', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(8, 2, 'New York', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(9, 2, 'Oklahoma', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(10, 2, 'Texas', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(11, 2, 'Virginia', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(12, 1, 'Dhaka', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(13, 1, 'Chittagong', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(14, 1, 'Rajshahi', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(15, 1, 'Khulna', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(16, 1, 'Sylhet', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(17, 1, 'Barishal', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(18, 1, 'Rangpur', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(19, 1, 'Mymensingh', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(20, 4, 'West Bengal', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(21, 4, 'Uttar Pradesh', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(22, 4, 'Tripura', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(23, 4, 'Telangana', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(24, 4, 'Tamil Nadu', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(25, 4, 'Sikkim', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(26, 4, 'Rajasthan', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(27, 4, 'Punjab', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(28, 4, 'Odisha', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(29, 4, 'Nagaland', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(30, 4, 'Kerala', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(31, 4, 'Haryana', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thirdparty_customer`
--

DROP TABLE IF EXISTS `tbl_thirdparty_customer`;
CREATE TABLE IF NOT EXISTS `tbl_thirdparty_customer` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `commision` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_thirdparty_customer`
--

INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(1, 'Food Panda', 'Dhaka', '5.00');
INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(2, 'pathao', 'Dhaka', '8.00');
INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(3, 'Hungrynaki', 'Dhaka', '5.00');
INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(4, 'Foodmart', 'Dhaka', '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
CREATE TABLE IF NOT EXISTS `tbl_token` (
  `tokenid` int(11) NOT NULL AUTO_INCREMENT,
  `tokencode` varchar(50) NOT NULL,
  `tokenrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tokenstartdate` date NOT NULL,
  `tokenendate` date NOT NULL,
  `tokenstatus` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tokenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_updateitems`
--

DROP TABLE IF EXISTS `tbl_updateitems`;
CREATE TABLE IF NOT EXISTS `tbl_updateitems` (
  `updateid` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `qty` float NOT NULL,
  `adonsqty` varchar(50) DEFAULT NULL,
  `addonsid` varchar(50) DEFAULT NULL,
  `varientid` int(11) NOT NULL,
  `insertdate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`updateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waiterappcart`
--

DROP TABLE IF EXISTS `tbl_waiterappcart`;
CREATE TABLE IF NOT EXISTS `tbl_waiterappcart` (
  `weaterappid` int(11) NOT NULL AUTO_INCREMENT,
  `waiterid` int(11) NOT NULL,
  `alladdOnsName` varchar(255) DEFAULT NULL,
  `total_addonsprice` decimal(10,2) DEFAULT 0.00,
  `totaladdons` int(11) DEFAULT NULL,
  `addons_name` varchar(255) DEFAULT NULL,
  `addons_id` int(11) DEFAULT NULL,
  `addons_price` double(10,2) DEFAULT 0.00,
  `addonsQty` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `destcription` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `offerIsavailable` int(11) DEFAULT 0,
  `offerstartdate` date DEFAULT '0000-00-00',
  `OffersRate` int(11) DEFAULT NULL,
  `offerendate` date DEFAULT '0000-00-00',
  `price` decimal(10,2) DEFAULT 0.00,
  `ProductsID` int(11) NOT NULL,
  `ProductImage` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `productvat` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `variantName` varchar(255) NOT NULL,
  `variantid` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`weaterappid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_widget`
--

DROP TABLE IF EXISTS `tbl_widget`;
CREATE TABLE IF NOT EXISTS `tbl_widget` (
  `widgetid` int(11) NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(100) NOT NULL,
  `widget_title` varchar(150) DEFAULT NULL,
  `widget_desc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`widgetid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_widget`
--

INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(1, 'Footer left', '', '<p class=\"text-justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(2, 'footermiddle', 'Opening Time', '<p><strong>Monday - Wednesday</strong> 10:00 AM - 7:00 PM</p>\r\n<p><strong>Thursday - Friday</strong> 10:00 AM - 11:00 PM</p>\r\n<p><strong>Saturday</strong> 12:00 PM - 6:00 PM</p>\r\n<p><strong>Sunday</strong> Off</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(3, 'Footer right', 'Contact Us', '<p>356, Mannan Plaza ( 4th Floar ) Khilkhet Dhaka</p>\r\n<p><a href=\"../../hungry\">support@bdtask.com</a></p>\r\n<p><a href=\"../../hungry\">+88 01715 222 333</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(4, 'Our Store', 'Our Store', '<address>123 Suspendis matti,&nbsp;<br />Visaosang Building VST District,&nbsp;<br />NY Accums, North American</address>\r\n<p><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">0123-456-78910</a><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">support@domain.com</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(6, 'Reservation', 'BOOK YOUR TABLE', '<p>Integer vitae enim vel nisi feugiat ultricies. Phasellus hendrerit pharetra posuere. In hac habitasse platea dictumst. Integer diam nulla,</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(7, 'Our Menu text', 'Our Menu ', '<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(8, 'Specials', 'FOOD MENU', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(9, 'story text', 'OUR STORY', '<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(10, 'Professional', 'OUR EXPERT CHEFS', '', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(11, 'Need Help Booking?', 'Need Help Booking?', '<p class=\"mb-2\">Just call our customer services at any time, we are waiting 24 hours to recieve your calls.</p>\r\n<p><a href=\"#\">+880 1712 123 123</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(12, 'Privacy', 'Privacy Policy', '<h2>What is Lorem Ipsum</h2>\r\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h3>Contacting us :</h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(13, 'termscondition', 'Terms of Use', '<h3>Web browser cookies</h3>\r\n<p>Our Site may use cache and \"cookies\" to enhance User experience. User\'s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p>\r\n<h3>How we use collected information bdtask may collect and use Users personal information for the following purposes:</h3>\r\n<p>To run and operate our Site We may need your information display content on the Site correctly. To improve customer service Information you provide helps us respond to your customer service requests and support needs more efficiently. To personalize user experience We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site. To improve our Site We may use feedback you provide to improve our products and services. To run a promotion, contest, survey or other Site feature To send Users information they agreed to receive about topics we think will be of interest to them. To send periodic emails We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(14, 'map', 'Google Map', '<p>&lt;iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.578237069936!2d90.3654215!3d23.8223482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1583411739085!5m2!1sen!2sbd\" width=\"300\" height=\"150\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"&gt;&lt;/iframe&gt;</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(15, 'carousal1', 'carousal', '<p>show</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `top_menu`
--

DROP TABLE IF EXISTS `top_menu`;
CREATE TABLE IF NOT EXISTS `top_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_slug` varchar(70) NOT NULL,
  `parentid` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_menu`
--

INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(1, 'Home', 'home', 0, '2019-12-31', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(2, 'Reservation', 'reservation', 0, '2019-02-20', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(3, 'Menu', 'menu', 0, '2019-01-26', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(4, 'About Us', 'about', 0, '2019-11-25', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(5, 'Contact Us', 'contact', 0, '2019-01-26', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(6, 'Pages', 'pages', 0, '2019-11-28', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(7, 'Cart', 'cart', 6, '2019-01-26', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(8, 'Details', 'details', 7, '2020-01-15', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(9, 'Logout', 'logout', 6, '2019-02-03', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(10, 'My Profile', 'myprofile', 0, '2019-10-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measurement`
--

DROP TABLE IF EXISTS `unit_of_measurement`;
CREATE TABLE IF NOT EXISTS `unit_of_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uom_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uom_short_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit_of_measurement`
--

INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(1, 'Kilogram', 'kg.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(2, 'Liter', 'ltr.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(3, 'Gram', 'grm.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(4, 'tonne', 'tn.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(5, 'milligram', 'mg.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(6, 'carat', 'carat', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(7, 'Per Pieces', 'pcs', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(8, 'Per Cup', 'cup', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(9, 'Pound', 'pnd.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(10, 'tablespoon', 'tspoon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usedcoupon`
--

DROP TABLE IF EXISTS `usedcoupon`;
CREATE TABLE IF NOT EXISTS `usedcoupon` (
  `cusedid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `couponcode` varchar(100) NOT NULL,
  `couponrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`cusedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `waiter_kitchenToken` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `waiter_kitchenToken`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `counter`, `status`, `is_admin`) VALUES(2, 'John', 'Doe', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '', 'admin@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m2.png', '2020-10-14 10:14:00', '2020-09-08 20:29:33', '::1', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
CREATE TABLE IF NOT EXISTS `variant` (
  `variantid` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) NOT NULL,
  `variantName` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`variantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weekly_holiday`
--

DROP TABLE IF EXISTS `weekly_holiday`;
CREATE TABLE IF NOT EXISTS `weekly_holiday` (
  `wk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`wk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weekly_holiday`
--

INSERT INTO `weekly_holiday` (`wk_id`, `dayname`) VALUES(1, 'Friday,Satarday,Sunday');
