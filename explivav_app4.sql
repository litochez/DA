-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2022 at 06:19 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitcwwvz_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `status`, `role_id`, `name`, `username`, `email`, `email_verified`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Admin', 'admin', 'admin@gmail.com', 0, '1613814214513697840.png', '$2y$10$q7PIHP9NSRt2TUUnqdYwJeiC6aIPcr5xy1h6BqN11Ou4BGjWvZfTG', NULL, NULL, '2021-04-11 06:19:17'),
(2, 1, 1, 'Rony', 'rony', 'rony@gmail.com', 0, '16137989081753336377.png', '$2y$10$19NOEORKuK8qEPM13S38R.lD.tsOCQntS2rK9finxx3zNt8Ql/d2.', NULL, '2021-02-19 22:28:56', '2021-02-19 23:28:28'),
(3, 1, 2, 'Sihab', 'sihab', 'sihab@gmail.com', 0, '1613798862914110019.png', '$2y$10$KLLAvssopCM/dr2iNW53E.VPU2Me2hG1XcrSPWt/zedsvgWEN7jzK', NULL, '2021-02-19 22:31:38', '2021-02-20 03:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '01/2021', '2021-02-11 05:12:54', '2021-02-11 05:12:54'),
(2, '09/2020', '2021-02-11 05:13:12', '2021-02-11 05:13:12'),
(3, '02/2021', '2021-02-11 05:13:24', '2021-02-16 07:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Investment', 'Investment', 1, 0, '2021-02-11 00:51:53', '2021-12-09 23:38:17'),
(2, 1, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(13, 1, 'Cryptocurrency', 'Cryptocurrency', 1, 1, '2021-11-29 14:22:38', '2021-11-29 14:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `image`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 'Crypto Market Crashing – When Should I Invest?', 'Crypto-Market-Crashing-–-When-Should-I-Invest', '16130436341918352388.jpg', '<p>After a relief rally taking Bitcoin to $59k and some altcoins showing\r\n also some nice relief rallies, we observed a hefty drop all across the \r\ncrypto market today. Bitcoin erased all its relief gains and printed new\r\n lows around $53.5k. Ethereum dropped to $4k. Ethereum still looks a bit\r\n stronger than Bitcoin. However, Bitcoin is technically in a down trend \r\nsince its ATH around $69k, having lost over 20% since.</p>\r\n<h2>What caused the market dip?</h2>\r\n<p>Having a look what caused the drop today shows some obvious \r\ncorrelation to the equity markets. Sounds familiar? During the March \r\n2020 Covid crash, all asset classes started to correlate while trending \r\nsouth. Same story today as news of a new and very aggressive Corona \r\nvirus variant (emerging from South Africa) hit the markets and \r\ntriggering economic fears across the board.<br>\r\nFurthermore, in recent days, the Dollar (DXY) has been trending up, which typically bad for equities and crypto.</p>\r\n<h2>What are implications?</h2>\r\n<p>The correction of the crypto market implies some intermediate \r\ninvalidation of predictions of some famous models like the \r\nstock-to-flow-model. According this model, at least $90k for Bitcoin \r\nwould have been possible this year.</p>\r\n<h2>Outlook</h2>\r\n<p>So, how is the market going to proceed? Currently it seems to have \r\nfound some intermediate support around $54k. However, the next level \r\naround $49k is in short distance. Still, holding that level could still \r\nbe seen as a normal bull market correction. However, it might take a \r\nlittle time to consolidate and gather strength again, before the bull \r\nmarket can resume. At least Cryptocoinfxminers’ long-term market sentiment \r\noutlook remains strongly bullish. Therefore, discounted prices can be \r\nregarded as buying opportunities.</p>', 1, 'Cryptocurrency,Investment,Markets', 'Cryptocurrency', 0, '2021-02-11 05:35:56', '2021-11-29 14:48:07'),
(2, 1, 13, 'How Investing in Cryptocurrencies Holds Up Against Traditional Investments', 'How-Investing-in-Cryptocurrencies-Holds-Up-Against-Traditional-Investments', '16130436082031699655.jpg', '<p>The cryptocurrency market is growing rapidly, with the largest \r\ncryptos in particular having spent much of the summer and fall rallying.\r\n According to an <a href=\"https://www.coindesk.com/markets/2021/10/21/crypto-market-cap-surges-to-new-record-27-trillion/\">article on CoinDesk</a>,\r\n the crypto market cap has surged to a record $2.7 trillion, tripling \r\nthe $770 billion cap from the beginning of the year. Bitcoin (BTC) \r\nrecently reached a fresh all-time high of $66,000, while Ethereum (ETH) \r\nclimbed to a five-month high of more than $4,200.</p>\r\n<p>All of this is leading corporations of all kinds to invest in \r\ncryptocurrencies on the simple grounds that the cryptos have \r\noutperformed traditional assets and varying indices. In our article ‘<a href=\"https://cryptocaptain.com/blog/2020/11/the-ultimate-beginners-guide-to-investing-and-trading-bitcoin-and-cryptocurrencies/\">The Ultimate Beginner’s Guide to Investing and Trading Bitcoin and Cryptocurrencies</a>’, we discussed how investing in cryptocurrency can lead to significant gains.</p>\r\n<p><em><strong>But how does investing in crypto actually compare with traditional assets?</strong></em></p>\r\n<h2>Crypto vs. Stocks</h2>\r\n<p>Both cryptocurrencies and stocks have good and bad days. For instance, as of the writing the <a href=\"https://www.cnbc.com/2021/10/21/european-markets-stocks-data-barclays-loreal-unilever-earnings.html\"><u>European stock market</u></a>\r\n is facing weak trading over Asia-Pacific jitters. The pan-European \r\nStoxx 700 recently closed just below the flatline due to concerns over \r\nthe Chinese property sector. These are specific examples that have \r\naffected markets of late. But more generally, market volatility, \r\ngovernment regulations, and other sources of uncertainty can regularly \r\nlead to losses for even the most experienced and careful investors. That\r\n said, stocks also come with a long history that makes it easier for \r\ninvestors to recognize trends and predict future movements. Stock \r\nmarkets are also well regulated and widely traded, which further sets \r\nthem apart from decentralized cryptocurrency assets. However, the crypto\r\n market is catching up as its capitalization increases and also \r\nregulation will be put in place. The proposed <a href=\"https://www.sygna.io/blog/what-is-mica-markets-in-crypto-assets-eu-regulation-guide/\">MiCA</a> (Markets in Crypto Assets) framework of the EU is a recent example.</p>\r\n<h2>Crypto vs. Bonds</h2>\r\n<p>A bond is a loan from an individual to a company or a government. \r\nWhen an investor buys a bond, the entity that sold the bond is in debt \r\nto that person. For a certain period of time, the investor will get \r\ninterest (like say 3% p.a.) on the amount lent out, and eventually he or\r\n she will receive the entire amount in return. The only major risk with \r\nbonds is that an investor won’t receive any interest payments (or even \r\nthe principal amount) if the borrower goes bankrupt or defaults for any \r\nother reason. Additionally, bonds can fail to generate returns that keep\r\n pace with inflation. The value of issued bonds often erodes when \r\ninflation rises. By contrast, cryptocurrencies are untethered to wider \r\neconomic disruptions, and cannot be affected by any entity’s failure to \r\nmaintain a deal – except that hackers might steal crypto left on an \r\nexchange. But in fact, crypto tends to profit from rising inflation as \r\nit is regarded a hedge against inflation. And moving your crypto to your\r\n own wallet will keep you safe.</p>\r\n<h2>Crypto vs. Forex</h2>\r\n<p>Foreign exchange of global currencies (or <em>forex</em>) offers \r\nunmatched liquidity compared to crypto, or any other market for that \r\nmatter. But value in this particular market stems from the economic \r\nconditions and fluctuations of the countries behind the currencies. This\r\n is why investors pay close attention to the changes in major currency \r\npairs during times of high volatility. The <a href=\"https://www.fxcm.com/uk/research/trade-volatility/\"><u>trade volatility charts on FXCM</u></a>\r\n depict what this sort of tracking looks like. They essentially depict \r\nbid and ask prices for major pairs such as the EUR/USD and USD/GBP, but \r\ndo so in such a way as to highlight the pairs exhibiting the most \r\nmovement. While this is a helpful way to visualize and trade forex \r\nthough, the need for volatility tracking highlights a key difference \r\nbetween forex and cryptocurrency in and of itself. Forex traders need to\r\n seek out volatility if they’re to find much short-term potential for \r\ngains; crypto markets are extraordinarily volatile nearly all the time. \r\nThat makes them less stable, but also means it’s easier for investors to\r\n spot potential opportunities for swift earnings.</p>\r\n<h2>Crypto vs. Gold</h2>\r\n<p>Based on a recent <a href=\"https://www.reuters.com/article/global-precious-idUSL4N2RG290\"><u>gold market report from Reuters</u></a>,\r\n gold prices have extended gains of late due to a softer dollar. With \r\nU.S. treasury yields pushing higher over inflation concerns, gold \r\ntrading has remained in a range between $1,720 and $1,820 — making it a \r\nstable, liquid investment choice. These kinds of conditions are behind \r\nthe “safe-haven asset” label that is often applied to gold. Some have \r\nbegun to assign this label to cryptocurrencies as well, largely on the \r\ngrounds that it they provide a “haven” during times of spurring \r\ninflation like we have been observing in fall 2021. Generally speaking \r\nthough, crypto is far more volatile. The other key difference, \r\nmeanwhile, is that gold is subject to import taxes and is far less \r\nportable. Investors need to spend more money protecting stashes of \r\nphysical gold (even if only indirectly) than securing crypto wallets.</p>\r\n<h2>Conclusion</h2>\r\n<p>Overall, investing in crypto depends on your risk tolerance and \r\nportfolio objectives. If you want to diversify away from traditional \r\ninvestments, digital money is a good choice because it isn’t tied to a \r\nspecific fiat currency, country, or financial market. That said, like \r\nany investable asset, cryptos still come with risks that need to be \r\nmanaged carefully. Timing the crypto market’s major ups and downs is \r\nkey. This is where <a href=\"https://cryptocoinfxminers.com\">Cryptocoinfxminers</a> can help you.</p>', 1, 'Crypto Market,Investment,cryptocurrency,Bitcoin', 'Crypto Market  Investment', 0, '2021-02-11 05:35:56', '2021-11-29 14:41:00'),
(3, 1, 13, 'Bitcoin offers ‘Black Friday deal’ with sub-$55K BTC price — Just like 2020', 'Bitcoin-offers-‘Black-Friday-deal’-with-sub-$55K-BTC-price-—-Just-like-2020', '16381809241796183636.jpg', '<p>Bitcoin (BTC) may be down 20% from all-time highs, but this is a golden opportunity to “buy the dip,” analysts argue.</p><p>Black\r\n Friday is living up to its name in crypto this year as both Bitcoin and\r\n many altcoins are trading at their lowest in six weeks.</p><h2>Misgivings over $53,000 floor</h2><p>After\r\n an overnight sell-off sparked by a declining United States dollar and \r\nmacro markets rattled by a new coronavirus variant, BTC/USD is trading \r\nnear $54,000.</p><p>As mainstream media highlight the fall, others are \r\nfar from concerned, however — current prices arguably offer a golden \r\nentry opportunity.</p><blockquote class=\"twitter-tweet\"><p dir=\"ltr\" lang=\"en\">#BTC Black Friday deal pic.twitter.com/TqTcQEzfqG</p>— Material Scientist (@Mtrl_Scientist) November 26, 2021</blockquote>\r\n\r\n<p>Others poked fun at a knee-jerk article from Bloomberg in which the publication initially declared that Bitcoin had “entered a bear market.”&nbsp;</p><p>On\r\n short-term targets, popular trader and podcast host Scott Melker warned\r\n over going with the herd, expecting even lower levels to buy.</p><p>“We\r\n all seemingly want to see 53K, which usually means we get front run at \r\n53.5K or price nukes straight through and we HFSP,” he tweeted. </p><blockquote>“The crowd rarely gets what it wants.”</blockquote><p>In a sign that selling is likely not yet over, funding rates across exchanges remain elevated despite 24-hour liquidations nearing $700 million.</p><figure><figcaption style=\"text-align: center;\"><em>Bitcoin funding rates chart. Source: Coinglass</em></figcaption></figure><h2>Remember last Black Friday?</h2><p>Melker,\r\n meanwhile, additionally pointed to the unusual correlation between the \r\nU.S. dollar and Bitcoin thanks notionally to the virus jolt.</p><p>As Cryptocoinfxminers often notes, Bitcoin tends to exhibit inverse correlation with USD, the latter having snapped a long winning streak Friday.</p><p>Far\r\n from fuelling Bitcoin’s strength, however, the largest cryptocurrency \r\nhas fallen in step with both macro markets and the U.S. dollar currency \r\nindex (DXY).</p><blockquote class=\"twitter-tweet\"><p dir=\"ltr\" lang=\"en\">Dollar down, gold up, Bitcoin down, stocks down.<br><br>Good luck solving that correlation today.</p>— The Wolf Of All Streets (@scottmelker) November 26, 2021</blockquote>\r\n\r\n<p>Standing in the way of further losses on Bitcoin is a heavy block of \r\nbuyer support at $53,000 — roughly the area that corresponds to \r\nBitcoin’s $1-trillion market capitalization.</p><p>Meanwhile, historical data serves as a timely reminder that Black Friday bargains are something of a common theme for Bitcoin.</p><p>In\r\n late November 2020, BTC/USD dipped to around $16,400 — only to then go \r\non to tackle and beat out $20,000 for the first time in three years.</p>', 1, 'Bitcoin offers Black Friday deal', 'Bitcoin  investment  Experts Believe', 0, '2021-02-11 05:35:56', '2021-11-29 15:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `language_id`, `status`, `name`, `image`, `link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(2, '1', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(3, '1', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(4, '1', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(5, '1', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(6, '1', 1, 'geniusdevs', 'portfolio_163802994664337879.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:41:05', '2021-11-27 21:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `language_id`, `status`, `title`, `number`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Investments With Max Returns', 569, 'fal fa-box', 'Investors that have made maximum returns on their investments', 0, '2021-02-10 03:19:45', '2021-12-01 01:26:48'),
(2, 1, 1, 'Happy Clients', 894, 'fal fa-users', 'Happy investors, both those that have made max profit and partial profits based on investment period', 0, '2021-02-10 03:20:34', '2021-12-01 01:30:58'),
(3, 1, 1, 'Investment Capital', 1500000, 'fal fa-globe', 'Over 1.5 Million in Dollars invested funds', 0, '2021-02-10 03:21:11', '2021-12-01 01:34:34'),
(4, 1, 1, 'Investors Returns', 3750000, 'fal fa-award', 'Over 3.75 million Dollars Profit paid to investors', 0, '2021-02-10 03:21:37', '2021-12-01 01:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 1, '2020-10-04 10:20:59', '2021-06-10 08:12:00'),
(3, 'EUR', '€', 0.8, 0, '2020-10-04 10:30:40', '2021-06-10 08:12:00'),
(4, 'BDT', '৳', 80, 0, '2021-06-10 08:03:52', '2021-06-10 08:12:00'),
(5, 'INR', '₹', 73.1, 0, '2021-06-10 09:01:40', '2021-06-10 09:01:40'),
(6, 'TL', '₺', 8.4, 0, '2021-06-10 09:03:08', '2021-06-10 09:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `daynamicpages`
--

CREATE TABLE `daynamicpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daynamicpages`
--

INSERT INTO `daynamicpages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Privacy Policy', 'Trams', 'Privacy-Policy', 0x3c73656374696f6e20636c6173733d22707269766163792d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020203c64697620636c6173733d22726f77223e0d0a202020202020202020202020202020203c64697620636c6173733d22636f6c2d6c672d3132223e3c73656374696f6e2069643d227072697661637922207374796c653d22646973706c61793a20626c6f636b3b223e0d0a20202020202020203c64697620636c6173733d226c6567616c2d7465726d732d73656374696f6e207072732d636f6e7461696e6572223e0d0a2020202020202020202020203c683220636c6173733d227072732d7469746c65206c6567616c2d7465726d732d7469746c65223e43727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e205072697661637920506f6c6963793c2f68323e3c2f6469763e0d0a20202020202020203c64697620636c6173733d227072732d636f6e7461696e6572223e0d0a2020202020202020202020203c6f6c20636c6173733d226c6567616c2d7465726d732d73656374696f6e732d6c697374223e3c6c693e496e74726f64756374696f6e0d0a20202020202020202020202020202020202020203c703e5468652070726f7065722068616e646c696e67206f6620706572736f6e616c20646174612069732065787472656d656c790d0a20696d706f7274616e7420746f2075732e205765207468657265666f72652074616b6520796f7572207072697661637920736572696f75736c79207768656e200d0a70726f63657373696e6720616e642070726f74656374696e6720796f757220706572736f6e616c20646174612e205468697320697320646f6e6520696e206163636f7264616e63650d0a20776974682070726f766973696f6e7320736574206f757420696e20746865206170706c696361626c652070726976616379206c6177732028696e636c7564696e6720746865200d0a47656e6572616c20446174612050726f74656374696f6e20526567756c6174696f6e292e2057652077616e7420796f75202868657265696e61667465723a20c2ab75736572c2bb29200d0a746f20756e6465727374616e6420686f7720616e64207768792043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e200d0a2868657265696e616674657220726566657272656420746f20617320c2ab43727970746f636f696e4658204d696e657273c2bb20c2ab7765c2bb20c2ab6f7572c2bb206f7220c2ab7573c2bb206f72200d0ac2ab436f6d70616e79c2bb29206120636f6d70616e7920696e636f72706f726174656420696e207468652052657075626c6963206f66205365796368656c6c657320776974682061200d0a636f6d70616e79206e756d626572206f662032303638363520636f6c6c656374732c2070726f6365737365732c20757365732c20616e642073686172657320796f7572200d0a706572736f6e616c20696e666f726d6174696f6e202868657265696e61667465723a20c2ab506572736f6e616c20496e666f726d6174696f6ec2bb2c20c2ab5049c2bb2c20c2ab5044c2bb29200d0a7768656e20796f7520757365206f757220776562736974652063727970746f636f696e66786d696e6572732e636f6d2c0d0a20736f6674776172652c206170706c69636174696f6e7320616e64206f74686572206f6e6c696e652070726f647563747320616e64207365727669636573200d0a28636f6c6c6563746976656c792c2074686520c2ab5365727669636573c2bb29206f72207768656e20796f75206f746865727769736520696e7465726163742077697468207573206f720d0a2072656365697665206120636f6d6d756e69636174696f6e2066726f6d2075732e204279207669736974696e672063727970746f636f696e66786d696e6572732e636f6d20796f752061726520616363657074696e6720616e6420636f6e73656e74696e6720746f20746865207072616374696365732064657363726962656420696e207468697320706f6c6963792e3c2f703e0d0a20202020202020202020202020202020202020203c703e5765206d6179207265766973652074686973205072697661637920506f6c6963792066726f6d2074696d6520746f200d0a74696d652e205468652063757272656e742076657273696f6e206f662074686520706f6c6963792077696c6c20676f7665726e206f75722070726f63657373696e67206f66200d0a796f757220706572736f6e616c206461746120616e642077696c6c20616c7761797320626520617661696c61626c65206174203c6120687265663d2268747470733a2f2f74726164656d696e65727366782e636f6d2f696e6465782e706870223e63727970746f636f696e66786d696e6572732e636f6d3c2f613e2e0d0a204966207765206d616b652061206368616e676520746f207468697320706f6c69637920746861742c20696e206f757220736f6c652064697363726574696f6e2c206973200d0a6d6174657269616c2c2077652077696c6c206e6f7469667920796f752076696120616e20656d61696c20746f2074686520656d61696c2061646472657373200d0a6173736f636961746564207769746820796f7572206163636f756e742e204966207265717569726564206279206c61772c2077652077696c6c207265717565737420796f7572200d0a7065726d697373696f6e206f72206769766520796f7520746865206f70706f7274756e69747920746f206f7074206f7574206f6620616e79206e65772075736573206f66200d0a796f757220506572736f6e616c20496e666f726d6174696f6e2e3c2f703e0d0a20202020202020202020202020202020202020203c703e57652074616b65206772656174206361726520746f206c696d69742074686520506572736f6e616c200d0a496e666f726d6174696f6e20776520636f6c6c65637420616e6420757365206f6e6c7920666f722074686520707572706f7365732c20776869636820617265200d0a6e656365737361727920666f722070726f766964696e67206f75722053657276696365732e3c2f703e0d0a20202020202020202020202020202020202020203c703e43727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c746420636f6c6c6563747320616e64200d0a70726f63657373657320706572736f6e616c20696e666f726d6174696f6e2074686174206973206e656365737361727920666f72206c65676974696d61746520627573696e6573730d0a20707572706f7365732c2077686963682077696c6c20626520646973636c6f73656420746f20616e7920706572736f6e2077686f736520706572736f6e616c2064617461206973200d0a6265696e6720636f6c6c65637465642c2068656c64206f722070726f636573736564202868657265696e61667465723a20c2ab64617461207375626a656374c2bb2920617420746865200d0a74696d65206f6620636f6c6c656374696f6e2e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642077696c6c2075736520616e64200d0a70726f63657373207468697320696e666f726d6174696f6e206f6e6c7920666f722074686520707572706f73657320666f7220776869636820697420776173200d0a636f6c6c65637465642c2072657461696e696e672074686520706572736f6e616c20696e666f726d6174696f6e206f6e6c7920666f7220736f206c6f6e67206173206974206973200d0a726571756972656420666f7220737065636966696320707572706f7365206f6620636f6c6c656374696e672074686520696e666f726d6174696f6e2e3c2f703e0d0a20202020202020202020202020202020202020203c703e43727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642077696c6c206e6f74200d0a636f6c6c6563742073656e73697469766520706572736f6e616c206461746120657863657074207768656e207065726d6974746564206f7220726571756972656420746f20646f200d0a736f206279206c61772c20616e642077696c6c20646f20736f206f6e6c7920666f72206c65676974696d61746520627573696e65737320707572706f7365732e20496620696e200d0a616e79206f7468657220696e7374616e63652061206e6565642061726973657320746f20636f6c6c6563742073656e73697469766520706572736f6e616c20646174612c200d0a5472616465204d696e65727346582054726164696e67205365727669636573204c74642077696c6c20646f20736f206f6e6c792077697468207468652064617461200d0a7375626a656374c29273206578707265737320636f6e73656e742c2077686963682063616e2062652077697468647261776e20617420616e792074696d652e3c2f703e0d0a20202020202020202020202020202020202020203c703e57652072657461696e20796f757220506572736f6e616c204461746120666f72206173206c6f6e672061732069742069730d0a20726571756972656420746f20736174697366792074686520707572706f736520666f722077686963682074686579207765726520636f6c6c656374656420616e6420757365642c0d0a20756e6c6573732061206c6f6e67657220706572696f64206973206e656365737361727920666f72206f7572206c6567616c206f626c69676174696f6e73206f7220746f200d0a646566656e642061206c6567616c2e3c2f703e0d0a20202020202020202020202020202020202020203c703e576520646f206e6f74207472616e7366657220796f757220506572736f6e616c204461746120746f20546869726420506172746965732c206578636570742063697263756d7374616e636573206d656e74696f6e656420696e2074686973205072697661637920506f6c6963792e3c2f703e0d0a20202020202020202020202020202020202020203c703e54686973205072697661637920506f6c69637920697320696e636f72706f726174656420696e746f20616e64206973200d0a7375626a65637420746f207468652043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464205465726d7326616d703b436f6e646974696f6e732e0d0a20596f757220757365206f662074686520536572766963657320616e6420616e7920706572736f6e616c20696e666f726d6174696f6e20796f752070726f76696465206f6e200d0a6f75722053657276696365732072656d61696e73207375626a65637420746f20746865207465726d73206f662074686973205072697661637920506f6c69637920616e64206f75720d0a205465726d7326616d703b436f6e646974696f6e732e3c2f703e0d0a20202020202020202020202020202020202020203c703e506572736f6e616c20646174612c206f7220706572736f6e616c20696e666f726d6174696f6e2c206d65616e7320616e790d0a20696e666f726d6174696f6e2061626f757420616e20696e646976696475616c2066726f6d207768696368207468617420706572736f6e2063616e206265200d0a6964656e7469666965642e20497420646f6573206e6f7420696e636c756465206461746120776865726520746865206964656e7469747920686173206265656e2072656d6f7665640d0a2028616e6f6e796d6f75732064617461292e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e507572706f736573206f6620506572736f6e616c20496e666f726d6174696f6e20636f6c6c656374696f6e0d0a20202020202020202020202020202020202020203c703e5765206d61792064656c697665722c20706572736f6e616c697a652c20616e6420696d70726f7665206f7572200d0a536572766963657320627920636f6d62696e696e6720616e64207573696e672074686520696e666f726d6174696f6e20776520686176652061626f757420796f75200d0a28696e636c7564696e6720696e666f726d6174696f6e2077652072656365697665206f6e20616e64206f6666206f75722053657276696365732920746f20756e6465727374616e640d0a20686f7720796f752075736520616e6420696e7465726163742077697468206f757220536572766963657320616e64207468652070656f706c65206f72207468696e6773200d0a796f75c292726520636f6e6e656374656420746f20616e6420696e746572657374656420696e2e20576520616c736f206d6179207573652074686520696e666f726d6174696f6e200d0a776520686176652061626f757420796f7520666f722074686520666f6c6c6f77696e6720707572706f7365733a3c2f703e0d0a20202020202020202020202020202020202020203c6f6c3e3c6c693e50726f766964652c206d61696e7461696e2c20696d70726f76652c20616e6420646576656c6f702072656c6576616e742066656174757265732c20636f6e74656e742c20616e642053657276696365733b3c2f6c693e3c6c693e46756c66696c20796f757220726571756573747320616e64207768656e20617574686f72697a656420627920796f753b3c2f6c693e3c6c693e526573656172636820616e6420646576656c6f70206e65772073657276696365733b3c2f6c693e3c6c693e44657465637420616e6420646566656e6420616761696e7374206672617564756c656e742c20616275736976652c206f7220756e6c617766756c2061637469766974793b3c2f6c693e3c6c693e57652075736520796f7572206c6f636174696f6e20746f20706572736f6e616c697a652074686520636f6e74656e7420796f752070726f7669646520616e6420746f207365727665207461726765746564206164733b3c2f6c693e3c6c693e526573656172636820616e6420646576656c6f70206e65772073657276696365733b3c2f6c693e3c6c693e53656e6420796f7520746563686e6963616c206e6f74696365732c20757064617465732c20736563757269747920616c657274732c20696e766f6963657320616e64206f7468657220737570706f727420616e642061646d696e697374726174697665206d657373616765733b3c2f6c693e3c6c693e50726f7669646520637573746f6d657220736572766963653b3c2f6c693e3c6c693e436f6d6d756e6963617465207769746820796f752061626f75742070726f64756374732c200d0a73657276696365732c206f66666572732c2070726f6d6f74696f6e732c20616e64206576656e74732c20616e642070726f76696465206f74686572206e65777320616e64200d0a696e666f726d6174696f6e207765207468696e6b2077696c6c206265206f6620696e74657265737420746f20796f753b3c2f6c693e3c6c693e54656c6570686f6e65206e756d62657220616e642061646472657373206f66207468652077616c6c65742063616e206265207573656420666f7220696d706c656d656e746174696f6e206f66207472616e73616374696f6e733b3c2f6c693e3c6c693e54686520652d6d61696c20616464726573732063616e206265207573656420746f206361727279206f7574206d61696c696e6773207769746820796f757220636f6e73656e743b3c2f6c693e3c6c693e506572736f6e616c697a652074686520536572766963657320616e642070726f76696465206164766572746973656d656e74732c20636f6e74656e7420616e642066656174757265732074686174206d6174636820757365722070726f66696c6573206f7220696e746572657374732e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c703e576520636f6c6c6563742067656e6572616c20616e6f6e796d6f757320616e616c79746963616c20696e666f726d6174696f6e206f6e2074686520757365206f662074686520736572766963657320666f72207468656972206f7074696d697a6174696f6e2e3c2f703e0d0a20202020202020202020202020202020202020203c703e57652070726f7669646520796f75207769746820636f6e74726f6c7320746f206d616e61676520796f757220657870657269656e636520776974682075732e20596f752063616e206368616e67652074686520707269766163792073657474696e677320696e20796f7572206163636f756e7420617420616e792074696d652e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e506572736f6e616c20496e666f726d6174696f6e0d0a20202020202020202020202020202020202020203c6f6c3e3c6c6920636c6173733d226c6973742d7375627469746c65223e5765206d617920636f6c6c6563742c207573652c2073746f726520616e64207472616e7366657220646966666572656e74206b696e6473206f6620706572736f6e616c20646174612061626f757420796f7520776869636820776520686176652067726f7570656420746f67657468657220617320666f6c6c6f77733a0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e666f726d6174696f6e20796f7520676976652075732e3c2f7374726f6e673e0d0a205765207265636569766520616e642073746f726520616e7920696e666f726d6174696f6e20796f7520656e746572206f6e206f75722077656273697465206f722067697665200d0a757320696e20616e79206f74686572207761792e20596f752070726f76696465206d6f7374207375636820696e666f726d6174696f6e207768656e20796f7520736561726368200d0a736f6d6520696e666f726d6174696f6e206f6e206f757220776562736974652c2073756273637269626520746f206f7572206e6577736c6574746572732c2066696c6c206f757420610d0a20666f726d20666f7220616e79206d656469612c206576656e7473206f7220706172746e65727368697020696e717569726965732c20636f6d6d756e69636174652077697468200d0a6f757220737570706f727420736572766963652e20466f72206578616d706c652c20796f752070726f7669646520696e666f726d6174696f6e207768656e20796f75200d0a636f6d6d756e6963617465207769746820757320627920706f73742c20652d6d61696c2c206f72206f74686572776973652e204173206120726573756c74206f662074686f7365200d0a616374696f6e732c20796f75206d6967687420737570706c792075732077697468207375636820696e666f726d6174696f6e20617320796f7572206e616d652c200d0a616464726573732c20652d6d61696c2c2070686f6e65206e756d626572732c206574632e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e4175746f6d6174696320696e666f726d6174696f6e2e3c2f7374726f6e673e200d0a5765207265636569766520616e642073746f7265206365727461696e207479706573206f6620696e666f726d6174696f6e207768656e6576657220796f7520696e746572616374200d0a776974682075732e20466f72206578616d706c652c206c696b65206d616e792077656273697465732c2077652075736520c2ab636f6f6b696573c2bb2c20616e64207765200d0a6f627461696e206365727461696e207479706573206f6620696e666f726d6174696f6e207768656e20796f7572207765622062726f77736572206163636573736573206f7572200d0a776562736974652e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e666f726d6174696f6e2066726f6d206f7468657220736f75726365732e3c2f7374726f6e673e205765206d69676874207265636569766520696e666f726d6174696f6e2061626f757420796f752066726f6d206f7468657220736f757263657320616e642061646420697420746f206f7572206163636f756e7420696e666f726d6174696f6e2e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e576520616c736f20636f6c6c6563742c2075736520616e6420736861726520616767726567617465640d0a2064617461207375636820617320737461746973746963616c206f722064656d6f67726170686963206461746120666f7220616e7920707572706f73652e20486f77657665722c200d0a616767726567617465642064617461206973206e6f7420636f6e7369646572656420706572736f6e616c20646174612061732074686973206461746120646f6573206e6f74200d0a6469726563746c79206f7220696e6469726563746c792072657665616c20796f7572206964656e746974792e20466f72206578616d706c652c207765206d6179200d0a61676772656761746520796f7572207573616765206461746120746f2063616c63756c617465207468652070657263656e74616765206f6620757365727320616363657373696e670d0a2061207370656369666963207765627369746520666561747572652e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e576520646f206e6f7420636f6c6c65637420616e79207370656369616c2063617465676f72696573200d0a6f6620706572736f6e616c20646174612061626f757420796f7520287468697320696e636c756465732064657461696c732061626f757420796f75722072616365206f72200d0a6574686e69636974792c2072656c6967696f7573206f72207068696c6f736f70686963616c2062656c696566732c20736578206c6966652c2073657875616c200d0a6f7269656e746174696f6e2c20706f6c69746963616c206f70696e696f6e732c20747261646520756e696f6e206d656d626572736869702c20696e666f726d6174696f6e200d0a61626f757420796f7572206865616c746820616e642067656e6574696320616e642062696f6d65747269632064617461292e204e6f7220646f20776520636f6c6c65637420616e790d0a20696e666f726d6174696f6e2061626f7574206372696d696e616c20636f6e76696374696f6e7320616e64206f6666656e6365732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c6920636c6173733d226c6973742d7375627469746c65223e506572736f6e616c20496e666f726d6174696f6e20776520636f6c6c65637420616e64207573650d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e5573657220696e666f726d6174696f6e2e3c2f7374726f6e673e20546865200d0a696e666f726d6174696f6e207468617420776520636f6c6c65637420696e636c7564657320756e69717565206964656e746966696572732c2062726f777365722074797065200d0a616e642073657474696e67732c20646576696365207479706520616e642073657474696e67732c206f7065726174696e672073797374656d2c206d6f62696c65206e6574776f726b0d0a20696e666f726d6174696f6e20696e636c7564696e67206f70657261746f72206e616d6520616e642070686f6e65206e756d62657220616e64206170706c69636174696f6e200d0a76657273696f6e206e756d6265722e20576520616c736f20636f6c6c65637420696e666f726d6174696f6e2061626f75742074686520696e746572616374696f6e206f66200d0a796f75722062726f777365727320616e6420646576696365732077697468206f75722073657276696365732c20696e636c7564696e67204f532c20495020616464726573732c200d0a73706563696669636174696f6e7320616e642074686520646174652c2074696d6520616e642072656665727265722055524c206f6620796f757220726571756573742e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e4163636f756e7420696e666f726d6174696f6e2e3c2f7374726f6e673e20546f200d0a63726561746520616e206163636f756e742c20796f75206d7573742070726f76696465206120757365726e616d652c20652d6d61696c20616e642070617373776f72642e20596f750d0a2063616e20616c736f2063686f6f736520746f206164642061207061796d656e74206f72206f7468657220696e666f726d6174696f6e20746f20796f7572206163636f756e742e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e416374696f6e7320796f752074616b652e3c2f7374726f6e673e205765200d0a636f6c6c65637420696e666f726d6174696f6e2061626f75742074686520616374696f6e7320796f752074616b65207768656e207573696e67207468652053657276696365732e200d0a5468697320696e636c7564657320796f757220696e746572616374696f6e73207769746820636f6e74656e742c207075626c69632c20706f7374696e6720636f6d6d656e74732c200d0a696e7465726573747320696e207468652070726f6a656374732e20497420616c736f20696e636c7564657320796f757220696e746572616374696f6e732077697468206f746865720d0a207573657273206f722070726f6a656374732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e4f7468657220696e666f726d6174696f6e2e3c2f7374726f6e673e20596f75200d0a6d61792063686f6f736520746f2070726f76696465206f7468657220696e666f726d6174696f6e206469726563746c7920746f2075732e20466f72206578616d706c652c207765200d0a6d617920636f6c6c65637420696e666f726d6174696f6e207768656e20796f75207265717565737420637573746f6d657220737570706f7274206f72206f7468657277697365200d0a636f6d6d756e696361746520776974682075732e20596f75206d61792070726f7669646520757320776974682074686520696e666f726d6174696f6e2061626f757420796f7572200d0a652d6d61696c20746f2072656365697665206d61696c696e677320616e6420746f20636f6e6669726d207472616e73616374696f6e732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c6920636c6173733d226c6973742d7375627469746c65223e5768656e20796f7520616363657373206f7220757365206f75722053657276696365732c207765206d617920616c736f206175746f6d61746963616c6c7920636f6c6c65637420696e666f726d6174696f6e2061626f757420796f750d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e5468697320696e636c756465733a3c2f7374726f6e673e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e546563686e6963616c20646174612e3c2f7374726f6e673e205765206d6179200d0a6c6f6720696e666f726d6174696f6e207768656e20796f752061636365737320616e6420757365207468652053657276696365732e2054686973206d617920696e636c756465200d0a796f757220495020616464726573732c2062726f7773657220747970652c206f7065726174696e672073797374656d2c2064657669636520696e666f726d6174696f6e200d0a28652e672e2c2064657669636520494473292c2068617264776172652073657474696e67732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e4c6f6773206f66206f75722073657276696365732c3c2f7374726f6e673e200d0a696e636c7564696e67206d657373616765732061626f757420746865697220776f726b2070726f626c656d732c206d617920636f6e7461696e2074686520647269766572200d0a76657273696f6e732c20736f66747761726520696e7374616c6c6174696f6e2070617468732c20616e642074686520636f6d70757465722773206f7065726174696e67200d0a74696d652e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e666f726d6174696f6e20636f6c6c65637465642066726f6d20636f6f6b6965732e3c2f7374726f6e673e0d0a205768656e20796f7520757365206f757220776562736974652c207765206d61792073656e64206f6e65206f72206d6f726520636f6f6b69657320746f20636f6c6c656374200d0a6461746120616e616c79746963732e205768656e20796f75207573652074686972642d706172747920616666696c696174652c206c696e6b73207265676973746572656420696e200d0a6f75722073657276696365732c20636f6f6b6965732077696c6c2062652073746f726564206f6e20796f7572206465766963652077697468696e20313420646179732066726f6d200d0a746865206d6f6d656e74206f66207573696e672073756368206c696e6b2c20666f722074686520707572706f736573206f66207375636365737366756c200d0a726567697374726174696f6e2e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e4c6f636174696f6e20696e666f726d6174696f6e2e3c2f7374726f6e673e205765206d6179207265636569766520616e642070726f6365737320696e666f726d6174696f6e2061626f757420796f7572206c6f636174696f6e2e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e5765206d6179207265636569766520706572736f6e616c20646174612061626f757420796f75200d0a66726f6d20766172696f7573207468697264207061727469657320616e64207075626c696320736f757263657320617320736574206f75742062656c6f772e200d0a546563686e6963616c20446174612066726f6d2074686520666f6c6c6f77696e6720706172746965733a3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e616e616c79746963732070726f766964657273207375636820617320476f6f676c65206261736564206f757473696465207468652045553b3c2f6c693e3c6c693e6164766572746973696e67206e6574776f726b733b20616e643c2f6c693e3c6c693e73656172636820696e666f726d6174696f6e2070726f7669646572732e3c2f6c693e3c2f6f6c3e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020203c2f6c693e3c6c693e436f6f6b6965730d0a20202020202020202020202020202020202020203c703e4f75722077656273697465207573657320636f6f6b69657320746f2064697374696e677569736820796f752066726f6d200d0a6f74686572207573657273206f66206f757220776562736974652e20546869732068656c707320757320746f2070726f7669646520796f752077697468206120676f6f64200d0a657870657269656e6365207768656e20796f752062726f777365206f7572207765627369746520616e6420616c736f20616c6c6f777320757320746f20696d70726f7665206f75720d0a20736974652e3c2f703e0d0a20202020202020202020202020202020202020203c703e436f6f6b69657320617265207479706963616c6c792073746f726564206f6e20796f757220636f6d70757465722773200d0a686172642064726976652e20496e666f726d6174696f6e20636f6c6c65637465642066726f6d20636f6f6b696573206973207573656420627920757320746f206576616c756174650d0a20746865206566666563746976656e657373206f66206f757220536974652c20616e616c797a65207472656e64732c20616e642061646d696e697374657220746865200d0a506c6174666f726d2e2054686520696e666f726d6174696f6e20636f6c6c65637465642066726f6d20636f6f6b69657320616c6c6f777320757320746f2064657465726d696e65200d0a73756368207468696e6773206173207768696368207061727473206f66206f7572205369746520617265206d6f7374207669736974656420616e6420646966666963756c746965730d0a206f75722076697369746f7273206d617920657870657269656e636520696e20616363657373696e67206f757220536974652e20576974682074686973206b6e6f776c656467652c0d0a2077652063616e20696d70726f766520746865207175616c697479206f6620796f757220657870657269656e6365206f6e2074686520506c6174666f726d206279200d0a7265736f6c76696e672061636365737320646966666963756c7469657320616e64207265636f676e697a696e6720616e642064656c69766572696e67206d6f7265206f66207468650d0a206d6f7374206465736972656420666561747572657320616e6420696e666f726d6174696f6e2e3c2f703e0d0a20202020202020202020202020202020202020203c703e576520616c736f2075736520636f6f6b69657320616e642f6f72206120746563686e6f6c6f6779206b6e6f776e206173200d0a7765622062756773206f7220636c65617220676966732c20776869636820617265207479706963616c6c792073746f72656420696e20656d61696c7320746f2068656c70207573200d0a636f6e6669726d20796f75722072656365697074206f662c20616e6420726573706f6e736520746f2c206f757220656d61696c7320616e6420746f2070726f7669646520796f75200d0a776974682061206d6f726520706572736f6e616c697a656420657870657269656e6365207768656e207573696e67206f757220536974652e3c2f703e0d0a20202020202020202020202020202020202020203c703e57652075736520746869726420706172747920736572766963652070726f76696465722873292c20746f206173736973740d0a20757320696e2062657474657220756e6465727374616e64696e672074686520757365206f66206f757220536974652e204f757220736572766963652070726f76696465722873290d0a2077696c6c20706c61636520636f6f6b696573206f6e207468652068617264206472697665206f6620796f757220636f6d707574657220616e642077696c6c2072656365697665200d0a696e666f726d6174696f6e2077652073656c6563742c20746861742077696c6c2065647563617465207573206f6e2073756368207468696e677320617320686f77200d0a76697369746f7273206e617669676174652061726f756e64206f757220736974652c20776861742070726f6475637473206172652062726f777365642c20616e64200d0a67656e6572616c205472616e73616374696f6e20696e666f726d6174696f6e2e204f757220736572766963652070726f766964657228732920616e616c797365732074686973200d0a696e666f726d6174696f6e20616e642070726f7669646573207573207769746820616767726567617465207265706f7274732e2054686520696e666f726d6174696f6e20616e64200d0a616e616c797369732070726f7669646564206279206f757220736572766963652070726f76696465722873292077696c6c206265207573656420746f20617373697374207573200d0a696e2062657474657220756e6465727374616e64696e67206f75722076697369746f72732720696e7465726573747320696e206f7572205369746520616e6420686f7720746f200d0a6265747465722073657276652074686f736520696e746572657374732e3c2f703e0d0a20202020202020202020202020202020202020203c703e54686520696e666f726d6174696f6e20636f6c6c6563746564206279206f75722073657276696365200d0a70726f7669646572287329206d6179206265206c696e6b656420746f20616e6420636f6d62696e6564207769746820696e666f726d6174696f6e2074686174207765200d0a636f6c6c6563742061626f757420796f75207768696c6520796f7520617265207573696e672074686520506c6174666f726d2e204f75722073657276696365200d0a70726f76696465722873292069732f61726520636f6e747261637475616c6c7920726573747269637465642066726f6d207573696e6720696e666f726d6174696f6e2074686579200d0a726563656976652066726f6d206f75722053697465206f74686572207468616e20746f206173736973742075732e3c2f703e0d0a20202020202020202020202020202020202020203c703e4279207573696e67206f7572205369746520796f7520617265206167726565696e672074686174207765206d61792075736520636f6f6b69657320666f722074686520707572706f73657320736574206f75742061626f76653c2f703e0d0a20202020202020202020202020202020202020203c703e596f752063616e2066696e64206f7574206d6f72652061626f75742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464c2927320757365206f6620436f6f6b69657320696e206f7572266e6273703b436f6f6b696520506f6c6963793c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e55736573206d616465206f662074686520696e666f726d6174696f6e0d0a20202020202020202020202020202020202020203c6f6c3e3c6c6920636c6173733d226c6973742d7375627469746c65223e57652075736520696e666f726d6174696f6e2068656c642061626f757420796f7520696e2074686520666f6c6c6f77696e6720776179733a0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e666f726d6174696f6e20796f75206769766520746f2075732e266e6273703b3c2f7374726f6e673e2057652077696c6c20757365207468697320696e666f726d6174696f6e3a3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e746f206361727279206f7574206f7572206f626c69676174696f6e732061726973696e670d0a2066726f6d20616e7920636f6e74726163747320656e746572656420696e746f206265747765656e20796f7520616e6420757320616e6420746f2070726f7669646520796f75200d0a776974682074686520696e666f726d6174696f6e2c2070726f647563747320616e64207365727669636573207468617420796f7520726571756573742066726f6d2075733b3c2f6c693e3c6c693e746f2070726f7669646520796f75207769746820696e666f726d6174696f6e200d0a61626f7574206f7468657220676f6f647320616e64207365727669636573207765206f666665722074686174206172652073696d696c617220746f2074686f73652074686174200d0a796f75206861766520616c726561647920707572636861736564206f7220656e7175697265642061626f75743b3c2f6c693e3c6c693e746f2070726f7669646520796f752c206f72207065726d69742073656c6563746564200d0a7468697264207061727469657320746f2070726f7669646520796f752c207769746820696e666f726d6174696f6e2061626f757420676f6f6473206f72207365727669636573200d0a7765206665656c206d617920696e74657265737420796f752e20496620796f752061726520616e206578697374696e6720637573746f6d65722c2077652077696c6c206f6e6c79200d0a636f6e7461637420796f7520627920656c656374726f6e6963206d65616e732028652d6d61696c206f7220534d5329207769746820696e666f726d6174696f6e2061626f7574200d0a676f6f647320616e642073657276696365732073696d696c617220746f2074686f7365207768696368207765726520746865207375626a656374206f6620612070726576696f75730d0a2073616c65206f72206e65676f74696174696f6e73206f6620612073616c6520746f20796f752e20496620796f75206172652061206e657720637573746f6d65722c20616e64200d0a7768657265207765207065726d69742073656c6563746564207468697264207061727469657320746f2075736520796f757220646174612c20776520286f72207468657929200d0a77696c6c20636f6e7461637420796f7520627920656c656374726f6e6963206d65616e73206f6e6c7920696620796f75206861766520636f6e73656e74656420746f20746869732e0d0a20496620796f7520646f206e6f742077616e7420757320746f2075736520796f7572206461746120696e2074686973207761792c206f7220746f207061737320796f7572200d0a64657461696c73206f6e20746f207468697264207061727469657320666f72206d61726b6574696e6720707572706f7365732c20706c65617365207469636b20746865200d0a72656c6576616e7420626f78207369747561746564206f6e2074686520666f726d206f6e20776869636820776520636f6c6c65637420796f757220646174613b3c2f6c693e3c6c693e746f206e6f7469667920796f752061626f7574206368616e67657320746f206f757220736572766963653b206f723c2f6c693e3c6c693e746f20656e73757265207468617420636f6e74656e742066726f6d206f757220736974652069732070726573656e74656420696e20746865206d6f737420656666656374697665206d616e6e657220666f7220796f7520616e6420666f7220796f757220636f6d70757465722e3c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e666f726d6174696f6e20776520636f6c6c6563742061626f757420796f752e266e6273703b3c2f7374726f6e673e2057652077696c6c20757365207468697320696e666f726d6174696f6e3a3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e746f2061646d696e6973746572206f7572207369746520616e6420666f72200d0a696e7465726e616c206f7065726174696f6e732c20696e636c7564696e672074726f75626c6573686f6f74696e672c206461746120616e616c797369732c2074657374696e672c200d0a72657365617263682c20737461746973746963616c20616e642073757276657920707572706f7365733b3c2f6c693e3c6c693e746f20696d70726f7665206f7572207369746520746f20656e73757265207468617420636f6e74656e742069732070726573656e74656420696e20746865206d6f737420656666656374697665206d616e6e657220666f7220796f7520616e6420666f7220796f757220636f6d70757465723b3c2f6c693e3c6c693e746f20616c6c6f7720796f7520746f20706172746963697061746520696e20696e746572616374697665206665617475726573206f66206f757220736572766963652c207768656e20796f752063686f6f736520746f20646f20736f3b3c2f6c693e3c6c693e61732070617274206f66206f7572206566666f72747320746f206b656570206f75722073697465207361666520616e64207365637572653b206f723c2f6c693e3c6c693e746f206d656173757265206f7220756e6465727374616e6420746865200d0a6566666563746976656e657373206f66206164766572746973696e6720776520736572766520746f20796f7520616e64206f74686572732c20616e6420746f2064656c69766572200d0a72656c6576616e74206164766572746973696e6720746f20796f753b206f723c2f6c693e3c6c693e746f206d616b652073756767657374696f6e7320616e64200d0a7265636f6d6d656e646174696f6e7320746f20796f7520616e64206f74686572207573657273206f66206f757220736974652061626f757420676f6f6473206f72200d0a73657276696365732074686174206d617920696e74657265737420796f75206f72207468656d2e3c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e666f726d6174696f6e20776520726563656976652066726f6d206f7468657220736f75726365732e266e6273703b3c2f7374726f6e673e0d0a2057652077696c6c20636f6d62696e65207468697320696e666f726d6174696f6e207769746820696e666f726d6174696f6e20796f75206769766520746f20757320616e64200d0a696e666f726d6174696f6e20776520636f6c6c6563742061626f757420796f752e2057652077696c6c20757365207468697320696e666f726d6174696f6e20616e6420746865200d0a636f6d62696e656420696e666f726d6174696f6e20666f722074686520707572706f73657320736574206f75742061626f76652028646570656e64696e67206f6e20746865200d0a7479706573206f6620696e666f726d6174696f6e2077652072656365697665292e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e57652077696c6c2075736520616e642070726f6365737320796f757220506572736f6e616c20496e666f726d6174696f6e206f6e6c7920666f722074686520707572706f736528732920666f7220776869636820697420686173206265656e2070726f766964656420746f2075732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c6920636c6173733d226c6973742d7375627469746c65223e446973636c6f73757265206f6620796f757220696e666f726d6174696f6e0d0a202020202020202020202020202020202020202020202020202020203c703e596f75206167726565207468617420776520686176652074686520726967687420746f20736861726520796f757220706572736f6e616c20696e666f726d6174696f6e20776974683a3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e576520646f206e6f74207472616e7366657220796f757220506572736f6e616c204461746120746f20746869726420506172746965732c206578636570742063617365732c207468617420617265206d656e74696f6e656420696e2074686973205072697661637920506f6c6963792e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e57697468206f757220706172746e6572732e3c2f7374726f6e673e205765200d0a6d617920736861726520696e666f726d6174696f6e20776974682076656e646f72732c20636f6e73756c74616e74732c20616e64206f746865722073657276696365200d0a70726f7669646572732028627574206e6f74207769746820616476657274697365727320616e6420616420706172746e657273292077686f206e6565642061636365737320746f200d0a7375636820696e666f726d6174696f6e20746f206361727279206f757420776f726b20666f722075732e2054686520706172746e6572c2927320757365206f6620706572736f6e616c0d0a20646174612077696c6c206265207375626a65637420746f20617070726f70726961746520636f6e666964656e7469616c69747920616e64207365637572697479200d0a6d656173757265732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e466f72206578616d706c653a3c2f7374726f6e673e20746f206d616b65207061796d656e74732c20636f6e6669726d2070686f6e65206e756d6265727320616e6420696d70726f7665207468652066756e6374696f6e696e67206f66207468652073657276696365732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e546f20636f6d706c79207769746820746865206c61772e3c2f7374726f6e673e200d0a5765206d617920736861726520696e666f726d6174696f6e20696e20726573706f6e736520746f2061207265717565737420666f7220696e666f726d6174696f6e206966207765200d0a62656c6965766520646973636c6f7375726520697320696e206163636f7264616e636520776974682c206f722072657175697265642062792c20616e79206170706c696361626c650d0a206c61772c20726567756c6174696f6e2c206c6567616c2070726f63657373206f7220676f7665726e6d656e74616c20726571756573742c20696e636c7564696e672c20627574200d0a6e6f74206c696d6974656420746f2c206d656574696e67206e6174696f6e616c207365637572697479206f72206c617720656e666f7263656d656e74200d0a726571756972656d656e74732e20546f2074686520657874656e7420746865206c617720616c6c6f77732069742c2077652077696c6c20617474656d707420746f200d0a70726f7669646520796f752077697468207072696f72206e6f74696365206265666f726520646973636c6f73696e6720796f757220696e666f726d6174696f6e20696e200d0a726573706f6e736520746f2073756368206120726571756573742e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e496e20616e20656d657267656e63792e3c2f7374726f6e673e205765206d617920736861726520696e666f726d6174696f6e2069662077652062656c696576652069742773206e656365737361727920746f2070726576656e7420696d6d696e656e7420616e6420736572696f757320626f64696c79206861726d20746f206120706572736f6e2e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e546f20656e666f726365206f757220706f6c696369657320616e64207269676874732e3c2f7374726f6e673e0d0a205765206d617920736861726520696e666f726d6174696f6e2069662077652062656c6965766520796f757220616374696f6e732061726520696e636f6e73697374656e74200d0a77697468206f757220757365722061677265656d656e74732c2072756c65732c206f72206f746865722043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c746420706f6c69636965732c206f7220746f2070726f7465637420746865207269676874732c2070726f70657274792c20616e6420736166657479206f660d0a206f757273656c76657320616e64206f74686572732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e57697468206f757220616666696c69617465732e3c2f7374726f6e673e205765200d0a6d617920736861726520696e666f726d6174696f6e206265747765656e20616e6420616d6f6e672043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573200d0a4c746420616e6420616e79206f66206f757220706172656e74732c20616666696c69617465732c207375627369646961726965732c20616e64206f74686572200d0a636f6d70616e69657320756e64657220636f6d6d6f6e20636f6e74726f6c20616e64206f776e6572736869702e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e3c7374726f6e673e5769746820796f757220636f6e73656e742e3c2f7374726f6e673e205765206d617920736861726520696e666f726d6174696f6e2061626f757420796f75207769746820796f757220636f6e73656e74206f7220617420796f757220646972656374696f6e2e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e576520656e6761676520736572766963652070726f76696465727320746f20706572666f726d200d0a66756e6374696f6e7320616e642070726f7669646520736572766963657320746f2075732e20466f72206578616d706c652c2077652075736520612076617269657479206f66200d0a74686972642d706172747920736572766963657320746f2068656c70206f706572617465206f757220736572766963657320616e6420746f2068656c70207573200d0a756e6465727374616e642074686520757365206f66206f75722073657276696365732c207375636820617320476f6f676c6520416e616c79746963732e205765206d6179200d0a736861726520796f7572207072697661746520706572736f6e616c20646174612077697468207375636820736572766963652070726f766964657273207375626a65637420746f200d0a6f626c69676174696f6e7320636f6e73697374656e7420776974682074686973205072697661637920506f6c69637920616e6420616e79206f74686572200d0a617070726f70726961746520636f6e666964656e7469616c69747920616e64207365637572697479206d656173757265732c20616e64206f6e2074686520636f6e646974696f6e200d0a746861742074686520746869726420706172746965732075736520796f7572207072697661746520706572736f6e616c2064617461206f6e6c79206f6e206f757220626568616c660d0a20616e64207075727375616e7420746f206f757220696e737472756374696f6e732e20576520736861726520796f7572207061796d656e7420696e666f726d6174696f6e200d0a77697468207061796d656e742073657276696365732070726f76696465727320746f2070726f63657373207061796d656e74733b2070726576656e742c206465746563742c200d0a616e6420696e766573746967617465206672617564206f72206f746865722070726f6869626974656420616374697669746965733b20666163696c697461746520646973707574650d0a207265736f6c7574696f6e2073756368206173206368617267656261636b73206f7220726566756e64733b20616e6420666f72206f7468657220707572706f736573200d0a6173736f63696174656420776974682074686520616363657074616e6365206f662063726564697420616e642064656269742063617264732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e5765206d617920706172746e657220776974682074686972642d7061727479200d0a61647665727469736572732c206164206e6574776f726b7320746f2064656c69766572206164766572746973696e6720616e6420636f6e74656e7420746172676574656420746f200d0a796f757220696e7465726573747320616e6420746f2062657474657220756e6465727374616e6420796f757220757365206f66207468652053657276696365732e205468657365200d0a74686972642070617274696573206d617920636f6c6c65637420696e666f726d6174696f6e2073656e7420627920796f757220636f6d70757465722c2062726f777365722c206f720d0a206d6f62696c652064657669636520696e20726573706f6e736520746f2061207265717565737420666f7220636f6e74656e742c207375636820617320756e69717565200d0a6964656e746966696572732c20796f757220495020616464726573732c206c6f636174696f6e206f72206f7468657220696e666f726d6174696f6e2061626f757420796f7572200d0a636f6d7075746572206f72206465766963652e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e496620796f75207375626d697420706572736f6e616c6c79206964656e7469666961626c65200d0a696e666f726d6174696f6e20746f207573207468726f756768207468652043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464200d0a53657276696365732c207468656e207765206d61792075736520796f757220706572736f6e616c20696e666f726d6174696f6e20746f206f7065726174652c200d0a6d61696e7461696e2c20616e642070726f7669646520666561747572657320616e642066756e6374696f6e616c697479206f66206f757220776562736974652c2061707020616e640d0a20616e6f746865722073657276696365732e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e4f7468657220696e666f726d6174696f6e2c207468617420646f6573206e6f74200d0a706572736f6e616c6c79206964656e7469667920796f7520617320616e20696e646976696475616c20697320636f6c6c65637465642062792043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c74642028737563682061732c20627920776179206f66206578616d706c652c207061747465726e73206f66207573652920616e64200d0a6973206578636c75736976656c79206f776e65642062792043727970746f636f696e4658204d696e65727354726164696e67205365727669636573204c74642e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642063616e20757365207468697320696e666f726d6174696f6e20696e2073756368206d616e6e6572200d0a746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642c20696e2069747320736f6c652064697363726574696f6e2c206465656d73200d0a617070726f7072696174652e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e5765206d617920736861726520737065636966696320616767726567617465642c200d0a6e6f6e2d706572736f6e616c20696e666f726d6174696f6e207769746820746869726420706172746965732c207375636820617320746865206e756d626572206f662075736572730d0a2077686f2068617665207265676973746572656420776974682075732c2074686520766f6c756d6520616e64207061747465726e206f66207472616666696320746f20616e64200d0a77697468696e2074686520776562736974652c206574632e205468617420696e666f726d6174696f6e2077696c6c206e6f74206964656e7469667920796f752c20746865200d0a696e646976696475616c2c20696e20616e79207761792e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e5765207368616c6c206e6f742075736520796f757220656d61696c206f72206f74686572200d0a636f6e7461637420696e666f726d6174696f6e20666f722073656e64696e67206f6620636f6d6d65726369616c2070726f706f73616c2c206f74686572206d61726b6574696e67200d0a6e656564732c20776974686f757420796f7572207072696f7220636f6e73656e742e3c2f703e0d0a202020202020202020202020202020202020202020202020202020203c703e41732077657265206d656e74696f6e65642061626f76652c207768656e20796f752073656e642075730d0a206d657373616765732c2077652063616e206b656570207468656d20666f722061646d696e6973746572696e67206f6620796f757220696e717569726965732c20666f72200d0a696d70726f76696e67206f66206f75722073657276696365732e205765207368616c6c206e6f74207472616e7366657220696e666f726d6174696f6e2066726f6d2073756368200d0a6d6573736167657320746f20746869726420706172746965732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020203c2f6c693e3c6c693e57686572652077652073746f726520796f757220706572736f6e616c20646174610d0a20202020202020202020202020202020202020203c703e5468652064617461207468617420776520636f6c6c6563742066726f6d20796f752077696c6c206265200d0a7472616e7366657272656420746f2c20616e642073746f7265642061742c20612064657374696e6174696f6e206f75747369646520746865204575726f7065616e200d0a45636f6e6f6d6963204172656120282245454122292e2049742077696c6c20616c736f2062652070726f636573736564206279207374616666206f7065726174696e67200d0a6f75747369646520746865204545412077686f20776f726b20666f72207573206f7220666f72206f6e65206f66206f757220737570706c696572732e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642077696c6c20656e737572652074686174207468652072656c6576616e74207468697264207061727479200d0a61677265657320746f206170706c79207468652073616d65206c6576656c73206f662070726f74656374696f6e20746861742043727970746f636f696e4658204d696e6572730d0a54726164696e67205365727669636573204c7464206973206c6567616c6c79206f626c6967656420746f206861766520696e20706c616365207768656e206974200d0a70726f63657373657320706572736f6e616c20646174612e205468697320696e636c7564657320737461666620656e676167656420696e2c20616d6f6e67206f74686572200d0a7468696e67732c207468652066756c66696c6c6d656e74206f6620796f7572206f726465722c207468652070726f63657373696e67206f6620796f7572207061796d656e74200d0a64657461696c7320616e64207468652070726f766973696f6e206f6620737570706f72742073657276696365732e204279207375626d697474696e6720796f7572200d0a706572736f6e616c20646174612c20796f7520616772656520746f2074686973207472616e736665722c2073746f72696e67206f722070726f63657373696e672e205765200d0a77696c6c2074616b6520616c6c20737465707320726561736f6e61626c79206e656365737361727920746f20656e73757265207468617420796f75722064617461206973200d0a74726561746564207365637572656c7920616e6420696e206163636f7264616e636520776974682074686973205072697661637920506f6c6963792e3c2f703e0d0a20202020202020202020202020202020202020203c703e416c6c20706572736f6e616c20696e666f726d6174696f6e20796f752070726f7669646520746f207573206973200d0a73746f726564206f6e206f75722073656375726520736572766572732e20416e79207061796d656e74207472616e73616374696f6e732077696c6c206265200d0a656e637279707465642e205768657265207765206861766520676976656e20796f7520286f7220776865726520796f7520686176652063686f73656e2920612070617373776f72640d0a20776869636820656e61626c657320796f7520746f20616363657373206365727461696e207061727473206f66206f757220736974652c20796f7520617265200d0a726573706f6e7369626c6520666f72206b656570696e6720746869732070617373776f726420636f6e666964656e7469616c2e2057652061736b20796f75206e6f7420746f200d0a736861726520612070617373776f7264207769746820616e796f6e652e3c2f703e0d0a20202020202020202020202020202020202020203c703e556e666f7274756e6174656c792c20746865207472616e736d697373696f6e206f6620696e666f726d6174696f6e200d0a7669612074686520696e7465726e6574206973206e6f7420636f6d706c6574656c79207365637572652e20416c74686f7567682077652077696c6c20646f206f75722062657374200d0a746f2070726f7465637420796f757220706572736f6e616c20646174612c2077652063616e6e6f742067756172616e74656520746865207365637572697479206f6620796f7572200d0a64617461207472616e736d697474656420746f206f757220736974653b20616e79207472616e736d697373696f6e20697320617420796f7572206f776e207269736b2e204f6e63650d0a207765206861766520726563656976656420796f757220696e666f726d6174696f6e2c2077652077696c6c20757365207374726963742070726f6365647572657320616e64200d0a736563757269747920666561747572657320746f2074727920746f2070726576656e7420756e617574686f7269736564206163636573732e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e596f75722072696768747320726567617264696e6720636f6c6c65637465642050490d0a20202020202020202020202020202020202020203c703e596f752063616e2061636365737320616e64206368616e6765206365727461696e20696e666f726d6174696f6e207468726f756768207468652053657276696365732e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f75206d61792064656c65746520796f7572206163636f756e7420696e666f726d6174696f6e20617420616e79200d0a74696d652066726f6d2074686520707265666572656e63657320706167652e20427574207765206d61792072657461696e206365727461696e20696e666f726d6174696f6e200d0a61626f757420796f75206173207265717569726564206279206c6177206f7220666f72206c65676974696d61746520627573696e65737320707572706f736573206166746572200d0a796f752064656c65746520796f7572206163636f756e742e3c2f703e0d0a20202020202020202020202020202020202020203c703e496620796f7520696e697469616c6c7920636f6e73656e7420746f206f757220636f6c6c656374696f6e206f66200d0a6c6f636174696f6e20696e666f726d6174696f6e2c20796f752063616e2073756273657175656e746c792073746f702074686520636f6c6c656374696f6e206f662074686973200d0a696e666f726d6174696f6e20617420616e792074696d65206279206368616e67696e672074686520707265666572656e636573206f6e20796f75722062726f777365722e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f7520686176652074686520726967687420746f207265636569766520696e666f726d6174696f6e200d0a726567617264696e6720707572706f736573206f6620506572736f6e616c20696e666f726d6174696f6e20636f6c6c656374696f6e2c20726567617264696e67207468697264200d0a706172746965732c20746f20776869636820776520646973636c6f736520796f757220706572736f6e616c20696e666f726d6174696f6e2c20696e666f726d6174696f6e2c200d0a726567617264696e672073616665677561726473207468617420617265206170706c696361626c6520666f72207365637572652073746f72616765206f6620796f7572200d0a506572736f6e616c20696e666f726d6174696f6e2c20706572696f64206f662074696d6520666f7220776869636820506572736f6e616c20696e666f726d6174696f6e2077696c6c0d0a2062652073746f7265642e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f7520616c736f20686176652074686520726967687420746f2064656d616e642065726173757265206f66200d0a706572736f6e616c206461746120636f6e6365726e696e6720796f752073656e64696e67207573206120726571756573742e2043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c7464207368616c6c2066756c66696c20796f7572207265717565737420696e20617070726f70726961746520706572696f64206f66200d0a74696d652e204966207468657265206973206e6f206f74686572206c617766756c2067726f756e6420666f722073746f72696e6720616e642070726f63657373696e67206f66200d0a796f75722050492c2061732070726573637269626564206279206170706c696361626c65206c61772c2043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c7464207368616c6c206572617365207375636820696e666f726d6174696f6e2e20496620746865726520697320616e6f74686572206c6567616c200d0a67726f756e6420666f7220737563682070726f63657373696e672c2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464207368616c6c200d0a6e6f7469667920796f7520696e20617070726f70726961746520706572696f64206f662074696d652e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f7520616c736f20686176652074686520726967687420746f2064656d616e64207265737472696374696f6e206f66200d0a7468652073746f72696e6720616e642070726f63657373696e67206f66207468652050492c206966206c6567616c2067726f756e647320666f7220737563682064656d616e6473200d0a686176652061726973656e202f206173207072657363726962656420696e206170706c696361626c65206c61772e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f7520686176652074686520726967687420746f206f626a6563742070726f63657373696e67206f66200d0a706572736f6e616c206461746120636f6e6365726e696e6720796f757273656c6620756e6465722063697263756d7374616e6365732c207468617420617265200d0a7072657363726962656420696e206170706c696361626c65206c61772e20496e2063617365206f662073756368206f626a656374696f6e2c2043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c7464207368616c6c20726573747261696e2066726f6d2070726f63657373696e67206f6620796f75722050492c2069662074686572650d0a2077696c6c206265206e6f206f74686572206c6567616c2067726f756e647320666f7220636f6e74696e75696e67206f662070726f63657373696e672e3c2f703e0d0a20202020202020202020202020202020202020203c703e43727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642074616b657320796f7572200d0a726967687473207665727920736572696f75736c792e20486f77657665722c20696620796f7520617265206f6620746865206f70696e696f6e20746861742077652068617665200d0a6e6f74206465616c74207769746820796f757220636f6d706c61696e74732061646571756174656c792c20796f7520686176652074686520726967687420746f207375626d697420610d0a20636f6d706c61696e7420746f20746865206461746120707269766163792070726f74656374696f6e20617574686f72697469657320726573706f6e7369626c652e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f7520686176652074686520726967687420746f2061736b2043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c746420746f2070726f7669646520796f752077697468206120737472756374757265642c206c697374206f662070726576696f75736c79200d0a70726f76696465642050492e20596f7520616c736f2063616e2061736b2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c746420746f200d0a7472616e736d697420796f757220504920746f2070726576696f75736c792063686f73656e2074686972642070617274792e3c2f703e0d0a20202020202020202020202020202020202020203c703e546f2073656e642061207265717565737420666f722064656c6574652c2072656374696669636174696f6e20616e64207375626d697373696f6e206f6620504420706c65617365207573652074686520666565646261636b20666f726d2e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e50726f74656374696f6e206f662074686520506572736f6e616c20496e666f726d6174696f6e0d0a20202020202020202020202020202020202020203c703e57652070726f766964652074686520666f6c6c6f77696e6720736166657479206d6561737572657320726567617264696e672070726f74656374696f6e206f6620596f75722050493a3c2f703e0d0a20202020202020202020202020202020202020203c6f6c3e3c6c693e6576616c756174696f6e206f6620746865206566666563746976656e657373206f662075736564207365637572697479206d656173757265732c207072696f7220746f20746865206c61756e6368206f6620746865207765627369746520616e642069747320757064617465733b3c2f6c693e3c6c693e65737461626c697368696e672072756c657320746f2061636365737320746f20706572736f6e616c200d0a646174612070726f6365737365642062792074686520776562736974652c2061732077656c6c20617320656e737572696e6720726567697374726174696f6e20616e64200d0a7265636f7264696e67206f6620616c6c20616374696f6e7320706572666f726d6564207769746820504920696e2074686520696e666f726d6174696f6e2073797374656d73206f660d0a2074686520776562736974653b3c2f6c693e3c6c693e646574656374696f6e206f6620746865206661637473206f6620756e617574686f72697a65642061636365737320746f20504920616e64207468652061646f7074696f6e206f6620617070726f70726961746520726573706f6e7365206d656173757265733b3c2f6c693e3c6c693e726573746f726174696f6e206f66205049207468617420776173206d6f646966696564206f72200d0a64657374726f7965642064756520746f20756e617574686f72697a65642061636365737320746f207468656d202877697468696e20746865206672616d65776f726b206f66200d0a746563686e6963616c206361706162696c697479206f66207468652050726f6a656374292e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c703e5765207573652c2073746f726520616e642070726f6365737320796f7572205049206f6e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464207365727665727320696e20766172696f7573206a7572697364696374696f6e732c207768657265200d0a6f757220666163696c697469657320616e642f6f7220736572766963652070726f76696465727320617265206c6f63617465642e2042792066696c6c696e672061200d0ac2ab636f6e73656e74206170706c69636174696f6ec2bb20596f7520616772656520746f2074686973207472616e736665722c2073746f72696e672c206f72200d0a70726f63657373696e672e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642077696c6c2074616b6520616c6c207374657073200d0a726561736f6e61626c79206e656365737361727920746f20656e73757265207468617420796f757220506572736f6e616c20446174612069732074726561746564200d0a7365637572656c7920616e6420696e206163636f7264616e63652077697468207468697320506f6c6963792e2043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642070726f7465637420796f757220506572736f6e616c204461746120756e64657220696e7465726e6174696f6e616c6c79200d0a61636b6e6f776c6564676564207374616e64617264732c207573696e6720706879736963616c2c20746563686e6963616c2c20616e642061646d696e697374726174697665200d0a7365637572697479206d6561737572657320746f2072656475636520746865207269736b73206f66206c6f73732c206d69737573652c20756e617574686f72697a6564200d0a6163636573732c20646973636c6f737572652c20616e6420616c7465726174696f6e2e20536f6d65206f662074686520736166656775617264732043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642075736520617265206669726577616c6c7320616e64206461746120656e6372797074696f6e2c200d0a706879736963616c2061636365737320636f6e74726f6c7320746f206f757220646174612063656e746572732c20616e6420696e666f726d6174696f6e20616363657373200d0a617574686f72697a6174696f6e20636f6e74726f6c732e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c746420616c736f200d0a617574686f72697a652061636365737320746f20506572736f6e616c2044617461206f6e6c7920666f722074686f736520656d706c6f79656573206f72200d0a636f6e74726163746f72732077686f207265717569726520697420746f2066756c66696c207468656972206a6f62206f722073657276696365200d0a726573706f6e736962696c69746965732e20416c6c206f66206f757220706879736963616c2c20656c656374726f6e69632c20616e642070726f6365647572616c200d0a73616665677561726473206172652064657369676e656420746f20636f6d706c792077697468206170706c696361626c65206c61777320616e6420726567756c6174696f6e732e200d0a54686972642070617274696573206d6179206265206c6f636174656420696e206f7468657220636f756e747269657320776865726520746865206c617773206f6e200d0a70726f63657373696e67206f6620506572736f6e616c2044617461206d6179206265206c65737320737472696e67656e74207468616e20696e20796f757220636f756e7472792e200d0a46726f6d2074696d6520746f2074696d652c2074686520506572736f6e616c2044617461206d617920626520616c736f2073746f72656420696e206f74686572200d0a6c6f636174696f6e732c20616e6420696e20737563682063617365732c2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642077696c6c200d0a656e7375726520746861742074686520506572736f6e616c20446174612077696c6c2062652073746f72656420616e642070726f636573736564207769746820746865200d0a726561736f6e61626c65206c6576656c206f66206361726520616e642073656375726974792e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e4e6f74696669636174696f6e0d0a20202020202020202020202020202020202020203c703e49662043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464206265636f6d6573200d0a6177617265206f662073656375726974792073797374656d73206272656163682c207468656e207765206d617920617474656d707420746f206e6f7469667920796f75200d0a656c656374726f6e6963616c6c7920736f207468617420796f752063616e2074616b6520617070726f7072696174652070726f746563746976652073746570732e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c7464206d617920706f73742061206e6f74696365206f6e206f7572207765627369746520696620746865200d0a736563757269747920627265616368206f63637572732e3c2f703e0d0a20202020202020202020202020202020202020203c703e5768656e2074686520706572736f6e616c206461746120627265616368206973206c696b656c7920746f20726573756c740d0a20696e20612068696768207269736b20746f207468652072696768747320616e642066726565646f6d73206f662075736572732c2043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c74642077696c6c20696e666f726d20796f752e3c2f703e0d0a20202020202020202020202020202020202020203c703e496e20746865206576656e7420746861742043727970746f636f696e4658204d696e6572732054726164696e672053657276696365730d0a204c7464206973206163717569726564206279206f72206d65726765642077697468206120746869726420706172747920656e746974792c207765207265736572766520746865200d0a72696768742c20696e20616e79206f662074686573652063697263756d7374616e6365732c20746f207472616e73666572206f722061737369676e20746865200d0a696e666f726d6174696f6e207765206861766520636f6c6c65637465642066726f6d206f75722055736572732061732070617274206f662073756368206d65726765722c200d0a6163717569736974696f6e2c2073616c652c206f72206f74686572206368616e6765206f6620636f6e74726f6c2e204966207765206265636f6d6520696e766f6c76656420696e20610d0a206d65726765722c206163717569736974696f6e2c206f7220616e7920666f726d206f662073616c65206f6620736f6d65206f7220616c6c206f6620697473206173736574732c200d0a77652077696c6c206e6f74696679205573657273206265666f726520706572736f6e616c20696e666f726d6174696f6e206973207472616e7366657272656420616e64200d0a6265636f6d6573207375626a65637420746f206120646966666572656e74207072697661637920706f6c6963792e20496e2074686520756e6c696b656c79206576656e74206f66200d0a6f75722062616e6b7275707463792c20696e736f6c76656e63792c2072656f7267616e697a6174696f6e2c207265636569766572736869702c206f722061737369676e6d656e74200d0a666f72207468652062656e65666974206f66206372656469746f72732c206f7220746865206170706c69636174696f6e206f66206c617773206f7220657175697461626c65200d0a7072696e6369706c657320616666656374696e67206372656469746f727327207269676874732067656e6572616c6c792c207765206d6179206e6f742062652061626c6520746f200d0a636f6e74726f6c20686f7720596f757220706572736f6e616c20696e666f726d6174696f6e20697320747265617465642c207472616e736665727265642c206f7220757365642e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e4368616e67657320746f206f7572207072697661637920706f6c6963790d0a20202020202020202020202020202020202020203c703e5765206d6179207265766973652074686973205072697661637920506f6c6963792066726f6d2074696d6520746f200d0a74696d652e20546865206d6f73742063757272656e742076657273696f6e206f662074686520706f6c6963792077696c6c20676f7665726e206f75722070726f63657373696e67200d0a6f6620796f757220706572736f6e616c206461746120616e642077696c6c20616c776179732062652061742063727970746f636f696e66786d696e6572732e636f6d3c6120687265663d2268747470733a2f2f74726164656d696e65727366782e636f6d2f696e6465782e706870223e3c2f613e2e0d0a204966207765206d616b652061206368616e676520746f207468697320706f6c69637920746861742c20696e206f757220736f6c652064697363726574696f6e2c206973200d0a6d6174657269616c2c2077652077696c6c206e6f7469667920796f752076696120616e20656d61696c20746f2074686520656d61696c2061646472657373200d0a6173736f636961746564207769746820796f7572206163636f756e742e204966207265717569726564206279206c61772c2077652077696c6c2067657420796f7572200d0a7065726d697373696f6e206f72206769766520796f7520746865206f70706f7274756e69747920746f206f7074206f7574206f6620616e79206e65772075736573206f66200d0a796f757220506572736f6e616c20496e666f726d6174696f6e2e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e436f6e746163742075730d0a20202020202020202020202020202020202020203c703e466f722074686520707572706f7365206f662074686520446174612050726f74656374696f6e2041637420323030342c200d0a746865206461746120636f6e74726f6c6c6572206973205472616465204d696e65727346582054726164696e67205365727669636573204c7464206f6620537569746520312c200d0a5365636f6e6420666c6f6f722c20536f756e642026616d703b20566973696f6e20686f7573652c204672616e6369732052616368656c205374722e2c20566963746f7269612c200d0a4d6168652c205365796368656c6c65733c2f703e0d0a20202020202020202020202020202020202020203c703e496620596f75206861766520616e79207175657374696f6e732061626f75742074686973205072697661637920506f6c6963792c20706c65617365206665656c206672656520746f20636f6e74616374207573206f7220746f20777269746520746f20757320617420652d6d61696c3a0d0a2020202020202020202020202020202020202020202020203c6120687265663d226d61696c746f3a737570706f72744074726164656d696e65727366782e636f6d223e3c7370616e20636c6173733d225f5f63665f656d61696c5f5f2220646174612d6366656d61696c3d22316136393666366136613735363836653561366136383733373737663632373836653334373937353737223e5b537570706f72745d3c2f7370616e3e3c2f613e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a20202020202020203c2f6469763e0d0a202020203c2f73656374696f6e3e3c2f6469763e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f6469763e3c2f73656374696f6e3e, 1, 0, 'CryptocoinFX Miners,privacy policy', 'CryptocoinFX Miners privacy policy', '2021-02-17 06:54:16', '2021-12-10 03:31:18');
INSERT INTO `daynamicpages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 'Terms and Conditions', 'Policy', 'Terms-and-Conditions', 0x3c73656374696f6e20636c6173733d22707269766163792d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020203c64697620636c6173733d22726f77223e0d0a202020202020202020202020202020203c64697620636c6173733d22636f6c2d6c672d3132223e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e3c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e546869732077656273697465207365727669636573206172652072656c61746564200d0a746f20616e642070726f76696465642062792043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c746420285365796368656c6c6573200d0a636f6d70616e79206e722e203230363836354445332920616e64205072696d6520546563686e6f6c6f67696573204c74642e20285361696e742056696e63656e7420616e64200d0a746865204772656e6164696e657320636f6d70616e79206e722e20323036383635444533292e3c2f703e0d0a20202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d7465787422207374796c653d226d617267696e2d626f74746f6d3a2030223e506c656173652066696e642062656c6f77206120636f6d70726568656e73697665206c697374206f66206c6567616c20646f63756d656e74732072656c6174656420746f2074686520757365206f66207777772e63727970746f636f696e66786d696e6572732e636f6d207765627369746528732920616e642073657276696365732e20497420697320696d706f7274616e74207468617420796f75206d616b6520796f757273656c66206177617265206f6620746865736520616e6420616772656520746f207468656d206265666f7265207573696e67206f757220776562736974652873292e3c2f703e3c2f6469763e3c73656374696f6e2069643d22636f6e647322207374796c653d22646973706c61793a20626c6f636b3b223e0d0a2020202020202020202020203c64697620636c6173733d226c6567616c2d7465726d732d73656374696f6e207072732d636f6e7461696e6572223e0d0a202020202020202020202020202020203c683220636c6173733d227072732d7469746c65206c6567616c2d7465726d732d7469746c65223e5465726d7320616e6420436f6e646974696f6e733c2f68323e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e427920616363657373696e672c200d0a76696577696e672c207573696e67206f7220636c69636b696e6720c29349206167726565c29420746f20616e79206f6620746865207365727669636573206d616465200d0a617661696c61626c65206f6e207468697320776562736974652c206f776e656420616e64206f706572617465642062792043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e202868657265696e616674657220726566657272656420746f20617320c2934f70657261746f72c29429207669612061646472657373207777772e63727970746f636f696e66786d696e6572732e636f6d3c6120687265663d2268747470733a2f2f74726164656d696e65727366782e636f6d2f747261646566782f696e6465782e706870223e3c2f613e0d0a202868657265696e616674657220726566657272656420746f20617320c29357656273697465c2942920616e64207573696e6720746865207365727669636573200d0a2868657265696e616674657220726566657272656420746f20617320c29353657276696365c294292070726f7669646564206279205072696d6520546563686e6f6c6f67696573200d0a4c74642e202868657265696e616674657220726566657272656420746f20617320c293536572766963652050726f7669646572c294292c206f7572206d6f62696c65200d0a6170706c69636174696f6e732c206f7220616e79206f746865722072656c6174656420736572766963657320796f752061636b6e6f776c65646765207468617420796f75200d0a6861766520726561642c20756e6465727374616e642c20616e6420756e636f6e646974696f6e616c6c7920616772656520746f20626520626f756e6420627920746865200d0a5465726d73206f6620746869732061677265656d656e742e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e546865204f70657261746f722028696e200d0a74686520706172742074686174206166666563747320697473206163746976697469657329206f722074686520536572766963652050726f76696465722028696e20746865200d0a706172742074686174206166666563747320697473206163746976697469657329206d617920617420616e792074696d652c20776974686f7574206e6f746963652c20616d656e640d0a20746865205465726d73206f6620746869732061677265656d656e742e20596f7520616772656520746f20636f6e74696e756520746f20626520626f756e6420627920616e79200d0a616d656e646564207465726d7320616e6420636f6e646974696f6e7320616e64207468617420746865204f70657261746f722028696e2074686520706172742074686174200d0a6166666563747320697473206163746976697469657329206f722074686520536572766963652050726f76696465722028696e2074686520706172742074686174200d0a6166666563747320697473206163746976697469657329206d617920617420616e792074696d652c20776974686f7574206e6f746963652c20616d656e6420746865205465726d730d0a206f6620746869732061677265656d656e742068617665206e6f206f626c69676174696f6e20746f206e6f7469667920796f75206f66207375636820616d656e646d656e74732e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e596f752061636b6e6f776c65646765200d0a7468617420697420697320796f757220726573706f6e736962696c69747920746f20706572696f646963616c6c7920636865636b207468657365205465726d73206f6620746869730d0a2061677265656d656e7420666f72206368616e67657320616e64207468617420636f6e74696e75656420757365206f6620746865205765627369746520616e64200d0a5365727669636573206f66666572656420627920746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473200d0a6163746976697469657329206f722074686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473200d0a616374697669746965732920666f6c6c6f77696e672074686520706f7374696e67206f6620616e79206368616e67657320746f20746865205465726d73206f662074686973200d0a61677265656d656e7420696e6469636174657320796f757220616363657074616e6365206f6620616e792073756368206368616e6765732e20496620796f7520646f206e6f74200d0a61636365707420746865205465726d73206f6620746869732061677265656d656e742c20646f206e6f74206163636573732074686973205765627369746520616e6420646f200d0a6e6f7420757365207468697320536572766963652e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e546869732041677265656d656e74200d0a636f6e7374697475746573207468652061677265656d656e74206265747765656e20796f75202868657265696e616674657220726566657272656420746f206173200d0ac293437573746f6d6572c2942c20c293596f75c2942920616e6420746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473200d0a616374697669746965732920616e642074686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473200d0a61637469766974696573292e20416c6c206f7468657220696e666f726d6174696f6e2070726f7669646564206f6e2074686520576562736974652c2061732077656c6c206173200d0a6f72616c2f7772697474656e2073746174656d656e7473206d6164652c20617265206578636c756465642066726f6d20746869732041677265656d656e742e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e5375626a65637420746f20746865200d0a7465726d7320616e6420636f6e646974696f6e73206f6620746869732041677265656d656e7420616e6420616363657074616e6365206f6620437573746f6d6572c29273200d0a6170706c69636174696f6e20746f206f70656e20616e206163636f756e74202868657265696e616674657220726566657272656420746f20617320c2934163636f756e74c29429200d0a776974682074686520536572766963652050726f76696465722077696c6c206d61696e7461696e206f6e65206f72206d6f7265204163636f756e747320696e200d0a437573746f6d6572c29273206e616d6520666f72204e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732074726164696e67200d0a7769746820616e6420666f7220437573746f6d657220616e642070726f766964652073756368206f7468657220736572766963657320616e642070726f6475637473206173200d0a74686520536572766963652050726f7669646572206d61792c20696e2069747320736f6c652064697363726574696f6e2c2064657465726d696e652066726f6d2074696d6520746f0d0a2074696d6520696e20746865206675747572652e20556e6c65737320657870726573736c7920737461746564206f746865727769736520696e2077726974696e672c20616c6c200d0a3f6f6e74726163747320616e64206f74686572207472616e73616374696f6e7320656e746572656420696e746f206265747765656e207468652053657276696365200d0a50726f766964657220616e6420437573746f6d6572207368616c6c20626520676f7665726e656420627920746865207465726d73206f6620746869732041677265656d656e742c200d0a617320616d656e6465642066726f6d2074696d6520746f2074696d652e3c2f703e0d0a2020202020202020202020203c2f6469763e0d0a2020202020202020202020203c64697620636c6173733d226c6567616c2d7465726d732d73656374696f6e207072732d636f6e7461696e6572223e0d0a202020202020202020202020202020203c683320636c6173733d226c6567616c2d7465726d732d7375627469746c65223e496e746572707265746174696f6e3c2f68333e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e496e20746869732041677265656d656e7420756e6c65737320746865206f70706f7369746520697320636c6561722066726f6d2074686520636f6e746578742074686520666f6c6c6f77696e672072756c6573206f6620696e746572707265746174696f6e206170706c793a3c2f703e0d0a202020202020202020202020202020203c6f6c20636c6173733d227072732d74657874206c6567616c2d7465726d732d6c697374223e3c6c693e556e6c6573732074686520636f6e74657874206f74686572776973652072657175697265732c20776f72647320696e200d0a7468652073696e67756c6172207368616c6c20696e636c7564652074686520706c7572616c20616e6420696e2074686520706c7572616c207368616c6c20696e636c756465200d0a7468652073696e67756c61723b3c2f6c693e3c6c693e556e6c6573732074686520636f6e74657874206f74686572776973652072657175697265732c2061207265666572656e636520746f206f6e652067656e646572207368616c6c20696e636c7564652061207265666572656e636520746f20746865206f746865722067656e646572732e3c2f6c693e3c6c693e5265666572656e63657320746f20636c617573657320616e64207363686564756c65732061726520746f20746865200d0a636c617573657320616e64207363686564756c6573206f6620746869732041677265656d656e7420616e64207265666572656e63657320746f2070617261677261706873206172650d0a20746f2070617261677261706873206f66207468652072656c6576616e74207363686564756c653b3c2f6c693e3c6c693e41207265666572656e636520746f20616e79207061727479207368616c6c20696e636c7564652074686174207061727479c2927320706572736f6e616c20726570726573656e746174697665732c20737563636573736f727320616e64207065726d69747465642061737369676e732e3c2f6c693e3c6c693e546865207465726d2027696e636c7564696e672720646f6573206e6f74206578636c75646520616e797468696e67206e6f74206c69737465643b3c2f6c693e3c6c693e41207265666572656e636520746f20612073746174757465206f72207374617475746f72792070726f766973696f6e2069732061207265666572656e636520746f20697420617320616d656e6465642c20657874656e646564206f722072652d656e61637465642066726f6d2074696d6520746f2074696d653b3c2f6c693e3c6c693e41207265666572656e636520746f20612073746174757465206f72207374617475746f72792070726f766973696f6e200d0a7368616c6c20696e636c75646520616c6c207375626f7264696e617465206c656769736c6174696f6e206d6164652066726f6d2074696d6520746f2074696d6520756e646572200d0a746861742073746174757465206f72207374617475746f72792070726f766973696f6e2e3c2f6c693e3c6c693e41207265666572656e636520746f2077726974696e67206f72207772697474656e20696e636c7564657320652d6d61696c2e3c2f6c693e3c6c693e416e79206f626c69676174696f6e206f6e2061207061727479206e6f7420746f20646f20736f6d657468696e6720696e636c7564657320616e206f626c69676174696f6e206e6f7420746f20616c6c6f772074686174207468696e6720746f20626520646f6e652e3c2f6c693e3c6c693e416e7920776f72647320666f6c6c6f77696e6720746869732041677265656d656e7420696e636c7564696e672c200d0a696e636c7564652c20696e20706172746963756c61722c20666f72206578616d706c65206f7220616e792073696d696c61722065787072657373696f6e207368616c6c206265200d0a636f6e73747275656420617320696c6c75737472617469766520616e64207368616c6c206e6f74206c696d6974207468652073656e7365206f662074686520776f7264732c200d0a6465736372697074696f6e2c20646566696e6974696f6e2c20706872617365206f72207465726d20707265636564696e67206f7220666f6c6c6f77696e672074686174200d0a61677265656d656e742e3c2f6c693e3c6c693e48656164696e6773206f662073656374696f6e732061726520666f7220636f6e76656e69656e6365206f6e6c79200d0a616e64207368616c6c206e6f74206265207573656420746f206c696d6974206f7220636f6e737472756520737563682073656374696f6e732e20416c6c20746865200d0a73656374696f6e7320696e20746869732041677265656d656e74207368616c6c207375727669766520616e79207465726d696e6174696f6e206f722065787069726174696f6e200d0a6f6620746869732041677265656d656e742e3c2f6c693e3c6c693e4365727461696e2073746174656d656e747320696e20746869732041677265656d656e7420616e64200d0a696e666f726d6174696f6e616c20646f63756d656e7473206f6e2074686973205765627369746520636f6e7374697475746520c293666f72776172642d6c6f6f6b696e67200d0a696e666f726d6174696f6ec29420756e646572206170706c696361626c65206c6177732e2045786365707420666f722073746174656d656e7473206f6620686973746f726963616c200d0a666163742c20696e666f726d6174696f6e20636f6e7461696e65642068657265696e206d617920636f6e7374697475746520666f72776172642d6c6f6f6b696e67200d0a73746174656d656e74732e205768656e207573656420696e20746869732041677265656d656e742c2074686520776f72647320c2936d61792cc29420c29377696c6c2cc294200d0ac29373686f756c642cc29420c29370726f6a6563742cc29420c293616e74696369706174652cc29420c29362656c696576652cc29420c293657374696d617465c2942c20c293696e74656e642cc294200d0ac2936578706563742cc29420c293636f6e74696e75652cc29420616e642073696d696c61722065787072657373696f6e73206f7220746865206e65676174697665732074686572656f66200d0a6172652067656e6572616c6c7920696e74656e64656420746f206964656e7469667920666f72776172642d6c6f6f6b696e672073746174656d656e74732e20466f7277617264200d0a6c6f6f6b696e672073746174656d656e747320617265206e6f742067756172616e74656573206f662066757475726520706572666f726d616e63652c20616e6420756e647565200d0a72656c69616e63652073686f756c64206e6f7420626520706c61636564206f6e207468656d2e205375636820666f72776172642d6c6f6f6b696e672073746174656d656e7473200d0a6e65636573736172696c7920696e766f6c7665206b6e6f776e20616e6420756e6b6e6f776e207269736b7320616e6420756e6365727461696e746965732c207768696368206d61790d0a206361757365206d61726b65742070726f6a656374696f6e7320616e642066696e616e6369616c20726573756c747320696e2066757475726520706572696f647320746f200d0a646966666572206d6174657269616c6c792066726f6d20616e792070726f6a656374696f6e73206f662066757475726520706572666f726d616e6365206f7220726573756c74200d0a657870726573736564206f7220696d706c696564206279207375636820666f7277617264206c6f6f6b696e672073746174656d656e74732e20416c74686f756768200d0a666f72776172642d6c6f6f6b696e672073746174656d656e747320636f6e7461696e65642068657265696e206172652062617365642075706f6e2077686174200d0a6d616e6167656d656e742062656c6965766573206d617920626520726561736f6e61626c6520617373756d7074696f6e732c20666f72776172642d6c6f6f6b696e67200d0a73746174656d656e7473206d61792070726f766520746f20626520696e61636375726174652c2061732061637475616c20726573756c747320616e6420667574757265200d0a6576656e747320636f756c6420646966666572206d6174657269616c6c792066726f6d2074686f736520616e74696369706174656420696e2073756368200d0a73746174656d656e74732e20546865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206f72200d0a74686520536572766963652050726f76696465722028696e207468652070617274207468617420616666656374732069747320616374697669746965732920657870726573736c790d0a20646973636c61696d7320616e79206f626c69676174696f6e206f7220756e64657274616b696e6720746f2064697373656d696e61746520616e792075706461746573206f72200d0a7265766973696f6e7320746f20616e7920666f72776172642d6c6f6f6b696e672073746174656d656e7420636f6e7461696e65642068657265696e20746f207265666c656374200d0a616e79206368616e676520696e20697473206578706563746174696f6e207769746820726567617264207468657265746f206f7220616e79206368616e676520696e200d0a6576656e74732c20636f6e646974696f6e732c206f722063697263756d7374616e636573206f6e20776869636820616e7920737563682073746174656d656e74206973200d0a62617365642e3c2f6c693e3c2f6f6c3e0d0a2020202020202020202020203c2f6469763e0d0a2020202020202020202020203c64697620636c6173733d226c6567616c2d7465726d732d73656374696f6e207072732d636f6e7461696e6572223e0d0a202020202020202020202020202020203c683320636c6173733d226c6567616c2d7465726d732d7375627469746c65223e446566696e6974696f6e733c2f68333e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e41677265656d656e743c2f7374726f6e673e266e6273703b2d0d0a205465726d7320616e6420436f6e646974696f6e7320616e6420616e79206f746865722072756c65732c20706f6c6963696573206f722070726f636564757265732074686174200d0a6d617920626520697373756564206279207075626c69736865642066726f6d2074696d6520746f2074696d65206f6e2074686520576562736974652e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e416374696f6e733c2f7374726f6e673e266e6273703b2d20416e7920437573746f6d6572c2927320696e737472756374696f6e73207265636569766564207468726f7567682074686520576562736974653c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e4170706c696361626c65204c61773c2f7374726f6e673e266e6273703b2d0d0a204c6177206170706c696361626c6520756e64657220746869732041677265656d656e7420746f20616e7920616e6420616c6c2072656c6174696f6e73206265747765656e200d0a74686520437573746f6d657220616e6420746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329200d0a6f722074686520536572766963652050726f76696465722028696e20746865207061727420746861742061666665637473206974732061637469766974696573293c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e437573746f6d65723c2f7374726f6e673e266e6273703b2d0d0a2074686520706572736f6e2077686f2068617320636f6d706c657465642074686520526567697374726174696f6e20666f726d20616e642077686f7365200d0a6170706c69636174696f6e2074686520536572766963652050726f7669646572206861732061636365707465642e2054686520536572766963652050726f7669646572200d0a72657365727665732069747320726967687420746f2073657420666f72746820617420616e792074696d6520616e642075706f6e20697473206f776e2064697363726574696f6e200d0a7370656369616c20656c69676962696c69747920636f6e646974696f6e73206f72206f7468657220726571756972656d656e747320746f206365727461696e20706572736f6e73200d0a6173206120437573746f6d65722e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e446174613c2f7374726f6e673e266e6273703b2d20616e79206461746120696e70757420627920596f75206f72207769746820596f757220617574686f7269747920696e746f2074686520576562736974652e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e496e74656c6c65637475616c2050726f7065727479205269676874733c2f7374726f6e673e266e6273703b2d0d0a20416e7920696e76656e74696f6e2c20706174656e742c207574696c697479206d6f64656c2072696768742c20636f7079726967687420616e642072656c61746564200d0a72696768742c20726567697374657265642064657369676e2c20756e726567697374657265642064657369676e2072696768742c207472616465206d61726b2c207472616465200d0a6e616d652c20696e7465726e657420646f6d61696e206e616d652c2064657369676e2072696768742c2064657369676e2c2073657276696365206d61726b2c2064617461626173650d0a207269676874732c20746f706f677261706879207269676874732c2072696768747320696e206765742d757020616e642074726164652064726573732c2072696768747320696e200d0a676f6f6477696c6c206f7220746f2073756520666f722070617373696e67206f666620616e6420616e79206f7468657220726967687473206f6620612073696d696c6172200d0a6e6174757265206f72206f7468657220696e647573747269616c206f7220696e74656c6c65637475616c2070726f706572747920726967687473206f776e6564206f7220757365640d0a20627920746865204f70657261746f722028696e207468652070617274207468617420616666656374732069747320616374697669746965732920616e6420746865200d0a536572766963652050726f76696465722028696e207468652070617274207468617420616666656374732069747320616374697669746965732920696e20616e792070617274200d0a6f662074686520776f726c642077686574686572206f72206e6f7420616e79206f66207468652073616d65206973207265676973746572656420286f722063617061626c65206f660d0a20726567697374726174696f6e292c20696e636c7564696e67206170706c69636174696f6e7320616e642074686520726967687420746f206170706c7920666f7220616e642062650d0a206772616e7465642c20657874656e73696f6e73206f722072656e6577616c73206f6620616e642072696768747320746f20636c61696d207072696f726974792066726f6d2c200d0a737563682072696768747320616e6420616c6c206571756976616c656e74206f722073696d696c617220726967687473206f722070726f74656374696f6e73207768696368200d0a73756273697374206e6f77206f722077696c6c207375627369737420696e20746865206675747572652e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e4e6f6e2d44656c6976657261626c6520426974636f696e20536574746c65642050726f64756374733c2f7374726f6e673e0d0a20c2962070726f647563747320617661696c61626c6520666f722074726164696e67206f6e2074686520706c6174666f726d20616e64206d6179206265206e616d6564206173200d0ac293434644c29273c2942c20c293466f726578c2942c20c293496e6469636573c29420616e6420c29343727970746f63757272656e63696573c29420666f7220696e666f726d6174696f6e20616e64200d0a6d61726b6574696e6720707572706f7365732e204e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732074726164696e67200d0a7365727669636573206172652070726f7669646564206279205072696d6520546563686e6f6c6f67696573204c74642e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e4f70657261746f723c2f7374726f6e673e0d0a20c2962043727970746f636f696e4658204d696e6572732047726f7570206c6963656e7365642062792046434120696e2074686520556e69746564204b696e67646f6d202854726164696e67200d0a506f696e74206f662046696e616e6369616c20496e737472756d656e747320554b204c696d69746564292c204153494320696e204175737472616c6961202854726164696e67200d0a506f696e74206f662046696e616e6369616c20496e737472756d656e747320507479204c696d69746564292c20746865204946534320696e2042656c697a65202844796e616d69630d0a205472616465204f7074696f6e7320476c6f62616c204c696d697465642920616e6420627920437953454320696e20437970727573202854726164696e6720506f696e74206f66200d0a46696e616e6369616c20496e737472756d656e7473204c7464293c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e536572766963652050726f76696465723c2f7374726f6e673e20c296205072696d6520546563686e6f6c6f67696573204c74642e206120636f6d70616e7920696e636f72706f726174656420756e6465722074686520427573696e65737320436f6d70616e69657320416374206f6620746865206c617773206f662054686520556e69746564204b696e67646f6d2e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e536572766963653c2f7374726f6e673e20c296206d65616e7320616c6c207365727669636573206d61646520617661696c61626c6520286173206d6179206265206368616e676564206f7220757064617465642066726f6d2074696d6520746f2074696d652062792074686520536572766963652050726f766964657229207669612074686520576562736974652e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e576562736974653c2f7374726f6e673e0d0a20c29620412067726f7570206f6620696e74657272656c61746564207765627369746573206f776e656420616e64206f706572617465642062792043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e2c20617661696c61626c6520696e2074686520496e7465726e6574207669612061646472657373203c6120687265663d2268747470733a2f2f74726164656d696e65727366782e636f6d2f696e6465782e706870223e7777772e63727970746f636f696e66786d696e6572732e636f6d3c2f613e2e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e3c7374726f6e673e557365723c2f7374726f6e673e20c296206d65616e7320616e7920706572736f6e2c2077686f2075736573207468652057656273697465207669612061646472657373207777772e63727970746f636f696e66786d696e6572732e636f6d2e3c2f703e0d0a2020202020202020202020203c2f6469763e0d0a2020202020202020202020203c64697620636c6173733d227072732d636f6e7461696e6572223e0d0a202020202020202020202020202020203c6f6c20636c6173733d226c6567616c2d7465726d732d73656374696f6e732d6c697374223e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e456c696769626c6520437573746f6d6572733c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e4279207265676973746572696e67206173206120437573746f6d657220596f75200d0a636f76656e616e742c20726570726573656e742c20616e642077617272616e7420746861742028756e64657220746865204170706c696361626c65204c617720616e64206c6177200d0a6f662074686520636f756e747279206f6620596f7572207265736964656e6365293a0d0a20202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e7468617420596f75206861766520616363657074656420746865205465726d7320616e6420436f6e646974696f6e733b20616e643c2f6c693e3c6c693e7468617420596f7520617265206f6620616e20616765206f66200d0a6d616a6f7269747920746f20656e74657220696e746f20746869732041677265656d656e7420286174206c65617374203138207965617273206f6620616765292c206d65657473200d0a616c6c206f7468657220656c69676962696c69747920637269746572696120616e64207265736964656e637920726571756972656d656e74732c20616e642069732066756c6c79200d0a61626c6520616e64206c6567616c6c7920636f6d706574656e7420746f207573652074686520576562736974652c20656e74657220696e746f2061677265656d656e7420776974680d0a2074686520536572766963652050726f766964657220616e6420696e20646f696e6720736f2077696c6c206e6f742076696f6c61746520616e79206f74686572200d0a61677265656d656e7420746f20776869636820596f752061726520612070617274793b3c2f6c693e3c6c693e7468617420596f752061726520746865206c6567616c206f776e6572206f66200d0a7468652066756e647320796f752061646420746f20596f7572206163636f756e7420776974682074686520536572766963652050726f766964657220616e642074686174207468650d0a2073616d652066756e6473206465726976652066726f6d2061206c65676974696d61746520616e64206c6567616c20736f757263653b3c2f6c693e3c6c693e74686174207573696e6720536572766963657320646f6573206e6f7420636f6e73746974757465206120627265616368206f6620796f757220686f6d65206a7572697364696374696f6e73c292206c6177733b3c2f6c693e3c6c693e7468617420596f7520617265206177617265206f6620746865207269736b73200d0a696e207573696e67207468652073657276696365732070726f76696465642062792074686520536572766963652050726f76696465722e205468657365207269736b73200d0a696e636c756465207468652066616374207468617420596f75206d6179206c6f736520616c6c206f66207468652066756e647320696e20796f75722074726164696e67200d0a6163636f756e7420696620746865206d61726b6574206d6f76657320616761696e737420596f75206f7220696e207468652063617365206f66206661696c757265732c200d0a746563686e6963616c206d616c66756e6374696f6e73206f6620746865207369746520616e64206f7468657220746563686e6963616c206d616c66756e6374696f6e732c200d0a6661696c7572657320696e2074686520737570706c79206f662071756f746174696f6e732c20666f726365206d616a65757265206574632e3c2f6c693e3c6c693e7468617420596f752077696c6c206e6f7420626520696e766f6c766564200d0a776974682c206f7220696e69746961746520616e7920666f726d206f66206d61726b6574206d616e6970756c6174696f6e2c20696e636c7564696e672073706f6f66696e67200d0a6f7264657273206f72206f746865727769736520756e6465722074686520746872656174206f6620626c6f636b696e6720746865206163636f756e7420696e20616e7920636173650d0a206f66206964656e74696679696e6720737563682076696f6c6174696f6e733b3c2f6c693e3c6c693e74686174206966207765207265717569726520616e79204b59432d70726f63656475726520596f752077696c6c2070726f7669646520636f72726563742c2067656e75696e6520616e642075702d746f2d6461746520696e666f726d6174696f6e206f7220646f63756d656e74733b3c2f6c693e3c6c693e7468617420616e79207769746864726177616c206164647265737320596f752070726f7669646520697320596f7520617265206f776e20616e64207468617420596f75206172652066756c6c20636f6e74726f6c206f766572207468697320616464726573733b3c2f6c693e3c6c693e596f7520617265206e6f7420616c6c6f77656420746f20616363657373206f720d0a207573652074686520536572766963657320696620796f7520617265206c6f63617465642c20696e636f72706f7261746564206f72206f7468657277697365200d0a65737461626c697368656420696e2c206f72206120636974697a656e206f72207265736964656e74206f663a2074686520556e6974656420537461746573206f66200d0a416d65726963612c207468652070726f76696e6365206f66205175c3a962656320696e2043616e6164612c20416c67657269612c2045637561646f722c20457468696f7069612c200d0a437562612c204372696d656120616e64205365766173746f706f6c2c204972616e2c2053797269612c204e6f727468204b6f726561206f7220537564616e3b20616e79200d0a73746174652c20636f756e747279206f72206f74686572206a7572697364696374696f6e207468617420697320656d626172676f65642062792074686520556e69746564200d0a537461746573206f6620416d65726963613b2061206a7572697364696374696f6e20776865726520697420776f756c6420626520696c6c6567616c206163636f7264696e6720746f0d0a204170706c696361626c65204c617720666f7220796f752028627920726561736f6e206f6620796f7572206e6174696f6e616c6974792c20646f6d6963696c652c200d0a636974697a656e736869702c207265736964656e6365206f72206f74686572776973652920746f20616363657373206f7220757365207468652053657276696365733b206f72200d0a776865726520746865207075626c69636174696f6e206f7220617661696c6162696c697479206f66207468652053657276696365732069732070726f68696269746564206f72200d0a636f6e747261727920746f206c6f63616c206c6177206f7220726567756c6174696f6e2c206f7220636f756c64207375626a6563742053657276696365732050726f7669646572200d0a746f20616e79206c6f63616c20726567697374726174696f6e206f72206c6963656e73696e6720726571756972656d656e74732028746f6765746865722c20746865200d0a2252657374726963746564204a7572697364696374696f6e7322292e205765206d61792c20696e206f757220736f6c652064697363726574696f6e2c20696d706c656d656e74200d0a636f6e74726f6c7320746f2072657374726963742061636365737320746f2074686520536572766963657320696e20616e79206f66207468652052657374726963746564200d0a4a7572697364696374696f6e732e2049662077652064657465726d696e65207468617420796f752061726520616363657373696e67207468652053657276696365732066726f6d200d0a616e792052657374726963746564204a7572697364696374696f6e2c206f72206861766520676976656e2066616c736520726570726573656e746174696f6e7320617320746f200d0a796f7572206c6f636174696f6e206f6620696e636f72706f726174696f6e2c2065737461626c6973686d656e742c20636974697a656e73686970206f7220706c616365206f66200d0a7265736964656e63652c20776520726573657276652074686520726967687420746f20636c6f736520616e79206f6620796f7572206163636f756e7473200d0a696d6d6564696174656c7920616e64206c697175696461746520616e79206f70656e20706f736974696f6e732e3c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c2f6c693e3c6c693e5768656e20616363657373696e6720616e64207573696e672074686520536572766963652c20596f75206d7573743a0d0a20202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e6e6f7420617474656d707420746f20756e6465726d696e6520746865200d0a7365637572697479206f7220696e74656772697479206f662074686520536572766963652050726f766964657220636f6d707574696e672073797374656d73206f72200d0a6e6574776f726b73206f722c207768657265207468652053657276696365732061726520686f7374656420627920612074686972642070617274792c2074686174207468697264200d0a7061727479c2927320636f6d707574696e672073797374656d7320616e64206e6574776f726b733b3c2f6c693e3c6c693e6e6f74207573652c206f72206d69737573652c207468652053657276696365730d0a20696e20616e7920776179207768696368206d617920696d70616972206f7220616c746572207468652066756e6374696f6e616c697479206f6620746865205365727669636573200d0a6f7220576562736974652c206f72206f746865722073797374656d73207573656420746f2064656c6976657220746865205365727669636573206f7220696d70616972206f72200d0a616c74657220746865206162696c697479206f6620616e79206f74686572207573657220746f2075736520746865205365727669636573206f7220576562736974653b3c2f6c693e3c6c693e6e6f7420617474656d707420746f206761696e20756e617574686f72697a65640d0a2061636365737320746f2074686520636f6d70757465722073797374656d20616e642073657276657273206f6e207768696368207468652057656273697465206973200d0a686f73746564206f7220746f20616e79206d6174657269616c73206f74686572207468616e2074686f736520746f20776869636820796f752068617665206265656e20676976656e0d0a207065726d697373696f6e20746f206163636573733b3c2f6c693e3c6c693e6e6f74207472616e736d6974206f7220696e70757420696e746f20746865200d0a5765627369746520616e792066696c65732074686174206d61792064616d61676520616e79206f7468657220706572736f6ec2927320636f6d707574696e672064657669636573200d0a6f7220736f6674776172653b20636f6e74656e742074686174206d6179206265206f6666656e736976653b206f72206d6174657269616c206f72204461746120696e200d0a76696f6c6174696f6e206f6620616e79206c61772028696e636c7564696e672044617461206f72206f74686572206d6174657269616c2070726f746563746564206279200d0a636f70797269676874206f72207472616465207365637265747320776869636820796f7520646f206e6f7420686176652074686520726967687420746f20757365293b3c2f6c693e3c6c693e6e6f7420617474656d707420746f206d6f646966792c20636f70792c200d0a61646170742c20726570726f647563652c20646973617373656d626c652c206465636f6d70696c65206f72207265766572736520656e67696e65657220616e79200d0a636f6d70757465722070726f6772616d73207573656420746f2064656c6976657220746865205365727669636573206f7220746f206f7065726174652074686520576562736974650d0a20657863657074206173206973207374726963746c79206e656365737361727920746f2075736520656974686572206f66207468656d20666f72206e6f726d616c200d0a6f7065726174696f6e2e3c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c2f6c693e3c6c693e596f752077696c6c20656e73757265207468617420616c6c20757365726e616d657320616e64200d0a70617373776f72647320726571756972656420746f2061636365737320746865205765627369746520617265206b6570742073656375726520616e64200d0a636f6e666964656e7469616c2c20616e64207468617420697420697320596f757220726573706f6e736962696c69747920616c6f6e6520656e7375726520746869732e20596f75200d0a77696c6c20696d6d6564696174656c79206e6f746966792074686520536572766963652050726f7669646572206f6620616e7920756e617574686f72697a656420757365206f66200d0a596f75722070617373776f726473206f7220616e79206f7468657220627265616368206f6620736563757269747920616e642074686520536572766963652050726f7669646572200d0a77696c6c20726573657420596f75722070617373776f726420616e642074616b65206f7468657220737465707320746f20656e7375726520746865207365637572697479206f66200d0a796f7572206163636f756e7420616e642074686520706c6174666f726d2e3c2f6c693e3c6c693e497420697320796f757220726573706f6e736962696c69747920656e746972656c7920746f200d0a70726f76696465207573207769746820636f72726563742064657461696c7320696e636c7564696e6720596f7572207769746864726177616c20616464726573732e205765200d0a616363657074206e6f206c696162696c69747920726573756c74696e6720696e20596f75206e6f7420726563656976696e67207769746864726177616c2066756e647320647565200d0a746f20596f752070726f766964696e6720696e636f7272656374206f72206f75742d6f662d646174652064657461696c732e2054686520536572766963652050726f7669646572200d0a6578636c7564657320616c6c206c696162696c69747920666f7220616e7920696e636f7272656374207472616e73616374696f6e7320746f2077726f6e67200d0a6164647265737365732c206f7220616e79206f746865722073756368206d697374616b65732e3c2f6c693e3c6c693e54686520536572766963652050726f766964657220726573657276657320746865207269676874200d0a617420616e792074696d6520746f2076657269667920596f7572206964656e7469747920666f722074686520707572706f736573206f6620636f6d706c79696e672077697468200d0a74686520616e79204b59432f414d4c20726571756972656d656e74733c2f6c693e3c6c693e54686520536572766963652050726f766964657220726573657276657320746865207269676874200d0a746f20696d706f73652074726164696e67206c696d69747320616e64207769746864726177616c206c696d697473206265666f726520596f7520617265207265717569726564200d0a746f20636f6e6475637420437573746f6d6572204475652044696c6967656e63652028434444292e20596f7520616772656520746f20636f6f7065726174652066756c6c79200d0a77697468207573207468726f7567686f757420746869732070726f6365737320616e64207468617420596f752077696c6c2070726f7669646520616c6c200d0a646f63756d656e746174696f6e2f696e666f726d6174696f6e2074686174207765206d6179207265717569726520696e206f7264657220746f2076657269667920596f7572200d0a6964656e7469747920616e6420746f206173736573732074686520707572706f7365206f662074686520627573696e6573732072656c6174696f6e736869702e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e5365727669636520506572666f726d616e63653c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e46726f6d207468652064617465206f6e20776869636820596f7572204163636f756e74206973206163746976617465642c2074686520536572766963652050726f76696465722077696c6c3a0d0a20202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e5265636569766520616e64207472616e736d6974206f7264657273206f6e20416374696f6e732e3c2f6c693e3c6c693e45786563757465206f7264657273206f6e20416374696f6e732e3c2f6c693e3c6c693e50726f7669646520666f7220736166656b656570696e6720616e64200d0a61646d696e697374726174696f6e206f6620416374696f6e7320666f7220746865206163636f756e74206f6620437573746f6d6572732c20696e636c7564696e67200d0a4e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732074726164696e6720616e642072656c617465642053657276696365732e3c2f6c693e3c6c693e50726f7669646520696e766573746d656e7420526573656172636820616e642066696e616e6369616c20616e616c797369733c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c2f6c693e3c6c693e54686520437573746f6d65722061636b6e6f776c6564676573207468617420746865200d0a536572766963657320646f206e6f7420696e636c756465207468652070726f766973696f6e206f6620696e766573746d656e74206164766963652e20416e79200d0a696e766573746d656e7420696e666f726d6174696f6e206173206d617920626520616e6e6f756e6365642062792074686520536572766963652050726f766964657220746f200d0a74686520437573746f6d657220646f6573206e6f7420636f6e7374697475746520696e766573746d656e742061647669636520627574206d6572656c792061696d7320746f200d0a61737369737420696e20696e766573746d656e74206465636973696f6e206d616b696e672e3c2f6c693e3c6c693e54686520437573746f6d65722061677265657320616e642061636b6e6f776c6564676573200d0a746861742068652f7368652f697420697320736f6c656c7920726573706f6e7369626c6520666f7220616e7920696e766573746d656e742073747261746567792c200d0a7472616e73616374696f6e206f7220696e766573746d656e7420636f6d706f736974696f6e206f6620616e79206163636f756e7420616e64207461786174696f6e200d0a636f6e73657175656e63657320616e64206865207368616c6c206e6f742072656c792c20666f72207468697320707572706f7365206f6e207468652053657276696365200d0a50726f76696465722e20497420697320616c736f20756e64657273746f6f6420616e6420616363657074656420746861742074686520536572766963652050726f7669646572200d0a7368616c6c2062656172206162736f6c7574656c79206e6f20726573706f6e736962696c6974792c207265676172646c657373206f6620746865200d0a63697263756d7374616e6365732c20666f7220616e79207375636820696e766573746d656e742073747261746567792c207472616e73616374696f6e2c20696e766573746d656e740d0a206f7220696e666f726d6174696f6e2e3c2f6c693e3c6c693e54686520536572766963652050726f7669646572206d61792c2066726f6d2074696d6520746f200d0a74696d6520696e20697473206162736f6c7574652064697363726574696f6e2c20776974686472617720616c6c206f7220616e792070617274206f6620746865200d0a5365727669636573206f6e20612074656d706f72617279206f72207065726d616e656e742062617369732e3c2f6c693e3c6c693e437573746f6d657220617574686f72697a65732074686520536572766963652050726f76696465720d0a20746f20707572636861736520616e642073656c6c204e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f647563747320666f72200d0a437573746f6d6572c29273204163636f756e7420696e206163636f7264616e6365207769746820437573746f6d6572c2927320696e737472756374696f6e73207265636569766564200d0a7468726f7567682074686520576562736974652c207375626a65637420746f20746865207465726d73206f6620746869732041677265656d656e742e3c2f6c693e3c6c693e437573746f6d65722061677265657320746f20626520636f6e636c75736976656c79200d0a726573706f6e7369626c6520666f7220616e7920696e737472756374696f6e20726563656976656420656c656374726f6e6963616c6c792028696e636c7564696e672c20627574200d0a6e6f74206c696d6974656420746f2c20616e79204f72646572292074686174206973206964656e746966696564207769746820437573746f6d6572c292732070617373776f7264200d0a616e64204163636f756e74206e756d62657220746f2074686520536572766963652050726f76696465722066726f6d20706572736f6e7320746861742074686520536572766963650d0a2050726f76696465722c20696e2069747320736f6c65206a7564676d656e742c2062656c696576657320617265206170706172656e746c7920617574686f72697a6564206279200d0a74686520437573746f6d65722e3c2f6c693e3c6c693e50726963696e6720496e666f726d6174696f6e2e205468652053657276696365200d0a50726f76696465722077696c6c206d616b6520617661696c61626c652c20627920706f7374696e67206f6e2074686520576562736974652c204269642050726963657320616e64200d0a41736b205072696365732061742077686963682074686520536572766963652050726f766964657220697320707265706172656420746f206f6666657220746865200d0a437573746f6d657220746f20627579206f722073656c6c204e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732061742e205468650d0a20536572766963652050726f766964657220657870656374732074686174207468657365207072696365732077696c6c20626520726561736f6e61626c792072656c61746564200d0a746f20746865206269642070726963657320616e642061736b2070726963657320617661696c61626c6520696e20746865206d61726b657420617420746861742074696d65200d0a666f722073696d696c6172207472616e73616374696f6e732c206275742061206e756d626572206f6620666163746f72732c207375636820617320636f6d6d756e69636174696f6e0d0a2073797374656d2064656c6179732c206869676820766f6c756d65206f7220766f6c6174696c6974792063616e20726573756c7420696e20646576696174696f6e73200d0a6265747765656e207072696365732071756f7465642062792074686520536572766963652050726f766964657220616e64206f7468657220736f75726365732e20546865200d0a536572766963652050726f7669646572206d616b6573206e6f2077617272616e74792c2065787072657373206f7220696d706c6965642c20746861742042696420507269636573200d0a616e642041736b2050726963657320726570726573656e74207072657661696c696e67206269642070726963657320616e642061736b207072696365732e20496620746865200d0a437573746f6d6572206c6f736573206869732066756e64732064756520746f2074686520646966666572656e636520696e2071756f746174696f6e732c20746865200d0a536572766963652050726f7669646572206973206e6f7420726573706f6e7369626c6520666f7220746869732e3c2f6c693e3c6c693e4f7264657220457865637574696f6e2e2054686520536572766963652050726f7669646572200d0a77696c6c20617474656d707420746f206578656375746520616c6c204f72646572732074686174206974206d61792c20696e2069747320736f6c652064697363726574696f6e2c200d0a6163636570742066726f6d20437573746f6d657220696e206163636f7264616e6365207769746820437573746f6d6572c2927320696e737472756374696f6e732072656365697665640d0a207468726f7567682074686520576562736974652e20496e20636173657320776865726520746865207072657661696c696e67206d61726b657420726570726573656e7473200d0a70726963657320646966666572656e742066726f6d20746865207072696365732074686520536572766963652050726f76696465722068617320706f73746564206f6e20697473200d0a576562736974652c2074686520536572766963652050726f76696465722077696c6c20617474656d70742c206f6e20612062657374206566666f7274732062617369732c20746f200d0a6578656375746520747261646573206f6e206f7220636c6f736520746f20746865207072657661696c696e67206d61726b6574207072696365732e2054686973206d6179206f72200d0a6d6179206e6f7420616476657273656c792061666665637420437573746f6d6572207265616c697a656420616e6420756e7265616c697a6564206761696e7320616e64200d0a6c6f737365732e3c2f6c693e3c6c693e437573746f6d65722061636b6e6f776c65646765732c20756e6465727374616e647320616e64200d0a61677265657320746861742074686520536572766963652050726f7669646572206973206e6f7420616374696e6720617320616e206167656e742c2061647669736f72206f72200d0a696e20616e79206669647563696172792063617061636974792e204e6f74776974687374616e64696e67207468652070726f766973696f6e73206f662074686973200d0a7061726167726170682c20437573746f6d65722061636b6e6f776c65646765732c20756e6465727374616e647320616e64206167726565732074686174206f72646572732063616e0d0a2062652065786563757465642061742070726963657320646966666572656e742066726f6d2074686f736520746861742074686520437573746f6d65722073656573206f6e200d0a74686520576562736974652e3c2f6c693e3c6c693e5472616465204d61746368696e672e2054686520536572766963652050726f7669646572206f72200d0a69747320616666696c6961746573206d61792064657465726d696e6520746f20726f75746520437573746f6d6572c29273206f726465727320746f2061207472616465200d0a6d61746368696e672073797374656d206f7065726174656420627920746869726420706172746965732e20496e2074686174206576656e742c207468652053657276696365200d0a50726f766964657220616e642f6f7220616e79206f6e65206f72206d6f7265206f662069747320616666696c69617465732c207368616c6c206861766520746865207269676874200d0a28627574206e6f7420616e206f626c69676174696f6e292c20696e2074686520736f6c652064697363726574696f6e206f662074686520536572766963652050726f7669646572200d0a6f7220616e79207375636820616666696c696174652c20746f2061637420666f7220697473206f776e206163636f756e742c20616e64206173206120636f756e7465722070617274790d0a206f7220617320612062726f6b657220746f20437573746f6d65727320696e20746865206d616b696e67206f66206d61726b6574732c20696e636c7564696e6720776974686f75740d0a206c696d69746174696f6e2c206f76657220616e79207472616465206d61746368696e67206e6574776f726b20696e2075736520627920437573746f6d65727320616e642f6f72200d0a7468652067656e6572616c207075626c69632e3c2f6c693e3c6c693e506f736974696f6e2026616d703b2054726164696e67204c696d6974732e20546865200d0a536572766963652050726f76696465722072657365727665732074686520726967687420746f206c696d697420746865206e756d626572206f66204f70656e200d0a506f736974696f6e73207468617420437573746f6d6572206d617920656e746572206f72206d61696e7461696e20696e20437573746f6d6572c29273204163636f756e742e205468650d0a20536572766963652050726f7669646572207265736572766573207468652072696768742c20696e2069747320736f6c652064697363726574696f6e2c20746f20726566757365200d0a746f2061636365707420616e79204f72646572206f70656e696e672061206e657720706f736974696f6e206f7220696e6372656173696e6720616e204f70656e200d0a506f736974696f6e2e3c2f6c693e3c6c693e54686520437573746f6d6572206973206c6961626c6520666f7220616c6c20746865200d0a74726164696e67206c6f737365732074686174206f636375727265642064756520746f20766f6c756e74617279206f7220696e766f6c756e746172792c206275742064756520746f0d0a2074686520437573746f6d6572c29273206661756c742c2070726f766973696f6e206f662061636365737320746f207468652074726164696e6720706c6174666f726d20746f200d0a74686520746869726420706172746965733c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e4d617267696e20526571756972656d656e74733c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e437573746f6d6572207368616c6c2070726f7669646520746f20616e64206d61696e7461696e200d0a776974682074686520536572766963652050726f7669646572206d617267696e2066756e647320696e207375636820616d6f756e74732c20616e642077697468696e2073756368200d0a6c696d6974732061732074686520536572766963652050726f76696465722c20696e2069747320736f6c652064697363726574696f6e2c206d61792066726f6d2074696d6520746f0d0a2074696d65207265717569726520696e206f7264657220746f2070726f7669646520536572766963652e2054686520536572766963652050726f7669646572206d6179200d0a6368616e6765206d617267696e20726571756972656d656e747320617420616e792074696d652c20776974686f7574207072696f72206e6f7469636520746f200d0a437573746f6d65723a2028782920616e792074696d6520437573746f6d6572c29273206d617267696e2062616c616e63652066616c6c732062656c6f772074686520536572766963650d0a2050726f7669646572206d696e696d756d206d617267696e20726571756972656d656e74206173206170706c69656420746f2074686174204163636f756e743b20616e64202879290d0a20616e792074696d652074686520536572766963652050726f76696465722c20696e2069747320736f6c652064697363726574696f6e2c2062656c696576657320746861742069740d0a2069732070727564656e7420746f20646f20736f2e2054686520536572766963652050726f7669646572206d617920617420616e792074696d65206c6971756964617465200d0a437573746f6d6572c29273206f70656e20706f736974696f6e73206f722077697468647261772066756e64732066726f6d2074686520437573746f6d6572c29273206163636f756e74200d0a776974686f7574206e6f746963653a2028782920746f20656e7375726520746861742061637475616c206d617267696e20657175616c73206f722065786365656473200d0a7265717569726564206d617267696e3b20616e642028792920746f207361746973667920616e79207061796d656e74206f626c69676174696f6e20746f20746865200d0a536572766963652050726f76696465722c20696e636c7564696e6720636f6d6d697373696f6e732c206d617267696e2066696e616e63696e6720616e64206f74686572200d0a636f73747320696e2072657370656374206f6620437573746f6d6572c29273204163636f756e742e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e436f6d6d697373696f6e732c204d617267696e2046696e616e63696e6720616e64204f7468657220436f7374733c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e54686520437573746f6d6572207368616c6c206265206f626c6967656420746f20706179207468650d0a20536572766963652050726f76696465722074686520636f6d6d697373696f6e732c206d617267696e2066696e616e63696e6720616e64206f7468657220636f73747320736574200d0a6f7574206f6e2074686520576562736974652e2054686520536572766963652050726f76696465722077696c6c20646973706c617920616c6c2063757272656e74200d0a636f6d6d697373696f6e732c206d617267696e2066696e616e63696e6720616e64206f7468657220636f737473206f6e2069747320576562736974652e3c2f6c693e3c6c693e54686520536572766963652050726f7669646572206d61792076617279200d0a636f6d6d697373696f6e732c206d617267696e2066696e616e63696e6720616e64206f7468657220636f7374732066726f6d2074696d6520746f2074696d6520616e64200d0a7368616c6c2070726f7669646520437573746f6d6572732077697468206e6f746963652074686572656f662e20416c6c206368616e67657320696e20636f6d6d697373696f6e732c0d0a206d617267696e2066696e616e63696e6720616e64206f7468657220636f7374732061726520646973706c61796564206f6e2074686520576562736974652e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e496e74656c6c65637475616c2070726f70657274793c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e546865205765627369746520616e642074686520636f7079726967687420696e20616c6c200d0a736f667477617265206f6e20746865205765627369746520697320656e746972656c79206f776e656420627920746865204f70657261746f7220696e636c7564696e6720616c6c200d0a74726164656d61726b73206f6e2074686520576562736974652e20416c6c20746578742c2067726170686963732c20696d6167657320616e6420616e79206f74686572200d0a6d6174657269616c73206f6e20746865205765627369746520697320656e746972656c79206f776e65642062792074686520536572766963652050726f76696465722e200d0a4d6174657269616c73206f6e20746869732057656273697465206d6179206f6e6c79206265207573656420666f7220706572736f6e616c2075736520616e64200d0a6e6f6e2d636f6d6d65726369616c20707572706f7365732e3c2f6c693e3c6c693e596f75206d6179206469676974616c6c7920646973706c6179206f72207072696e74200d0a65787472616374732066726f6d20746865205765627369746520666f72207468652061626f76652d73746174656420707572706f73652c206f6e6c7920756e64657220746865200d0a636f6e646974696f6e207468617420596f752072657461696e20616e7920636f7079726967687420616e64206f746865722070726f7072696574617279206e6f7469636573206f720d0a20616e7920746865204f70657261746f72c2927320616e642074686520536572766963652050726f7669646572c292732074726164656d61726b73206f72206c6f676f732c206173200d0a73686f776e206f6e2074686520696e697469616c207072696e746f7574206f7220646f776e6c6f616420776974686f7574206469676974616c206f7220706879736963616c200d0a616c7465726174696f6e2c206164646974696f6e206f722064656c6574696f6e2e2045786365707420617320657870726573736c79207374617465642068657265696e2c20596f750d0a206d6179206e6f7420776974686f757420746865204f70657261746f72c2927320616e642074686520536572766963652050726f7669646572c29273207072696f72207772697474656e0d0a207065726d697373696f6e20616c7465722c206d6f646966792c20726570726f647563652c2064697374726962757465206f722075736520696e20616e79206f74686572200d0a636f6d6d65726369616c20636f6e7465787420616e7920636f707972696768746564206d6174657269616c732066726f6d2074686520576562736974652e3c2f6c693e3c6c693e596f752061636b6e6f776c65646765207468617420746865204f70657261746f72c2927320616e64200d0a74686520536572766963652050726f7669646572c29273206c6f676f73206172652074726164656d61726b732e20596f75206d6179206f6e6c792075736520616e642f6f72200d0a726570726f6475636520737563682074726164656d61726b7320776974686f757420706879736963616c206f72206469676974616c20616c7465726174696f6e206f6e200d0a6d6174657269616c20646f776e6c6f616465642066726f6d2074686973205765627369746520746f2074686520657874656e7420617574686f72697a65642061626f76652c200d0a62757420596f75206d6179206e6f74206f7468657277697365207573652c20636f70792c2061646170742c206368616e67652c206f72206572617365207468656d2e3c2f6c693e3c6c693e596f75207368616c6c206e6f7420756e64657220616e792063697263756d7374616e636573200d0a6f627461696e20616e7920726967687473206f766572206f7220696e2072657370656374206f6620746865205765627369746520286f74686572207468616e20726967687473200d0a746f20757365207468652057656273697465207075727375616e7420746f207468657365205465726d7320616e6420616e79206f74686572207465726d7320616e64200d0a636f6e646974696f6e7320676f7665726e696e67206120706172746963756c61722073657276696365206f722073656374696f6e206f6620746865205765627369746529206f72200d0a686f6c6420796f757273656c66206f757420617320686176696e6720616e79207375636820726967687473206f766572206f7220696e207265737065637420746f20746865200d0a576562736974652e3c2f6c693e3c6c693e416c6c20696e74656c6c65637475616c2070726f706572747920726967687473200d0a72656c6174696e6720746f20616c6c20746865206d6174657269616c2075736564206f6e20746865205765627369746520696e636c7564696e672c20627574206e6f74200d0a6c696d6974656420746f2c2064657369676e2c207374727563747572652c206c61796f7574732c2067726170686963616c20696d6167657320616e6420756e6465726c79696e67200d0a736f7572636520636f64652062656c6f6e677320746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473200d0a616374697669746965732920616e642074686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473200d0a61637469766974696573292e20416c6c20726967687473206172652072657365727665642e3c2f6c693e3c6c693e596f752061636b6e6f776c6564676520746861742c20657863657074206173200d0a6f746865727769736520616772656564206265747765656e20746865207061727469657320696e2077726974696e672c20616c6c20696e74656c6c65637475616c200d0a70726f706572747920726967687473206f6620746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473200d0a616374697669746965732920616e642074686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473200d0a61637469766974696573292e3c2f6c693e3c6c693e4279207375626d697474696e6720636f6e74656e7420746f20616e79207075626c696320617265610d0a206f662074686520576562736974652c20696e636c7564696e6720626c6f67732c206d65737361676520626f617264732c20616e6420666f72756d732c20796f75206772616e74200d0a746865204f70657261746f722028696e207468652070617274207468617420616666656374732069747320616374697669746965732920616e64207468652053657276696365200d0a50726f76696465722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206120726f79616c74792d667265652c200d0a70657270657475616c2c2069727265766f6361626c652c206e6f6e2d6578636c757369766520726967687420616e64206c6963656e736520746f207573652c200d0a726570726f647563652c206d6f646966792c2061646170742c207075626c6973682c207472616e736c6174652c20637265617465206465726976617469766520776f726b73200d0a66726f6d2c20646973747269627574652c20636f6d6d756e696361746520746f20746865207075626c69632c20706572666f726d20616e6420646973706c617920746865200d0a636f6e74656e742028696e2077686f6c65206f7220696e20706172742920776f726c647769646520616e6420746f20696e636f72706f7261746520697420696e206f74686572200d0a776f726b7320696e20616e7920666f726d2c206d656469612c206f7220746563686e6f6c6f6779206e6f77206b6e6f776e206f72206c6174657220646576656c6f7065642c200d0a666f72207468652066756c6c207465726d206f6620616e79207269676874732074686174206d617920657869737420696e207375636820636f6e74656e742e20596f7520616c736f0d0a207065726d697420616e79207375627363726962657220746f206163636573732c20646973706c61792c20766965772c2073746f726520616e6420726570726f64756365200d0a7375636820636f6e74656e7420666f7220706572736f6e616c207573652e3c2f6c693e3c6c693e4279207375626d697474696e6720616e7920636f6e74656e7420746f2074686520576562736974650d0a20596f752077617272616e74207468617420596f752061726520656e7469746c656420746f20616e64206861766520616c6c206e6563657373617279200d0a696e74656c6c65637475616c2070726f706572747920726967687473206f766572207468617420636f6e74656e742e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e54686972642050617274792057656273697465733c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e416e79206c696e6b7320746f2074686972642070617274792077656273697465732074686174200d0a617265206e6f7420616666696c6961746564206f72206173736f636961746564207769746820746865204f70657261746f72206f72207468652053657276696365200d0a50726f76696465722028616c74686f75676820746865204f70657261746f72c29273206f722074686520536572766963652050726f7669646572c29273206272616e64696e672c200d0a6164766572746973656d656e7473206f72206c696e6b73206d617920617070656172206f6e2074686573652077656273697465732920616e6420746865204f70657261746f72200d0a6d61792073656e6420652d6d61696c206d6573736167657320746f20796f7520636f6e7461696e696e67206164766572746973656d656e7473206f722070726f6d6f74696f6e73200d0a696e636c7564696e67206c696e6b7320746f20746869726420706172746965732e20546865204f70657261746f72206d616b6573206e6f20726570726573656e746174696f6e200d0a617320746f20746865207175616c6974792c20737569746162696c6974792c2066756e6374696f6e616c697479206f72206c6567616c697479206f6620746865200d0a6d6174657269616c206f6e207468697264207061727479207765627369746573207468617420617265206c696e6b656420746f2c206f7220746f20616e7920676f6f647320616e640d0a20736572766963657320617661696c61626c652066726f6d20737563682077656273697465732e20546865206d6174657269616c206973206f6e6c792070726f7669646564200d0a666f7220796f757220696e74657265737420616e6420636f6e76656e69656e63652e20546865204f70657261746f7220646f6573206e6f74206d6f6e69746f72206f72200d0a696e76657374696761746520737563682074686972642d706172747920776562736974657320616e6420746865204f70657261746f722061636365707473206e6f200d0a726573706f6e736962696c697479206f72206c696162696c69747920666f7220616e79206c6f73732061726973696e672066726f6d2074686520636f6e74656e74206f72200d0a6163637572616379206f662074686973206d6174657269616c20616e6420616e79206f70696e696f6e2065787072657373656420696e20746865206d6174657269616c200d0a73686f756c64206e6f742062652074616b656e20617320616e20656e646f7273656d656e742c207265636f6d6d656e646174696f6e206f72206f70696e696f6e206f6620746865200d0a4f70657261746f722e3c2f6c693e3c6c693e556e646572206e6f2063697263756d7374616e6365732061726520796f7520746f206372656174650d0a20612068797065726c696e6b20746f20616e79206f6620746865207061676573206f6e2074686520576562736974652c20776974686f7574206f627461696e696e67207072696f720d0a20636f6e73656e7420746f20646f20736f2066726f6d20746865204f70657261746f722e20496620596f7520646f206372656174652061206c696e6b20746f20616e79206f66200d0a746865207061676573206f6e2074686520576562736974652c20596f752061636b6e6f776c65646765207468617420596f752061726520726573706f6e7369626c6520666f72200d0a616c6c20646972656374206f7220696e64697265637420636f6e73657175656e636573206f6620746865206c696e6b2c20616e6420796f7520696e64656d6e69667920746865200d0a4f70657261746f7220666f7220616c6c206c6f73732c206c696162696c6974792c20636f7374732c2064616d616765732c206f7220657870656e73652061726973696e67200d0a66726f6d206f7220696e20636f6e6e656374696f6e207769746820746865206c696e6b2e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e57617272616e7469657320616e6420526570726573656e746174696f6e733c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e596f752061636b6e6f776c6564676520746861743a0d0a20202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e596f752061726520617574686f72697a656420746f2061636365737320616e640d0a207573652074686520576562736974653b20496e20706172746963756c61722c20746865206a7572697364696374696f6e20776865726520796f75207265736964652c20686f6c640d0a20636974697a656e736869702c206f7220636f6e6475637420627573696e65737320616c6c6f777320596f7520746f207574696c697a652053657276696365733b3c2f6c693e3c6c693e596f757220757365206f6620746865205765627369746520616e6420746865200d0a5365727669636520697320617420596f7572206f776e207269736b2e20596f75206167726565207468617420746865204f70657261746f722028696e207468652070617274200d0a74686174206166666563747320697473206163746976697469657329206f722074686520536572766963652050726f76696465722028696e2074686520706172742074686174200d0a616666656374732069747320616374697669746965732920617265206e6f74206c6961626c6520666f7220616e792064616d61676573206f72206861726d732061726973696e67200d0a6f7574206f6620596f757220757365206f6620746865205765627369746520616e6420536572766963653b3c2f6c693e3c6c693e54686520696e666f726d6174696f6e2070726f7669646564206f6e20746865200d0a5765627369746520697320666f722067656e6572616c20696e666f726d6174696f6e20707572706f736573206f6e6c7920616e6420697320676976656e20696e20676f6f64200d0a66616974682c20596f75206d757374206f6e6c79206163742075706f6e207375636820696e666f726d6174696f6e20617420596f7572206f776e207269736b2c206b6e6f77696e670d0a207468617420746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206f7220746865200d0a536572766963652050726f76696465722028696e20746865207061727420746861742061666665637473206974732061637469766974696573292077696c6c206e6f74206265200d0a68656c64206c6961626c6520666f7220616e7920726573756c74696e67206c6f73736573206f722064616d616765732e2054686520696e666f726d6174696f6e206973200d0a73656c65637469766520616e6420746865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206f72200d0a74686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206d6179206e6f74200d0a76657269667920616c6c20696e666f726d6174696f6e2c207768696368206d6179206e6f7420626520636f6d706c657465206f7220616363757261746520666f7220596f7572200d0a707572706f73657320616e642073686f756c64206e6f742062652072656c6965642075706f6e20776974686f7574206675727468657220656e71756972792e20546865200d0a696e666f726d6174696f6e2073686f756c64206e6f7420626520636f6e7374727565642061732061207265636f6d6d656e646174696f6e20746f207472616465206f72200d0a656e676167652074686520536572766963652070726f76696465642062792074686520536572766963652050726f766964657220696e206120706172746963756c6172200d0a6d616e6e65723b20616e643c2f6c693e3c6c693e546865204f70657261746f7220646f6573206e6f742077617272616e74200d0a746861742074686520757365206f662074686520576562736974652077696c6c20626520756e696e746572727570746564206f72206572726f7220667265652e20416d6f6e67200d0a6f74686572207468696e67732c20746865206f7065726174696f6e20616e6420617661696c6162696c697479206f66207468652073797374656d73207573656420666f72200d0a616363657373696e672074686520576562736974652c20696e636c7564696e67207075626c69632074656c6570686f6e652073657276696365732c20636f6d7075746572200d0a6e6574776f726b7320616e642074686520496e7465726e65742c2063616e20626520756e7072656469637461626c6520616e64206d61792066726f6d2074696d6520746f200d0a74696d6520696e746572666572652077697468206f722070726576656e742061636365737320746f2074686520576562736974652e20546865204f70657261746f722028696e200d0a74686520706172742074686174206166666563747320697473206163746976697469657329206f722074686520536572766963652050726f76696465722028696e20746865200d0a70617274207468617420616666656374732069747320616374697669746965732920617265206e6f7420696e20616e792077617920726573706f6e7369626c6520666f7220616e790d0a207375636820696e746572666572656e636520746861742070726576656e747320596f757220616363657373206f7220757365206f6620746865205765627369746520616e64200d0a74686520536572766963652e20546865204f70657261746f722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206f72200d0a74686520536572766963652050726f76696465722028696e207468652070617274207468617420616666656374732069747320616374697669746965732920617265206e6f74200d0a726573706f6e7369626c6520666f7220616e79206c6f737365732c20657870656e7365732c20636f7374732c206f722064616d6167657320726573756c74696e672066726f6d200d0a696e74657272757074696f6e732c206572726f72732c206f7220696e746572666572656e6365732e3c2f6c693e3c6c693e546865204f70657261746f72206769766573206e6f2077617272616e7479200d0a61626f75742074686520576562736974652e20576974686f7574206c696d6974696e672074686520666f7265676f696e672c20746865204f70657261746f7220646f6573206e6f740d0a2077617272616e7420746861742074686520576562736974652077696c6c206d65657420596f757220726571756972656d656e7473206f7220746861742069742077696c6c2062650d0a207375697461626c6520666f7220796f757220707572706f7365732e20546f2061766f696420646f7562742c20616c6c20696d706c69656420636f6e646974696f6e73206f72200d0a77617272616e7469657320617265206578636c7564656420696e736f666172206173206973207065726d6974746564206279206c617720696e636c7564696e672c200d0a776974686f7574206c696d69746174696f6e2c2077617272616e74696573206f66206d65726368616e746162696c6974792c206669746e65737320666f7220707572706f73652c200d0a7469746c6520616e64206e6f6e2d696e6672696e67656d656e742e3c2f6c693e3c6c693e596f752077617272616e7420616e6420726570726573656e742074686174200d0a596f752061726520616371756972696e672074686520726967687420746f2061636365737320616e642075736520746865205765627369746520616e64206167726565696e67200d0a746f207468657365205465726d7320666f722074686520707572706f736573206f66206120627573696e65737320616e6420746861742c20746f20746865206d6178696d756d200d0a657874656e74207065726d6974746564206279206c61772c20616e79207374617475746f727920636f6e73756d65722067756172616e746565732c206f72200d0a6c656769736c6174696f6e20696e74656e64656420746f2070726f74656374206e6f6e2d627573696e65737320636f6e73756d65727320696e20616e79200d0a6a7572697364696374696f6e20646f6573206e6f74206170706c7920746f2074686520737570706c79206f66207468652057656273697465206f72207468657365205465726d732e3c2f6c693e3c6c693e437573746f6d657220646f6573206e6f7420696e74656e6420746f200d0a68696e6465722c2064656c6179206f7220646566726175642074686520536572766963652050726f7669646572206f7220616e79206f7468657220437573746f6d657273206f66200d0a7468652057656273697465206f7220656e6761676520696e20616e7920696c6c6567616c20636f6e6475637420616e64206f7220756e6c617766756c20616374697669747920696e0d0a2072656c6174696f6e20746f206d6f6e6579206c61756e646572696e672c20726563656976696e67207468652070726f6365656473206f662064727567200d0a747261666669636b696e67206f7220746572726f7269737420616374697669746965733b20726563656976696e67207468652070726f6365656473206f66206372696d696e616c200d0a616374697669746965732c20746572726f726973742061637469766974696573206f722074726164696e672077697468207375636820636f756e7472696573206173206d696768740d0a2066726f6d2074696d6520746f2074696d65206265207375626a65637420746f20616e7920656d626172676f20696d706f73656420627920746865205365637572697479200d0a436f756e63696c206f662074686520556e69746564204e6174696f6e732c20746865204575726f7065616e20556e696f6e206f7220696e20616e7920706c616365206f66207468650d0a20776f726c642e3c2f6c693e3c6c693e546865204f70657261746f722064656e69657320616c6c200d0a6c696162696c69747920666f7220746865206f7065726174696f6e20616e642072656c696162696c697479206f66207468652057656273697465207768656e2075736564200d0a77697468696e20616e20496e7465726e657420656e7669726f6e6d656e742c20776865726520796f75206f7220612074686972642070617274792069732070726f766964696e67200d0a74686520636f6d70757465722065717569706d656e7420616e642f6f7220696e7465726e65742073657276696365732075706f6e207768696368207468652070726f64756374200d0a697320646570656e64656e742075706f6e20666f7220616e792070617274206f66206974732066756e6374696f6e616c6974792e3c2f6c693e3c6c693e4279207573696e672074686973205365727669636520596f75200d0a636f6e6669726d207468617420596f7520756e6465727374616e642074686174207468652074696d656c79206f7065726174696f6e206f662074686520496e7465726e6574200d0a616e642074686520576f726c6420576964652057656220697320676f7665726e656420627920636f6e73747261696e7473206265796f6e642074686520636f6e74726f6c206f66200d0a74686520536572766963652050726f766964657220596f7520616363657074207468617420536572766963652050726f7669646572206973206e6f74206c6961626c6520666f72200d0a616e792070657263656976656420736c6f77206f7065726174696f6e206f662074686520576562736974652c206f7220616e792064616d61676573206f72206c6f73736573200d0a7468617420636f756c6420726573756c742066726f6d20736c6f77206f7065726174696f6e206f662074686520576562736974652e3c2f6c693e3c6c693e4279207573696e672074686973205365727669636520596f75206163636570740d0a207468617420616c6c20747261646520657865637574696f6e73206172652066696e616c20616e6420697272657665727369626c652c20616e64207468617420746865200d0a536572766963652050726f7669646572206973206e6f74206c6961626c6520666f722074686520726573756c7473206f6620616e79207472616465732f657865637574696f6e732e3c2f6c693e3c6c693e4279207573696e672074686973205365727669636520596f75206163636570740d0a20746861742074686520536572766963652050726f76696465722072657365727665732074686520726967687420746f206c697175696461746520616e79207472616465732061740d0a20616e792074696d65207265676172646c657373206f66207468652070726f666974206f72206c6f737320706f736974696f6e2e3c2f6c693e3c6c693e54686520536572766963652050726f766964657220646f6573206e6f74200d0a77617272616e7420746861742074686520536572766963652077696c6c206d65657420596f757220726571756972656d656e74733b2074686174207468652053657276696365200d0a77696c6c20626520756e696e7465727275707465642c2074696d656c792c207365637572652c206f72206572726f722d667265653b207468617420746865200d0a696e666f726d6174696f6e2070726f7669646564207468726f7567682074686520536572766963652069732061636375726174652c2072656c6961626c65206f72200d0a636f72726563743b207468617420616e792064656665637473206f72206572726f72732077696c6c20626520636f727265637465642c206f72207468617420746865200d0a536572766963652077696c6c20626520617661696c61626c6520617420616e7920706172746963756c61722074696d65206f72206c6f636174696f6e2e20596f7520617373756d650d0a2066756c6c20726573706f6e736962696c69747920616e64207269736b206f66206c6f737320726573756c74696e672066726f6d20796f757220757365206f6620746865200d0a536572766963652c20616e642074686520536572766963652050726f7669646572206973206e6f74206c6961626c6520666f7220616e7920726573756c74696e67206c6f737365730d0a206f722064616d616765732e3c2f6c693e3c6c693e4974206973206f757220726573706f6e736962696c69747920746f200d0a6d61696e7461696e20616e206f726465726c79206d61726b657420616e642061732073756368207765206d6179206174206f7572206f776e2064697363726574696f6e2068616c740d0a2074726164696e67206f6e207468652057656273697465206f72206c696d69742061636365737320746f2074686520576562736974652064756520746f206d61726b6574200d0a64697372757074696f6e2c2073657276696365206d61696e74656e616e6365206f7220616e79206f746865722072656c6576616e74206576656e74732e205765206578636c7564650d0a20616c6c206c696162696c69747920666f7220616e7920636c61696d6564206c6f73736573206f722070726f66697473206c6f7374206173206120726573756c74206f66207573200d0a68616c74696e672074726164696e672e3c2f6c693e3c6c693e536f6d65206a7572697364696374696f6e7320646f206e6f7420616c6c6f77200d0a746865206578636c7573696f6e206f66206365727461696e2077617272616e74696573206f7220646973636c61696d6572206f6620696d706c6965642041677265656d656e74200d0a696e20636f6e747261637473207769746820636f6e73756d6572732c20736f20736f6d65206f7220616c6c206f6620746865206578636c7573696f6e73206f66200d0a77617272616e7469657320616e6420646973636c61696d65727320696e20746869732073656374696f6e206d6179206e6f74206170706c7920746f20746865200d0a437573746f6d65722e3c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e4c696d69746174696f6e204f66204c696162696c6974793c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e546f207468652066756c6c65737420657874656e74207065726d6974746564206279206170706c696361626c65206c61773a0d0a20202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e496e206e6f206576656e742077696c6c207468652053657276696365200d0a50726f7669646572206f7220616e79206f662074686520536572766963652050726f76696465722070617274696573206265206c6961626c6520666f7220616e79200d0a696e6469726563742c207370656369616c2c20696e636964656e74616c2c20636f6e73657175656e7469616c206f72206578656d706c6172792064616d61676573206f6620616e790d0a206b696e642028696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c2077686572652072656c6174656420746f206c6f7373206f6620726576656e75652c200d0a696e636f6d65206f722070726f666974732c206c6f7373206f6620757365206f7220646174612c206f722064616d6167657320666f7220627573696e657373200d0a696e74657272757074696f6e292061726973696e67206f7574206f66206f7220696e20616e79207761792072656c6174656420746f2074686520666f726d206f66200d0a616374696f6e2c207768657468657220626173656420696e20636f6e74726163742c20746f72742028696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c200d0a73696d706c65206e65676c6967656e63652c2077686574686572206163746976652c2070617373697665206f7220696d7075746564292c206f7220616e79206f74686572200d0a6c6567616c206f7220657175697461626c65207468656f727920286576656e2069662074686520437573746f6d657220686173206265656e2061647669736564206f6620746865200d0a706f73736962696c697479206f6620737563682064616d6167657320616e64207265676172646c657373206f66207768657468657220737563682064616d616765732077657265200d0a666f726573656561626c65293b20616e643c2f6c693e3c6c693e496e206e6f206576656e742077696c6c207468652053657276696365200d0a50726f766964657220616e642074686520536572766963652050726f7669646572207061727469657320286a6f696e746c792920616767726567617465206c696162696c6974792c0d0a207768657468657220696e20636f6e74726163742c2077617272616e74792c20746f72742028696e636c7564696e67206e65676c6967656e63652c2077686574686572200d0a6163746976652c2070617373697665206f7220696d7075746564292c206f72206f74686572207468656f72792c2061726973696e67206f7574206f66206f722072656c6174696e670d0a20746f20746869732041677265656d656e743b3c2f6c693e3c6c693e5468652050617274696573207368616c6c20626520726573706f6e7369626c650d0a20666f7220636f6d706c69616e63652077697468207465726d7320616e6420636f6e646974696f6e732c20666f722066756c66696c6c6d656e74206f6620746865200d0a437573746f6d65727320636f6d6d69746d656e747320616e642067756172616e7465657320696e20746865206d616e6e657220616e6420696e2074686520616d6f756e74200d0a7072657363726962656420627920746869732041677265656d656e742c20696e20706172746963756c61723a0d0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e496e2063617365206f662066696c696e67200d0a61636375736174696f6e732c20636c61696d73206f72206c6177737569747320746f2074686520536572766963652050726f76696465722072656c6174656420746f200d0a6e6f6e2d636f6d706c69616e63652062792074686520437573746f6d657220656e676167656d656e74732c2074686520437573746f6d65722061677265657320746f20736f6c76650d0a207375636820636c61696d73206f7220616374696f6e73206f6e20686973206f776e20616e6420617420686973206f776e20657870656e73652c2061732077656c6c206173200d0a66756c6c7920636f6d70656e736174652074686520536572766963652050726f7669646572c2927320646f63756d656e7465642070726f76656e206c6f737365732c20636f757274200d0a666565732c206c6567616c20636f7374732c20696e63757272656420696e20636f6e6e656374696f6e207769746820746865207265667573616c206f6620746865200d0a437573746f6d6572206f7220756e74696d656c792066756c66696c6c6d656e74206f6620686973206f626c69676174696f6e732062792074686520437573746f6d65722e3c2f6c693e3c6c693e496e2063617365206f662074686520437573746f6d6572c292732076696f6c6174696f6e206f6620686973206f626c69676174696f6e73206f6620746869732041677265656d656e742c2074686520536572766963652050726f76696465722072657365727665732074686520726967687420746f3a0d0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c6f6c3e3c6c693e64656d616e642066756c6c20636f6d70656e736174696f6e2066726f6d2074686520437573746f6d657220666f72206c6f73736573206361757365642062792065766572792076696f6c6174696f6e3b3c2f6c693e3c6c693e6272696e6720612063617365206265666f7265206120636f7572742069662074686520636f6d70656e736174696f6e20646f65736e277420636f7665722074686520536572766963652050726f7669646572c29273206c6f73733b3c2f6c693e3c6c693e72656c6561736520746865200d0a696e666f726d6174696f6e2072656c6174696e6720746f2074686520437573746f6d6572206964656e7469747920616e64206c6f636174696f6e20746f20616e79200d0a617574686f72697a6564206f66666963657220696e206163636f7264616e63652077697468206170706c696361626c65206c61772e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a2020202020202020202020202020202020202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020202020202020202020202020203c2f6c693e3c6c693e4966204170706c696361626c65206c617720646f6573206e6f7420616c6c6f7720616c6c206f72200d0a616e792070617274206f66207468652061626f7665206c696d69746174696f6e206f66206c696162696c69747920746f206170706c7920746f2074686520437573746f6d6572200d0a746865206c696d69746174696f6e732077696c6c206170706c7920746f2074686520437573746f6d6572206f6e6c7920746f2074686520657874656e74207065726d6974746564200d0a6279204170706c696361626c65206c61772e20437573746f6d657220756e6465727374616e6420616e642061677265652074686174206974206973206869732f6865722f697473200d0a6f626c69676174696f6e20746f20656e7375726520636f6d706c69616e6365207769746820616e79206c656769736c6174696f6e2072656c6576616e7420746f200d0a6869732f6865722f69747320636f756e747279206f6620646f6d6963696c6520636f6e6365726e696e6720757365206f662074686520576562736974652e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e5465726d696e6174696f6e2026616d703b2052656d656469657320666f7220427265616368206f66207468657365205465726d7320627920596f753c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e54686520536572766963652050726f7669646572207265736572766520746865207269676874200d0a6174206f7572206f776e2064697363726574696f6e20746f20636c6f736520596f7572204163636f756e742077697468206174206c656173742032342d686f7572200d0a6e6f746963652e2049662061742074686520657870697279206f66207468617420706572696f642c20796f757220706f736974696f6e7320617265207374696c6c206f70656e2c200d0a74686520536572766963652050726f76696465722077696c6c20636c6f7365207468656d2e3c2f6c693e3c6c693e54686520536572766963652050726f7669646572206d617920667265657a6520616e79200d0a4163636f756e7420696e20746865206576656e7420746861742074686520536572766963652050726f76696465722073757370656374206f7220686176652065766964656e6365200d0a7468617420596f752061726520656e676167656420696e20737573706963696f75732074726164696e67206f72206f74686572206163746976697479206f722068617665200d0a627265616368656420616e79206f66207468652061626f7665207465726d73206f722077617272616e746965732e2054686973206d617920726573756c7420696e20746865200d0a756e77696e64696e67206f6620616e792074726164657320596f75206861766520656e746572656420696e746f2c20696e636c7564696e6720746865206c69717569646174696f6e0d0a206f6620616e79206f70656e20706f736974696f6e732e2054686520536572766963652050726f766964657220657870726573736c79206578636c75646520616e79200d0a6c6f73736573206f722070726f6669747320596f7520776f756c642068617665206d616465206173206120726573756c74206f6620757320636c6f73696e6720596f7572200d0a747261646520706f736974696f6e73206561726c79206f7220596f75206e6f74206265696e672061626c6520746f207472616465206f6e20746865205765627369746520616e64200d0a596f7520616772656520746f20696e64656d6e6966792074686520536572766963652050726f766964657220636f6d706c6574656c7920616761696e737420616e79200d0a74686972642d706172747920616374696f6e20726573756c74696e672066726f6d20596f757220636f6e64756374206f7220757320686176696e6720746f20636c6f7365200d0a596f757220706f736974696f6e73206561726c792e205768696c6520596f7572204163636f756e742069732066726f7a656e2074686520536572766963652050726f7669646572200d0a77696c6c20696e76657374696761746520616e64206d6179207265717569726520596f7520746f20636f6f7065726174652077697468206f757220656e717569726965732e200d0a447572696e672074686520696e7665737469676174696f6e20737461676520596f75206d6179206e6f742062652061626c6520746f206d616b65206465706f73697473206f72200d0a7769746864726177616c7320746f20796f7572204163636f756e74206e6f722077696c6c20596f752062652061626c6520746f207472616465206f72206f70656e20616e79200d0a6e657720706f736974696f6e732e2041742074686520656e64206f662074686520696e7665737469676174696f6e2074686520536572766963652050726f7669646572206d61792c0d0a206174206f7572206f776e2064697363726574696f6e2c2064656369646520746f20636c6f736520596f7572204163636f756e7420666f7220776869636820776520617265200d0a6e6f7420726571756972656420746f2070726f7669646520596f75207769746820616e7920726561736f6e7320666f72207468652073616d652e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e416273656e6365206f66205761697665723c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e416e79206661696c757265206f722064656c617920746865204f70657261746f722028696e200d0a7468652070617274207468617420616666656374732069747320616374697669746965732920616e642074686520536572766963652050726f76696465722028696e20746865200d0a70617274207468617420616666656374732069747320616374697669746965732920746f20656e666f72636520616e79206f6620746865207465726d73206f7220746f200d0a657865726369736520616e7920726967687420756e646572207468652041677265656d656e742077696c6c206e6f7420626520636f6e7374727565642061732061207761697665720d0a20746f20616e7920657874656e74206f66206f7572207269676874732e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e4170706c696361626c65204c61773c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e416c6c207175657374696f6e7320636f6e6365726e696e6720746865200d0a636f6e737472756374696f6e2c2076616c69646974792c20656e666f7263656d656e7420616e6420696e746572707265746174696f6e206f6620746869732041677265656d656e740d0a207368616c6c20626520676f7665726e656420627920616e6420636f6e73747275656420616e6420656e666f7263656420696e206163636f7264616e6365207769746820746865200d0a6c617773206f66205361696e742056696e63656e7420616e6420746865204772656e6164696e65732e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e466f726365204d616a6575723c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e546f207265736f6c766520616e7920646973707574652c20636f6e74726f7665727379206f72200d0a636c61696d206265747765656e2074686520437573746f6d657220616e6420746865204f70657261746f722028696e20746865207061727420746861742061666665637473200d0a69747320616374697669746965732920616e642074686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473200d0a6163746976697469657329207368616c6c2062652068656c64206861726d6c65737320666f72207061727469616c206f72206162736f6c7574652064656661756c74206f6e200d0a74686569722072657370656374697665206f626c69676174696f6e7320756e646572207468652041677265656d656e742c20696620737563682064656661756c74206973200d0a636175736564206279207468652063697263756d7374616e636573206f6620696e737570657261626c6520666f7263652074686174206f63637572726564206166746572200d0a657865637574696f6e206f6620746865207465726d7320616e6420636f6e646974696f6e7320617320726573756c74206f662065787472616f7264696e617279206576656e74732c0d0a20692e652e206e61747572616c206469736173746572732c2065706964656d6963732c2066697265732c20666c6f6f64732c206578706c6f73696f6e732c206d696c6974617279200d0a616374697669746965732e3c2f6c693e3c6c693e54686520437573746f6d6572206f7220746865204f70657261746f722028696e20746865200d0a70617274207468617420616666656374732069747320616374697669746965732920616e642074686520536572766963652050726f76696465722028696e207468652070617274200d0a74686174206166666563747320697473206163746976697469657329206166666563746564206279207468652063697263756d7374616e636573206f66200d0a696e737570657261626c6520666f726365207368616c6c2c2077697468696e20666976652028352920627573696e65737320646179732c206e6f7469667920746865200d0a437573746f6d6572206f7220746865204f70657261746f722028696e207468652070617274207468617420616666656374732069747320616374697669746965732920616e64200d0a74686520536572766963652050726f76696465722028696e2074686520706172742074686174206166666563747320697473206163746976697469657329206f6e2073756368200d0a63697263756d7374616e6365732070726f766964696e6720696e646570656e64656e742065766964656e6365206f66206578697374656e6365206f6620746865200d0a63697263756d7374616e636573206f6620696e737570657261626c6520666f7263652069737375656420627920612072656c6576616e7420676f7665726e6d656e74206f72200d0a61646d696e69737472617469766520617574686f7269746965732e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e44697370757465205265736f6c7574696f6e3c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e41726973696e67206f7574206f66206f722072656c6174696e6720746f2074686973200d0a41677265656d656e74206f7220746865206272656163682074686572656f662c20746865205061727469657320616772656520666972737420746f206e65676f7469617465200d0a74686520697373756520696e20676f6f6420666169746820666f72206120706572696f64206f66206e6f74206c657373207468616e2074686972747920283330292064617973200d0a666f6c6c6f77696e67207772697474656e206e6f74696669636174696f6e206f66207375636820636f6e74726f7665727379206f7220636c61696d20746f20746865206f746865720d0a2050617274792e3c2f6c693e3c6c693e496620746865206e65676f74696174696f6e7320646f206e6f74207265736f6c766520746865200d0a646973707574652c20636f6e74726f7665727379206f7220636c61696d20746f2074686520726561736f6e61626c6520736174697366616374696f6e206f6620616c6c200d0a5061727469657320647572696e67207375636820706572696f642c207468656e2074686520506172746965732069727265766f6361626c7920616e64200d0a756e636f6e646974696f6e616c6c79207375626d697420746f20746865207265737065637469766520636c61696d20746f207468652062696e64696e67200d0a6172626974726174696f6e2061646d696e697374657265642062792074686520636f6d706574656e7420636f757274206f66205361696e742056696e63656e7420616e64207468650d0a204772656e6164696e657320696e206163636f7264616e63652077697468207468652072756c6573206f662074686520617262697472616c2074726962756e616c2c20696e200d0a456e676c697368206c616e67756167652c20696e2077726974696e67206f6e20746865206261736973206f662074686520646f63756d656e7473207375626d69747465642e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e53657665726162696c6974793c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e496620616e79207465726d2c2070726f766973696f6e2c20636f76656e616e74206f72200d0a7265737472696374696f6e206f6620746869732041677265656d656e742069732068656c64206279206120636f757274206f6620636f6d706574656e74200d0a6a7572697364696374696f6e20746f20626520696e76616c69642c20696c6c6567616c2c20766f6964206f7220756e656e666f72636561626c652c20746865200d0a72656d61696e646572206f66207468652041677265656d656e742c2070726f766973696f6e732c20636f76656e616e747320616e64207265737472696374696f6e7320736574200d0a666f7274682068657265696e207368616c6c2072656d61696e20696e2066756c6c20666f72636520616e642065666665637420616e64207368616c6c20696e206e6f20776179200d0a62652061666665637465642c20696d706169726564206f7220696e76616c6964617465642c20616e642074686520706172746965732068657265746f207368616c6c20757365200d0a746865697220636f6d6d65726369616c6c7920726561736f6e61626c65206566666f72747320746f2066696e6420616e6420656d706c6f7920616e20616c7465726e6174697665200d0a6d65616e7320746f2061636869657665207468652073616d65206f72207375627374616e7469616c6c79207468652073616d6520726573756c742061732074686174200d0a636f6e74656d706c617465642062792073756368207465726d2c2070726f766973696f6e2c20636f76656e616e74206f72207265737472696374696f6e2e204974206973200d0a6865726562792073746970756c6174656420616e64206465636c6172656420746f2062652074686520696e74656e74696f6e206f662074686520706172746965732074686174200d0a7468657920776f756c642068617665206578656375746564207468652072656d61696e696e67207465726d732c2070726f766973696f6e732c20636f76656e616e747320616e64200d0a7265737472696374696f6e73206f66207468652041677265656d656e7420776974686f757420696e636c7564696e6720616e79206f6620737563682074686174206d6179206265200d0a686572656166746572206465636c6172656420696e76616c69642c20696c6c6567616c2c20766f6964206f7220756e656e666f72636561626c652e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e0d0a2020202020202020202020202020202020202020202020203c68333e4f7468657220436f6e646974696f6e733c2f68333e0d0a2020202020202020202020202020202020202020202020203c6f6c3e3c6c693e54686520456e676c6973682076657273696f6e206f6620746869732041677265656d656e74207368616c6c207072657661696c20696e2063617365206f6620646966666572656e63657320696e207472616e736c6174696f6e2e3c2f6c693e3c6c693e416e79206e6f74696365206f72206f7468657220636f6d6d756e69636174696f6e20756e646572200d0a746869732041677265656d656e74207368616c6c20626520696e2077726974696e6720616e64207368616c6c20626520636f6e7369646572656420676976656e20616e64200d0a7265636569766564207768656e2073656e7420627920656d61696c2e2054686520437573746f6d6572c29273206f6666696369616c20656d61696c20666f72200d0a636f6d6d756e69636174696f6e207368616c6c206265206465656d65642074686520656d61696c207370656369666965642062792074686520437573746f6d657220647572696e670d0a2074686520726567697374726174696f6e206f6e2074686520576562736974652e20546865206c616e6775616765206f662074686520636f6d6d756e69636174696f6e200d0a7368616c6c20626520456e676c6973682e3c2f6c693e3c6c693e457863657074206173206f74686572776973652070726f766964656420696e2074686973200d0a41677265656d656e742c20746869732041677265656d656e7420616e64207468652072696768747320616e64206f626c69676174696f6e73206f66207468652070617274696573200d0a68657265756e6465722077696c6c2062652062696e64696e672075706f6e20616e6420696e75726520746f207468652062656e65666974206f66207468656972200d0a7265737065637469766520737563636573736f72732c2061737369676e732c2068656972732c206578656375746f72732c2061646d696e6973747261746f727320616e64200d0a6c6567616c20726570726573656e746174697665732e204f70657261746f7220616e642074686520536572766963652050726f7669646572206d61792061737369676e20616e79200d0a6f66206974732072696768747320616e64206f626c69676174696f6e7320756e64657220746869732041677265656d656e742e204e6f206f7468657220706172747920746f200d0a746869732041677265656d656e74206d61792061737369676e2c207768657468657220766f6c756e746172696c79206f72206279206f7065726174696f6e206f66206c61772c200d0a616e79206f66206974732072696768747320616e64206f626c69676174696f6e7320756e64657220746869732041677265656d656e742c20657863657074207769746820746865200d0a7072696f72207772697474656e20636f6e73656e74206f662074686520536572766963652050726f76696465722e3c2f6c693e3c2f6f6c3e0d0a20202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a2020202020202020202020203c2f6469763e0d0a2020202020202020202020203c64697620636c6173733d227072732d636f6e7461696e6572206c6567616c2d7465726d732d73656374696f6e223e0d0a202020202020202020202020202020203c683220636c6173733d227072732d7469746c65206c6567616c2d7465726d732d7469746c65223e5249534b20444953434c4f535552452053544154454d454e543c2f68323e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e544f20544845204d4158494d554d200d0a455854454e54205045524d495454454420554e444552204150504c494341424c45204c41572c205448452053455256494345532c20544845205345525649434553200d0a50524f5649444552204d4154455249414c5320414e4420414e592050524f445543542c2053455256494345204f52204f54484552204954454d2050524f5649444544204259204f520d0a204f4e20424548414c46204f462053455256494345532050524f5649444552204152452050524f5649444544204f4e20414e20c2934153204953c29420414e4420c2934153200d0a415641494c41424c45c29420424153495320414e442053455256494345532050524f564944455220455850524553534c5920444953434c41494d532c20414e4420594f55200d0a57414956452c20414e5920414e4420414c4c204f544845522057415252414e54494553204f4620414e59204b494e442c20574845544845522045585052455353204f52200d0a494d504c4945442c20494e434c5544494e472c20574954484f5554204c494d49544154494f4e2c20494d504c4945442057415252414e54494553204f46200d0a4d45524348414e544142494c4954592c204649544e45535320464f52204120504152544943554c415220505552504f53452c205449544c45204f52200d0a4e4f4e2d494e4652494e47454d454e54204f522057415252414e544945532041524953494e472046524f4d20434f55525345204f4620504552464f524d414e43452c200d0a434f55525345204f46204445414c494e47204f5220555341474520494e2054524144452e20574954484f5554204c494d4954494e472054484520464f5245474f494e472c200d0a53455256494345532050524f564944455220444f4553204e4f5420524550524553454e54204f522057415252414e5420544841542054484520534954452c20544845200d0a5345525649434553204f522053455256494345532050524f5649444552204d4154455249414c53204152452041434355524154452c20434f4d504c4554452c200d0a52454c4941424c452c2043555252454e542c204552524f522d465245452c204f522046524545204f462056495255534553204f52204f54484552204841524d46554c200d0a434f4d504f4e454e54532e2053455256494345532050524f564944455220444f4553204e4f542047554152414e544545205448415420414e59204f524445522057494c4c204245200d0a45584543555445442c2041434345505445442c205245434f52444544204f522052454d41494e204f50454e2e2045584345505420464f52205448452045585052455353200d0a53544154454d454e54532053455420464f52544820494e20544849532041475245454d454e542c20594f55204845524542592041434b4e4f574c4544474520414e442041475245450d0a205448415420594f552048415645204e4f542052454c4945442055504f4e20414e59204f544845522053544154454d454e54204f5220554e4445525354414e44494e472c200d0a57484554484552205752495454454e204f52204f52414c2c2057495448205245535045435420544f20594f55522055534520414e4420414343455353204f4620544845200d0a53455256494345532e20574954484f5554204c494d4954494e472054484520464f5245474f494e472c20594f552048455245425920554e4445525354414e4420414e44200d0a414752454520544841542053455256494345532050524f56494445522057494c4c204e4f54204245204c4941424c4520464f5220414e59204c4f53534553204f52200d0a44414d414745532041524953494e47204f5554204f46204f522052454c4154494e4720544f3a2028412920414e5920494e41434355524143592c20444546454354204f52200d0a4f4d495353494f4e204f4620505249434520444154412c2028422920414e59204552524f52204f522044454c415920494e20544845205452414e534d495353494f4e204f46200d0a5355434820444154412c2028432920494e54455252555054494f4e20494e20414e592053554348204441544120414e442028442920414e592044414d41474553200d0a494e43555252454420425920414e4f544845522055534552c2925320414354494f4e532c204f4d495353494f4e53204f522056494f4c4154494f4e204f462054484953200d0a41475245454d454e542e3c2f703e0d0a202020202020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e496e20636f6e73696465726174696f6e206f660d0a2074686520536572766963652050726f7669646572206167726565696e6720746f20656e74657220696e746f2041677265656d656e74207769746820746865200d0a437573746f6d65722c20437573746f6d65722061636b6e6f776c65646765732c20756e6465727374616e647320616e642061677265657320746861743a3c2f703e0d0a202020202020202020202020202020203c6f6c20636c6173733d227072732d74657874206c6567616c2d7465726d732d6c697374223e3c6c693e3c7374726f6e673e54726164696e67204e6f6e2d44656c6976657261626c6520426974636f696e20536574746c65642050726f64756374732061726520566572792053706563756c617469766520616e64205269736b792e3c2f7374726f6e673e0d0a2054726164696e67204e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732061726520686967686c792073706563756c61746976650d0a20616e64206973207375697461626c65206f6e6c7920666f722074686f736520437573746f6d6572732077686f2028612920756e6465727374616e6420616e6420617265200d0a77696c6c696e6720746f20617373756d65207468652065636f6e6f6d69632c206c6567616c20616e64206f74686572207269736b7320696e766f6c7665642c20616e6420286229200d0a6172652066696e616e6369616c6c792061626c6520746f20617373756d65206c6f73736573207369676e69666963616e746c7920696e20657863657373206f66204d617267696e200d0a6f72206465706f736974732e0d0a2020202020202020202020202020202020202020202020203c703e54726164696e672077697468204e6f6e2d64656c6976657261626c6520426974636f696e20736574746c6564200d0a70726f647563747320617265206e6f7420616e20617070726f70726961746520696e766573746d656e7420666f72207265746972656d656e742066756e64732e200d0a437573746f6d657220726570726573656e74732c2077617272616e747320616e6420616772656573207468617420437573746f6d657220756e6465727374616e64732074686573650d0a207269736b733b207468617420437573746f6d65722069732077696c6c696e6720616e642061626c652c2066696e616e6369616c6c7920616e64206f74686572776973652c20746f0d0a20617373756d6520746865207269736b73206f662054726164696e672077697468204e6f6e2d44656c6976657261626c6520426974636f696e20736574746c6564200d0a70726f647563747320616e642074686174206c6f7373206f6620437573746f6d6572c2927320656e74697265204163636f756e742042616c616e63652077696c6c206e6f74200d0a6368616e676520437573746f6d6572c29273206c696665207374796c652e3c2f703e0d0a20202020202020202020202020202020202020203c2f6c693e3c6c693e3c7374726f6e673e48696768204c657665726167652043616e204c65616420546f20517569636b204c6f737365732e3c2f7374726f6e673e0d0a205468652068696768206c65766572616765206173736f63696174656420776974682074726164696e672077697468204e6f6e2d44656c6976657261626c6520426974636f696e200d0a736574746c65642070726f64756374732063616e20726573756c7420696e207369676e69666963616e74206c6f737365732064756520746f207072696365206368616e6765732e200d0a437573746f6d657273206d757374206d61696e7461696e20746865206d696e696d756d206d617267696e20726571756972656d656e7473206f6e207468656972206f70656e200d0a706f736974696f6e7320617420616c6c2074696d65732e2049742069732074686520437573746f6d6572c2927320726573706f6e736962696c69747920746f206d6f6e69746f72200d0a6869732f686572206163636f756e742062616c616e63652e2054686520536572766963652050726f7669646572206861732074686520726967687420746f206c69717569646174650d0a20616e79206f7220616c6c206f70656e20706f736974696f6e73207768656e6576657220746865206d696e696d756d206d617267696e20726571756972656d656e74206973200d0a6e6f74206d61696e7461696e65642e20496e6372656173696e67206c6576657261676520696e63726561736573207269736b2e3c2f6c693e3c6c693e3c7374726f6e673e5072696365732c204d617267696e20416e642056616c756174696f6e7320417265205365742042792054686520536572766963652050726f766964657220416e64204d617920426520446966666572656e742046726f6d20507269636573205265706f7274656420456c736577686572652e3c2f7374726f6e673e0d0a2054686520536572766963652050726f76696465722077696c6c2070726f7669646520696e64696361746976652070726963657320746f206265207573656420696e200d0a74726164696e672c2076616c756174696f6e206f6620437573746f6d657220706f736974696f6e7320616e642064657465726d696e6174696f6e206f66204d617267696e200d0a726571756972656d656e74732e20416c74686f7567682074686520536572766963652050726f76696465722065787065637473207468617420746865736520707269636573200d0a77696c6c20626520726561736f6e61626c792072656c6174656420746f2070726963657320617661696c61626c6520696e20746865206f70656e206d61726b65742c200d0a707269636573207265706f727465642062792074686520536572766963652050726f7669646572206d617920766172792066726f6d2070726963657320617661696c61626c65200d0a746f2062616e6b7320616e64206f74686572207061727469636970616e747320696e2077686174206973206b6e6f776e20617320746865206f70656e206d61726b65742e205468650d0a20536572766963652050726f76696465722077696c6c20657865726369736520636f6e736964657261626c652064697363726574696f6e20696e2073657474696e6720616e64200d0a636f6c6c656374696e67204d617267696e2e3c2f6c693e3c6c693e3c7374726f6e673e4d61726b6574205265636f6d6d656e646174696f6e7320417265200d0a496e666f726d6174696f6e616c2c20437573746f6d6572204d616b657320496e646570656e64656e74204465636973696f6e732c20416e64205468652053657276696365200d0a50726f7669646572204973204e6f7420416e2041647669736572204f7220412046696475636961727920546f20437573746f6d65722e3c2f7374726f6e673e20546865200d0a6d61726b6574207265636f6d6d656e646174696f6e732070726f76696465642062792074686520536572766963652050726f766964657220646f206e6f74200d0a636f6e7374697475746520616e206f6666657220746f20627579206f722073656c6c2c206f722074686520736f6c696369746174696f6e206f6620616e206f6666657220746f200d0a627579206f722073656c6c2c20616e7920636f6e7472616374732e2045616368206465636973696f6e20627920437573746f6d657220746f20656e74657220696e746f2061200d0a627579206f722073656c6c206f72646572206f72206f74686572207472616e73616374696f6e20776974682074686520536572766963652050726f766964657220616e64200d0a65616368206465636973696f6e20776865746865722073756368206f72646572206f72206f74686572207472616e73616374696f6e20697320617070726f707269617465206f72200d0a70726f70657220666f7220437573746f6d657220697320616e20696e646570656e64656e74206465636973696f6e20627920437573746f6d65722e205468652053657276696365200d0a50726f7669646572206973206e6f7420616374696e6720617320616e2061647669736f72206f722073657276696e6720617320612066696475636961727920746f200d0a437573746f6d65722e20437573746f6d65722061677265657320746861742074686520536572766963652050726f766964657220686173206e6f20666964756369617279200d0a6475747920746f20437573746f6d657220616e64206e6f206c696162696c69747920696e20636f6e6e656374696f6e207769746820616e64206973206e6f74200d0a726573706f6e7369626c6520666f7220616e79206c696162696c69746965732c20636c61696d732c2064616d616765732c20636f73747320616e6420657870656e7365732c200d0a696e636c7564696e67206174746f726e657973c29220666565732c20696e63757272656420696e20636f6e6e656374696f6e207769746820437573746f6d6572200d0a666f6c6c6f77696e672074686520536572766963652050726f76696465722074726164696e67207265636f6d6d656e646174696f6e73206f722074616b696e67206f72206e6f74200d0a74616b696e6720616e7920616374696f6e2062617365642075706f6e20616e79207265636f6d6d656e646174696f6e206f7220696e666f726d6174696f6e2070726f7669646564200d0a62792074686520536572766963652050726f76696465722e3c2f6c693e3c6c693e3c7374726f6e673e5265636f6d6d656e646174696f6e7320417265204261736564204f6e20506572736f6e616c204a7564676d656e747320416e6420417265204e6f742047756172616e746565642e3c2f7374726f6e673e0d0a20546865206d61726b6574207265636f6d6d656e646174696f6e73206f662074686520536572766963652050726f76696465722061726520626173656420736f6c656c79206f6e200d0a746865206a7564676d656e74206f662074686520536572766963652050726f766964657220706572736f6e6e656c2e205468657365206d61726b6574200d0a7265636f6d6d656e646174696f6e73206d6179206f72206d6179206e6f7420626520636f6e73697374656e74207769746820746865206d61726b657420706f736974696f6e73200d0a6f7220696e74656e74696f6e73206f662074686520536572766963652050726f76696465722c2069747320616666696c696174657320616e6420656d706c6f796565732e205468650d0a206d61726b6574207265636f6d6d656e646174696f6e73206f662074686520536572766963652050726f7669646572206172652062617365642075706f6e200d0a696e666f726d6174696f6e2062656c696576656420746f2062652072656c6961626c652c206275742074686520536572766963652050726f76696465722063616e6e6f7420616e640d0a20646f6573206e6f742067756172616e74656520746865206163637572616379206f7220636f6d706c6574656e6573732074686572656f66206f7220726570726573656e74200d0a7468617420666f6c6c6f77696e672073756368207265636f6d6d656e646174696f6e732077696c6c20726564756365206f7220656c696d696e61746520746865207269736b200d0a696e686572656e7420696e2054726164696e672077697468204e6f6e2d64656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732e3c2f6c693e3c6c693e3c7374726f6e673e5468657265206973206e6f2043656e7472616c204d61726b6574206f7220436c656172696e67686f7573652047756172616e7465652e3c2f7374726f6e673e0d0a20456163682074726164652c206f72646572206f7220706f736974696f6e206973206120636f6e7472616374206469726563746c79206265747765656e20746865200d0a536572766963652050726f766964657220616e642074686520437573746f6d65722e205468657265206973206e6f20636c656172696e6720686f75736520616e64206e6f200d0a67756172616e74656520627920616e79206f74686572207061727479206f662074686520536572766963652050726f7669646572207061796d656e74206f626c69676174696f6e730d0a20746f2074686520437573746f6d65722e3c2f6c693e3c6c693e3c7374726f6e673e4e6f2047756172616e74656573206f662050726f6669742e3c2f7374726f6e673e205468657265200d0a617265206e6f2067756172616e74656573206f662070726f666974206f722066726565646f6d2066726f6d206c6f737320696e2054726164696e672077697468200d0a4e6f6e2d44656c6976657261626c6520426974636f696e20736574746c65642070726f64756374732e20437573746f6d657220686173207265636569766564206e6f2073756368200d0a67756172616e746565732066726f6d2074686520536572766963652050726f7669646572206f722066726f6d20616e79206f662069747320726570726573656e746174697665732e0d0a20437573746f6d6572206973206177617265206f6620746865207269736b7320696e686572656e7420696e2054726164696e672077697468204e6f6e2d64656c6976657261626c650d0a20426974636f696e20736574746c65642070726f647563747320616e642069732066696e616e6369616c6c792061626c6520746f20626561722073756368207269736b7320616e640d0a20776974687374616e6420616e79206c6f7373657320696e6375727265642e3c2f6c693e3c6c693e3c7374726f6e673e437573746f6d6572204d6179204e6f742042652041626c6520546f20436c6f7365206f72204f70656e20506f736974696f6e732e3c2f7374726f6e673e0d0a2044756520746f206d61726b657420636f6e646974696f6e732c2057656273697465206d61696e74656e616e63652c20746563686e6963616c206973737565732c2073797374656d0d0a206661696c757265206f72206f746865722063697263756d7374616e6365732074686520536572766963652050726f7669646572206d617920626520756e61626c6520746f200d0a636c6f7365206578697374696e6720706f736974696f6e206f72206f70656e206e657720706f736974696f6e20617420746865206c6576656c20737065636966696564206279200d0a437573746f6d65722c20616e6420437573746f6d6572206167726565732074686520536572766963652050726f76696465722077696c6c2062656172206e6f200d0a6c696162696c69747920666f72206661696c75726520746f20646f20736f2e3c2f6c693e3c6c693e3c7374726f6e673e5365727669636520496e746572666572656e636520616e642054686972642050617274792041747461636b732e3c2f7374726f6e673e0d0a205468657265206d6179206265207468697264207061727479206f72206f746865722061747461636b7320746172676574696e6720636f6d7075746572732f6e6574776f726b732c0d0a20737072656164696e67206d616c776172652c2072756e6e696e6720626f746e6574732c20284429444f532061747461636b732c206465666163696e672077656273697465732c200d0a76696f6c6174696f6e73206f66206e6574776f726b2073656375726974792c206574632e2077686963682063616e206d6174657269616c20616c7465722c20696e746572636570740d0a206f72206f746865727769736520696e7465726665726520776974682074686520676976696e67206f7220657865637574696f6e206f6620616e204f72646572206f7220746865200d0a7472616e73666572206f662066756e647320746f20616e642066726f6d2074686520437573746f6d6572c29273204163636f756e742e20437573746f6d6572200d0a61636b6e6f776c65646765732c20756e6465727374616e647320616e64206163636570747320746861742074686520536572766963652050726f7669646572200d0a7368616c6c266e6273703b62656172206e6f266e6273703b726573706f6e736962696c697479206f72266e6273703b6c696162696c697479266e6273703b77686174736f6576657220666f722069742e3c2f6c693e3c6c69207374796c653d226d617267696e2d626f74746f6d3a203272656d223e3c7374726f6e673e496e64656d6e696669636174696f6e2e3c2f7374726f6e673e0d0a20596f7520616772656520746f20696e64656d6e69667920616e6420686f6c64206861726d6c657373204f70657261746f7220616e64205365727669636573200d0a50726f76696465722c2069747320616666696c69617465732c20636f6e74726163746f72732c206c6963656e736f72732c20616e642074686569722072657370656374697665200d0a6469726563746f72732c206f666669636572732c20656d706c6f7965657320616e64206167656e74732066726f6d20616e6420616761696e737420616e7920636c61696d732c200d0a616374696f6e732c2070726f63656564696e67732c20696e7665737469676174696f6e732c2064656d616e64732c2073756974732c20636f7374732c20657870656e736573200d0a616e642064616d616765732028696e636c7564696e67206174746f726e657973c29220666565732c2066696e6573206f722070656e616c7469657320696d706f736564206279200d0a616e7920726567756c61746f727920617574686f72697479292061726973696e67206f7574206f66206f722072656c6174656420746f2028692920796f757220757365206f662c200d0a6f7220636f6e6475637420696e20636f6e6e656374696f6e20776974682c207468652053657276696365732c202869692920796f757220627265616368206f72206f7572200d0a656e666f7263656d656e74206f66207468657365205465726d732c206f7220286969692920796f75722076696f6c6174696f6e206f6620616e79206170706c696361626c65200d0a6c61772c20726567756c6174696f6e2c206f7220726967687473206f6620616e7920746869726420706172747920647572696e6720796f757220757365206f6620746865200d0a536572766963652e20496620796f7520617265206f626c69676174656420746f20696e64656d6e696679204f70657261746f7220616e64205365727669636573200d0a50726f76696465722c2069747320616666696c69617465732c20636f6e74726163746f72732c206c6963656e736f72732c20616e642074686569722072657370656374697665200d0a6469726563746f72732c206f666669636572732c20656d706c6f79656573206f72206167656e7473207075727375616e7420746f207468697320636c617573652c200d0a4f70657261746f7220616e642053657276696365732050726f76696465722077696c6c2068617665207468652072696768742c20696e2069747320736f6c65200d0a64697363726574696f6e2c20746f20636f6e74726f6c20616e7920616374696f6e206f722070726f63656564696e6720616e6420746f2064657465726d696e6520776865746865720d0a204f70657261746f7220616e642053657276696365732050726f76696465722077697368657320746f20736574746c652c20616e6420696620736f2c206f6e2077686174200d0a7465726d732e3c2f6c693e3c2f6f6c3e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f73656374696f6e3e3c2f6469763e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f6469763e3c2f73656374696f6e3e, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-12-09 21:21:14');
INSERT INTO `daynamicpages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(7, 1, NULL, 'Risk Disclosure', NULL, 'Risk-Disclosure', 0x3c73656374696f6e2069643d227269736b22207374796c653d22646973706c61793a20626c6f636b3b223e0d0a20202020202020203c64697620636c6173733d226c6567616c2d7465726d732d73656374696f6e207072732d636f6e7461696e6572223e0d0a2020202020202020202020203c683220636c6173733d227072732d7469746c65206c6567616c2d7465726d732d7469746c65223e5249534b20444953434c4f535552452053544154454d454e543c2f68323e0d0a2020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e54524144494e4720414e442046494e414e43494e47200d0a54524144455320494e2043525950544f43555252454e435920454e5441494c53204345525441494e205249534b532e2054484953205249534b20444953434c4f53555245200d0a53544154454d454e542043414e4e4f5420414e4420444f4553204e4f5420444953434c4f534520414c4c205249534b5320414e44204f544845522041535045435453200d0a494e564f4c56454420494e20484f4c44494e472c2054524144494e472c204f5220454e474147494e4720494e2046494e414e43494e47204f522046494e414e434544200d0a5452414e53414354494f4e5320494e2043525950544f43555252454e43592e204245464f52452054414b494e472041204c455645524147454420504f534954494f4e2c20594f55200d0a53484f554c4420454e53555245205448415420594f5520554e4445525354414e4420544845205249534b5320494e564f4c56454420414e4420434f4e534944455220594f5552200d0a4c4556454c204f4620455850455249454e434520414e4420414c4c2054484520504f54454e5449414c205249534b532e20594f552053484f554c44204341524546554c4c59200d0a434f4e5349444552205052494d45205842542054524144494e47205345525649434553204c54442e205445524d5320414e4420434f4e444954494f4e5320414e442c20544f200d0a54484520455854454e54204e45434553534152592c20434f4e53554c5420414e20415050524f505249415445204c41575945522c204143434f554e54414e542c204f5220544158200d0a50524f46455353494f4e414c2e205249534b5320494e434c5544452c2042555420415245204e4f54204c494d4954454420544f2c2054484520464f4c4c4f57494e473c2f703e0d0a20202020202020203c2f6469763e0d0a20202020202020203c64697620636c6173733d227072732d636f6e7461696e6572223e0d0a2020202020202020202020203c6f6c20636c6173733d226c6567616c2d7465726d732d73656374696f6e732d6c697374223e3c6c693e4d61726b6574205269736b3a0d0a20202020202020202020202020202020202020203c703e546865206d61726b657420666f722063727970746f63757272656e6379206973207374696c6c206e657720616e64200d0a756e6365727461696e2e204e6f2d6f6e652073686f756c6420686176652066756e647320696e76657374656420696e2063727970746f63757272656e6379206f72200d0a73706563756c61746520696e2063727970746f63757272656e6379207468617420736865206973206e6f7420707265706172656420746f206c6f736520656e746972656c792e200d0a5768657468657220746865206d61726b657420666f72206f6e65206f72206d6f72652063727970746f63757272656e63792077696c6c206d6f7665207570206f7220646f776e2c200d0a6f722077686574686572206120706172746963756c61722063727970746f63757272656e63792077696c6c206c6f736520616c6c206f72207375627374616e7469616c6c79200d0a616c6c206f66206974732076616c75652c20697320756e6b6e6f776e2e2054686973206170706c69657320626f746820746f2074726164657273207468617420617265200d0a676f696e67206c6f6e6720616e6420746f20747261646572732074686174206172652073686f7274696e6720746865206d61726b65742e205061727469636970616e7473200d0a73686f756c642062652063617574696f75732061626f757420686f6c64696e672063727970746f63757272656e63792e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e4c697175696469747920616e64204c697374696e67205269736b3a0d0a20202020202020202020202020202020202020203c703e4d61726b65747320666f722063727970746f63757272656e637920686176652076617279696e672064656772656573200d0a6f66206c69717569646974792e20536f6d6520617265207175697465206c6971756964207768696c65206f7468657273206d6179206265207468696e6e65722e205468696e200d0a6d61726b6574732063616e20616d706c69667920766f6c6174696c6974792e205468657265206973206e6576657220612067756172616e7465652074686174207468657265200d0a77696c6c20626520616e20616374697665206d61726b657420666f72206f6e6520746f2073656c6c2c206275792c206f722074726164652063727970746f63757272656e6379200d0a6f722070726f647563747320646572697665642066726f6d206f7220616e63696c6c61727920746f207468656d2e20467572746865726d6f72652c20616e79206d61726b6574200d0a666f722063727970746f63757272656e6379206d6179206162727570746c792061707065617220616e642076616e6973682e2043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c74642e206d616b6573206e6f20726570726573656e746174696f6e73206f722077617272616e746965732061626f7574200d0a7768657468657220612063727970746f63757272656e63792074686174206d617920626520747261646564206f6e20746865203c6120687265663d2268747470733a2f2f74726164656d696e65727366782e636f6d2f696e6465782e706870223e7777772e63727970746f636f696e66786d696e6572732e636f6d3c2f613e20616e7920706f696e7420696e20746865206675747572652c20696620617420616c6c2e20416e792063727970746f63757272656e6379206973207375626a65637420746f2064656c697374696e6720776974686f7574206e6f74696365206f7220636f6e73656e742e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e4c6567616c205269736b3a0d0a20202020202020202020202020202020202020203c703e546865206c6567616c20737461747573206f66206365727461696e2063727970746f63757272656e6379206d61792062650d0a20756e6365727461696e2e20546869732063616e206d65616e207468617420746865206c6567616c697479206f6620686f6c64696e67206f722074726164696e67207468656d200d0a6973206e6f7420616c7761797320636c6561722e205768657468657220616e6420686f77206f6e65206f72206d6f72652063727970746f63757272656e6379200d0a636f6e737469747574652070726f70657274792c206f72206173736574732c206f7220726967687473206f6620616e79206b696e64206d617920616c736f207365656d200d0a756e636c6561722e205061727469636970616e74732061726520726573706f6e7369626c6520666f72206b6e6f77696e6720616e6420756e6465727374616e64696e6720686f77200d0a63727970746f63757272656e63792077696c6c206265206164647265737365642c20726567756c617465642c20616e6420746178656420756e646572206170706c696361626c65200d0a6c61772e2054686572652069732061207269736b207468617420696e20736f6d65206a7572697364696374696f6e732063727970746f63757272656e6379206d69676874206265200d0a636f6e7369646572656420746f20626520612073656375726974792c206f722074686174206974206d6967687420626520636f6e7369646572656420746f2062652061200d0a736563757269747920696e20746865206675747572652e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e20646f6573206e6f74200d0a676976652077617272616e74696573206f722067756172616e74656573207468617420616e792063727970746f63757272656e637920617265206e6f7420612073656375726974790d0a20696e20616c6c206a7572697364696374696f6e732e20596f757220697320626f756e6420746f20636865636b206966206163717569736974696f6e20616e64200d0a646973706f73616c206f662063727970746f63757272656e6379206973206c6567616c20696e20686973206a7572697364696374696f6e2c20596f7520756e64657274616b6573200d0a6e6f7420746f207573652063727970746f63757272656e63792073686f756c6420746865697220757365206e6f74206265206c6567616c20696e207468652072656c6576616e74200d0a6a7572697364696374696f6e2e20496620596f752065737461626c69736820746861742074686520757365206f662063727970746f63757272656e6379206973206e6f74200d0a6c6567616c20696e20596f7572206a7572697364696374696f6e2c20596f752073686f756c64206e6f74207573652063727970746f63757272656e636965732c206e6f74200d0a61637175697265207468656d20616e642073686f756c6420696d6d6564696174656c792073746f70207573696e67206f7220706f7373657373696e67207468656d206966200d0a737563682063617365206172697365732e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e45786368616e6765205269736b3a0d0a20202020202020202020202020202020202020203c703e486176696e672063727970746f63757272656e6379206f6e206465706f736974206f72207769746820616e79200d0a746869726420706172747920696e206120637573746f6469616c2072656c6174696f6e736869702068617320617474656e64616e74207269736b732e205468657365207269736b730d0a20696e636c7564652073656375726974792062726561636865732c207269736b206f6620636f6e747261637475616c206272656163682c20616e64207269736b206f66200d0a6c6f73732e205061727469636970616e74732073686f756c642062652077617279206f6620616c6c6f77696e67207468697264207061727469657320746f20686f6c64200d0a74686569722070726f706572747920666f7220616e7920726561736f6e2e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e206973206e6f7420726573706f6e7369626c6520666f7220616e79206c6f73736573206f722064616d61676573206f6620616e79206b696e64200d0a61726973696e6720656974686572206469726563746c79206f7220696e6469726563746c792066726f6d2061207769746864726177616c206f662066756e64732066726f6d200d0a796f7572206163636f756e7420627920612074686972642070617274792064756520746f20746865206c6f7373206f662063726564656e7469616c733c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e206973206e6f7420726573706f6e7369626c6520666f7220616e79206c6f73736573206f722064616d61676573206f6620616e79206b696e64200d0a61726973696e6720656974686572206469726563746c79206f7220696e6469726563746c792066726f6d207468652073656e64696e67206f662063727970746f63757272656e63790d0a20746f207468652077726f6e672077616c6c6574206164647265737320647572696e6720746865207769746864726177616c206f662066756e64732066726f6d2074686569722043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e206163636f756e743c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c65646765207468617420616e792063727970746f63757272656e6379206d6179206265200d0a6c6f73742069662073656e7420746f207468652077726f6e6720616464726573732028666f72206578616d706c652062757420776974686f7574206c696d69746174696f6e2c200d0a696620746865206164647265737320697320696d70726f7065726c7920666f726d61747465642c20636f6e7461696e73206572726f72732c206f7220697320696e74656e646564200d0a746f206265207573656420666f72206120646966666572656e742074797065206f662063727970746f63757272656e6379292e20596f75206163636570742074686174200d0a43727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e206973206e6f7420726573706f6e7369626c6520666f7220616e79206c6f73736573200d0a6f722064616d616765732077686174736f657665722061726973696e67206469726563746c79206f7220696e6469726563746c792064756520746f20616e792073756368200d0a6572726f722e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e54726164696e67205269736b3a0d0a20202020202020202020202020202020202020203c703e496e206164646974696f6e20746f206c6971756964697479207269736b732c2076616c75657320696e20616e79200d0a6469676974616c20746f6b656e206d61726b6574706c6163652061726520766f6c6174696c6520616e642063616e20736869667420717569636b6c792e200d0a5061727469636970616e747320696e20616e792063727970746f63757272656e6379206d61726b657420617265207761726e6564207468617420746865792073686f756c64200d0a70617920636c6f736520617474656e74696f6e20746f20746865697220706f736974696f6e20616e6420686f6c64696e67732c20616e6420686f772074686579206d6179206265200d0a696d7061637465642062792073756464656e20616e6420616476657273652073686966747320696e2074726164696e6720616e64206f74686572206d61726b6574200d0a616374697669746965732e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e5269736b73204173736f63696174656420776974682046696e616e63696e6720416374697669746965733a0d0a20202020202020202020202020202020202020203c703e5768656e20796f752066696e616e63652061207075726368617365206f722073616c65206f66200d0a63727970746f63757272656e6379206f6e206120706565722d746f2d706565722062617369732c20796f752072756e20746865207269736b206f66206c6f73696e6720796f7572200d0a70726f76696465642066696e616e63696e672e2053696d696c61726c792c207768656e20796f75206163636570742066696e616e63696e6720746f20656e7465722061200d0a74726164696e672061677265656d656e742c20796f752061636365707420746865207269736b206f66206e6f74206265696e672061626c6520746f2072657061792074686174200d0a66696e616e63696e672028652e672e2c20696620746865206d61726b6574207072696365206f66207468652063727970746f63757272656e637920796f75207075726368617365640d0a2077697468207468652066696e616e63696e672066616c6c73292e205061727469636970616e74732073686f756c64206b6e6f7720616c6c206f6620746865207465726d73206f660d0a20616e7920636f6e747261637473207468657920656e74657220616e6420686f772074686569722074726164696e67207374726174656769657320616e64206f74686572200d0a6d61726b657420616e64207269736b20666163746f72732063616e206166666563742074686569722066696e616e63696e67206f626c69676174696f6e732e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c65646765207468617420616e792063727970746f63757272656e6379206d6179206265200d0a63616e63656c6c65642c206c6f7374206f7220646f75626c65207370656e742c206f72206f7468657277697365206c6f736520616c6c206f72206d6f7374206f66207468656972200d0a76616c75652c2064756520746f20666f726b732c20726f6c6c6261636b732c2041747461636b732c206368616e67657320746f2063727970746f63757272656e6379200d0a50726f70657274696573206f72206661696c757265206f66207468652063727970746f63757272656e637920746f206f70657261746520617320696e74656e6465642e20596f75200d0a61636365707420746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e206973206e6f7420726573706f6e7369626c6520666f72200d0a616e79206c6f73736573206f722064616d616765732077686174736f657665722061726973696e67206469726563746c79206f7220696e6469726563746c792064756520746f200d0a746865206f6363757272656e6365206f6620616e792073756368206576656e742e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636365707420616e642061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c74642e207368616c6c20686176652c20616e64206d61696e7461696e732c2074686520726967687420746f20726566757365200d0a6f726465727320746f2065737461626c697368206e6577206f72206c617267657220706f736974696f6e73206f7220746f20627579206f722073656c6c200d0a496e737472756d656e74732e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636365707420616e642061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c74642e207368616c6c20686176652074686520726967687420746f20726564756365207468652073697a65206f6620796f7572200d0a6f70656e20706f736974696f6e732e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e2077696c6c20696e666f726d20796f75206173200d0a736f6f6e206173207072616374696361626c6520726567617264696e67207375636820726564756374696f6e20616e642074686520726561736f6e20686572656f662e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e5269736b206f6620746865667420616e64206861636b696e673a0d0a20202020202020202020202020202020202020203c703e4861636b657273206f72206f746865722067726f757073206f72206f7267616e697a6174696f6e73206d6179200d0a617474656d707420746f20696e746572666572652077697468207468652057656273697465206f722074686520617661696c6162696c697479206f66200d0a63727970746f63757272656e637920696e20616e79206e756d626572206f6620776179732c20696e636c7564696e6720776974686f7574206c696d69746174696f6e200d0a64656e69616c206f6620736572766963652061747461636b732c20537962696c2061747461636b732c2073706f6f66696e672c20736d757266696e672c206d616c77617265200d0a61747461636b732c206f7220636f6e73656e7375732d62617365642061747461636b732e20596f752068657265627920616772656520746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e207368616c6c2068617665206e6f206c696162696c69747920666f7220616e792073756368206c6f73730d0a20596f757220696e6375722e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e5269736b206f66207365637572697479207765616b6e657373657320696e20746865205765627369746520616e642f6f722063727970746f63757272656e637920736f7572636520636f6465206f7220616e79206173736f63696174656420736f66747761726520616e642f6f7220696e6672617374727563747572653a0d0a20202020202020202020202020202020202020203c703e54686572652069732061207269736b207468617420746865205765627369746520616e64200d0a63727970746f63757272656e6379206d617920756e696e74656e74696f6e616c6c7920696e636c756465207765616b6e6573736573206f72206275677320696e20746865200d0a736f7572636520636f646520696e746572666572696e6720776974682074686520757365206f66206f722063617573696e6720746865206c6f7373206f66200d0a63727970746f63757272656e63792e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e5269736b206f66207765616b6e6573736573206f72206578706c6f697461626c6520627265616b7468726f7567687320696e20746865206669656c64206f662063727970746f6772617068793a0d0a20202020202020202020202020202020202020203c703e416476616e63657320696e2063727970746f6772617068792c206f7220746563686e6963616c20616476616e636573200d0a737563682061732074686520646576656c6f706d656e74206f66207175616e74756d20636f6d7075746572732c20636f756c642070726573656e74207269736b7320746f200d0a63727970746f63757272656e6369657320776869636820636f756c6420726573756c7420696e20746865207468656674206f72206c6f7373206f66200d0a63727970746f63757272656e63792e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e496e7465726e6574207472616e736d697373696f6e207269736b733a0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c65646765207468617420746865726520617265207269736b73206173736f636961746564200d0a77697468207573696e67207468652063727970746f63757272656e637920696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c20746865206661696c7572650d0a206f662068617264776172652c20736f6674776172652c20616e6420496e7465726e657420636f6e6e656374696f6e732e20596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e207368616c6c206e6f7420626520726573706f6e7369626c6520666f7220616e79200d0a636f6d6d756e69636174696f6e206661696c757265732c2064697372757074696f6e732c206572726f72732c20646973746f7274696f6e73206f722064656c617973200d0a596f75266e6273703b6d617920657870657269656e6365207768656e207573696e6720746865205765627369746520616e642063727970746f63757272656e63792c20686f77736f65766572200d0a6361757365642e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c65646765207468617420796f75206d61792062652070726576656e7465642066726f6d200d0a73656e64696e672061207472616e73616374696f6e20726571756573742c206f722061207472616e73616374696f6e2072657175657374206f7220656d61696c206d6179206e6f740d0a2062652072656365697665642062792043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e206f72207468652053657276696365732c200d0a64756520746f2068617264776172652c20736f667477617265206f72207365727669636573206973737565732028696e636c7564696e672c20776974686f7574200d0a6c696d69746174696f6e2c20496e7465726e657420616e64206f74686572206e6574776f726b20636f6e6e656374697669747920697373756573292e20596f7520616363657074200d0a746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e206973206e6f7420726573706f6e7369626c6520666f7220616e79200d0a6c6f7373206f722064616d6167652077686174736f657665722061726973696e67206469726563746c79206f7220696e6469726563746c792064756520746f20616e7920737563680d0a206973737565732e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e42616e6b696e67207269736b733a0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e2063616e6e6f742062652068656c64206c6961626c6520666f7220746865206e756d626572206f6620646179732070617373696e67200d0a6265747765656e20746865207472616e73666572206f6620666961742066756e64732066726f6d20796f7572206163636f756e74206f6e2043727970746f636f696e4658204d696e657273200d0a54726164696e67205365727669636573204c74642e20756e74696c207468652074696d65207468617420746865207472616e736665727265642066756e647320617265200d0a626f6f6b6564206f6e20746865206163636f756e7420776974682074686520726563656976696e672062616e6b2e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c656467652074686174207375626a65637420746f2061207472616e73666572200d0a696e737472756374696f6e206265696e6720636f6d706c65746520616e6420636f72726563742c20696e636f6d696e67207472616e7366657273206f6620666961742066756e64730d0a2077696c6c206f6e6c7920626520626f6f6b6564206f6e20796f7572206163636f756e7420616e6420626520617420796f757220646973706f73616c206f6e63652043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e20686173207265636569766564207468652066756e64733c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e2063616e6e6f742062652068656c64206c6961626c6520666f7220746865206e756d626572206f6620646179732070617373696e67200d0a6265747765656e20746865207472616e73666572206f6620666961742066756e6473206279207468652073656e64696e672062616e6b20756e74696c207468652074696d65200d0a7468617420746865207472616e736665727265642066756e6473206172652072656365697665642062792043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e20616e6420626f6f6b6564206f6e20796f7572206163636f756e742e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e5461786174696f6e3a0d0a20202020202020202020202020202020202020203c703e596f7520626561722074686520736f6c6520726573706f6e736962696c69747920746f2064657465726d696e65206966200d0a746865207075726368617365206f662063727970746f63757272656e6379206f722074686520706f74656e7469616c20617070726563696174696f6e206f72200d0a646570726563696174696f6e20696e207468652076616c7565206f662063727970746f63757272656e6379206f7665722074696d652068617320746178200d0a696d706c69636174696f6e7320666f7220596f7520696e20596f757220686f6d65206a7572697364696374696f6e2e2042792070757263686173696e67200d0a63727970746f63757272656e637920616e6420746f2074686520657874656e74207065726d6974746564206279206c61772c20596f75206167726565206e6f7420746f20686f6c640d0a20616e79206f662043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e2c2069747320616666696c69617465732c200d0a7368617265686f6c646572732c206469726563746f7273206f722061647669736f7273206c6961626c6520666f7220616e7920746178206c696162696c697479200d0a6173736f6369617465642077697468206f722061726973696e672066726f6d20746865207075726368617365206f662063727970746f63757272656e63792e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061726520736f6c656c7920726573706f6e7369626c6520666f722077697468686f6c64696e672c200d0a636f6c6c656374696e672c207265706f7274696e672c20706179696e672c20616e642f6f722072656d697474696e6720616e7920616e6420616c6c20746178657320746f207468650d0a20617070726f7072696174652074617820617574686f72697469657320696e2073756368206a7572697364696374696f6e28732920696e20776869636820596f75206d61792062650d0a206c6961626c6520746f20706179207461782e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e207368616c6c206e6f74206265200d0a726573706f6e7369626c6520666f722077697468686f6c64696e672c20636f6c6c656374696e672c207265706f7274696e672c20706179696e672c20616e642f6f72200d0a72656d697474696e6720616e792074617865732028696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c20616e7920696e636f6d652c206361706974616c200d0a6761696e732c2073616c65732c2076616c7565206164646564206f722073696d696c61722074617829207768696368206d61792061726973652066726f6d20596f757273200d0a6163717569736974696f6e206f662063727970746f63757272656e63792e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e5269736b206173736f636961746564207769746820746865206163746976697479206f6620746865204d61726b6574204d616b65723a0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e206d6179206163742061732061204d61726b6574204d616b657220696e206365727461696e206173736574732e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636b6e6f776c6564676520746861742043727970746f636f696e4658204d696e6572732054726164696e67200d0a5365727669636573204c74642e2c207768656e20616374696e672061732061204d61726b6574204d616b65722c206d61792071756f746520796f752062696420616e642061736b200d0a7072696365732e204e6f74776974687374616e64696e6720746869732c20796f7520616363657074207468617420436f6d70616e79206e616d6520686173206e6f200d0a6f626c69676174696f6e20746f2071756f74652070726963657320746f20796f7520617420616e792074696d6520696e20616e7920676976656e206d61726b65742c206e6f72200d0a616e206f626c69676174696f6e20746f2071756f74652070726963657320776974682061207370656369666963206d6178696d756d2073707265616420746f20796f752e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752061636365707420746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573200d0a4c74642e2c206173204d61726b6574204d616b65722c206d617920686f6c6420706f736974696f6e73207468617420617265206f70706f7369746520746f20796f7572200d0a706f736974696f6e732c20726573756c74696e6720696e20706f74656e7469616c20636f6e666c69637473206f6620696e746572657374206265747765656e2043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e20616e6420596f752e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e4c65766572616765207269736b733a0d0a20202020202020202020202020202020202020203c703e506c6561736520747261646520776974682063617574696f6e207768656e20796f7520757365206c65766572616765200d0a696e2074726164696e67206f7220696e76657374696e672e20496620596f7520646f206e6f7420757365206c657665726167652070726f7065726c792069742063616e20686176650d0a2065787472656d652065666665637473206f6e20596f7572206163636f756e74732e20596f752063616e206c6f73652061206875676520616d6f756e74206f66206d6f6e6579200d0a6966206120747261646520776f726b7320616761696e737420596f752e2054726164696e6720616e64206465616c696e6720776974682063727970746f63757272656e6379200d0a68696768206c6576657261676520697320612068696768206c6576656c207269736b2e3c2f703e0d0a20202020202020202020202020202020202020203c703e49742063616e2062652076657279207269736b7920666f722074686520626567696e6e65727320746f20757365200d0a68696768206c65766572616765206265636175736520596f752067656e6572616c6c7920646f206e6f74206861766520656e6f75676820657870657269656e636520696e200d0a74726164696e672068696768206c657665726167652e20596f752073686f756c64206e6f74207472616465207769746820697420756e74696c20596f75206765742061200d0a636c656172206964656120686f7720697420776f726b732e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e556e616e746963697061746564207269736b733a0d0a20202020202020202020202020202020202020203c703e43727970746f63757272656e6369657320616e6420626c6f636b636861696e7320617265206e657720616e64200d0a756e74657374656420746563686e6f6c6f67792e20496e206164646974696f6e20746f20746865207269736b732073657420666f72746820686572652c20746865726520617265200d0a7269736b7320746861742043727970746f636f696e4658204d696e6572732054726164696e67205365727669636573204c74642e2063616e6e6f7420666f726573656520616e642069742069730d0a20756e726561736f6e61626c6520746f2062656c6965766520746861742073756368207269736b7320636f756c642068617665206265656e20666f726573656561626c652e200d0a5269736b73206d61792066757274686572206d6174657269616c697a6520617320756e616e7469636970617465642e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a20202020202020203c2f6469763e0d0a202020203c2f73656374696f6e3e, 1, 3, 'risk disclosure', 'risk disclosure', '2021-12-09 21:35:58', '2021-12-09 21:35:58'),
(8, 1, NULL, 'Cookie Policy', NULL, 'Cookie-Policy', 0x3c73656374696f6e2069643d22636f6f6b696522207374796c653d22646973706c61793a20626c6f636b3b223e0d0a20202020202020203c64697620636c6173733d226c6567616c2d7465726d732d73656374696f6e207072732d636f6e7461696e6572223e0d0a2020202020202020202020203c683220636c6173733d227072732d7469746c65206c6567616c2d7465726d732d7469746c65223e436f6f6b696520506f6c69637920666f722043727970746f636f696e4658204d696e6572733c2f68323e0d0a2020202020202020202020203c7020636c6173733d227072732d74657874206c6567616c2d7465726d732d74657874223e546869732069732074686520436f6f6b696520506f6c69637920666f722043727970746f636f696e4658204d696e6572732c2061636365737369626c652066726f6d207777772e63727970746f636f696e66786d696e6572732e636f6d3c2f703e0d0a20202020202020203c2f6469763e0d0a20202020202020203c64697620636c6173733d227072732d636f6e7461696e6572223e0d0a2020202020202020202020203c6f6c20636c6173733d226c6567616c2d7465726d732d73656374696f6e732d6c697374223e3c6c693e576861742041726520436f6f6b6965730d0a20202020202020202020202020202020202020203c703e417320697320636f6d6d6f6e207072616374696365207769746820616c6d6f737420616c6c200d0a70726f66657373696f6e616c20776562736974657320746869732073697465207573657320636f6f6b6965732c207768696368206172652074696e792066696c65732074686174200d0a61726520646f776e6c6f6164656420746f20796f757220636f6d70757465722c20746f20696d70726f766520796f757220657870657269656e63652e20546869732070616765200d0a646573637269626573207768617420696e666f726d6174696f6e2074686579206761746865722c20686f772077652075736520697420616e6420776879207765200d0a736f6d6574696d6573206e65656420746f2073746f726520746865736520636f6f6b6965732e2057652077696c6c20616c736f20736861726520686f7720796f752063616e200d0a70726576656e7420746865736520636f6f6b6965732066726f6d206265696e672073746f72656420686f77657665722074686973206d617920646f776e6772616465206f72200d0a27627265616b27206365727461696e20656c656d656e7473206f66207468652073697465732066756e6374696f6e616c6974792e3c2f703e0d0a20202020202020202020202020202020202020203c703e466f72206d6f72652067656e6572616c20696e666f726d6174696f6e206f6e20636f6f6b69657320736565207468652057696b6970656469612061727469636c65206f6e204854545020436f6f6b6965732e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e486f772057652055736520436f6f6b6965730d0a20202020202020202020202020202020202020203c703e57652075736520636f6f6b69657320666f7220612076617269657479206f6620726561736f6e732064657461696c6564200d0a62656c6f772e20556e666f7274756e6174656c7920696e206d6f737420636173657320746865726520617265206e6f20696e647573747279207374616e64617264200d0a6f7074696f6e7320666f722064697361626c696e6720636f6f6b69657320776974686f757420636f6d706c6574656c792064697361626c696e6720746865200d0a66756e6374696f6e616c69747920616e6420666561747572657320746865792061646420746f207468697320736974652e204974206973207265636f6d6d656e64656420746861740d0a20796f75206c65617665206f6e20616c6c20636f6f6b69657320696620796f7520617265206e6f742073757265207768657468657220796f75206e656564207468656d206f72200d0a6e6f7420696e2063617365207468657920617265207573656420746f2070726f7669646520612073657276696365207468617420796f75207573652e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e44697361626c696e6720436f6f6b6965730d0a20202020202020202020202020202020202020203c703e596f752063616e2070726576656e74207468652073657474696e67206f6620636f6f6b696573206279200d0a61646a757374696e67207468652073657474696e6773206f6e20796f75722062726f77736572202873656520796f75722062726f777365722048656c7020666f7220686f7720746f0d0a20646f2074686973292e20426520617761726520746861742064697361626c696e6720636f6f6b6965732077696c6c20616666656374207468652066756e6374696f6e616c6974790d0a206f66207468697320616e64206d616e79206f74686572207765627369746573207468617420796f752076697369742e2044697361626c696e6720636f6f6b6965732077696c6c200d0a757375616c6c7920726573756c7420696e20616c736f2064697361626c696e67206365727461696e2066756e6374696f6e616c69747920616e64206665617475726573206f66200d0a746865207468697320736974652e205468657265666f7265206974206973207265636f6d6d656e646564207468617420796f7520646f206e6f742064697361626c65200d0a636f6f6b6965732e3c2f703e0d0a20202020202020202020202020202020202020203c703e596f752063616e206c6561726e20686f7720746f206d616e61676520636f6f6b696573206f6e20796f7572207765622062726f7773657220627920666f6c6c6f77696e6720746865203c6120687265663d2268747470733a2f2f70726976616379706f6c69636965732e636f6d2f626c6f672f62726f777365722d636f6f6b6965732d67756964652f223e2042726f7773657220436f6f6b6965732047756964653c2f613e2e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c6c693e54686520436f6f6b696573205765205365740d0a20202020202020202020202020202020202020203c6f6c3e3c6c693e4163636f756e742072656c6174656420636f6f6b6965730d0a202020202020202020202020202020202020202020202020202020203c703e496620796f752063726561746520616e206163636f756e742077697468207573207468656e207765200d0a77696c6c2075736520636f6f6b69657320666f7220746865206d616e6167656d656e74206f6620746865207369676e75702070726f6365737320616e642067656e6572616c200d0a61646d696e697374726174696f6e2e20546865736520636f6f6b6965732077696c6c20757375616c6c792062652064656c65746564207768656e20796f75206c6f67206f7574200d0a686f776576657220696e20736f6d652063617365732074686579206d61792072656d61696e206166746572776172647320746f2072656d656d62657220796f75722073697465200d0a707265666572656e636573207768656e206c6f67676564206f75742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c693e4c6f67696e2072656c6174656420636f6f6b6965730d0a202020202020202020202020202020202020202020202020202020203c703e57652075736520636f6f6b696573207768656e20796f7520617265206c6f6767656420696e20736f200d0a746861742077652063616e2072656d656d626572207468697320666163742e20546869732070726576656e747320796f752066726f6d20686176696e6720746f206c6f6720696e200d0a65766572792073696e676c652074696d6520796f752076697369742061206e657720706167652e20546865736520636f6f6b69657320617265207479706963616c6c79200d0a72656d6f766564206f7220636c6561726564207768656e20796f75206c6f67206f757420746f20656e73757265207468617420796f752063616e206f6e6c7920616363657373200d0a7265737472696374656420666561747572657320616e64206172656173207768656e206c6f6767656420696e2e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c693e456d61696c206e6577736c6574746572732072656c6174656420636f6f6b6965730d0a202020202020202020202020202020202020202020202020202020203c703e546869732073697465206f6666657273206e6577736c6574746572206f7220656d61696c200d0a737562736372697074696f6e20736572766963657320616e6420636f6f6b696573206d6179206265207573656420746f2072656d656d62657220696620796f7520617265200d0a616c7265616479207265676973746572656420616e64207768657468657220746f2073686f77206365727461696e206e6f74696669636174696f6e73207768696368206d696768740d0a206f6e6c792062652076616c696420746f20737562736372696265642f756e737562736372696265642075736572732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c693e466f726d732072656c6174656420636f6f6b6965730d0a202020202020202020202020202020202020202020202020202020203c703e5768656e20796f75207375626d6974206461746120746f207468726f756768206120666f726d200d0a737563682061732074686f736520666f756e64206f6e20636f6e74616374207061676573206f7220636f6d6d656e7420666f726d7320636f6f6b696573206d6179206265207365740d0a20746f2072656d656d62657220796f757220757365722064657461696c7320666f722066757475726520636f72726573706f6e64656e63652e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c693e5369746520707265666572656e63657320636f6f6b6965730d0a202020202020202020202020202020202020202020202020202020203c703e496e206f7264657220746f2070726f7669646520796f7520776974682061206772656174200d0a657870657269656e6365206f6e207468697320736974652077652070726f76696465207468652066756e6374696f6e616c69747920746f2073657420796f7572200d0a707265666572656e63657320666f7220686f77207468697320736974652072756e73207768656e20796f75207573652069742e20496e206f7264657220746f2072656d656d6265720d0a20796f757220707265666572656e636573207765206e65656420746f2073657420636f6f6b69657320736f2074686174207468697320696e666f726d6174696f6e2063616e2062650d0a2063616c6c6564207768656e6576657220796f7520696e74657261637420776974682061207061676520697320616666656374656420627920796f7572200d0a707265666572656e6365732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020203c2f6c693e3c6c693e546869726420506172747920436f6f6b6965730d0a20202020202020202020202020202020202020203c703e496e20736f6d65207370656369616c20636173657320776520616c736f2075736520636f6f6b696573200d0a70726f7669646564206279207472757374656420746869726420706172746965732e2054686520666f6c6c6f77696e672073656374696f6e2064657461696c73207768696368200d0a746869726420706172747920636f6f6b69657320796f75206d6967687420656e636f756e746572207468726f756768207468697320736974652e3c2f703e0d0a20202020202020202020202020202020202020203c6f6c3e3c6c693e546869732073697465207573657320476f6f676c6520416e616c7974696373207768696368206973206f6e650d0a206f6620746865206d6f7374207769646573707265616420616e64207472757374656420616e616c797469637320736f6c7574696f6e206f6e207468652077656220666f72200d0a68656c70696e6720757320746f20756e6465727374616e6420686f7720796f752075736520746865207369746520616e64207761797320746861742077652063616e200d0a696d70726f766520796f757220657870657269656e63652e20546865736520636f6f6b696573206d617920747261636b207468696e6773207375636820617320686f77206c6f6e670d0a20796f75207370656e64206f6e20746865207369746520616e6420746865207061676573207468617420796f7520766973697420736f2077652063616e20636f6e74696e7565200d0a746f2070726f6475636520656e676167696e6720636f6e74656e742e0d0a202020202020202020202020202020202020202020202020202020203c703e466f72206d6f726520696e666f726d6174696f6e206f6e20476f6f676c6520416e616c797469637320636f6f6b6965732c2073656520746865206f6666696369616c20476f6f676c6520416e616c797469637320706167652e3c2f703e0d0a2020202020202020202020202020202020202020202020203c2f6c693e3c6c693e546869726420706172747920616e616c797469637320617265207573656420746f20747261636b20616e64200d0a6d656173757265207573616765206f662074686973207369746520736f20746861742077652063616e20636f6e74696e756520746f2070726f6475636520656e676167696e67200d0a636f6e74656e742e20546865736520636f6f6b696573206d617920747261636b207468696e6773207375636820617320686f77206c6f6e6720796f75207370656e64206f6e200d0a7468652073697465206f7220706167657320796f752076697369742077686963682068656c707320757320746f20756e6465727374616e6420686f772077652063616e200d0a696d70726f766520746865207369746520666f7220796f752e3c2f6c693e3c6c693e46726f6d2074696d6520746f2074696d652077652074657374206e657720666561747572657320616e64200d0a6d616b6520737562746c65206368616e67657320746f207468652077617920746861742074686520736974652069732064656c6976657265642e205768656e20776520617265200d0a7374696c6c2074657374696e67206e657720666561747572657320746865736520636f6f6b696573206d6179206265207573656420746f20656e73757265207468617420796f75200d0a72656365697665206120636f6e73697374656e7420657870657269656e6365207768696c7374206f6e207468652073697465207768696c737420656e737572696e67207765200d0a756e6465727374616e64207768696368206f7074696d69736174696f6e73206f7572207573657273206170707265636961746520746865206d6f73742e3c2f6c693e3c6c693e41732077652073656c6c2070726f6475637473206974277320696d706f7274616e7420666f7220757320746f0d0a20756e6465727374616e6420737461746973746963732061626f757420686f77206d616e79206f66207468652076697369746f727320746f206f75722073697465200d0a61637475616c6c79206d616b65206120707572636861736520616e642061732073756368207468697320697320746865206b696e64206f66206461746120746861742074686573650d0a20636f6f6b6965732077696c6c20747261636b2e205468697320697320696d706f7274616e7420746f20796f75206173206974206d65616e7320746861742077652063616e200d0a61636375726174656c79206d616b6520627573696e6573732070726564696374696f6e73207468617420616c6c6f7720757320746f206d6f6e69746f72206f7572200d0a6164766572746973696e6720616e642070726f6475637420636f73747320746f20656e7375726520746865206265737420706f737369626c652070726963652e3c2f6c693e3c6c693e576520757365206164766572747320746f206f66667365742074686520636f737473206f66200d0a72756e6e696e672074686973207369746520616e642070726f766964652066756e64696e6720666f72206675727468657220646576656c6f706d656e742e20546865200d0a6265686176696f7572616c206164766572746973696e6720636f6f6b696573207573656420627920746869732073697465206172652064657369676e656420746f20656e737572650d0a20746861742077652070726f7669646520796f75207769746820746865206d6f73742072656c6576616e74206164766572747320776865726520706f737369626c65206279200d0a616e6f6e796d6f75736c7920747261636b696e6720796f757220696e7465726573747320616e642070726573656e74696e672073696d696c6172207468696e67732074686174200d0a6d6179206265206f6620696e7465726573742e3c2f6c693e3c6c693e5365766572616c20706172746e65727320616476657274697365206f6e206f757220626568616c6620616e640d0a20616666696c6961746520747261636b696e6720636f6f6b6965732073696d706c7920616c6c6f7720757320746f20736565206966206f757220637573746f6d65727320686176650d0a20636f6d6520746f207468652073697465207468726f756768206f6e65206f66206f757220706172746e657220736974657320736f20746861742077652063616e206372656469740d0a207468656d20617070726f7072696174656c7920616e64207768657265206170706c696361626c6520616c6c6f77206f757220616666696c6961746520706172746e65727320746f0d0a2070726f7669646520616e7920626f6e757320746861742074686579206d61792070726f7669646520796f7520666f72206d616b696e6720612070757263686173652e3c2f6c693e3c6c693e576520616c736f2075736520736f6369616c206d6564696120627574746f6e7320616e642f6f72200d0a706c7567696e73206f6e20746869732073697465207468617420616c6c6f7720796f7520746f20636f6e6e656374207769746820796f757220736f6369616c206e6574776f726b200d0a696e20766172696f757320776179732e20466f7220746865736520746f20776f726b2074686520666f6c6c6f77696e6720736f6369616c206d65646961207369746573200d0a696e636c7564696e673b207b4c6973742074686520736f6369616c206e6574776f726b732077686f736520666561747572657320796f75206861766520696e7465677261746564200d0a7769746820796f757220736974653f3a31327d2c2077696c6c2073657420636f6f6b696573207468726f756768206f75722073697465207768696368206d617920626520757365640d0a20746f20656e68616e636520796f75722070726f66696c65206f6e2074686569722073697465206f7220636f6e7472696275746520746f2074686520646174612074686579200d0a686f6c6420666f7220766172696f757320707572706f736573206f75746c696e656420696e2074686569722072657370656374697665207072697661637920706f6c69636965732e3c2f6c693e3c2f6f6c3e0d0a202020202020202020202020202020203c2f6c693e3c6c693e4d6f726520496e666f726d6174696f6e0d0a20202020202020202020202020202020202020203c703e486f706566756c6c7920746861742068617320636c61726966696564207468696e677320666f7220796f7520616e64200d0a6173207761732070726576696f75736c79206d656e74696f6e656420696620746865726520697320736f6d657468696e67207468617420796f75206172656e27742073757265200d0a7768657468657220796f75206e656564206f72206e6f74206974277320757375616c6c7920736166657220746f206c6561766520636f6f6b69657320656e61626c656420696e200d0a6361736520697420646f657320696e7465726163742077697468206f6e65206f662074686520666561747572657320796f7520757365206f6e206f757220736974652e3c2f703e0d0a20202020202020202020202020202020202020203c703e486f776576657220696620796f7520617265207374696c6c206c6f6f6b696e6720666f72206d6f726520696e666f726d6174696f6e207468656e20796f752063616e20636f6e74616374207573207468726f756768206f6e65206f66206f75722070726566657272656420636f6e74616374206d6574686f64733a3c2f703e0d0a20202020202020202020202020202020202020203c703e456d61696c3a203c6120687265663d226d61696c746f3a737570706f72744063727970746f636f696e66786d696e6572732e636f6d223e3c7370616e3e5b737570706f7274407777772e63727970746f636f696e66786d696e6572732e636f6d5d3c2f7370616e3e3c2f613e3c2f703e0d0a202020202020202020202020202020203c2f6c693e3c2f6f6c3e0d0a20202020202020203c2f6469763e0d0a202020203c2f73656374696f6e3e, 1, 0, 'Cookie Policy', 'Cookie Policy', '2021-12-09 21:55:23', '2021-12-09 21:57:00');
INSERT INTO `daynamicpages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(9, 1, NULL, 'Investment Plans', NULL, 'Investment-Plans', 0x3c62723e3c64697620636c6173733d227768792d63686f6f73652d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020202020202020202020202020203c64697620636c6173733d22726f77206a7573746966792d636f6e74656e742d63656e746572223e0d0a20202020202020202020202020202020202020203c64697620636c6173733d2273656374696f6e2d7469746c652077686974652d636f6c6f72206d622d333020746578742d63656e746572223e0d0a2020202020202020202020202020202020202020202020203c7370616e20636c6173733d227469746c652d746167223e43727970746f636f696e6678204d696e6572733c2f7370616e3e0d0a2020202020202020202020202020202020202020202020203c683220636c6173733d227469746c65223e4f757220496e766573746d656e7420506c616e3c2f68323e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a0d0a3c7374796c653e0d0a0d0a40696d706f72742075726c2868747470733a2f2f636f64652e696f6e69636672616d65776f726b2e636f6d2f696f6e69636f6e732f322e302e312f6373732f696f6e69636f6e732e6d696e2e637373293b0d0a40696d706f72742075726c2868747470733a2f2f666f6e74732e676f6f676c65617069732e636f6d2f6373733f66616d696c793d52616c657761793a3430302c3530302c383030293b0d0a40696d706f72742075726c2868747470733a2f2f666f6e74732e676f6f676c65617069732e636f6d2f6373733f66616d696c793d4d6f6e747365727261743a383030293b0d0a2e736e697031323134207b0d0a2020666f6e742d66616d696c793a202752616c65776179272c20417269616c2c2073616e732d73657269663b0d0a2020636f6c6f723a20233030303030303b0d0a2020746578742d616c69676e3a2063656e7465723b0d0a2020666f6e742d73697a653a20313670783b0d0a202077696474683a20313030253b0d0a20206d61782d77696474683a203130303070783b0d0a20206d617267696e3a203430707820313070783b0d0a7d0d0a2e736e697031323134202e706c616e207b0d0a20206d617267696e3a20303b0d0a202077696474683a203235253b0d0a2020706f736974696f6e3a2072656c61746976653b0d0a2020666c6f61743a206c6566743b0d0a20206261636b67726f756e642d636f6c6f723a20236666666666663b0d0a2020626f726465723a2031707820736f6c6964207267626128302c20302c20302c20302e31293b0d0a7d0d0a2e736e697031323134202a207b0d0a20202d7765626b69742d626f782d73697a696e673a20626f726465722d626f783b0d0a2020626f782d73697a696e673a20626f726465722d626f783b0d0a7d0d0a2e736e69703132313420686561646572207b0d0a2020706f736974696f6e3a2072656c61746976653b0d0a7d0d0a2e736e697031323134202e706c616e2d7469746c65207b0d0a2020706f736974696f6e3a2072656c61746976653b0d0a2020746f703a20303b0d0a2020666f6e742d7765696768743a203830303b0d0a202070616464696e673a2035707820313570783b0d0a20206d617267696e3a2030206175746f3b0d0a20202d7765626b69742d7472616e73666f726d3a207472616e736c61746559282d353025293b0d0a20207472616e73666f726d3a207472616e736c61746559282d353025293b0d0a20206d617267696e3a20303b0d0a2020646973706c61793a20696e6c696e652d626c6f636b3b0d0a20206261636b67726f756e642d636f6c6f723a20233232326633643b0d0a2020636f6c6f723a20236666666666663b0d0a2020746578742d7472616e73666f726d3a207570706572636173653b0d0a7d0d0a2e736e697031323134202e706c616e2d636f7374207b0d0a202070616464696e673a20307078203130707820323070783b0d0a7d0d0a2e736e697031323134202e706c616e2d7072696365207b0d0a2020666f6e742d66616d696c793a20274d6f6e74736572726174272c20417269616c2c2073616e732d73657269663b0d0a2020666f6e742d7765696768743a203830303b0d0a2020666f6e742d73697a653a20322e34656d3b0d0a2020636f6c6f723a20233334343935653b0d0a7d0d0a2e736e697031323134202e706c616e2d74797065207b0d0a20206f7061636974793a20302e363b0d0a7d0d0a2e736e697031323134202e706c616e2d6665617475726573207b0d0a202070616464696e673a20303b0d0a20206d617267696e3a20303b0d0a2020746578742d616c69676e3a2063656e7465723b0d0a20206c6973742d7374796c653a206f757473696465206e6f6e65206e6f6e653b0d0a2020666f6e742d73697a653a20302e38656d3b0d0a7d0d0a2e736e697031323134202e706c616e2d6665617475726573206c69207b0d0a2020626f726465722d746f703a2031707820736f6c696420236432643765323b0d0a202070616464696e673a20313070782035253b0d0a7d0d0a2e736e697031323134202e706c616e2d6665617475726573206c693a6e74682d6368696c64286576656e29207b0d0a20206261636b67726f756e643a207267626128302c20302c20302c20302e3038293b0d0a7d0d0a2e736e697031323134202e706c616e2d66656174757265732069207b0d0a20206d617267696e2d72696768743a203870783b0d0a20206f7061636974793a20302e343b0d0a7d0d0a2e736e697031323134202e706c616e2d73656c656374207b0d0a2020626f726465722d746f703a2031707820736f6c696420236432643765323b0d0a202070616464696e673a2031307078203130707820303b0d0a7d0d0a2e736e697031323134202e706c616e2d73656c6563742061207b0d0a20206261636b67726f756e642d636f6c6f723a20233232326633643b0d0a2020636f6c6f723a20236666666666663b0d0a2020746578742d6465636f726174696f6e3a206e6f6e653b0d0a202070616464696e673a20302e35656d2031656d3b0d0a20202d7765626b69742d7472616e73666f726d3a207472616e736c6174655928353025293b0d0a20207472616e73666f726d3a207472616e736c6174655928353025293b0d0a2020666f6e742d7765696768743a203830303b0d0a2020746578742d7472616e73666f726d3a207570706572636173653b0d0a2020646973706c61793a20696e6c696e652d626c6f636b3b0d0a7d0d0a2e736e697031323134202e706c616e2d73656c65637420613a686f766572207b0d0a20206261636b67726f756e642d636f6c6f723a20233436363237663b0d0a7d0d0a2e736e697031323134202e6665617475726564207b0d0a20206d617267696e2d746f703a202d313070783b0d0a20206261636b67726f756e642d636f6c6f723a20233334343935653b0d0a2020636f6c6f723a20236666666666663b0d0a2020626f782d736861646f773a203020302032307078207267626128302c20302c20302c20302e34293b0d0a20207a2d696e6465783a20313b0d0a7d0d0a2e736e697031323134202e6665617475726564202e706c616e2d7469746c652c0d0a2e736e697031323134202e6665617475726564202e706c616e2d7072696365207b0d0a2020636f6c6f723a20236666666666663b0d0a7d0d0a2e736e697031323134202e6665617475726564202e706c616e2d636f7374207b0d0a202070616464696e673a2031307078203130707820323070783b0d0a7d0d0a2e736e697031323134202e6665617475726564202e706c616e2d6665617475726573206c69207b0d0a2020626f726465722d746f703a2031707820736f6c69642072676261283235352c203235352c203235352c20302e34293b0d0a7d0d0a2e736e697031323134202e6665617475726564202e706c616e2d73656c656374207b0d0a202070616464696e673a2032307078203130707820303b0d0a2020626f726465722d746f703a2031707820736f6c69642072676261283235352c203235352c203235352c20302e34293b0d0a7d0d0a406d65646961206f6e6c792073637265656e20616e6420286d61782d77696474683a20373637707829207b0d0a20202e736e697031323134202e706c616e207b0d0a2020202077696474683a203530253b0d0a20207d0d0a20202e736e697031323134202e706c616e2d7469746c652c0d0a20202e736e697031323134202e706c616e2d73656c6563742061207b0d0a202020202d7765626b69742d7472616e73666f726d3a207472616e736c617465592830293b0d0a202020207472616e73666f726d3a207472616e736c617465592830293b0d0a20207d0d0a20202e736e697031323134202e706c616e2d636f73742c0d0a20202e736e697031323134202e6665617475726564202e706c616e2d636f7374207b0d0a2020202070616464696e673a2032307078203130707820323070783b0d0a20207d0d0a20202e736e697031323134202e706c616e2d73656c6563742c0d0a20202e736e697031323134202e6665617475726564202e706c616e2d73656c656374207b0d0a2020202070616464696e673a2031307078203130707820313070783b0d0a20207d0d0a20202e736e697031323134202e6665617475726564207b0d0a202020206d617267696e2d746f703a20303b0d0a20207d0d0a7d0d0a406d65646961206f6e6c792073637265656e20616e6420286d61782d77696474683a20343430707829207b0d0a20202e736e697031323134202e706c616e207b0d0a2020202077696474683a20313030253b0d0a20207d0d0a7d0d0a0d0a3c2f7374796c653e0d0a0d0a0d0a0d0a3c64697620636c6173733d22736e697031323134223e0d0a20203c64697620636c6173733d22706c616e223e0d0a202020203c683320636c6173733d22706c616e2d7469746c65223e0d0a202020202020537461727465720d0a202020203c2f68333e0d0a202020203c64697620636c6173733d22706c616e2d636f7374223e3c7370616e20636c6173733d22706c616e2d707269636522207374796c653d226c696e652d6865696768743a20312e323b223e2431303030202d2024333030303c2f7370616e3e3c2f6469763e0d0a202020203c756c20636c6173733d22706c616e2d6665617475726573223e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f792032302520524f4920416674657220323420486f7572733c2f6c693e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e4e6f20426f6e75733c2f6c693e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e205570677261646520666f72205769746864726177616c3c2f6c693e0d0a2020202020202020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e312e3525204461696c792050726f6669743c2f6c693e0d0a0d0a202020203c2f756c3e0d0a202020203c64697620636c6173733d22706c616e2d73656c656374223e3c6120687265663d2268747470733a2f2f6170702e63727970746f636f696e66786d696e6572732e636f6d2f7265676973746572223e53656c65637420506c616e3c2f613e3c2f6469763e0d0a20203c2f6469763e0d0a20203c64697620636c6173733d22706c616e223e0d0a202020203c683320636c6173733d22706c616e2d7469746c65223e0d0a20202020202053696c7665720d0a202020203c2f68333e0d0a202020203c64697620636c6173733d22706c616e2d636f7374223e3c7370616e20636c6173733d22706c616e2d707269636522207374796c653d226c696e652d6865696768743a20312e323b223e2433303030202d202431303030303c2f7370616e3e3c2f6469763e0d0a202020203c756c20636c6173733d22706c616e2d6665617475726573223e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f792033302520524f4920416674657220323420486f7572733c2f6c693e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f7920352520426f6e75733c2f6c693e0d0a2020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e5769746864726177616c204e6f20557067726164653c2f6c693e0d0a2020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e312e3525204461696c792050726f6669743c2f6c693e0d0a202020203c2f756c3e0d0a202020203c64697620636c6173733d22706c616e2d73656c656374223e3c6120687265663d2268747470733a2f2f6170702e63727970746f636f696e66786d696e6572732e636f6d2f7265676973746572223e53656c65637420506c616e3c2f613e3c2f6469763e0d0a20203c2f6469763e0d0a20203c64697620636c6173733d22706c616e206665617475726564223e0d0a202020203c683320636c6173733d22706c616e2d7469746c65223e0d0a202020202020476f6c640d0a202020203c2f68333e0d0a202020203c64697620636c6173733d22706c616e2d636f7374223e3c7370616e20636c6173733d22706c616e2d707269636522207374796c653d226c696e652d6865696768743a20312e323b223e243130303030202d202435303030303c2f7370616e3e3c2f6469763e0d0a202020203c756c20636c6173733d22706c616e2d6665617475726573223e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f792034302520524f4920416674657220343820486f7572733c2f6c693e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f792031302520426f6e75733c2f6c693e0d0a2020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e205769746864726177616c204e6f20557067726164653c2f6c693e0d0a2020202020202020202020202020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e312e3525204461696c792050726f6669743c2f6c693e0d0a0d0a202020203c2f756c3e0d0a202020203c64697620636c6173733d22706c616e2d73656c656374223e3c6120687265663d2268747470733a2f2f6170702e63727970746f636f696e66786d696e6572732e636f6d2f7265676973746572223e53656c65637420506c616e3c2f613e3c2f6469763e0d0a20203c2f6469763e0d0a20203c64697620636c6173733d22706c616e223e0d0a202020203c683320636c6173733d22706c616e2d7469746c65223e0d0a202020202020506c6174696e756d0d0a202020203c2f68333e0d0a202020203c64697620636c6173733d22706c616e2d636f7374223e3c7370616e20636c6173733d22706c616e2d707269636522207374796c653d226c696e652d6865696768743a20312e323b223e243530303030202d204e6f204d61783c2f7370616e3e3c2f6469763e0d0a202020203c756c20636c6173733d22706c616e2d6665617475726573223e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f792035302520524f4920416674657220373220486f7572733c2f6c693e0d0a2020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e203c2f693e456e6a6f792031352520426f6e75733c2f6c693e0d0a2020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e5769746864726177616c204e6f20557067726164653c2f6c693e0d0a2020202020202020202020202020202020202020202020203c6c693e3c6920636c6173733d22696f6e2d636865636b6d61726b223e3c2f693e312e3525204461696c792050726f6669743c2f6c693e0d0a0d0a202020203c64697620636c6173733d22706c616e2d73656c656374223e3c6120687265663d2268747470733a2f2f6170702e63727970746f636f696e66786d696e6572732e636f6d2f7265676973746572223e53656c65637420506c616e3c2f613e3c2f6469763e0d0a20203c2f756c3e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a203c2f6469763e0d0a2020202020202020202020203c2f6469763e3c62723e, 1, 0, 'investment plans', 'investment plans', '2021-12-09 22:52:06', '2021-12-10 03:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_smtp` int(11) DEFAULT NULL,
  `header_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailsettings`
--

INSERT INTO `emailsettings` (`id`, `is_smtp`, `header_email`, `smtp_host`, `smtp_port`, `email_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_verification_email`, `created_at`, `updated_at`) VALUES
(1, 0, 'smtp', 'smtp.mailtrap.io', '2525', 'tls', '72fc7b576a3f57', '8db3922982412e', 'skynet@gmail.com', 'Skynet', 1, NULL, '2021-06-30 23:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `status`, `title`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'When can i Deposit/Withdraw from my Account', '<p>Deposit and withdrawal are available for at any time. Be sure, that your\r\n funds are not used in any ongoing trade before the withdrawal. The \r\navailable amount is shown in your dashboard on the main page of \r\nInvesting platform. <br></p>', 0, '2021-02-10 00:33:37', '2021-12-01 02:40:00'),
(2, '1', 1, 'How do i check my account balance?', '<p>You can see this anytime on your accounts dashboard.</p>', 1, '2021-02-10 00:34:16', '2021-12-01 02:39:41'),
(3, '1', 1, 'I forgot my password what should i do?', '<p>Visit the password reset page, type in your email address and click the \r\n`Reset` button. <br></p>', 0, '2021-02-10 00:34:37', '2021-12-01 02:39:28'),
(4, '1', 1, 'How Much can I Withdraw?', '<p>You can withdraw the full amount of your account balance minus the funds\r\n that are used currently for supporting opened positions. <br></p>', 0, '2021-02-10 00:34:53', '2021-12-01 02:39:14'),
(13, '1', 1, 'How do I Know that my Withdrawal is Successful', '<p>You will get an automatic notification once we send the funds and you \r\ncan always check your transactions or account balance. Your chosen \r\npayment system dictates how long it will take for the funds to reach \r\nyou. <br></p>', 5, '2021-11-26 22:31:43', '2021-12-01 02:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `status`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'fal fa-laptop-code', 'Signup for Free', 'Get and account to startup the process for your investment', 0, '2021-02-08 21:32:48', '2021-11-26 21:04:49'),
(2, '1', 1, 'fal fa-fingerprint', 'Make Deposit', 'Make Deposit through our multiple deposit option', 0, '2021-02-08 21:36:17', '2021-11-26 21:07:04'),
(3, '1', 1, 'fal fa-chalkboard', 'Join an Investment Plan', 'There is a Plan for everyone, make an investment and start earning.', 0, '2021-02-08 21:36:45', '2021-11-26 21:08:34'),
(4, '1', 1, 'fal fa-database', 'Make Profit', 'Start earning and within a matter of few days be able to withdraw', 0, '2021-02-08 21:37:15', '2021-12-01 13:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `flinks`
--

CREATE TABLE `flinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flinks`
--

INSERT INTO `flinks` (`id`, `language_id`, `name`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', 'https://www.cryptocoinfxminers.com/about', 0, '2021-02-14 22:55:49', '2021-12-10 03:49:01'),
(2, 1, 'Investment Plans', 'https://www.cryptocoinfxminers.com/Investment-Plans', 0, '2021-02-14 22:56:04', '2021-12-10 03:49:59'),
(3, 1, 'Terms & Conditions', 'https://www.cryptocoinfxminers.com/Terms-and-Conditions', 0, '2021-02-14 22:56:19', '2021-12-10 03:50:58'),
(4, 1, 'Contact', 'https://www.cryptocoinfxminers.com/contact', 1, '2021-02-14 22:56:27', '2021-12-10 03:52:55'),
(5, 1, 'Risk Disclosure', 'https://www.cryptocoinfxminers.com/Risk-Disclosure', 0, '2021-02-19 07:45:06', '2021-12-10 03:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `category_id`, `status`, `title`, `image`, `video_link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', '16227158212096332540.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', 0, '2021-06-03 04:23:41', '2021-06-03 08:57:19'),
(2, 1, 6, 1, 'Lorem Ipsum is simply dummy text 3', '16227164631746340932.jpg', NULL, 0, '2021-06-03 04:34:23', '2021-06-03 07:43:32'),
(3, 1, 5, 1, 'Lorem Ipsum is simply dummy text', '162271648145470834.jpg', NULL, 0, '2021-06-03 04:34:41', '2021-06-03 04:34:41'),
(4, 1, 7, 1, 'Lorem Ipsum is simply dummy text', '1622716667600245379.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', 0, '2021-06-03 04:37:47', '2021-06-03 08:57:02'),
(5, 1, 6, 1, 'Lorem Ipsum is simply dummy text', '1622716686901564109.jpg', NULL, 0, '2021-06-03 04:38:06', '2021-06-03 04:38:06'),
(6, 1, 1, 1, 'Lorem Ipsum is simply dummy text', '1622716697999365121.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', 0, '2021-06-03 04:38:17', '2021-06-03 08:56:50'),
(7, 1, 1, 1, 'Lorem Ipsum is simply dummy text', '16227167181065391120.jpg', NULL, 0, '2021-06-03 04:38:38', '2021-06-03 04:38:38'),
(9, 2, 8, 1, 'Technical content may have per suasive objectives.', '1622728005808816533.jpg', NULL, 0, '2021-06-03 07:46:45', '2021-06-03 07:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `gcategories`
--

CREATE TABLE `gcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gcategories`
--

INSERT INTO `gcategories` (`id`, `language_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Finance', 1, 1, '2021-06-02 05:58:35', '2021-06-03 04:36:31'),
(2, 1, 'Consulting', 1, 0, '2021-06-02 05:58:48', '2021-06-03 04:36:20'),
(5, 1, 'Development', 1, 0, '2021-06-03 03:25:30', '2021-06-03 04:36:06'),
(6, 1, 'Branding', 1, 0, '2021-06-03 04:36:42', '2021-06-03 04:37:09'),
(7, 1, 'Capital', 1, 0, '2021-06-03 04:36:58', '2021-06-03 04:37:05'),
(8, 2, 'Branding2', 1, 0, '2021-06-03 07:46:21', '2021-06-03 07:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `language_id`, `status`, `title`, `image`, `date`, `position`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '24/7 Support with a goal to provide Investments Support at optimal speed', 'portfolio_16390703251516196103.png', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-12-09 22:20:05'),
(2, '1', 1, 'Transforming the Way and Speed at wish we Can Earn Money', 'portfolio_1639069986830580898.png', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-12-09 22:13:06'),
(3, '1', 1, 'Investments With Max Returns that are Mind Blowing', 'portfolio_16390697001772731356.png', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-12-09 22:08:20'),
(4, '1', 1, 'Technology Built from Many Years of Experience', 'portfolio_1639069536968336637.png', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-12-09 22:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `jcategories`
--

CREATE TABLE `jcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jcategories`
--

INSERT INTO `jcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Web Developer', 'web-developer', 1, 0, '2021-06-03 10:43:13', '2021-06-03 10:43:13'),
(2, 1, 'Web Designer', 'web-designer', 1, 0, '2021-06-03 10:43:23', '2021-06-03 10:43:23'),
(3, 1, 'Team Leader', 'team-leader', 1, 0, '2021-06-03 10:43:31', '2021-06-03 10:43:31'),
(4, 1, 'IOS Developer', 'ios-developer', 1, 0, '2021-06-03 10:43:37', '2021-06-03 10:43:37'),
(5, 1, 'Andriod Developer', 'andriod-developer', 1, 0, '2021-06-03 10:43:55', '2021-06-03 10:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `jcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_benefits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibility` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_context` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `language_id`, `jcategory_id`, `title`, `slug`, `position`, `company_name`, `vacancy`, `deadline`, `employment_status`, `job_location`, `salary`, `other_benefits`, `email`, `job_responsibility`, `education_requirement`, `job_context`, `experience_requirement`, `additional_requirement`, `meta_tags`, `meta_description`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Mobile App Market Systems Leader', 'mobile-app-market-systems-leader', 'Jr Digital Marketer', 'GeniusDevs', 4, '11/18/2021', 'Full-Time', 'New work, USA', '$2000-$4000', 'You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.', NULL, 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'html,css,js', 'You are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors', 1, 0, NULL, NULL),
(2, 1, 5, 'Android App Market Systems Leader', 'android-app-market-systems-leader', 'Jr Digital Marketer', 'GeniusDevs', 4, '11/18/2021', 'Full-Time', 'New work, USA', '$2000-$4000', 'You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.', NULL, 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'html,css,js', 'You are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors', 1, 0, NULL, NULL),
(3, 1, 2, 'Laravel Developer', 'laravel-developer', 'Jr Digital Marketer', 'GeniusDevs', 4, '11/18/2021', 'Full-Time', 'New work, USA', '$2000-$4000', 'You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.', NULL, 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'html,css,js', 'You are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors', 1, 0, NULL, NULL),
(4, 1, 3, 'Node JS App Developer', 'node-js-app-developer', 'Jr Digital Marketer', 'GeniusDevs', 4, '11/18/2021', 'Full-Time', 'New work, USA', '$2000-$4000', 'You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.', NULL, 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'html,css,js', 'You are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors', 1, 0, NULL, NULL),
(5, 1, 2, 'Expert UI/UX Designer', 'expert-uiux-designer', 'Jr Digital Marketer', 'GeniusDevs', 4, '11/18/2021', 'Full-Time', 'New work, USA', '$2000-$4000', 'You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.', NULL, 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material.\r\nYou have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API.\r\nWell versed with Angular modules or you have created custom and web components by yourself.\r\nYou must have practical experience on Node.js, TypeScript, webpack and Third party library.\r\nYou have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.\r\nYou are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.', 'html,css,js', 'You are pixel-perfect in design conversions and you think of mobile-first implementations.\r\nYou should have knowledge of CSS preprocessors', 1, 0, NULL, NULL),
(6, 1, 1, 'Repudiandae ut sint', 'repudiandae-ut-sint', 'Reiciendis omnis ali', 'Chandler and Kane Traders', 2, '11/18/2021', 'Full-Time', 'Commodo enim veniam', 'Ut ex omnis illum o', 'Consequuntur quo non. sdfg', NULL, 'Consectetur, quos qu. dsfg', 'Aliquid commodo numq. dsfg', 'Excepturi laudantium. sdfg', 'Recusandae. Et volup. sdfg', 'Id, accusamus quaera. sdfg', 'Et veniam voluptate', 'Ut laboris in odio v', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_title`, `type`, `file`, `name`, `email`, `phone`, `expected_salary`, `status`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Mobile App Market Systems Leader', 'Jr Digital Marketer', '73dQnDk0gVgcnSrbMamunur Rashid.pdf', 'Mamunur Rashid', 'test@gmail.com', '32452', '233', '0', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2021-06-05 06:37:52', '2021-06-05 06:37:52'),
(4, 'Mobile App Market Systems Leader', 'Jr Digital Marketer', 'SWzsDm89buhiso33Rafi.pdf', 'Rafi', 'rafi@gmail.com', '23452354325', '234', '3', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material. You have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API. Well versed with Angular modules or you have created custom and web components by yourself. You must have practical experience on Node.js, TypeScript, webpack and Third party library. You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reason', '2021-06-05 06:39:57', '2021-06-05 06:53:16'),
(5, 'Laravel Developer', 'Jr Digital Marketer', 'h7dKbhSKEF8MByvcMahfuj Khan.pdf', 'Mahfuj Khan', 'test4@gmail.com', '234512352345', '324', '2', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material. You have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API. Well versed with Angular modules or you have created custom and web components by yourself. You must have practical experience on Node.js, TypeScript, webpack and Third party library. You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reason', '2021-06-05 06:42:11', '2021-06-05 06:53:14'),
(6, 'Expert UI/UX Designer', 'Jr Digital Marketer', 'omLrTqjEdey9HrU3Sihab.pdf', 'Sihab', 'test7@gmail.com', '23455', '345', '1', 'You have to be experienced with UI frameworks in general; we love the Angular and Angular material. You have to be experienced in building Single Page Applications (SPA) & integrating Web (Rest) API. Well versed with Angular modules or you have created custom and web components by yourself. You must have practical experience on Node.js, TypeScript, webpack and Third party library. You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reason', '2021-06-05 06:42:53', '2021-06-05 06:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, 'ltr', NULL, '2021-06-29 04:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(58, 1, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"About\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"about\"},{\"text\":\"Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"pages\",\"children\":[{\"text\":\"Investment Plans\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"9\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Blogs\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blogs\"}]},{\"text\":\"Documentation\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"2\"},{\"text\":\"Privacy & Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"1\"},{\"text\":\"Risk Disclosure\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"7\"},{\"text\":\"Cookie Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"8\"}]},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2022-01-18 01:37:12', '2022-01-18 01:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_25_122740_create_admins_table', 1),
(3, '2020_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_12_100000_create_password_resets_table', 1),
(7, '2020_10_26_035012_create_languages_table', 1),
(8, '2020_10_27_024546_create_sliders_table', 1),
(10, '2020_10_27_025335_create_services_table', 1),
(12, '2020_10_27_025627_create_faqs_table', 1),
(13, '2020_11_17_122813_create_newsletters_table', 1),
(14, '2020_11_20_085050_create_emailsettings_table', 1),
(15, '2020_12_25_124242_create_socials_table', 1),
(16, '2021_01_01_123641_create_blogs_table', 1),
(17, '2021_01_01_123728_create_bcategories_table', 1),
(18, '2021_01_03_110518_create_testimonials_table', 1),
(22, '2021_01_24_111458_create_backups_table', 1),
(23, '2021_02_07_145147_create_features_table', 1),
(24, '2021_02_07_145631_create_why_selects_table', 1),
(26, '2021_02_07_151616_create_clients_table', 1),
(27, '2021_02_07_152047_create_counters_table', 1),
(28, '2021_02_08_041017_create_archives_table', 1),
(29, '2021_02_08_042120_create_portfolios_table', 1),
(30, '2021_02_08_042357_create_portfolio_images_table', 1),
(31, '2020_10_13_123757_create_settings_table', 2),
(32, '2020_10_14_103316_create_sectiontitle_table', 3),
(33, '2021_02_09_043348_add_video_info_to_sectiontitles_table', 4),
(34, '2021_02_09_050446_add_about_info_to_sectiontitles_table', 5),
(36, '2020_10_27_025547_create_teams_table', 6),
(37, '2021_02_07_151349_create_histories_table', 7),
(38, '2021_02_12_045400_add_opening_hours_to_settings', 8),
(39, '2021_02_13_041641_add_meet_text_to_sectiontitles_table', 9),
(40, '2021_02_15_035217_add_footer_bg_to_settings_table', 10),
(41, '2021_02_15_043251_create_flinks_table', 11),
(42, '2021_02_15_112132_add_testimonial_content_to_sectiontitles_table', 12),
(43, '2021_02_16_111526_add_link_to_portfolios_table', 13),
(44, '2020_10_27_025201_create_packages_table', 14),
(45, '2021_01_24_105925_create_quotes_table', 15),
(46, '2021_01_07_105717_create_daynamicpages_table', 16),
(47, '2021_02_19_140441_add_page_visibility_to_settings_table', 17),
(48, '2021_01_24_110045_create_roles_table', 18),
(50, '2021_04_23_204005_add_moretableinsettings2_to_settings_table', 19),
(52, '2021_06_02_102316_create_galleries_table', 20),
(53, '2021_06_02_104313_create_gcategories_table', 21),
(54, '2021_06_03_153757_create_jcategories_table', 22),
(55, '2021_06_03_154131_create_jobs_table', 22),
(56, '2021_06_03_170201_create_job_applications_table', 23),
(58, '2021_06_05_140053_create_products_table', 24),
(59, '2021_06_05_141134_create_product_images_table', 25),
(60, '2021_06_05_141356_create_currencies_table', 26),
(61, '2021_06_05_143117_create_shippings_table', 27),
(62, '2021_06_05_150051_create_product_categories_table', 28),
(64, '2020_05_26_000000_create_users_table', 30),
(65, '2021_06_13_080135_create_payment_gateweys_table', 31),
(71, '2021_06_13_161938_create_orders_table', 32),
(72, '2021_06_15_191726_create_menus_table', 33),
(74, '2021_06_17_110906_add_preloader_info_to_settings_table', 34),
(75, '2021_06_18_105514_add_rating_to_products_table', 35),
(76, '2021_06_18_105948_create_product_reviews_table', 36),
(78, '2021_06_19_105536_add_extra_page_visibility_to_settings_table', 37),
(79, '2021_06_28_171634_add_meta_info_to_settings_table', 38),
(80, '2021_06_29_052449_create_sitemaps_table', 39);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'devmamun8@gmail.com', '2021-02-16 09:49:35', '2021-02-16 09:49:35'),
(2, 'djrafi@gmail.com', '2021-02-16 09:50:42', '2021-02-16 09:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `shipping_charge_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cart`, `user_id`, `user_info`, `order_number`, `method`, `currency_name`, `currency_value`, `currency_sign`, `txn_id`, `payment_status`, `order_status`, `total`, `qty`, `shipping_charge_info`, `invoice_number`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_number`, `shipping_country`, `shipping_state`, `shipping_zip`, `billing_name`, `billing_email`, `billing_address`, `billing_number`, `billing_country`, `billing_state`, `billing_zip`, `created_at`, `updated_at`) VALUES
(98, '{\"4\":{\"id\":4,\"title\":\"T-Shirt 45r\",\"qty\":\"1\",\"price\":39,\"downloadable_file\":\"\",\"image\":\"portfolio_16229586441465629396.jpg\"}}', 5, '{\"id\":5,\"name\":\"Munna\",\"image\":null,\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":null,\"address\":null,\"country\":null,\"state\":null,\"city\":null,\"zipcode\":null,\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-13T09:49:24.000000Z\"}', 'VheZqFp1', 'Stripe', 'USD', '1', '$', 'txn_1J3UymKUB0q5em8ZtSrwm7PL', 1, 3, 49, 1, '{\"id\":2,\"language_id\":1,\"title\":\"Standard Shipping\",\"subtitle\":\"Shipment will be within 5-10 Day.\",\"cost\":10,\"status\":1,\"created_at\":\"2021-06-13T11:46:17.000000Z\",\"updated_at\":\"2021-06-13T12:47:28.000000Z\"}', '9Jz01623973837.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Scarlet Merrill', 'gijes@mailinator.com', 'Eos mollit inventore', '+1 (497) 924-2904', 'Et voluptatem minus', 'Ut quia corporis qui', '40982', '2021-06-17 17:50:37', NULL),
(99, '{\"9\":{\"id\":9,\"title\":\"Enim aliquid nisi co 435\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"sample1623940768.zip\",\"image\":\"portfolio_1622958597673003837.jpg\"},\"8\":{\"id\":8,\"title\":\"T-Shirt dfg\",\"qty\":\"1\",\"price\":39,\"downloadable_file\":\"\",\"image\":\"portfolio_16229586072117160242.jpg\"}}', 5, '{\"id\":5,\"name\":\"Munna\",\"image\":null,\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":null,\"address\":null,\"country\":null,\"state\":null,\"city\":null,\"zipcode\":null,\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-13T09:49:24.000000Z\"}', '61HG9jJJ', 'Paypal', 'USD', '1', '$', '2G118495365969057', 1, 2, 489, 2, '{\"id\":2,\"language_id\":1,\"title\":\"Standard Shipping\",\"subtitle\":\"Shipment will be within 5-10 Day.\",\"cost\":10,\"status\":1,\"created_at\":\"2021-06-13T11:46:17.000000Z\",\"updated_at\":\"2021-06-13T12:47:28.000000Z\"}', 'DZ051623974331.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hayley Moss', 'ruzo@mailinator.com', 'Ad reiciendis fuga', '+1 (547) 416-1262', 'Libero illo magni oc', 'Dolor ullam voluptat', '45786', '2021-06-17 17:58:51', NULL),
(102, '{\"2\":{\"id\":2,\"title\":\"Enim aliquid nisi co\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"\",\"image\":\"portfolio_1622957895464265031.jpg\"}}', 5, '{\"id\":5,\"name\":\"Munna\",\"image\":null,\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":null,\"address\":null,\"country\":null,\"state\":null,\"city\":null,\"zipcode\":null,\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-13T09:49:24.000000Z\"}', 'yiqdj1623974861', 'Paytm', 'INR', '73.1', '₹', 'txn_rNsFPB9b1623974861', 1, 1, 32895, 1, '{\"id\":2,\"language_id\":1,\"title\":\"Standard Shipping\",\"subtitle\":\"Shipment will be within 5-10 Day.\",\"cost\":731,\"status\":1,\"created_at\":\"2021-06-13T11:46:17.000000Z\",\"updated_at\":\"2021-06-13T12:47:28.000000Z\"}', 'W4Tw1623974861.pdf', 'Yasir Humphrey', 'fyjetyho@mailinator.com', 'Natus id placeat qu', '+1 (644) 826-2794', 'Maiores culpa commod', 'Numquam architecto c', '79686', 'Kylan Huff', 'pela@mailinator.com', 'Laboris eos digniss', '+1 (803) 971-3451', 'Quia suscipit volupt', 'Non corrupti repreh', '96634', '2021-06-17 18:07:41', NULL),
(104, '{\"5\":{\"id\":5,\"title\":\"Enim aliquid nisi 345f\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"\",\"image\":\"portfolio_16229586331365700375.jpg\"}}', 5, '{\"id\":5,\"name\":\"Munna\",\"image\":null,\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":null,\"address\":null,\"country\":null,\"state\":null,\"city\":null,\"zipcode\":null,\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-13T09:49:24.000000Z\"}', 'vQEGd0wz', 'Stripe', 'BDT', '80', '৳', 'txn_1J3VMbKUB0q5em8Z7LRLTb0b', 1, 0, 36000, 1, '{\"id\":2,\"language_id\":1,\"title\":\"Standard Shipping\",\"subtitle\":\"Shipment will be within 5-10 Day.\",\"cost\":800,\"status\":1,\"created_at\":\"2021-06-13T11:46:17.000000Z\",\"updated_at\":\"2021-06-13T12:47:28.000000Z\"}', 'fIMV1623975315.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conan Jones', 'qabagukik@mailinator.com', 'Quia aut dolor volup', '+1 (558) 297-6529', 'Culpa et ullam poss', 'Vitae amet eos iur', '36622', '2021-06-17 18:15:15', NULL),
(105, '{\"11\":{\"id\":11,\"title\":\"Enim aliquid nisi co 45\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"\",\"image\":\"portfolio_16229585792087697798.jpg\"},\"4\":{\"id\":4,\"title\":\"T-Shirt 45r\",\"qty\":\"1\",\"price\":39,\"downloadable_file\":\"\",\"image\":\"portfolio_16229586441465629396.jpg\"}}', 5, '{\"id\":5,\"name\":\"Munna\",\"image\":null,\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":null,\"address\":null,\"country\":null,\"state\":null,\"city\":null,\"zipcode\":null,\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-13T09:49:24.000000Z\"}', 'Rjk9sjuz', 'Stripe', 'BDT', '80', '৳', 'txn_1J3VOQKUB0q5em8ZoKllDQqb', 1, 0, 40320, 2, '{\"id\":4,\"language_id\":1,\"title\":\"Same day delivery\",\"subtitle\":\"Shipment will be within 1 Day.\",\"cost\":2000,\"status\":1,\"created_at\":\"2021-06-13T11:47:13.000000Z\",\"updated_at\":\"2021-06-13T12:48:41.000000Z\"}', 'njlF1623975428.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Allen Fitzgerald', 'tikibu@mailinator.com', 'Sed aute culpa corru', '+1 (531) 112-9208', 'Ad nobis dolore id e', 'Adipisci impedit eo', '79324', '2021-06-17 18:17:08', NULL),
(106, '{\"9\":{\"id\":9,\"title\":\"Enim aliquid nisi co 435\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"sample1623940768.zip\",\"image\":\"portfolio_1622958597673003837.jpg\"}}', 5, '{\"id\":5,\"name\":\"Munna\",\"image\":null,\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":null,\"address\":null,\"country\":null,\"state\":null,\"city\":null,\"zipcode\":null,\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-13T09:49:24.000000Z\"}', 'oGnEWCWE', 'Paypal', 'EUR', '0.8', '€', '1P707781M8800314E', 1, 0, 372, 1, '{\"id\":4,\"language_id\":1,\"title\":\"Same day delivery\",\"subtitle\":\"Shipment will be within 1 Day.\",\"cost\":20,\"status\":1,\"created_at\":\"2021-06-13T11:47:13.000000Z\",\"updated_at\":\"2021-06-13T12:48:41.000000Z\"}', 'mbk71623975911.pdf', 'Kermit Fulton', 'cyfanecura@mailinator.com', 'Consequatur Ducimus', '+1 (977) 459-8365', 'Quidem ipsam ad amet', 'Elit nulla et verit', '39415', 'Armando May', 'gigizur@mailinator.com', 'Quis veniam reprehe', '+1 (674) 405-7694', 'Amet consequatur h', 'Labore fuga Labore', '36964', '2021-06-17 18:25:11', NULL),
(112, '{\"2\":{\"id\":2,\"title\":\"Enim aliquid nisi co\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"\",\"image\":\"portfolio_1622957895464265031.jpg\"},\"5\":{\"id\":5,\"title\":\"Enim aliquid nisi 345f\",\"qty\":\"1\",\"price\":440,\"downloadable_file\":\"\",\"image\":\"portfolio_16229586331365700375.jpg\"}}', 5, '{\"id\":5,\"name\":\"Mamun\",\"image\":\"1623977685799861143.jpg\",\"email\":\"user@gmail.com\",\"username\":\"user\",\"phone\":\"123456789\",\"address\":\"Dhaka Bangladesh\",\"country\":\"Bangladesh\",\"state\":\"Dhaka\",\"city\":\"dhaka\",\"zipcode\":\"2344\",\"email_verified\":\"0\",\"email_verify_token\":\"5f717a00ff2df1633902057c212daddc\",\"created_at\":\"2021-06-13T09:49:24.000000Z\",\"updated_at\":\"2021-06-18T00:54:45.000000Z\"}', 'LcgDq1623985380', 'Paytm', 'INR', '73.1', '₹', 'txn_ZjcNxp1V1623985380', 1, 0, 65059, 2, '{\"id\":2,\"language_id\":1,\"title\":\"Standard Shipping\",\"subtitle\":\"Shipment will be within 5-10 Day.\",\"cost\":731,\"status\":1,\"created_at\":\"2021-06-13T11:46:17.000000Z\",\"updated_at\":\"2021-06-13T12:47:28.000000Z\"}', 'JL2Z1623985380.pdf', 'Kirby Fleming', 'kahonez@mailinator.com', 'Officiis qui cupidat', '+1 (905) 524-7363', 'Pariatur Incididunt', 'Aliquip veritatis fu', '16177', 'Rama Barry', 'karox@mailinator.com', 'Optio deleniti quis', '+1 (494) 274-2099', 'Sit possimus paria', 'Earum pariatur Elig', '69484', '2021-06-17 21:03:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `language_id`, `status`, `title`, `price`, `time`, `feature`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(2, '1', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(3, '1', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(4, '1', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(5, '1', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(6, '1', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateweys`
--

CREATE TABLE `payment_gateweys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateweys`
--

INSERT INTO `payment_gateweys` (`id`, `title`, `image`, `name`, `type`, `information`, `keyword`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Paytm', '1623586905823168101.png', NULL, 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 1, NULL, NULL),
(6, 'Stripe', '1623586988691433744.png', NULL, 'automatic', '{\"key\":\"pk_test_51Gt67ZKUB0q5em8Z0h5cuOr35qzIsSEu1KmCSF3L6h8N53vk8srNfQkheFzjPYwz5oavwEXmVPXpk2otSAAPe5xP00oHgsguLb\",\"secret\":\"sk_test_51Gt67ZKUB0q5em8ZX8ZDHTqaowjqn9jF8BilKSagkLGtFzGx3KY4bIPEOn25OZsLo2cob4IIhmYr8wd4O3vBMfq1007wkUFYZ2\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', 1, NULL, NULL),
(7, 'Paypal', '1623586852780838485.png', NULL, 'automatic', '{\"client_id\":\"AUeHumZJ7Ujy2JAAs6bzHcJnxc7lKhmMKto-OGczYwJbgFhAcnphqBs9UCQ0rQZvuugXVI40QZxXz2qc\",\"client_secret\":\"EKiZvD4r5ygbwfSI7WCelgQgxd-hVzxtcdSeuOO3fF2tEH0mD1EY4ch2d3IP1rn7JoDqX716G4Trrxqx\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `language_id`, `title`, `slug`, `start_date`, `submission_date`, `client_name`, `link`, `featured_image`, `service_id`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(7, 1, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(8, 1, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 1, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(9, 1, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(10, 1, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(11, 1, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 6, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(12, 1, 'Broadband & Internet Service Providers Laravel CMS', 'Broadband-&-Internet-Service-Providers-Laravel-CMS', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16135358341098236821.jpg', 6, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 7, 'portfolio_116134162331069324685.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33'),
(2, 7, 'portfolio_216134162331517266711.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33'),
(3, 7, 'portfolio_316134162331745428499.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `current_price` double(15,8) DEFAULT NULL,
  `previous_price` double(15,8) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_sold` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_downloadable` int(11) DEFAULT NULL,
  `downloadable_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` decimal(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `language_id`, `current_price`, `previous_price`, `sku`, `stock`, `category_id`, `short_description`, `description`, `attributes_title`, `attributes_description`, `total_sold`, `tags`, `image`, `status`, `is_downloadable`, `downloadable_file`, `meta_tags`, `meta_description`, `created_at`, `updated_at`, `rating`) VALUES
(1, 'T-Shirt', 't-shirt', 1, 39.00000000, 49.00000000, 'qef42', 233, 2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '', '', NULL, 'tshirt,men', 'portfolio_16240883991973194575.jpg', '1', NULL, NULL, 'tshirt,men', 'tshirt for men', '2021-06-05 23:11:52', '2021-06-19 01:39:59', 0.00),
(2, 'Enim aliquid nisi co', 'enim-aliquid-nisi-co', 1, 440.00000000, 780.00000000, '345', 34520, 1, 'Sed et adipisicing vThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'Aliqua Nihil adipis', 'portfolio_1622957895464265031.jpg', '1', NULL, NULL, 'Et inventore velit e', 'Duis quia non provid', '2021-06-05 23:38:15', '2021-06-19 01:20:12', 5.00),
(4, 'T-Shirt 45r', 't-shirt-45r', 1, 39.00000000, 49.00000000, 'qef423f', 232, 4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'tshirt,men', 'portfolio_16229586441465629396.jpg', '1', NULL, NULL, 'tshirt,men', 'tshirt for men', '2021-06-05 23:11:52', '2021-06-19 01:20:04', 4.00),
(5, 'Enim aliquid nisi 345f', 'enim-aliquid-nisi-345f', 1, 440.00000000, 780.00000000, '345sdfa', 34446, 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'Aliqua Nihil adipis', 'portfolio_16229586331365700375.jpg', '1', NULL, NULL, 'Et inventore velit e', 'Duis quia non provid', '2021-06-05 23:38:15', '2021-06-18 06:10:17', 5.00),
(6, 'T-Shirt 577', 't-shirt-577', 1, 39.00000000, 49.00000000, 'qef42dsf', 234, 3, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'tshirt,men', 'portfolio_1622958625628802422.jpg', '1', NULL, NULL, 'tshirt,men', 'tshirt for men', '2021-06-05 23:11:52', '2021-06-05 23:50:25', 0.00),
(7, 'Enim aliquid nisi', 'enim-aliquid-nisi', 1, 440.00000000, 780.00000000, '345dfg', 34534, 3, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'Aliqua Nihil adipis', 'portfolio_16229586152065008187.jpg', '1', NULL, NULL, 'Et inventore velit e', 'Duis quia non provid', '2021-06-05 23:38:15', '2021-06-05 23:50:15', 0.00),
(8, 'T-Shirt dfg', 't-shirt-dfg', 1, 39.00000000, 49.00000000, 'qef42as', 233, 2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '', '', NULL, 'tshirt,men', 'portfolio_16229586072117160242.jpg', '1', NULL, NULL, 'tshirt,men', 'tshirt for men', '2021-06-05 23:11:52', '2021-06-19 01:19:42', 5.00),
(9, 'Enim aliquid nisi co 435', 'enim-aliquid-nisi-co-435', 1, 440.00000000, 780.00000000, '345sdf', 99, 4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'Aliqua Nihil adipis', 'portfolio_1622958597673003837.jpg', '1', 1, 'sample1623940768.zip', 'Et inventore velit e', 'Duis quia non provid', '2021-06-05 23:38:15', '2021-06-19 01:19:31', 4.00),
(10, 'T-Shirt 232', 't-shirt-232', 1, 39.00000000, 49.00000000, 'qef42fd', 234, 4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'tshirt,men', 'portfolio_1622958587629736485.jpg', '1', NULL, NULL, 'tshirt,men', 'tshirt for men', '2021-06-05 23:11:52', '2021-06-05 23:49:47', 0.00),
(11, 'Enim aliquid nisi co 45', 'enim-aliquid-nisi-co-45', 1, 440.00000000, 780.00000000, '34523', 34478, 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'Aliqua Nihil adipis', 'portfolio_16229585792087697798.jpg', '1', NULL, NULL, 'Et inventore velit e', 'Duis quia non provid', '2021-06-05 23:38:15', '2021-06-19 01:19:10', 5.00),
(12, 'T-Shirt 3', 't-shirt-3', 1, 39.00000000, 49.00000000, 'qef423', 197, 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'tshirt,men', 'portfolio_16229585701243926374.jpg', '1', NULL, NULL, 'tshirt,men', 'tshirt for men', '2021-06-05 23:11:52', '2021-06-15 06:21:31', 0.00),
(13, 'Enim aliquid nisi co 234', 'enim-aliquid-nisi-co-234', 1, 440.00000000, 780.00000000, '34533', 0, 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Brand,,,Model,,,Laptop Series,,,Part No,,,RAM,,,Storage,,,Warranty', 'Apple,,,Apple MacBook Pro (2020),,,MacBook Pro,,,MWP82LL/A, MWP82ZP/A,,,16GB,,,1TB SSD,,,1 year', NULL, 'Aliqua Nihil adipis', 'portfolio_1622958562328837342.jpg', '1', NULL, NULL, 'Et inventore velit e', 'Duis quia non provid', '2021-06-05 23:38:15', '2021-06-19 01:30:44', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `language_id`, `name`, `slug`, `is_feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accessories', 'accessories', 0, 1, '2021-06-05 21:33:50', '2021-06-05 21:37:02'),
(2, 1, 'Clothes', 'clothes', 0, 1, '2021-06-05 21:39:05', '2021-06-05 21:39:05'),
(3, 1, 'Laravel Scripts', 'laravel-scripts', 0, 1, '2021-06-05 21:39:17', '2021-06-05 21:39:17'),
(4, 1, 'WordPress CMS', 'wordpress-cms', 0, 1, '2021-06-05 21:39:37', '2021-06-05 21:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 'product_1624089302164721660.jpg', 8, '2021-06-19 01:55:02', '2021-06-19 01:55:02'),
(6, 'product_162408930290320061.jpg', 8, '2021-06-19 01:55:02', '2021-06-19 01:55:02'),
(7, 'product_16240893024441005.jpg', 8, '2021-06-19 01:55:02', '2021-06-19 01:55:02'),
(8, 'product_1624089302490627019.jpg', 8, '2021-06-19 01:55:02', '2021-06-19 01:55:02'),
(9, 'product_16240893181038987743.jpg', 12, '2021-06-19 01:55:18', '2021-06-19 01:55:18'),
(10, 'product_1624089318167703607.jpg', 12, '2021-06-19 01:55:18', '2021-06-19 01:55:18'),
(11, 'product_1624089318473456226.jpg', 12, '2021-06-19 01:55:18', '2021-06-19 01:55:18'),
(12, 'product_1624089318519977049.jpg', 12, '2021-06-19 01:55:18', '2021-06-19 01:55:18'),
(13, 'product_16240893351948063127.jpg', 11, '2021-06-19 01:55:35', '2021-06-19 01:55:35'),
(14, 'product_1624089335466818910.jpg', 11, '2021-06-19 01:55:35', '2021-06-19 01:55:35'),
(15, 'product_1624089335991599336.jpg', 11, '2021-06-19 01:55:35', '2021-06-19 01:55:35'),
(16, 'product_1624089335730330678.jpg', 11, '2021-06-19 01:55:35', '2021-06-19 01:55:35'),
(17, 'product_16240893541868878939.jpg', 10, '2021-06-19 01:55:54', '2021-06-19 01:55:54'),
(18, 'product_16240893541641496775.jpg', 10, '2021-06-19 01:55:54', '2021-06-19 01:55:54'),
(19, 'product_1624089354491895680.jpg', 10, '2021-06-19 01:55:54', '2021-06-19 01:55:54'),
(20, 'product_16240893541781883149.jpg', 10, '2021-06-19 01:55:54', '2021-06-19 01:55:54'),
(21, 'product_1624089378253516635.jpg', 9, '2021-06-19 01:56:18', '2021-06-19 01:56:18'),
(22, 'product_16240893781554370137.jpg', 9, '2021-06-19 01:56:18', '2021-06-19 01:56:18'),
(23, 'product_1624089378386044104.jpg', 9, '2021-06-19 01:56:18', '2021-06-19 01:56:18'),
(24, 'product_16240893781444277407.jpg', 9, '2021-06-19 01:56:18', '2021-06-19 01:56:18'),
(25, 'product_16240894052053613361.jpg', 7, '2021-06-19 01:56:45', '2021-06-19 01:56:45'),
(26, 'product_1624089405984584803.jpg', 7, '2021-06-19 01:56:45', '2021-06-19 01:56:45'),
(27, 'product_16240894051538973275.jpg', 7, '2021-06-19 01:56:45', '2021-06-19 01:56:45'),
(28, 'product_16240894051700034335.jpg', 7, '2021-06-19 01:56:45', '2021-06-19 01:56:45'),
(29, 'product_162408942551004559.jpg', 6, '2021-06-19 01:57:05', '2021-06-19 01:57:05'),
(30, 'product_1624089425587215903.jpg', 6, '2021-06-19 01:57:05', '2021-06-19 01:57:05'),
(31, 'product_16240894252132004660.jpg', 6, '2021-06-19 01:57:05', '2021-06-19 01:57:05'),
(32, 'product_16240894252129774489.jpg', 6, '2021-06-19 01:57:05', '2021-06-19 01:57:05'),
(33, 'product_16240894401426527912.jpg', 5, '2021-06-19 01:57:20', '2021-06-19 01:57:20'),
(34, 'product_1624089440841271665.jpg', 5, '2021-06-19 01:57:20', '2021-06-19 01:57:20'),
(35, 'product_1624089440183881633.jpg', 5, '2021-06-19 01:57:20', '2021-06-19 01:57:20'),
(36, 'product_16240894401040233883.jpg', 5, '2021-06-19 01:57:20', '2021-06-19 01:57:20'),
(37, 'product_16240894731090264082.jpg', 4, '2021-06-19 01:57:53', '2021-06-19 01:57:53'),
(38, 'product_16240894731153717708.jpg', 4, '2021-06-19 01:57:53', '2021-06-19 01:57:53'),
(39, 'product_16240894733974461.jpg', 4, '2021-06-19 01:57:53', '2021-06-19 01:57:53'),
(40, 'product_1624089473127790754.jpg', 4, '2021-06-19 01:57:53', '2021-06-19 01:57:53'),
(41, 'product_16240894941130766794.jpg', 2, '2021-06-19 01:58:14', '2021-06-19 01:58:14'),
(42, 'product_1624089494582167260.jpg', 2, '2021-06-19 01:58:14', '2021-06-19 01:58:14'),
(43, 'product_16240894942084607306.jpg', 2, '2021-06-19 01:58:14', '2021-06-19 01:58:14'),
(44, 'product_16240894941958143661.jpg', 2, '2021-06-19 01:58:14', '2021-06-19 01:58:14'),
(45, 'product_1624089516183627423.jpg', 1, '2021-06-19 01:58:36', '2021-06-19 01:58:36'),
(46, 'product_16240895161412320802.jpg', 1, '2021-06-19 01:58:36', '2021-06-19 01:58:36'),
(47, 'product_16240895161926819412.jpg', 1, '2021-06-19 01:58:36', '2021-06-19 01:58:36'),
(48, 'product_162408951699808784.jpg', 1, '2021-06-19 01:58:36', '2021-06-19 01:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `review`, `comment`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 5, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2021-06-18 05:53:16', '2021-06-18 06:10:17'),
(3, 5, 11, 5, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2021-06-19 01:19:10', '2021-06-19 01:19:10'),
(4, 5, 9, 4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2021-06-19 01:19:31', '2021-06-19 01:19:31'),
(5, 5, 8, 5, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2021-06-19 01:19:42', '2021-06-19 01:19:42'),
(6, 5, 4, 4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2021-06-19 01:20:04', '2021-06-19 01:20:04'),
(7, 5, 2, 5, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2021-06-19 01:20:12', '2021-06-19 01:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skypenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `name`, `email`, `phone`, `country`, `budget`, `skypenumber`, `subject`, `file`, `description`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Genius Mamun', 'gmamun2435@gmail.com', '324234123', 'Bangladesh', '345', '234234234234', 'Web Design & Development', '16135595621654910309.pdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 2, '2021-02-17 04:59:22', '2021-02-17 05:10:00'),
(9, 'Mahfuj', 'mahfuj@gmail.com', '0438263458', 'Bangladesh', '3453', '45364564', 'Laravel CMS Design', '16135600042114205085.pdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 0, '2021-02-17 05:06:44', '2021-02-17 05:06:44'),
(10, 'rony', 'djrafi@gmail.com', '435653', 'Bangladesh', '333', '234234', 'WordPress CMS Design', '161356005685981243.pdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 0, '2021-02-17 05:07:36', '2021-02-17 05:07:36'),
(11, 'Sihab', 'sihab@gmail.com', '4563435', 'Bangladesh', '432', '2345234535', 'HTML & CSS3 Website Design', NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 3, '2021-02-17 05:09:37', '2021-02-17 05:09:54'),
(12, 'Iliana Emerson', 'cylusadah@mailinator.com', '5966503', 'Aut fugiat do simili', 'Cupiditate ipsum con', '436', 'Cillum voluptatem si', NULL, 'Dolor similique temp', 0, '2021-04-23 13:02:21', '2021-04-23 13:02:21'),
(13, 'Emma Lynch', 'zebezaxys@mailinator.com', '3518', 'Provident facere nu', 'Molestias nostrud ex', '124', 'Dolorum ex sed non a', '1619609498606016260.pdf', 'Ea delectus qui mag', 0, '2021-04-28 05:31:38', '2021-04-28 05:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', '2021-02-19 12:53:15', '2021-02-19 23:33:57'),
(2, 'Moderator', '[\"Ecommerce\",\"Home\",\"Inner Page\",\"Quote\",\"Gallery\",\"Job\",\"Blog\",\"Role Management\",\"Subscribers\",\"Dynamic Page\",\"Language\",\"Clear Cache\"]', '2021-02-19 13:44:23', '2021-06-19 15:21:41'),
(3, 'Super Admin', '[\"Website Customization\",\"General Setting\",\"Ecommerce\",\"Home\",\"Inner Page\",\"Quote\",\"Gallery\",\"Job\",\"Blog\",\"Role Management\",\"Subscribers\",\"Users Management\",\"Dynamic Page\",\"Language\",\"Clear Cache\"]', '2021-02-19 13:47:18', '2021-06-19 15:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `sectiontitles`
--

CREATE TABLE `sectiontitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_experince_yers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_intro_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectiontitles`
--

INSERT INTO `sectiontitles` (`id`, `language_id`, `w_we_are_sub_title`, `w_we_are_title`, `w_we_are_text`, `video_title`, `video_sub_title`, `video_text`, `video_image`, `video_link`, `video_image_right`, `video_image_left`, `video_bg_image`, `video_content`, `service_title`, `service_sub_title`, `w_c_us_sub_title`, `w_c_us_title`, `w_c_us_image1`, `w_c_us_image2`, `team_title`, `team_sub_title`, `contact_sub_title`, `contact_title`, `contact_form_title`, `contact_section_bg_image`, `contact_form_image`, `contact_map`, `faq_sub_title`, `faq_title`, `faq_bg_image`, `faq_image1`, `faq_image2`, `blog_title`, `blog_sub_title`, `hero_sub_title`, `hero_title`, `hero_text`, `hero_image`, `hero_bg_image`, `hero_f_icon1`, `hero_f_icon2`, `hero_f_text1`, `hero_f_text2`, `about_title`, `about_sub_title`, `about_text`, `about_experince_yers`, `about_intro_video`, `about_image`, `get_quote_title`, `get_quote_sub_title`, `our_history_title`, `our_history_text`, `package_sub_title`, `package_title`, `portfolio_title`, `portfolio_sub_title`, `counter_bg_image`, `meeet_us_bg_image`, `meeet_us_text`, `meeet_us_button_text`, `meeet_us_button_link`, `created_at`, `updated_at`, `testimonial_title`, `testimonial_subtitle`) VALUES
(1, '1', 'WHO WE ARE', 'Get Started Today With Us', 'Cryptocoinfx Miners is a Bitcoin-based platform, offering a leveraged trading on several digital assets including Bitcoin, Ethereum, Litecoin, and Ripple. We are expert traders on bitcoin and we uses invested funds for trading and mining of bitcoins, thereby providing wealth for our investors and ourselves. When you invest your bitcoin/money with Cryptocoinfx Miners investment company, you don\'t have to bother about loss or risk of funds as return on investment is guaranteed.', 'Technology Based on Years Of Experience', 'INTRO VIDEO', 'Technology Based on Years Of Experience', '16379439291392559169.png', 'https://www.youtube.com/watch?v=nzTYL56T6mU', '16379439292017368323.png', '1637943929479042109.png', '16379437361728643752.jpg', 'Cryptocoinfx Miners offers a robust trading system for both beginners and professional traders that demand highly reliable market data and performance. Entire infrastructure is designed to facilitate high number of orders per second and extreme loads, while offering ultra-fast order execution and low latency. Our traders of all experience levels can easily design and customize layouts and widgets to best fit their trading style. We are proud to offer such innovative products and professional trading conditions to all our customers.', 'Best at what we do', 'Standard Features', 'WHO WE ARE', 'Why Choose Us', '16378901841362691658.png', '1637890184135334567.png', 'Meet Our Exclusive Leadership', 'OUR TEAM MEMBER', 'CONTACT US', 'Investments Inquiry', 'Don\'t Hesitate To Contact Us, Say Hello......', '1637947025589143481.jpeg', '16379463511446242073.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'FAQ', 'Get Answers to Popular Questions', '1612937982770064829.jpg', '16390730992084210848.png', '1639073253819716984.png', 'Read Our Latest News & Blog', 'LATEST NEWS', 'Promote any poduct, service or online course.', 'Get every it Services Here', 'Make your products with good & professionals', '16127989421745785160.png', '1613561714482991106.jpg', 'fal fa-gem', 'fal fa-bullseye', 'IT Product', 'IT Services', 'Invest for Future with Sure Returns', 'Trusted and Reliable', '<p>Invest in an Industry Leader, Professional, and Reliable Company. We \r\nprovide you with the most necessary features that will make your \r\nexperience better. Not only we guarantee the fastest and the most \r\nexciting returns on your investments, but we also guarantee the security\r\n of your investment.</p><p>Cryptocoin Minersfx is a Bitcoin-based platform, offering a leveraged \r\ntrading on several digital assets including Bitcoin, Ethereum, Litecoin,\r\n and Ripple. We are expert traders on bitcoin and we uses invested funds\r\n for trading and mining of bitcoins, thereby providing wealth for our \r\ninvestors and ourselves.</p>', '5', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '1637590549593423566.png', NULL, NULL, 'CryptocoinFX Miners', 'It is always our aim to serve the best interests of our clients through our continuous investment in R&D and in class digital asset trading experience in the industry.', 'Plans', 'Our Pricing Plans', 'Reads Our Recent Case Studies', 'LATEST CASE STUDIES', NULL, '163795834288109337.jpeg', 'Do you Know you Can Earn Over $50000 in 2Weeks', 'Get Started', 'https://cryptocoinfxminers.com/accounts/register', NULL, '2021-12-09 23:30:47', 'What Our Client Says', 'TESTIMONIAL');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `language_id`, `status`, `title`, `slug`, `icon`, `image`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Legal Company', 'Legal-Company', 'fal fa-eye-dropper', '1637945686407525072.png', '<p>This website services are related to and provided by Cryptocoinfx Miners \r\nTrading Services Ltd (Seychelles company nr. 206865DE3) and Prime \r\nTechnologies Ltd. (Saint Vincent and the Grenadines company nr. \r\n206865DE3).</p>', 0, '2021-02-11 07:10:50', '2021-12-01 02:14:55'),
(2, '1', 1, 'High Reliability', 'High-Reliability', 'fal fa-gavel', '1637945647337246813.png', '<p>Cryptocoinfx Miners is a Bitcoin-based platform, offering a leveraged trading\r\n on several digital assets including Bitcoin, Ethereum, Litecoin, and \r\nRipple. We are expert traders on bitcoin and we uses invested funds for \r\ntrading and mining of bitcoins, thereby providing wealth for our \r\ninvestors and ourselves.</p>', 0, '2021-02-11 07:15:31', '2021-12-01 02:16:32'),
(3, '1', 1, 'Secure Technology', 'Secure-Technology', 'fal fa-map-marked-alt', '16383123721086044574.png', '<p>Cryptocoinfx Miners Extensive cyber-security framework is implemented in order to ensure \r\nthat strict measures and practices are in place to protect customer \r\nassets against any eventualities and threats. We are conducting \r\nperiodical stress tests and security audits to ensure compliance with \r\nthe strictest security standards.</p><ul><li>&nbsp;2FA (provided by Google Auth) to ensure account security and prevent any unauthorised access to users account.</li><li>Mandatory Bitcoin address whitelisting feature</li><li>Cold storage of digital assets with Multisignature technology</li><li>Hardware security modules with rating of FIPS PUB 140-2 Level 3 or higher</li><li>Full risk check after every order placement and execution</li><li>Encrypted SSL (https) to encrypt and secure our websites traffic.</li><li>All passwords are cryptographically hashed (using bcrypt with a cost factor of 12) while all other sensitive data is encrypted.</li><li>Cloudfare to mitigate potential distributed denial-of-service (DDoS) attacks.</li><li> Regular tests and check-ups by our technical team.</li><li>On-going and IT security assessments are executed to keep up to date with new potential vulnerabilities.<br></li></ul><p><br></p>', 0, '2021-02-11 07:16:06', '2021-12-01 03:46:12'),
(5, '1', 1, 'Quick Withdrawals', 'Quick-Withdrawals', 'fal fa-hurricane', '16379453521175164534.jpg', '<p>Withdrawals are instantly responded to once requested.&nbsp; The minimum withdrawal amount is only $1000 . You can withdraw the full amount of your account balance minus the funds\r\n that are used currently for supporting opened positions. </p>', 0, '2021-02-11 07:22:50', '2021-12-01 02:41:35'),
(6, '1', 1, 'Referral Program', 'Referral-Program', 'fal fa-bezier-curve', '1637945327951215753.jpg', '<p>Become a Cryptocoinfx Miners affiliate partner with over 3, 500 partners so far<br>Get up to 20% of what your referred users pay in trading fees<br><br>&nbsp;&nbsp;&nbsp; Earn upto $10,000+ per month from referring<br>&nbsp;&nbsp;&nbsp; Build your own profitable business by referring<br>&nbsp;&nbsp;&nbsp; Start earning by giving out your referral link.<br><br></p>', 0, '2021-02-11 07:23:18', '2021-12-01 02:29:33'),
(7, '1', 1, 'Anonymity', 'Anonymity', 'fal fa-umbrella', '1637945004943035324.jpg', 'Anonymity and using cryptocurrency as a payment instrument. In the era \r\nof electronic money – this is one of the most convenient ways of making investment in fast and reliable way.<br>', 0, '2021-02-11 07:24:00', '2021-12-01 03:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bg_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disqus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_overlay` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_this_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pexel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_alert_text` blob DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_messenger` tinyint(4) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `is_google_analytics` tinyint(4) NOT NULL DEFAULT 1,
  `is_add_this_status` tinyint(4) NOT NULL DEFAULT 1,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT 1,
  `is_announcement` tinyint(4) NOT NULL DEFAULT 1,
  `is_maintainance_mode` tinyint(4) NOT NULL DEFAULT 1,
  `is_blog_share_links` tinyint(4) NOT NULL DEFAULT 1,
  `is_tawk_to` tinyint(4) NOT NULL DEFAULT 1,
  `is_recaptcha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooki_alert` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_slider_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_who_we_are_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_intro_video_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_why_choose_us_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_portfolio_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_contact_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_faq_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_meet_us_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_blog_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_clint_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_hero_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_about_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_intro_video_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_contact_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_faq_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_quote_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_news_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_hero_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_portfolio_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_faq_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_meet_us_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_news_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_hero_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_about_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_who_we_are_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_intro_video_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_portfolio_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_testmonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_faq_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_contact_section` tinyint(4) NOT NULL DEFAULT 1,
  `about_page` tinyint(4) NOT NULL DEFAULT 1,
  `service_page` tinyint(4) NOT NULL DEFAULT 1,
  `poerfolio_page` tinyint(4) NOT NULL DEFAULT 1,
  `package_page` tinyint(4) NOT NULL DEFAULT 1,
  `team_page` tinyint(4) NOT NULL DEFAULT 1,
  `faq_page` tinyint(4) NOT NULL DEFAULT 1,
  `blog_page` tinyint(4) NOT NULL DEFAULT 1,
  `contact_page` tinyint(4) NOT NULL DEFAULT 1,
  `quote_page` tinyint(4) NOT NULL DEFAULT 1,
  `about_about` tinyint(4) NOT NULL DEFAULT 1,
  `about_w_w_a` tinyint(4) NOT NULL DEFAULT 1,
  `about_choose_us` tinyint(4) NOT NULL DEFAULT 1,
  `about_history` tinyint(4) NOT NULL DEFAULT 1,
  `is_video_hero` tinyint(4) NOT NULL DEFAULT 1,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1,
  `is_call_button` tinyint(4) NOT NULL DEFAULT 1,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_preloader` tinyint(4) NOT NULL DEFAULT 1,
  `preloader_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_t5_slider_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_about_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_who_er_are_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_project_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_meetus_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_blog_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t5_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_slider_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_who_we_are_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_project_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_faq_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_meetus_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_blog_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t6_map_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_shop` tinyint(4) NOT NULL DEFAULT 1,
  `is_user_system` tinyint(4) NOT NULL DEFAULT 1,
  `hero_slider_overlay_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_slider_overlay_color_opacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_shop_share_links` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `about_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quot_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quot_meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `theme_version`, `website_title`, `base_color`, `header_logo`, `footer_logo`, `fav_icon`, `breadcrumb_image`, `number`, `email`, `contactemail`, `address`, `opening_hours`, `footer_text`, `footer_bg_image`, `meta_keywords`, `meta_description`, `copyright_text`, `messenger`, `disqus`, `slider_overlay`, `add_this_status`, `facebook_pexel`, `google_analytics`, `announcement`, `announcement_delay`, `maintainance_text`, `tawk_to`, `cookie_alert_text`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_messenger`, `is_disqus`, `is_google_analytics`, `is_add_this_status`, `is_facebook_pexel`, `is_announcement`, `is_maintainance_mode`, `is_blog_share_links`, `is_tawk_to`, `is_recaptcha`, `is_cooki_alert`, `created_at`, `updated_at`, `is_t1_slider_section`, `is_t1_who_we_are_section`, `is_t1_intro_video_section`, `is_t1_service_section`, `is_t1_why_choose_us_section`, `is_t1_portfolio_section`, `is_t1_testimonial_section`, `is_t1_team_section`, `is_t1_contact_section`, `is_t1_faq_counter_section`, `is_t1_meet_us_section`, `is_t1_blog_section`, `is_t1_clint_section`, `is_t2_hero_section`, `is_t2_about_section`, `is_t2_service_section`, `is_t2_intro_video_section`, `is_t2_team_section`, `is_t2_counter_section`, `is_t2_testimonial_section`, `is_t2_contact_section`, `is_t2_faq_section`, `is_t2_quote_section`, `is_t2_news_section`, `is_t2_client_section`, `is_t3_hero_section`, `is_t3_service_section`, `is_t3_portfolio_section`, `is_t3_testimonial_section`, `is_t3_faq_section`, `is_t3_team_section`, `is_t3_meet_us_section`, `is_t3_news_section`, `is_t3_client_section`, `is_t4_hero_section`, `is_t4_client_section`, `is_t4_about_section`, `is_t4_feature_section`, `is_t4_who_we_are_section`, `is_t4_intro_video_section`, `is_t4_portfolio_section`, `is_t4_counter_section`, `is_t4_testmonial_section`, `is_t4_faq_section`, `is_t4_contact_section`, `about_page`, `service_page`, `poerfolio_page`, `package_page`, `team_page`, `faq_page`, `blog_page`, `contact_page`, `quote_page`, `about_about`, `about_w_w_a`, `about_choose_us`, `about_history`, `is_video_hero`, `is_whatsapp`, `is_call_button`, `whatsapp`, `maintainance_image`, `hero_section_video_link`, `is_preloader`, `preloader_icon`, `preloader_bg_color`, `is_t5_slider_section`, `is_t5_about_section`, `is_t5_who_er_are_section`, `is_t5_service_section`, `is_t5_project_section`, `is_t5_team_section`, `is_t5_counter_section`, `is_t5_testimonial_section`, `is_t5_meetus_section`, `is_t5_blog_section`, `is_t5_client_section`, `is_t6_slider_section`, `is_t6_client_section`, `is_t6_who_we_are_section`, `is_t6_service_section`, `is_t6_project_section`, `is_t6_team_section`, `is_t6_testimonial_section`, `is_t6_faq_counter_section`, `is_t6_meetus_section`, `is_t6_blog_section`, `is_t6_map_section`, `is_shop`, `is_user_system`, `hero_slider_overlay_color`, `hero_slider_overlay_color_opacity`, `is_shop_share_links`, `about_meta_key`, `service_meta_key`, `portfolio_meta_key`, `package_meta_key`, `team_meta_key`, `faq_meta_key`, `gallery_meta_key`, `career_meta_key`, `blog_meta_key`, `product_meta_key`, `contact_meta_key`, `quot_meta_key`, `about_meta_desc`, `service_meta_desc`, `portfolio_meta_desc`, `package_meta_desc`, `team_meta_desc`, `faq_meta_desc`, `gallery_meta_desc`, `career_meta_desc`, `blog_meta_desc`, `product_meta_desc`, `contact_meta_desc`, `quot_meta_desc`) VALUES
(1, '1', 'theme1', 'CryptocoinFX Miners', '0C59DB', 'header_logo_16383509961241324608.png', 'footer_logo16380096831197610009.png', 'fav_icon_16380098001703837454.png', 'breadcrumb_image_.jpg', '+1 803 998 0533', 'Support@cryptocoinfxminers.com', 'support@cryptocoinfxminers.com', '375 Hudson Street 16th Floor New York, NY 10014. United States.', 'Mon - Fri / 8AM - 4PM', 'Cryptocoin Minersfx is a Bitcoin-based platform, offering a leveraged trading on several digital assets including Bitcoin, Ethereum, Litecoin, and Ripple. We are expert traders on bitcoin and we uses invested funds for trading and mining of bitcoins, thereby providing wealth for our investors and ourselves.', 'footer_bg_image_1613361435502004358.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', '<p>Copyright by @ Cryptocoinfx Miners- 2021</p>', '<!-- Messenger Chat Plugin Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat Plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"858401617860382\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v11.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', 'nextit-1', NULL, NULL, NULL, NULL, '163802580367535342.jpg', 1.00, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', '<script type=\"text/javascript\">window.$crisp=[];window.CRISP_WEBSITE_ID=\"4843c4f3-778c-4d2a-8f14-007948d704dc\";(function(){d=document;s=d.createElement(\"script\");s.src=\"https://client.crisp.chat/l.js\";s.async=1;d.getElementsByTagName(\"head\")[0].appendChild(s);})();</script>', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 0, 1, 1, 1, 1, 1, 0, 0, 1, '0', 1, NULL, '2022-01-20 04:37:22', 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, '+1 803 998 0533', '1619241714761747856.jpg', 'https://www.youtube.com/watch?v=BAVfUvByStY&t=2s', 0, '16239333001291224830.gif', '#FFFFFF', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, NULL, '1', '0', 'About', 'Service', 'Portfolio', 'Package', 'Team', 'FAQ', 'Gallery', 'Career', 'Blog', 'Product', 'Contact', 'Quot', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Skynet – Multipurpose Website CMS. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.', 'Cryptocoinfxminers - Cryptocurrency investment Website. It’s all in one package. It gives you infinite possibilities to make your site. It is a better way to present your business, corporate website, construction website, organization, IT solutions, Ecommerce, job, broadband, Internet service provider, isp, wifi business, portfolio, resume, cv e.t.c. It’s easy to customize. it also compatible with Desktop, laptop, mobile, and also compatible with major browsers.');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `language_id`, `title`, `subtitle`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Free Shipping', 'Shipment will be within 10-15 Days', 0, 1, '2021-06-13 05:44:46', '2021-06-13 05:44:46'),
(2, 1, 'Standard Shipping', 'Shipment will be within 5-10 Day.', 10, 1, '2021-06-13 05:46:17', '2021-06-13 06:47:28'),
(4, 1, 'Same day delivery', 'Shipment will be within 1 Day.', 25, 1, '2021-06-13 05:47:13', '2021-06-13 06:48:41'),
(5, 3, 'test', 'test', 30, 1, '2021-06-19 10:37:09', '2021-06-19 10:37:20'),
(6, 2, 'test3', 'test', 30, 1, '2021-06-19 10:37:55', '2021-06-19 10:37:55'),
(7, 2, 'test4', 'test4', 20, 1, '2021-06-19 10:41:45', '2021-06-19 10:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `status`, `image`, `subtitle`, `title`, `text`, `button_text`, `button_link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1637408799294246454.jpg', 'Investment Platform', 'Cryptocurrency', 'The digital broker you need to succeed. Invest and Earn profitably from all your Investments. A sure path to Financial Freedom.', 'Login/Register', 'https://app.cryptocoinfxminers.com/login', 0, '2021-02-08 08:27:37', '2021-12-05 18:21:09'),
(3, '1', '1', '1638292847906089657.png', 'Invest be sure of Returns', 'High Relability', 'We are trusted by a huge number of people. We are working hard constantly to improve the level of our security system and minimize possible risks.', 'Login/Register', 'https://app.cryptocoinfxminers.com/login', 1, '2021-02-08 08:27:37', '2021-12-05 18:20:38'),
(4, '1', '1', '1638294486929778126.png', 'Bitcoin Mining', 'Investment Platform', 'The digital broker you need to succeed. Invest and Earn profitably from all your Investments. A sure path to Financial Freedom.', 'Login/Register', 'https://app.cryptocoinfxminers.com/login', 0, '2021-02-08 08:27:37', '2021-12-05 18:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dagenation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `language_id`, `status`, `image`, `name`, `dagenation`, `description`, `serial_number`, `icon1`, `icon2`, `icon3`, `icon4`, `icon5`, `url1`, `url2`, `url3`, `url4`, `url5`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:44'),
(2, 1, 1, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:39'),
(3, 1, 1, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:33'),
(4, 1, 1, '1612933803370198115.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:28'),
(5, 1, 1, '16129337911260741882.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:22'),
(6, 1, 1, '16129337752084136888.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:16'),
(7, 1, 1, '16129337621309526882.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:10'),
(8, 1, 1, '16129337511015110346.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:04'),
(9, 1, 1, '1612933721528929386.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', NULL, NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, NULL, '2021-02-09 22:50:20', '2021-02-16 08:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `status`, `name`, `position`, `message`, `image`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Paul Philip', 'Enterpreneur', 'Behind on a few payments and I was looking for a way to cover it. Luckily I found Crytocoinfx Miners and through the help of my really patient account manager I soon learned how to Trade. Not only did my debts vanish but I started generating a really nice side income.', '1622610022334317720.jpg', '4', 0, '2021-02-15 05:24:20', '2021-11-26 20:52:17'),
(2, 1, NULL, 'Genius Mamun', 'Enterpreneur', 'From the help of Crytocoinfx Miners I am now earning my weeks worth of wage in a day all from my phone! Offering a range of good services has also helped me all throughout and resolved any issues I\'ve had along the way, definitely best in the business\"', '16226099182019624356.jpg', '5', 0, '2021-02-15 05:24:32', '2021-11-26 20:52:53'),
(3, 1, NULL, 'Lisa', 'Enterpreneur', 'I have recently joined this platform which has already helped me make up to $7000 weekly from my phone while at college', '1622609908696856003.jpg', '5', 1, '2021-02-15 05:24:45', '2021-11-26 20:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verify_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `username`, `phone`, `address`, `country`, `state`, `city`, `zipcode`, `email_verified`, `email_verify_token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'DJrafi', NULL, 'djrafi@gmail.com', 'djrafi', NULL, NULL, NULL, NULL, NULL, NULL, '0', '45c9461ec630cbc62e2947d931480fd4', '$2y$10$Dm.lw2D0lksVZ6UXZ927cOiAytwyquOjcmxUpD6B/yiB6xz/idzB.', NULL, '2021-06-12 05:57:50', '2021-06-12 05:57:50'),
(4, 'Tony', NULL, 'tony@gmail.com', 'tony', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'db2b57ede2668692932446e19a165999', '$2y$10$NpvrpJD8WudtJkTbLa6yMOMreFeCShybL5l50FMoQLQ32CCSfVgaW', NULL, '2021-06-12 06:00:01', '2021-06-12 06:00:01'),
(5, 'Mamun', '1623977685799861143.jpg', 'user@gmail.com', 'user', '123456789', 'Dhaka Bangladesh', 'Bangladesh', 'Dhaka', 'dhaka', '2344', 'Yes', '5f717a00ff2df1633902057c212daddc', '$2y$10$xIKhl5/MwWmdjWjfHI8CB.AL6yqqcYKTYPEfipENYopLhCnRSCSlO', NULL, '2021-06-13 03:49:24', '2021-06-19 14:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `why_selects`
--

CREATE TABLE `why_selects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_selects`
--

INSERT INTO `why_selects` (`id`, `language_id`, `status`, `title`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(2, '1', 1, 'Best Returns', 'fal fa-server', 'Get best ROI on your investments with speedy withdrawals.', 0, '2021-02-09 08:27:19', '2021-11-26 22:37:22'),
(3, '1', 1, 'Friendly Investment Plans', 'fal fa-tools', 'Our plans are suitable for everyone everywhere.', 0, '2021-02-09 08:27:45', '2021-11-26 22:38:12'),
(4, '1', 1, 'Awesome Support', 'fal fa-laptop-code', 'We are always there to guide you every step of the way as you make your investmen', 0, '2021-02-09 08:51:00', '2021-11-26 22:36:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flinks`
--
ALTER TABLE `flinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcategories`
--
ALTER TABLE `gcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jcategories`
--
ALTER TABLE `jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateweys`
--
ALTER TABLE `payment_gateweys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `why_selects`
--
ALTER TABLE `why_selects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emailsettings`
--
ALTER TABLE `emailsettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flinks`
--
ALTER TABLE `flinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gcategories`
--
ALTER TABLE `gcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jcategories`
--
ALTER TABLE `jcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment_gateweys`
--
ALTER TABLE `payment_gateweys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `why_selects`
--
ALTER TABLE `why_selects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
