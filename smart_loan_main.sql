-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2025 at 05:33 PM
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
-- Database: `smart_loan`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `headquarters` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bank_id`, `bank_name`, `headquarters`, `website`) VALUES
(1, 'State Bank of India', 'Corporate Centre, State Bank Bhavan, Nariman Point, Mumbai, Maharashtra', 'https://sbi.co.in'),
(2, 'South Indian Bank', 'SIB House, T.B. Road, Thrissur, Kerala', 'https://southindianbank.com'),
(3, 'HDFC Bank', 'HDFC Bank House, Senapati Bapat Marg, Lower Parel (West), Mumbai, Maharashtra', 'https://hdfcbank.com'),
(4, 'Urban Bank', 'Urban Cooperative Bank (location varies by branch)', NULL),
(5, 'ICICI Bank', 'ICICI Bank Towers, Bandra Kurla Complex, Mumbai, Maharashtra', 'https://icicibank.com'),
(6, 'Syndicate Bank', 'Manipal, Karnataka (now merged into Canara Bank)', NULL),
(7, 'Canara Bank', 'Bengaluru, Karnataka', 'https://canarabank.com'),
(8, 'Federal Bank', 'Aluva, Kerala', 'https://federalbank.co.in'),
(9, 'Co-operative Bank', 'Headquarters vary by branch/state', NULL),
(10, 'Axis Bank', 'Mumbai, Maharashtra', 'https://axisbank.com'),
(11, 'Indian Bank', 'Chennai, Tamil Nadu', 'https://indianbank.in'),
(12, 'Kerala Gramin Bank', 'Malappuram, Kerala', 'https://keralagbank.com'),
(101, 'ABC Bank', 'Kochi, Kerala', 'http://abc-bank.com'),
(102, '123 Bank', 'Mumbai, Maharashtra', 'http://123-bank.com'),
(103, 'XYZ Bank', 'Chennai, Tamil Nadu', 'http://xyz-bank.com'),
(104, 'aaba bank', 'vaduthala', 'http://aaba/dashboard/smart%20loan/pages/super_admin_banks.php');

-- --------------------------------------------------------

--
-- Table structure for table `bank_responses`
--

CREATE TABLE `bank_responses` (
  `response_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `response_type` enum('Approved','Rejected','More Info Required') NOT NULL,
  `message` text DEFAULT NULL,
  `contact_info` text DEFAULT NULL,
  `interest_rate_offered` decimal(5,2) DEFAULT NULL,
  `tenure_offered` int(11) DEFAULT NULL,
  `amount_approved` decimal(12,2) DEFAULT NULL,
  `responded_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_responses`
--

INSERT INTO `bank_responses` (`response_id`, `app_id`, `bank_id`, `response_type`, `message`, `contact_info`, `interest_rate_offered`, `tenure_offered`, `amount_approved`, `responded_by`, `created_at`) VALUES
(1, 10, 102, 'Approved', 'sup boi', NULL, 12.00, 23, 1000000000.00, 3, '2025-09-15 13:21:34'),
(2, 9, 101, 'Approved', 'done deal...!', NULL, 30.00, 360, 235355634.00, 2, '2025-09-15 13:27:44'),
(3, 9, 101, 'Approved', 'done deal...!', NULL, 30.00, 360, 235355634.00, 2, '2025-09-15 13:27:54'),
(4, 11, 103, 'Rejected', 'fek off', NULL, NULL, NULL, NULL, 4, '2025-09-15 13:28:30'),
(5, 13, 102, 'Rejected', 'podiiii', NULL, NULL, NULL, NULL, 3, '2025-09-18 06:43:10'),
(6, 19, 102, 'Approved', 'cyagekhcaycvhyjabd', NULL, 23.00, 20, 23434355.00, 3, '2025-09-19 04:08:51'),
(7, 22, 102, 'More Info Required', 'need more information\\r\\n', NULL, NULL, NULL, NULL, 3, '2025-09-19 07:38:03'),
(8, 22, 102, 'More Info Required', 'need more information\\r\\n', NULL, NULL, NULL, NULL, 3, '2025-09-19 07:47:18'),
(9, 16, 102, 'Rejected', 'rejected', NULL, NULL, NULL, NULL, 3, '2025-09-19 07:47:35'),
(10, 30, 101, 'Approved', 'approved', NULL, 17.70, 240, 10.00, 2, '2025-09-19 07:51:41'),
(11, 15, 101, 'Approved', 'ok', NULL, 21.00, 36, 123333.00, 2, '2025-10-25 09:31:16'),
(12, 41, 102, 'More Info Required', 'can i get ratio', NULL, NULL, NULL, NULL, 3, '2025-10-27 07:34:50'),
(13, 40, 101, 'Approved', 'ok', NULL, 14.00, 36, 1000000.00, 2, '2025-10-27 07:36:50'),
(14, 42, 103, 'Rejected', 'no', NULL, NULL, NULL, NULL, 4, '2025-10-27 07:37:18'),
(15, 44, 102, 'More Info Required', 'need aadhar', '9447961238', NULL, NULL, NULL, 3, '2025-10-27 08:45:50'),
(16, 47, 102, 'Approved', 'ok', NULL, 12.00, 24, 100000.00, 3, '2025-10-27 16:10:06'),
(17, 46, 101, 'Rejected', 'patoola mone', NULL, NULL, NULL, NULL, 2, '2025-10-27 16:10:39'),
(18, 48, 103, 'More Info Required', 'gpay 1000000', '9447961238', NULL, NULL, NULL, 4, '2025-10-27 16:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `eligibility_criteria`
--

CREATE TABLE `eligibility_criteria` (
  `criteria_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `criteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eligibility_criteria`
--

INSERT INTO `eligibility_criteria` (`criteria_id`, `loan_id`, `criteria`) VALUES
(1, 1, 'Salaried Indian nationals with SBI salary account; Age 21–60; Govt/Defence income ≥₹20K, Corporate ≥₹25K; Credit score ≥650/670.'),
(2, 2, 'Resident Indians/NRIs/OCIs; Age 18–70; Salaried income ≥₹15K/month, Self-employed ≥₹2L/year; FOIR <60%; Credit score ideally ≥750.'),
(3, 3, 'Age 21–70; Salaried income ≥₹3L/year, Self-employed ≥₹3L/year; Agricultural ≥₹4L/year; NRI Car Loan income ≥US$12K.'),
(4, 4, 'MSME with ≥5 years at same location; current account ≥2 years; annual credit transactions >₹50L; premises within 10 km.'),
(5, 5, 'MSME—proprietorship/partnership/private limited; promoter age 18–65; minimum 60% internal assessment score.'),
(6, 6, 'Udyam-registered MSME; minimum 60% internal assessment score.'),
(7, 7, 'Up to ₹250L (manufacturing) / ₹100L (trade/services); 12-month sanction validity.'),
(8, 8, 'Indian nationals; up to ₹7.5L collateral-free; above that requires collateral & co-borrower; margin 5% India/15% abroad.'),
(9, 9, 'Premier Indian institutions; up to ₹7.5L collateral-free; higher amounts require collateral; spouse or parent co-borrower allowed.'),
(10, 10, 'Foreign universities; up to ₹1.5 crore; admission letter & visa required.'),
(11, 11, 'Age ≥18; existing/new SBI housing loan borrowers; secured by gold jewelry.'),
(12, 12, 'Resident Indian; age 18–70; income ≥₹25K/month; property in approved urban area; CIBIL ≥650.'),
(13, 13, 'Salaried & self-employed; typical income ≥₹25K; credit score ~740; tenure up to 5 yrs.'),
(14, 14, 'For cooperative group members; flexible collateral & terms.'),
(15, 15, 'Short-term loan around festival season; tailored repayment.'),
(16, 16, 'Salaried/self-employed; income ≥₹25K; tenure up to 7 yrs.'),
(17, 17, 'Women’s two-wheeler financing; streamlined documentation.'),
(18, 18, 'For purchase of house; age ≤75 at maturity; self-employed & salaried eligible.'),
(19, 19, 'Funds for renovation, extension under mortgage.'),
(20, 20, 'Financing vacant plot purchase.'),
(21, 21, 'NRI/resident co-applicant; up to 70-year maturity.'),
(22, 22, '22 carat gold; no income proof needed.'),
(23, 23, 'Quick disbursal gold loans during emergencies.'),
(24, 24, 'Women-specific gold loan scheme.'),
(25, 25, 'Domestic/abroad; criteria per loan amount; up to ₹10–20L depending on course.'),
(26, 26, 'For vocational/trade skill courses.'),
(27, 27, 'Loan against own Fixed Deposit; minimal documentation.'),
(28, 28, 'Overdraft facility against FD.'),
(29, 29, 'Loan based on property LTV, age ≤65.'),
(30, 30, 'Small trader loans, simplified documents.'),
(31, 31, 'Working capital finance for MSMEs.'),
(32, 32, 'Loans for women, SHG, street vendors with relaxed terms.'),
(33, 33, 'Resident Indian, salaried or self employed; Age 21–60 years; Net monthly income ≥₹25,000 (₹20,000 in Tier-1 cities); Employment: Minimum 2 years total work experience, with ≥1 year at current employer; CIBIL Score: Minimum of 650; ideal 720+ for best rates.'),
(34, 34, 'Loan via credit card limit; subject to credit eligibility.'),
(35, 35, 'Pre-approved personal loan via credit card; minimal documentation.'),
(36, 36, 'Existing personal loan with ≥6 EMI paid; good CIBIL score.'),
(37, 37, 'Self employed individuals, proprietorships, partnership firms, or private limited companies involved in manufacturing, trading, or service sectors; turnover ≥₹40 lakh/year; 3 years in current business; business profitable for last 2 years; CIBIL ≥700.'),
(38, 38, 'Medium-term loans for established SMEs.'),
(39, 39, 'Working capital OD tied to GST returns.'),
(40, 40, 'Retail merchant overdraft.'),
(41, 41, 'Resident Indians (and NRIs for some products); Age: 21–65 years; Minimum gross salary ₹10,000/month; Credit Score ideally 650+.'),
(42, 42, 'Resident Indians, salaried or self-employed; Age 21–65 years; property must be freehold; income and credit evaluated.'),
(43, 43, 'Indian resident between 16 and 35 years old; admission to recognized full-time course in India or abroad; co-applicant mandatory.'),
(44, 44, 'Targeted at doctors, CAs, architects, company secretaries, dentists, physiotherapists; minimum income ₹1 lakh/year; experience ≥4–5 years depending on profession.'),
(45, 45, 'Indian resident aged 18–75 years with gold jewellery to pledge; no income proof or credit history required.'),
(46, 46, 'Age: 21–65 years; Indian citizen; salaried or self-employed with regular income; minimum net monthly income ₹15,000+; property must be legally clear and approved; good repayment history preferred.'),
(47, 47, 'Similar to Ghihasree Housing Loan eligibility.'),
(48, 48, 'Age: 21–60 years; salaried (min 6–12 months in job) or self-employed (2+ years in business); income ≥₹15,000/month; vehicle invoice/quotation required.'),
(49, 49, 'Loan for four-wheelers with same criteria as Urban Car Loan.'),
(50, 50, 'Age 21–58 (salaried) or 65 (self-employed); minimum 1 year employment (salaried) or 2 years in business; income ₹15K–₹25K/month; residence in bank service area.'),
(51, 51, 'Indian national with confirmed admission; co-applicant mandatory; age 18–35 years; good academic record; collateral for loans >₹7.5 lakh.'),
(52, 52, 'Age 18+; gold purity 18–24 carats; valid ID & address proof; no income proof required.'),
(53, 53, 'Women’s gold loan scheme; simplified documentation.'),
(54, 54, 'Age 25–65; property owned and legally clear; income proof required; CIBIL preferred for higher amounts.'),
(55, 55, 'Must hold a fixed deposit with the bank; no CIBIL or income proof required.'),
(56, 56, 'Overdraft facility against fixed deposit; same criteria as FD Loan.'),
(57, 57, 'Sole proprietorship, partnership, or company with minimum 2 years in business; trade license, GST, ITR required.'),
(58, 58, 'Working capital finance for MSMEs based on turnover and collateral.'),
(59, 59, 'Must belong to priority sector group such as SHG member, vendor, worker; minimal documentation; subsidy may apply.'),
(60, 60, 'Salaried: Age 23–60; Self-employed: Age 28–70; income ≥₹25K–₹30K/month; LTV 75–90% per RBI norms.'),
(61, 61, 'Salaried: Age 20–58; income ≥₹30K/month; min 2 years work experience; Self-employed: Age 23–65; business running ≥2 years; CIBIL preferred 700+.'),
(62, 62, 'Existing ICICI personal loan customers with good repayment record; minimum 12 EMIs paid.'),
(63, 63, 'Borrower must have an existing personal loan with another bank; transfer for lower rate; subject to CIBIL score.'),
(64, 64, 'NRIs with Indian co-borrower; valid income proof; good credit history.'),
(65, 65, 'Indian citizen; Age 16–35; confirmed admission; India: up to ₹1 crore; Abroad: up to ₹3 crore; collateral for high amounts; co-borrower mandatory.'),
(66, 66, 'Salaried: Age 20–65; min annual gross income ₹2.5 lakh; Self-employed: min ₹2–3 lakh/year; tenure up to 7 years; CIBIL ≥750 preferred.'),
(67, 67, 'Loan for bikes/scooters; flexible tenure; proof of income required.'),
(68, 68, 'Non-professional self-employed: min 28 years; ≥5 years in business; turnover ≥₹40 lakh; PAT ≥₹2 lakh/year; professionals (e.g., doctors, CAs): min 25 years; turnover ≥₹15 lakh.'),
(69, 69, 'Long-term business expansion funding; secured/unsecured; eligibility based on turnover and profitability.'),
(70, 70, 'Working capital finance linked to sales; must have ICICI account; min turnover norms.'),
(71, 71, 'OD based on GST returns; fast approval; GST registration required.'),
(72, 72, 'Pre-approved overdraft limit for eligible ICICI customers.'),
(73, 73, 'Collateral-free SME loans up to ₹2 crore; good repayment track record.'),
(74, 74, 'Age 18–70; pledge gold jewellery; loan amount ₹10K–₹1 crore; no income proof required.'),
(75, 75, 'Salaried/self-employed; Age 21–60; steady income proof required.'),
(76, 76, 'Resident Indians; Age up to 70 at maturity; income-based eligibility.'),
(77, 77, 'Age 21–65; income proof and vehicle documents required.'),
(78, 78, 'Indian nationals; confirmed admission; co-borrower mandatory.'),
(79, 79, 'Age 18+; pledge 22-carat gold jewellery; KYC mandatory.'),
(80, 80, 'Age 21–60; salaried/self-employed; income proof required.'),
(81, 81, 'Age 18–70; LTV up to 90%; income and credit score assessed.'),
(82, 82, 'Income and age norms per product type; proof of employment or business.'),
(83, 83, 'Indian nationals for study in India/abroad; collateral norms as per amount.'),
(84, 84, 'Pledge of gold ornaments; quick disbursal; minimal documentation.'),
(85, 85, 'Salaried/self-employed; minimum ₹25K/month; CIBIL ≥650; proof of employment/business.'),
(86, 86, 'Resident/NRI; LTV and eligibility per RBI norms; income and credit score evaluated.'),
(87, 87, 'Loan for new/used vehicles; tenure up to 7 years; income proof required.'),
(88, 88, 'For Indian students studying in India/abroad; collateral for higher amounts; co-borrower mandatory.'),
(89, 89, 'Pledge gold jewellery; instant approval; minimal documentation.'),
(90, 90, 'Residential/commercial property as collateral; age and repayment capacity checked.'),
(91, 91, 'Local resident; property in approved area; income proof required.'),
(92, 92, 'Bank member; steady income; guarantor may be required.'),
(93, 93, 'Proof of income; local residency; vehicle invoice required.'),
(94, 94, 'Confirmed admission; co-applicant mandatory; collateral for higher loans.'),
(95, 95, 'Pledge of gold ornaments; minimal documentation.'),
(96, 96, 'Property mortgage; repayment capacity evaluated.'),
(97, 97, 'For traders/MSMEs; collateral required; GST and trade license preferred.'),
(98, 98, 'Salaried/self-employed; min income ₹15K–₹25K/month; CIBIL ≥650.'),
(99, 99, 'LTV up to 90%; age and income per bank norms; proof of employment/business.'),
(100, 100, 'Loan for new/used cars; tenure up to 7 years; income proof required.'),
(101, 101, 'Indian students; domestic/abroad courses; collateral norms based on loan amount.'),
(102, 102, 'Pledge 22-carat gold jewellery; instant processing.'),
(103, 103, 'Residential/commercial property; LTV up to 75%; repayment capacity assessed.'),
(104, 104, 'SMEs with minimum turnover requirement; proof of business existence.'),
(105, 105, 'Salaried/self-employed; proof of income; good repayment history.'),
(106, 106, 'LTV up to 90%; tenure up to 30 years; age and income norms apply.'),
(107, 107, 'Loan for new/used vehicles; proof of income and vehicle documents required.'),
(108, 108, 'Domestic/abroad study; collateral norms as per RBI guidelines.'),
(109, 109, 'Pledge of gold jewellery; same-day disbursal; minimal documentation.'),
(110, 110, 'Resident of Kerala; salaried/self-employed; income proof required.'),
(111, 111, 'Resident/NRI; property must be in Kerala; income and repayment capacity checked.'),
(112, 112, 'Loan for new/used vehicles; tenure up to 7 years; proof of ownership.'),
(113, 113, 'Kerala students studying in India/abroad; collateral norms for higher amounts.'),
(114, 114, 'Pledge gold ornaments; instant processing; no income proof required.'),
(115, 115, 'MSMEs based in Kerala; collateral norms as per product; business proof mandatory.');

-- --------------------------------------------------------

--
-- Table structure for table `gold_loan_details`
--

CREATE TABLE `gold_loan_details` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `ltv_ratio` decimal(5,2) NOT NULL,
  `processing_fee` decimal(5,2) NOT NULL,
  `key_features` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gold_loan_details`
--

INSERT INTO `gold_loan_details` (`id`, `bank_name`, `interest_rate`, `ltv_ratio`, `processing_fee`, `key_features`, `created_at`) VALUES
(6, 'State Bank of India (SBI)', 9.00, 75.00, 1.00, 'Trusted bank, wide reach, flexible repayment', '2025-09-13 17:32:34'),
(7, 'South Indian Bank', 9.50, 75.00, 1.00, 'Flexible tenure, fast processing', '2025-09-17 17:26:45'),
(8, 'Union Bank of India (Urban Bank)', 8.95, 75.00, 1.00, 'Low starting rate, reliable service', '2025-09-13 17:32:34'),
(9, 'ICICI Bank', 9.15, 70.00, 1.25, 'Multiple schemes, easy digital application', '2025-09-13 17:32:34'),
(10, 'Canara Bank', 8.80, 75.00, 1.00, 'Competitive rates, government-backed', '2025-09-13 17:32:34'),
(11, 'Co op Bank / Federal Bank', 8.99, 12.00, 1.00, 'Simple processing, accessible branches', '2025-09-19 08:09:25'),
(12, 'Kerala Gramin Bank (Gramin Bank)', 11.99, 75.00, 1.00, 'Rural reach, simple documentation', '2025-09-13 17:32:34'),
(13, 'HDFC Bank', 9.30, 75.00, 1.00, 'Instant disbursal, trusted private bank', '2025-09-13 17:32:34'),
(14, 'Axis Bank', 17.00, 75.00, 1.50, 'Quick approval, flexible repayment', '2025-09-13 17:32:34'),
(15, 'Indian Bank', 8.80, 75.00, 1.00, 'Low rates, government bank', '2025-09-13 17:32:34'),
(16, 'Punjab National Bank (PNB)', 8.35, 75.00, 1.00, 'Attractive rates, flexible repayment', '2025-09-13 17:32:34'),
(17, 'Kotak Mahindra Bank', 9.00, 75.00, 1.50, 'Wide range of schemes, easy process', '2025-09-13 17:32:34'),
(18, 'aaba bank', 30.00, 30.00, 30.00, 'best gold loan', '2025-10-27 16:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `gold_rates`
--

CREATE TABLE `gold_rates` (
  `rate_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `rate_per_gram` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gold_rates`
--

INSERT INTO `gold_rates` (`rate_id`, `date`, `rate_per_gram`) VALUES
(1, '2025-09-10', 4850.00),
(2, '2025-09-17', 4900.00),
(3, '2025-09-19', 0.01),
(4, '2025-10-27', 870000.00);

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

CREATE TABLE `loan_applications` (
  `app_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bank_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `monthly_income` decimal(10,2) NOT NULL,
  `loan_amount` decimal(12,2) NOT NULL,
  `tenure` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `response_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`app_id`, `user_id`, `bank_id`, `full_name`, `email`, `phone`, `monthly_income`, `loan_amount`, `tenure`, `purpose`, `status`, `created_at`, `response_id`) VALUES
(9, 6, 101, 'Aldrin Martin', 'aldrinmartin2005@gmail.com', '9447961238', 1200000.00, 1000000.00, 36, 'ode to mets-the strokes', 'Approved', '2025-09-13 16:23:17', 3),
(10, 6, 102, 'Aldrin Martin', 'aldrinmartin2005@gmail.com', '9447961238', 1200000.00, 1000000.00, 36, 'ode to mets-the strokes', 'Approved', '2025-09-13 16:23:17', 1),
(11, 6, 103, 'Aldrin Martin', 'aldrinmartin2005@gmail.com', '9447961238', 1200000.00, 1000000.00, 36, 'ode to mets-the strokes', 'Rejected', '2025-09-13 16:23:17', 4),
(12, 9, 101, 'Aaba peter', 'aabapeterxc@gmail.com', '9645629644', 25000.00, 50000.00, 12, 'laptop', 'Pending', '2025-09-18 06:40:18', NULL),
(13, 9, 102, 'Aaba peter', 'aabapeterxc@gmail.com', '9645629644', 25000.00, 50000.00, 12, 'laptop', 'Rejected', '2025-09-18 06:40:18', 5),
(14, 9, 103, 'Aaba peter', 'aabapeterxc@gmail.com', '9645629644', 25000.00, 50000.00, 12, 'laptop', 'Pending', '2025-09-18 06:40:18', NULL),
(15, 9, 101, 'Aldrin Martin', 'aldrinmartin2005@gmail.com', '9447961238', 20000000.00, 100000000.00, 12, 'rolls royce', 'Approved', '2025-09-19 03:21:40', 11),
(16, 9, 102, 'Aldrin Martin', 'aldrinmartin2005@gmail.com', '9447961238', 20000000.00, 100000000.00, 12, 'rolls royce', 'Rejected', '2025-09-19 03:21:40', 9),
(17, 9, 103, 'Aldrin Martin', 'aldrinmartin2005@gmail.com', '9447961238', 20000000.00, 100000000.00, 12, 'rolls royce', 'Pending', '2025-09-19 03:21:40', NULL),
(18, 6, 101, 'Aaba peter', 'aldrinmartin2005@gmail.com', '9447961238', 99999999.99, 563542342.00, 21, 'shopping', 'Pending', '2025-09-19 04:07:39', NULL),
(19, 6, 102, 'Aaba peter', 'aldrinmartin2005@gmail.com', '9447961238', 99999999.99, 563542342.00, 21, 'shopping', 'Approved', '2025-09-19 04:07:39', 6),
(20, 6, 103, 'Aaba peter', 'aldrinmartin2005@gmail.com', '9447961238', 99999999.99, 563542342.00, 21, 'shopping', 'Pending', '2025-09-19 04:07:39', NULL),
(21, 10, 101, 'Demo', 'demo@gmail.com', '9000010010', 1200000.00, 9999999999.99, 12, 'personal loan', 'Pending', '2025-09-19 07:34:46', NULL),
(22, 10, 102, 'Demo', 'demo@gmail.com', '9000010010', 1200000.00, 9999999999.99, 12, 'personal loan', '', '2025-09-19 07:34:46', 8),
(23, 10, 103, 'Demo', 'demo@gmail.com', '9000010010', 1200000.00, 9999999999.99, 12, 'personal loan', 'Pending', '2025-09-19 07:34:46', NULL),
(24, 3, 101, 'Demo', 'demo@gmail.com', '9000010010', 1200000.00, 9999999999.99, 12, 'personal loan', 'Pending', '2025-09-19 07:39:31', NULL),
(25, 3, 102, 'Demo', 'demo@gmail.com', '9000010010', 1200000.00, 9999999999.99, 12, 'personal loan', 'Rejected', '2025-09-19 07:39:31', NULL),
(26, 3, 103, 'Demo', 'demo@gmail.com', '9000010010', 1200000.00, 9999999999.99, 12, 'personal loan', 'Pending', '2025-09-19 07:39:31', NULL),
(30, 3, 101, 'Demo1', 'demo@gmail.com', '12121212121212', 12.00, 9999999999.99, 1212, 'loan', 'Approved', '2025-09-19 07:48:27', 10),
(31, 3, 102, 'Demo1', 'demo@gmail.com', '12121212121212', 12.00, 9999999999.99, 1212, 'loan', 'Pending', '2025-09-19 07:48:27', NULL),
(32, 3, 103, 'Demo1', 'demo@gmail.com', '12121212121212', 12.00, 9999999999.99, 1212, 'loan', 'Pending', '2025-09-19 07:48:27', NULL),
(33, 6, 0, 'Aldrin', 'aldrinmartin2005@gmail.com', '9645629654', 7.00, 232332.00, 60, 'she looks just like a dream the pretteiest girl iever seen', 'Pending', '2025-09-22 06:58:21', NULL),
(34, 6, 0, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 23.00, 100.00, 60, 'hi', 'Pending', '2025-10-25 06:46:33', NULL),
(35, 6, 0, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 213.00, 100000.00, 60, 'fun', 'Pending', '2025-10-25 06:54:42', NULL),
(36, 6, 0, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 12, 'hi', 'Pending', '2025-10-25 09:28:56', NULL),
(37, 10, 0, 'Demo', 'aldrinmartin2005@gmail.com', '9447961238', 10000.00, 100000.00, 36, 'hi', 'Pending', '2025-10-27 05:36:35', NULL),
(38, 6, 0, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 24, 'hello', 'Pending', '2025-10-27 07:17:47', NULL),
(39, 6, 101, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 200000.00, 200000.00, 36, '232313', 'Pending', '2025-10-27 07:18:57', NULL),
(40, 6, 101, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 36, 'hello', 'Approved', '2025-10-27 07:33:23', 13),
(41, 6, 102, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 36, 'hello', '', '2025-10-27 07:33:23', 12),
(42, 6, 103, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 36, 'hello', 'Rejected', '2025-10-27 07:33:23', 14),
(43, 6, 101, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 369000.00, 3000000.00, 24, 'desk', 'Pending', '2025-10-27 08:44:49', NULL),
(44, 6, 102, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 369000.00, 3000000.00, 24, 'desk', '', '2025-10-27 08:44:49', 15),
(45, 6, 103, 'Aldrin', 'aldrinmartin2005@gmail.com', '9447961238', 369000.00, 3000000.00, 24, 'desk', 'Pending', '2025-10-27 08:44:49', NULL),
(46, 12, 101, 'damn', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 24, 'veruthe', 'Rejected', '2025-10-27 15:59:35', 17),
(47, 12, 102, 'damn', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 24, 'veruthe', 'Approved', '2025-10-27 15:59:35', 16),
(48, 12, 103, 'damn', 'aldrinmartin2005@gmail.com', '9447961238', 100000.00, 100000.00, 24, 'veruthe', '', '2025-10-27 15:59:35', 18);

-- --------------------------------------------------------

--
-- Table structure for table `loan_schemes`
--

CREATE TABLE `loan_schemes` (
  `loan_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `loan_name` varchar(255) NOT NULL,
  `loan_type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_schemes`
--

INSERT INTO `loan_schemes` (`loan_id`, `bank_id`, `loan_name`, `loan_type`, `description`) VALUES
(1, 1, 'SBI Personal Loan', 'Personal Loan', 'Salaried Indian nationals with SBI salary account; Age 21–60; Govt/Defence income ≥₹20K, Corporate ≥₹25K; Credit score ≥650/670.'),
(2, 1, 'SBI Home Loan', 'Home Loan', 'Resident Indians/NRIs/OCIs; Age 18–70; Salaried income ≥₹15K/month, Self-employed ≥₹2L/year; FOIR <60%; Credit score ideally ≥750.'),
(3, 1, 'SBI Car Loan', 'Car Loan', 'Age 21–70; Salaried income ≥₹3L/year, Self-employed ≥₹3L/year; Agricultural ≥₹4L/year; NRI Car Loan income ≥US$12K.'),
(4, 1, 'SBI Simplified Small Business Loan', 'Business Loan', 'MSME with ≥5 years at same location; current account ≥2 years; annual credit transactions >₹50L; premises within 10 km.'),
(5, 1, 'SBI SME Smart Score Loan', 'Business Loan', 'MSME—proprietorship/partnership/private limited; promoter age 18–65; minimum 60% internal assessment score.'),
(6, 1, 'SBI SME Credit Card', 'Business Loan', 'Udyam-registered MSME; minimum 60% internal assessment score.'),
(7, 1, 'SBI SME Open Term Loan', 'Business Loan', 'Up to ₹250L (manufacturing) / ₹100L (trade/services); 12-month sanction validity.'),
(8, 1, 'SBI Regular Student Loan Scheme', 'Educational Loan', 'Indian nationals; up to ₹7.5L collateral-free; above that requires collateral & co-borrower; margin 5% India/15% abroad.'),
(9, 1, 'SBI Scholar Loan Scheme', 'Educational Loan', 'Premier Indian institutions; up to ₹7.5L collateral-free; higher amounts require collateral; spouse or parent co-borrower allowed.'),
(10, 1, 'SBI Global Ed-Vantage Scheme', 'Educational Loan', 'Foreign universities; up to ₹1.5 crore; admission letter & visa required.'),
(11, 1, 'SBI Gold Loan', 'Gold Loan', 'Age ≥18; existing/new SBI housing loan borrowers; secured by gold jewelry.'),
(12, 1, 'SBI Loan Against Property', 'Loan Against Property', 'Resident Indian; age 18–70; income ≥₹25K/month; property in approved urban area; CIBIL ≥650.'),
(13, 2, 'SIB Personal Loan', 'Personal Loan', 'Salaried & self-employed; typical income ≥₹25K; credit score ~740; tenure up to 5 yrs.'),
(14, 2, 'SIB Group Personal Loan', 'Personal Loan', 'For cooperative group members; flexible collateral & terms.'),
(15, 2, 'SIB Festival Loan', 'Personal Loan', 'Short-term loan around festival season; tailored repayment.'),
(16, 2, 'SIB Car Loan (New/Used)', 'Car Loan', 'Salaried/self-employed; income ≥₹25K; tenure up to 7 yrs.'),
(17, 2, 'SIB Two-Wheeler Loan', 'Car Loan', 'Women’s two-wheeler financing; streamlined docs.'),
(18, 2, 'SIB Housing Loan', 'Home Loan', 'For purchase of house; age ≤75 at maturity; self-employed & salaried eligible.'),
(19, 2, 'SIB Home Extn/Reno Loan', 'Home Loan', 'Funds for renovation, extension under mortgage.'),
(20, 2, 'SIB Plot Loan', 'Home Loan', 'Financing vacant plot purchase.'),
(21, 2, 'SIB NRI Home Loan', 'Home Loan', 'NRI/resident co-applicant; up to 70-year maturity.'),
(22, 2, 'SIB Gold Loan – Personal', 'Gold Loan', '22 carat gold; no income proof needed.'),
(23, 2, 'SIB Emergency Gold Loan', 'Gold Loan', 'Quick disbursal gold loans during emergencies.'),
(24, 2, 'SIB Vanitha Mithram', 'Gold Loan', 'Women-specific gold loan scheme.'),
(25, 2, 'SIB Education Loan', 'Educational Loan', 'Domestic/abroad; criteria per loan amount; up to ₹10–20L depending on course.'),
(26, 2, 'SIB Skill Loan', 'Educational Loan', 'For vocational/trade skill courses.'),
(27, 2, 'SIB FD Loan', 'Deposit Loan', 'Loan against own Fixed Deposit; minimal documentation.'),
(28, 2, 'SIB OD against FD', 'Deposit Loan', 'Overdraft facility against FD.'),
(29, 2, 'SIB LAP (Urban)', 'Loan Against Property', 'Loan based on property LTV, age ≤65.'),
(30, 2, 'SIB Merchant’s Loan', 'Business Loan', 'Small trader loans, simplified docs.'),
(31, 2, 'SIB Traders / MSME Cash Credit', 'Business Loan', 'Working capital finance for MSMEs.'),
(32, 2, 'SIB Priority Special Loan', 'Priority Sector Loan', 'Loans for women, SHG, street vendors with relaxed terms.'),
(33, 3, 'HDFC Personal Loan', 'Personal Loan', 'Salaried: age 21–60; 2 yrs exp with ≥1 at current; min net ₹25K/month; CIBIL ≥650 :contentReference[oaicite:0]{index=0}.'),
(34, 3, 'HDFC Credit Card Jumbo Loan', 'Personal Loan', 'Loan via credit card limit; subject to credit eligibility.'),
(35, 3, 'HDFC Insta Jumbo Loan', 'Personal Loan', 'Pre-approved personal loan via CC; minimal docs.'),
(36, 3, 'HDFC Top-Up on Personal Loan', 'Personal Loan', 'Existing PL with ≥6 EMI paid; good CIBIL :contentReference[oaicite:1]{index=1}.'),
(37, 3, 'HDFC Business Loan - Xpress', 'Business Loan', 'SME loan; criteria vary by product.'),
(38, 3, 'HDFC Term Loan for SMEs', 'Business Loan', 'Medium-term loans for established SMEs.'),
(39, 3, 'HDFC Xpress GST OD', 'Business Loan', 'Working capital OD tied to GST books.'),
(40, 3, 'HDFC Dukandar Overdraft', 'Business Loan', 'Retail merchant overdraft.'),
(41, 3, 'HDFC Home Loan', 'Home Loan', 'Residents/NRIs; age caps; income & score evaluated.'),
(42, 3, 'HDFC Loan Against Property', 'Loan Against Property', 'Loan based on existing property LTV.'),
(43, 3, 'HDFC Education Loan', 'Educational Loan', 'Domestic/abroad; as per course cost & profile.'),
(44, 3, 'HDFC Professional Loan', 'Professional Loan', 'Doctors/CAs/Architects & pros with ≥4–5 yrs experience; min ₹1L/year income.'),
(45, 3, 'HDFC Gold Loan', 'Gold Loan', '18–75 yrs; gold pledged; no income proof or credit check.'),
(46, 4, 'Ghihasree Housing Loan', 'Home Loan', 'Urban citizens; age 21–65; net income ≥₹15K; clear title property required.'),
(47, 4, 'Dream Housing Loan', 'Home Loan', 'Home purchase; similar eligibility.'),
(48, 4, 'Urban Car Loan', 'Vehicle Loan', 'Income ≥₹15K/month; 1-2 yrs employment inertia; vehicle docs required.'),
(49, 4, 'Urban Vahan Loan', 'Vehicle Loan', 'Loan for 4-wheelers.'),
(50, 4, 'Urban Personal Loan', 'Personal Loan', 'Age 21–58 (salaried) or 65 (self-employed); income ≥₹15K/month; local residency; KYC/guarantor.'),
(51, 4, 'Urban Education Loan', 'Educational Loan', 'Indian nationals with admission; co-applicant required; collateral for >₹7.5L.'),
(52, 4, 'Emergency Gold Loan', 'Gold Loan', '18+ yrs; pledge 18–24 ct gold; KYC only.'),
(53, 4, 'Vanitha Mithram', 'Gold Loan', 'Women’s gold loan; simplified docs.'),
(54, 4, 'Urban LAP', 'Loan Against Property', '25–65 yrs; income proof, property in name; good CIBIL preferred.'),
(55, 4, 'Urban FD Loan', 'Deposit Loan', 'Collateral is FD; no income/CIBIL check.'),
(56, 4, 'Urban OD against FD', 'Deposit Loan', 'Overdraft against FD.'),
(57, 4, 'Urban Merchant’s Loan', 'Business Loan', 'Trade license, GST, ITR required; min 2 yrs vintage.'),
(58, 4, 'MSME/Traders CC', 'Business Loan', 'Working capital limit per turnover; collateral as needed.'),
(59, 4, 'Priority Sector Special Scheme', 'Priority Sector Loan', 'Low-income/vocational category; minimal docs; subsidized.'),
(60, 5, 'ICICI Home Loan', 'Home Loan', 'Salaried: 23–60 yrs; Self-employed: 28–70 yrs; income ≥₹25K–₹30K/month; LTV 75–90%.'),
(61, 5, 'ICICI Personal Loan', 'Personal Loan', 'Salaried: 20–58 yrs; income ≥₹30K; Self-employed: 23–65 yrs; business ≥2 yrs.'),
(62, 5, 'Top-up Personal Loan', 'Personal Loan', 'Existing borrowers with good repayment track; minimal extra docs.'),
(63, 5, 'Balance Transfer (PL)', 'Personal Loan', 'Shift existing PL to ICICI for lower rate.'),
(64, 5, 'NRI Personal Loan', 'Personal Loan', 'NRIs with Indian co-borrower; income proof required.'),
(65, 5, 'ICICI Education Loan', 'Educational Loan', 'India: up to ₹1 crore; Abroad: up to ₹3 crore; collateral for high amounts.'),
(66, 5, 'ICICI Car Loan', 'Car Loan', '20–65 yrs; income ≥₹2–3 lakh/year; tenure up to 7 yrs.'),
(67, 5, 'ICICI Two-Wheeler Loan', 'Car Loan', 'Loan for bikes/scooters; flexible tenure.'),
(68, 5, 'ICICI Commercial Business Loan', 'Business Loan', '≥28 yrs; ≥5 yrs in business; turnover ≥₹40 lakh; PAT ≥₹2 lakh/year.'),
(69, 5, 'ICICI Term Loan', 'Business Loan', 'Long-term funding for expansion; secured/unsecured.'),
(70, 5, 'ICICI Working Capital', 'Business Loan', 'Cash credit/OD facilities tied to sales.'),
(71, 5, 'ICICI GST Business Loan', 'Business Loan', 'OD based on GST returns; quick processing.'),
(72, 5, 'ICICI Insta OD Plus', 'Business Loan', 'Pre-approved OD limit.'),
(73, 5, 'ICICI Collateral Free Loans', 'Business Loan', 'Unsecured SME loans; up to ₹2 crore.'),
(74, 5, 'ICICI Gold Loan', 'Gold Loan', '18–70 yrs; pledge gold jewellery; min ₹10K, max ₹1 crore.'),
(75, 6, 'Syndicate Personal Loan', 'Personal Loan', 'Salaried/self-employed; age 21–60; steady income required.'),
(76, 6, 'Syndicate Home Loan', 'Home Loan', 'Resident Indians; age up to 70; income-based eligibility.'),
(77, 6, 'Syndicate Car Loan', 'Car Loan', 'Age 21–65; income proof required.'),
(78, 6, 'Syndicate Education Loan', 'Educational Loan', 'Indian nationals; admission confirmed; co-borrower mandatory.'),
(79, 6, 'Syndicate Gold Loan', 'Gold Loan', '18+ yrs; pledge 22 ct gold jewellery.'),
(80, 7, 'Canara Personal Loan', 'Personal Loan', '21–60 yrs; salaried/self-employed; income proof required.'),
(81, 7, 'Canara Home Loan', 'Home Loan', '18–70 yrs; LTV up to 90%.'),
(82, 7, 'Canara Car Loan', 'Car Loan', 'Income & age norms per product.'),
(83, 7, 'Canara Education Loan', 'Educational Loan', 'India & abroad; collateral per amount.'),
(84, 7, 'Canara Gold Loan', 'Gold Loan', 'Pledge of gold ornaments; quick disbursal.'),
(85, 8, 'Federal Personal Loan', 'Personal Loan', 'Salaried/self-employed; min ₹25K/month; CIBIL 650+.'),
(86, 8, 'Federal Home Loan', 'Home Loan', 'Resident/NRI; LTV per RBI norms.'),
(87, 8, 'Federal Car Loan', 'Car Loan', 'New/used vehicles; tenure up to 7 yrs.'),
(88, 8, 'Federal Education Loan', 'Educational Loan', 'India & abroad; collateral for higher limits.'),
(89, 8, 'Federal Gold Loan', 'Gold Loan', 'Pledge of gold jewellery; instant approval.'),
(90, 8, 'Federal LAP', 'Loan Against Property', 'Residential/commercial property as security.'),
(91, 9, 'Co-op Home Loan', 'Home Loan', 'Local residents; property in approved area.'),
(92, 9, 'Co-op Personal Loan', 'Personal Loan', 'Member of bank; steady income; guarantor may be needed.'),
(93, 9, 'Co-op Vehicle Loan', 'Vehicle Loan', 'Proof of income; local residency.'),
(94, 9, 'Co-op Education Loan', 'Educational Loan', 'Admission confirmed; co-applicant required.'),
(95, 9, 'Co-op Gold Loan', 'Gold Loan', 'Pledge of gold; minimal docs.'),
(96, 9, 'Co-op LAP', 'Loan Against Property', 'Property mortgage; repayment capacity checked.'),
(97, 9, 'Co-op Business Loan', 'Business Loan', 'For traders/MSMEs; collateral required.'),
(98, 10, 'Axis Personal Loan', 'Personal Loan', 'Salaried/self-employed; min income ₹15K–25K/month; CIBIL ≥650.'),
(99, 10, 'Axis Home Loan', 'Home Loan', 'LTV up to 90%; age & income norms apply.'),
(100, 10, 'Axis Car Loan', 'Car Loan', 'New/used cars; tenure up to 7 yrs.'),
(101, 10, 'Axis Education Loan', 'Educational Loan', 'Courses in India & abroad; collateral norms as per amount.'),
(102, 10, 'Axis Gold Loan', 'Gold Loan', 'Pledge 22 ct gold jewellery.'),
(103, 10, 'Axis LAP', 'Loan Against Property', 'Residential/commercial property; LTV up to 75%.'),
(104, 10, 'Axis Business Loan', 'Business Loan', 'SMEs with min turnover requirement.'),
(105, 11, 'Indian Bank Personal Loan', 'Personal Loan', 'Salaried/self-employed; proof of income; good repayment track.'),
(106, 11, 'Indian Bank Home Loan', 'Home Loan', 'LTV up to 90%; tenure up to 30 yrs.'),
(107, 11, 'Indian Bank Car Loan', 'Car Loan', 'Loan for new & used vehicles.'),
(108, 11, 'Indian Bank Education Loan', 'Educational Loan', 'Domestic/abroad; collateral norms per RBI.'),
(109, 11, 'Indian Bank Gold Loan', 'Gold Loan', 'Pledge of gold jewellery; same-day disbursal.'),
(110, 12, 'KGB Personal Loan', 'Personal Loan', 'Residents of Kerala; salaried/self-employed.'),
(111, 12, 'KGB Home Loan', 'Home Loan', 'Resident/NRI; property in Kerala.'),
(112, 12, 'KGB Car Loan', 'Car Loan', 'New/used vehicles; tenure up to 7 yrs.'),
(113, 12, 'KGB Education Loan', 'Educational Loan', 'Kerala students; India & abroad.'),
(114, 12, 'KGB Gold Loan', 'Gold Loan', 'Pledge gold ornaments; instant processing.'),
(115, 12, 'KGB Business Loan', 'Business Loan', 'MSMEs; collateral norms as per product.'),
(125, 101, 'abc providence', 'personal loan', 'for personal use and commercial alos if  you want . who am i i to say . all i want you to know is its very quick and easy loan for small small intrest rate of 69%'),
(127, 102, 'king of pirates', 'personal loan', 'orewa monkey d luffy kaiza ku oni naru'),
(128, 103, 'Going Mary', 'Business Loan', 'to sail the 7 seas'),
(129, 104, 'aaba loan', 'fun loan', 'my daddy is rich');

-- --------------------------------------------------------

--
-- Table structure for table `loan_types`
--

CREATE TABLE `loan_types` (
  `loan_type_id` int(11) NOT NULL,
  `loan_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_types`
--

INSERT INTO `loan_types` (`loan_type_id`, `loan_type`) VALUES
(1, 'Personal Loan'),
(2, 'Home Loan'),
(3, 'Gold Loan'),
(4, 'Education Loan'),
(5, 'Car Loan'),
(6, 'Business Loan'),
(7, 'Property Loan');

-- --------------------------------------------------------

--
-- Table structure for table `nbfc_gold_loan_details`
--

CREATE TABLE `nbfc_gold_loan_details` (
  `id` int(11) NOT NULL,
  `nbfc_name` varchar(255) NOT NULL,
  `interest_rate` varchar(50) NOT NULL,
  `ltv_ratio` decimal(5,2) DEFAULT 75.00,
  `processing_fee` decimal(5,2) DEFAULT 1.00,
  `key_features` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nbfc_gold_loan_details`
--

INSERT INTO `nbfc_gold_loan_details` (`id`, `nbfc_name`, `interest_rate`, `ltv_ratio`, `processing_fee`, `key_features`, `created_at`) VALUES
(1, 'Muthoot Finance', '10.90% p.a.', 75.00, 1.00, 'India’s largest gold loan provider, trusted brand', '2025-09-13 17:36:54'),
(2, 'Manappuram Finance', '9.90%–24% p.a.', 75.00, 1.25, 'Wide rural reach, flexible repayment', '2025-09-13 17:36:54'),
(3, 'Bajaj Finserv', '9.50%–25% p.a.', 75.00, 1.50, 'Fast processing, digital services, multiple schemes', '2025-09-13 17:36:54'),
(4, 'IIFL Finance', '11.88%–27% p.a.', 70.00, 1.50, 'Instant approval, higher ticket loans', '2025-09-13 17:36:54'),
(5, 'Lulu Finserv', '12%–24% p.a.', 75.00, 1.25, 'Easy EMI repayment, urban focus', '2025-09-13 17:36:54'),
(6, 'KLM Axiva Finvest', '15.00% p.a.', 70.00, 1.25, 'Flexible terms, quick approval', '2025-09-13 17:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin','superadmin') NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `role`, `bank_id`, `is_active`) VALUES
(1, 'john', NULL, '1234', 'user', NULL, 1),
(2, 'abc_admin', NULL, 'abc123', 'admin', 101, 1),
(3, '123_admin', NULL, '123123', 'admin', 102, 1),
(4, 'xyz_admin', NULL, 'xyz123', 'admin', 103, 1),
(5, 'superadmin', NULL, 'root123', 'superadmin', NULL, 1),
(6, 'Aldrin', 'aldrinmartin2005@gmail.com', 'Aldrin', 'user', NULL, 1),
(9, 'Aaba peter', 'aabapeterxc@gmail.com', 'Aaba', 'user', NULL, 1),
(10, 'Demo', 'demo@gamil.com', '1234', 'user', NULL, 0),
(12, 'damn', 'martinkjvpz@gmail.com', '$2y$10$QPeVF6zT6Pu1BO6/tAGUz.fDHBvLfYGrz42p2I6VAGDMDshLcvjrC', 'user', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `bank_responses`
--
ALTER TABLE `bank_responses`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `responded_by` (`responded_by`);

--
-- Indexes for table `eligibility_criteria`
--
ALTER TABLE `eligibility_criteria`
  ADD PRIMARY KEY (`criteria_id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `gold_loan_details`
--
ALTER TABLE `gold_loan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_rates`
--
ALTER TABLE `gold_rates`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `fk_loan_app_user` (`user_id`),
  ADD KEY `fk_loan_app_response` (`response_id`);

--
-- Indexes for table `loan_schemes`
--
ALTER TABLE `loan_schemes`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `loan_types`
--
ALTER TABLE `loan_types`
  ADD PRIMARY KEY (`loan_type_id`);

--
-- Indexes for table `nbfc_gold_loan_details`
--
ALTER TABLE `nbfc_gold_loan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `bank_responses`
--
ALTER TABLE `bank_responses`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `eligibility_criteria`
--
ALTER TABLE `eligibility_criteria`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `gold_loan_details`
--
ALTER TABLE `gold_loan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gold_rates`
--
ALTER TABLE `gold_rates`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_applications`
--
ALTER TABLE `loan_applications`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `loan_schemes`
--
ALTER TABLE `loan_schemes`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `loan_types`
--
ALTER TABLE `loan_types`
  MODIFY `loan_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nbfc_gold_loan_details`
--
ALTER TABLE `nbfc_gold_loan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_responses`
--
ALTER TABLE `bank_responses`
  ADD CONSTRAINT `bank_responses_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `loan_applications` (`app_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_responses_ibfk_2` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`bank_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_responses_ibfk_3` FOREIGN KEY (`responded_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `eligibility_criteria`
--
ALTER TABLE `eligibility_criteria`
  ADD CONSTRAINT `eligibility_criteria_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loan_schemes` (`loan_id`);

--
-- Constraints for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD CONSTRAINT `fk_loan_app_response` FOREIGN KEY (`response_id`) REFERENCES `bank_responses` (`response_id`),
  ADD CONSTRAINT `fk_loan_app_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `loan_schemes`
--
ALTER TABLE `loan_schemes`
  ADD CONSTRAINT `loan_schemes_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`bank_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
