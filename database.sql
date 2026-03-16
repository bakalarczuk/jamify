-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mariadb106.server455778.nazwa.pl:3306
-- Generation Time: Mar 08, 2026 at 02:31 PM
-- Server version: 10.6.24-MariaDB-log
-- PHP Version: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `server455778_2`
--
CREATE DATABASE IF NOT EXISTS `server455778_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `server455778_2`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `event_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_type_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `venue_id`, `title`, `description`, `event_date`, `created_at`, `updated_at`, `event_type_id`) VALUES
(7, 3, 7, 'Jam session w wydaniu akustycznym', '<p>💯Zapraszam na jam session w wydaniu akustycznym!</p>\r\n<p>Gitary tylko akustyczne/klasyczne, dla perkusist&oacute;w do dyspozycji będzie \"mocarny zestaw\" oparty o cajon (z mechanizmem stopki ) co do reszty już rygor&oacute;w nie ma - basiści i klawiszowcy mile widziani także po kablu!</p>\r\n<p>Dla wokalist&oacute;w będzie jak zawsze mikrofon.</p>\r\n<p>W klubie jest nagłośnienie i ogarnięty akustyk!</p>', '2025-05-08 20:30:00', '2025-05-06 13:14:59', '2025-05-09 10:05:46', 3),
(9, 3, 10, 'EuroJAZZ i PROM Kultury Saska Kępa zapraszają w Noc Muzeów na super jam session', '<p>Jak co roku Fundacja EuroJAZZ i PROM Kultury Saska Kępa zapraszają w Noc Muze&oacute;w na super jam session gwiazd jazzu, kt&oacute;re wystąpiły w ramach cyklu &ldquo;Cały ten JAZZ!&rdquo; w PROMie.<br class=\"html-br\">Esencją jazzu jest jam session &ndash; wsp&oacute;lne muzykowanie na bazie standard&oacute;w jazzowych. Start: godz. 20.00<br class=\"html-br\">wstęp wolny // online bezpłatnie / ZAPRASZAMY WSZYSTKICH MUZYK&Oacute;W, KT&Oacute;RZY WYSTĄPILI W CYKLU DO ZGŁOSZENIA UDZIAŁU W JAM SESSION! Artystom towarzyszyć będzie sekcja rozgrywająca. W Jam Session Mistrz&oacute;w wystąpią gwiazdy, kt&oacute;re gościły w cyklu &ldquo;Cały ten JAZZ!&rdquo;. Na tę chwilę udział w jamie potwierdzili:<br class=\"html-br\">Voc: Aga Zaryan, Anna Serafińska, Agnieszka Wilczyńska, Aleksandra Błachno<br class=\"html-br\">Sax: Henryk Miskiewicz, Borys Janczarski<br class=\"html-br\">Tp: Gary Guthman, Robert Majewski<br class=\"html-br\">Tb: Jacek Namysłowski<br class=\"html-br\">Piano: Andrzej Jagodziński, Krzysztof Herdzin, Piotr Wrombel, Łukasz Ojdana, Aga Derlak<br class=\"html-br\">Db: Paweł Pańta, Michał Jaros, Adam Cegielski, Mariusz Bogdanowicz<br class=\"html-br\">Gt bass: Krzysztof Ścierański<br class=\"html-br\">Drums: Marcin Jahr, Kazimierz Jonkisz, Patryk Dobosz, Krzysztof Gradziuk Lista będzie się sukcesywnie poszerzać!</p>', '2025-05-17 20:00:00', '2025-05-07 14:54:11', '2025-05-09 10:14:37', 3),
(10, 3, 11, 'Blue Note Poznań', '<p>Na jazzowe jam session w maju zapraszamy wyjątkowo w drugim tygodniu miesiąca. Zachęcamy zar&oacute;wno muzyk&oacute;w, jak i wszystkich miłośnik&oacute;w słuchania muzyki improwizowanej na żywo. &nbsp; O 21:00 wiecz&oacute;r rozpocznie koncert home bandu, a po 22:30 scena należy do Was! &nbsp; Home band w maju: F&eacute;lix Robin &ndash; wibrafon<br class=\"html-br\">Dawid Tokłowicz &ndash; saksofon<br class=\"html-br\">Damian Kostka &ndash; kontrabas<br class=\"html-br\">Adam Zag&oacute;rski &ndash; perkusja 21:00 koncert home bandu<br class=\"html-br\">22:30 start jam session WSTĘP WOLNY Projekt dofinansowany z budżetu Miasta Poznania&nbsp;<a href=\"https://www.facebook.com/hashtag/poznanwspiera?__eep__=6&amp;amp;__cft__[0]=AZU1fhPvUSIQbwgd2zC63-NfSdRuZ2sypBRbaFUcuw1Ba7ENuotaOmcAO2Zjqk_GzWQlzEQjcfBeEGX-_sitfgx_hmryzWYJrHqbWkznV1uIeQFJVXXUmnocf1hGhYWoxiFzyIv7WpPL36xpHSs7viqk&amp;amp;__tn__=q\" target=\"_blank\" rel=\"noopener\">#poznanwspiera</a></p>', '2025-05-08 21:00:00', '2025-05-07 14:57:56', '2025-05-09 10:15:30', 3),
(11, 3, 12, 'WERNISAŻ JEDNEGO OBRAZU. Jazz Jam Session Cykliczne, jazzowe, jam session w La Boheme na Żoliborzu.', '<p>Cykliczne, jazzowe, jam session w La Boheme na Żoliborzu.<br class=\"html-br\">Ze względu na duże zainteresowanie, proponujemy spotkania w trybie dwutygodniowym, w drugi i ostatni poniedziałek miesiąca.<br class=\"html-br\">Zapraszamy z instrumentem lub bez - można po prostu przyjść i posłuchać.<br class=\"html-br\">Planowane najbliższe spotkania: 31.03, 14.04, 12,26.05, 09,,23.06.<br class=\"html-br\">W repertuarze standardy jazzowe a w sekcji rozgrywającej:<br class=\"html-br\">Bartek Łazarski - kontrabas<br class=\"html-br\">Patryk Lewi - gitara<br class=\"html-br\">Tomasz Piątkowski - el. piano<br class=\"html-br\">Marcin Ułanowski - perkusja<br class=\"html-br\">oraz:<br class=\"html-br\">Michał Pierzchlewski - kamery</p>', '2025-05-12 19:00:00', '2025-05-07 15:16:06', '2025-05-09 10:14:26', 3),
(17, 6, 14, 'Synth Jaw #166 - Otwarty jam muzyki elektronicznej', '<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tbe/2/16/1f3b6.png\" alt=\"🎶\" width=\"16\" height=\"16\"></span>&nbsp;Synth Jaw to otwarty jam dla początkujących oraz zaawansowanych muzyk&oacute;w. Gramy, uczymy siebie i wspieramy innych w tworzeniu muzyki elektronicznej. Poza graniem, chętnie odpowiemy na Wasze pytania, pokażemy graty, opowiemy o nich.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">Link do wydarzenia na Facebooku:</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><a href=\"https://www.facebook.com/events/711669147880909\" target=\"_blank\" rel=\"noopener\">https://www.facebook.com/events/711669147880909&nbsp;</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t42/2/16/1f193.png\" alt=\"🆓\" width=\"16\" height=\"16\"></span>&nbsp;Nasze spotkania są non-profit i takimi pozostają. Mimo to organizatorzy opłacają we własnym zakresie koszta przestrzeni i sprzętu. Zachęcamy do wsparcia nas na&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2FZrzutka.pl%2F%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR50zQUJMO80Z4ED2U990F7BWqiyI3U-Kvg-ajpKzOrCnl5yXvhJSixdnkrqLA_aem_L_bOZJVXx_JyQAkmsf7fYA&amp;h=AT3rWfaHmx-1Y45xbmK1abkN_N6XONKE-XGhe9-rKVAebeIUJOW28RrB4VID5857sI43qc2Omn_XhlA40EC6o-ErKP8diIVOA2xw6-rJpWMSp1hoBuEoxiHjm-XzIzalGPth8_Sydypq8DStIeI&amp;__tn__=q&amp;c[0]=AT3iqyhHYLW6LvfVCK1jzee0CcDDsG0QtM__WXTvuE0RM2O3q4u3xD8U2_n2OOmVsnjxuvd9WTRzAFmuE_RgjGJs9ygei5TdtyGq7Atxitfg-4abxHKZcS5qiummhN2qydltn9jgbzvXv5o18d6PIntrFurOc09oBSVbxg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Zrzutka.pl</a>&nbsp;lub wpłacając do skarbonki dostępnej na podczas jamu.<br class=\"html-br\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf9/2/16/1f4b0.png\" alt=\"💰\" width=\"16\" height=\"16\"></span>&nbsp;Link do zrzutki:&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://zrzutka.pl/z/synthjaw?fbclid=IwZXh0bgNhZW0CMTAAAR6V4evkLfDpCkmj_s_6vWEoxH7geA3v7qoFh54_JLcqvbFLu4CrZmTCk7413Q_aem_lyPL8T6Gbjoeo2bvC8a3Dg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://zrzutka.pl/z/synthjaw</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/2/16/1f558.png\" alt=\"🕘\" width=\"16\" height=\"16\"></span>&nbsp;Harmonogram:<br class=\"html-br\">19.30 - 21.00 - czas przyjścia muzyk&oacute;w, przygotowanie sprzętu.<br class=\"html-br\">Prosimy nie przeszkadzać, a dźwięk testować na słuchawkach,<br class=\"html-br\">21.00 - 2.00 - jam otwarty dla słuchaczy. W praktyce często dłużej, zależy od wsp&oacute;lnego flow,<br class=\"html-br\">23.00 - 23.30 - przerwa na regenerację, rekonfigurację sprzęt&oacute;w itp. To także moment kiedy możemy porozmawiać ze słuchaczami, wymienić wiedzą, podpytać o sprzęt itp.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc1/2/16/261d.png\" alt=\"☝️\" width=\"16\" height=\"16\"></span>&nbsp;CO MUZYK POWINIEN ZABRAĆ NA JAM?<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/2/16/1f3b9.png\" alt=\"🎹\" width=\"16\" height=\"16\"></span>&nbsp;instrumenty elektroniczne&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/2/16/1f609.png\" alt=\"😉\" width=\"16\" height=\"16\"></span><br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta0/2/16/1f3a7.png\" alt=\"🎧\" width=\"16\" height=\"16\"></span>&nbsp;słuchawki do osobistego odsłuchu. Jam jest nagrywany i testowe/losowe dźwięki mogą utrudniać granie i uniemożliwią zrobienie nagrania,<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdf/2/16/1f50c.png\" alt=\"🔌\" width=\"16\" height=\"16\"></span>&nbsp;jeśli potrzebujesz więcej niż 2 gniazdek prądu - weź dla siebie rozgałęziacz,<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf2/2/16/1f39a.png\" alt=\"🎚️\" width=\"16\" height=\"16\"></span>&nbsp;kable audio do podłączenia się do miksera (duży jack mono/stereo),<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t36/2/16/23f1.png\" alt=\"⏱️\" width=\"16\" height=\"16\"></span>&nbsp;kabel do synchronizacji z naszym midi (zalecany 3 m),<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1d/2/16/1f3a4.png\" alt=\"🎤\" width=\"16\" height=\"16\"></span>&nbsp;dla wokalist&oacute;w mamy do dyspozycji jeden mikrofon i efekt, ale zachęcamy by przynieść sw&oacute;je,<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta0/2/16/1fa9a.png\" alt=\"🪚\" width=\"16\" height=\"16\"></span>&nbsp;inne np. folkowe/etniczne (drumle, flety, okaryny itp).</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf0/2/16/1f449.png\" alt=\"👉\" width=\"16\" height=\"16\"></span>&nbsp;CO ZAPEWNIAMY NA JAMIE?<br class=\"html-br\">- bezpłatny udział w wydarzeniu,<br class=\"html-br\">- przestrzeń (w tym stoły, krzesła),<br class=\"html-br\">- mikser, nagłośnienie, zapasowe kable audio/midi,<br class=\"html-br\">- przyjazną, otwartą atmosferę,<br class=\"html-br\">- r&oacute;żne efekty świetlne, lasery, dym,<br class=\"html-br\">- napoje do kupienia na miejscu.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/2/16/1f3b9.png\" alt=\"🎹\" width=\"16\" height=\"16\"></span>&nbsp;CO GRAMY NA JAMIE?<br class=\"html-br\">Przede wszystkim jest to jam muzyki elektronicznej. Najczęściej są to brzmienia z gatunk&oacute;w: ambient, elektronika (klasyczna), IDM, synthwave, techno (minimal, hard, goa, breakbeat, tribal) oraz inne, spontaniczne eksperymenty wokalne (np. folkowe, hiphopowe, szamańskie). Tutaj możecie obejrzeć przykładowe nagranie z jamu:&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fyoutu.be%2FEwWwVsnmVUE%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR7A_fNodazItYfq_tFxDlb_KTkj7d4V6JIL-jU0WlNljVYX8TboAKWtQfOAOQ_aem_shNdoxr54Fzeos0hSgEGeg&amp;h=AT0a3mu0F8ofs-Mnxt8JJse402E5DckLkM1xR6k5Z_pkiNfQaq5gqVYJYc83m7jAS5FzYWKbP_yZ03fnPwuH8gwJ6D_iS7uhtiP2RRxJnOtnQkzlXMEaWOvmDOGj-DooocVyfERJ3mz3xc9l40I&amp;__tn__=q&amp;c[0]=AT3iqyhHYLW6LvfVCK1jzee0CcDDsG0QtM__WXTvuE0RM2O3q4u3xD8U2_n2OOmVsnjxuvd9WTRzAFmuE_RgjGJs9ygei5TdtyGq7Atxitfg-4abxHKZcS5qiummhN2qydltn9jgbzvXv5o18d6PIntrFurOc09oBSVbxg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://youtu.be/EwWwVsnmVUE</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t73/2/16/1f39b.png\" alt=\"🎛️\" width=\"16\" height=\"16\"></span>&nbsp;Nie ogranicza nas żaden instrument, jednak elektronika ma swoje specyficzne brzmienie, transowe sekwencje i nie każdy spos&oacute;b grania do niej pasuje. Dobrze wpasowują się folkowe instrumenty (a nawet atmosferyczna gitara ambientowa), ale rockowe granie będzie wyciszane.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta0/2/16/1f92b.png\" alt=\"🤫\" width=\"16\" height=\"16\"></span>&nbsp;Ze względu na kameralny klimat i klimatyczną muzykę, prosimy aby głośne rozmowy przenieść na patio, poza Cafe Kryzys. Jeśli chcecie porozmawiać z nami, to będzie nam miło - łapcie nas podczas przerwy koło godziny 23.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t66/2/16/1f9d1_200d_1f3eb.png\" alt=\"🧑&zwj;🏫\" width=\"16\" height=\"16\"></span>&nbsp;Gł&oacute;wnymi celami Synth Jaw są:<br class=\"html-br\">- stworzenie przestrzeni do improwizowania muzyki elektronicznej,<br class=\"html-br\">- stworzenie i integracja społeczności związanej z muzyką elektroniczną,<br class=\"html-br\">- rozw&oacute;j (nasz i wasz).</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">Jeśli tworzycie własne projekty związane z muzyką elektroniczną, zapraszamy do kontaktu - wspieramy zewnętrzne inicjatywy, a także chętnie włączymy się do Waszych.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t50/2/16/1faa9.png\" alt=\"🪩\" width=\"16\" height=\"16\"></span>&nbsp;Na jamie używamy dynamicznych świateł, laser&oacute;w, dymu itp. Jeśli jakieś bodźce mogą negatywnie wpływać na Wasze zdrowie podczas jamu, prosimy o wcześniejszy kontakt poprzez stronę Synth Jaw. Podobnie jeśli jesteście niepełnosprawni, dajcie znać aby zapewnić Wam jak najlepszą przestrzeń, pom&oacute;c z wejściem itp.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tca/2/16/1f399.png\" alt=\"🎙️\" width=\"16\" height=\"16\"></span>&nbsp;Przypominamy że muzyka z naszych jam&oacute;w jest nagrywana na rejestrator audio, a opr&oacute;cz tego organizatorzy robią także zdjęcia i filmy do naszych relacji. Jeśli chcesz robić zdjęcia/filmy, najpierw uzgodnij to z kt&oacute;rymś z organizator&oacute;w.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1b/2/16/1f64b.png\" alt=\"🙋\" width=\"16\" height=\"16\"></span>&nbsp;Wszelkie pytania/prośby prosimy przesyłać przed jamem, przed godziną 19, gdyż po tej godzinie jesteśmy zajęci organizacją wydarzenia.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t26/2/16/1f4fa.png\" alt=\"📺\" width=\"16\" height=\"16\"></span>&nbsp;Zapraszamy do subskrybowania naszego kanału na YouTube, na kt&oacute;rym zamieszczamy wybrane nagrania z jam&oacute;w:&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://www.youtube.com/@synthjaw?fbclid=IwZXh0bgNhZW0CMTAAAR785_AsRrCvacHYQ8ajmhrndnrwjapV4oNVS2goHbWtOsDN3U4gcG72A6BG1w_aem_bRW4BrYH3MCKU268l3vPiA\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://www.youtube.com/@synthjaw</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf5/2/16/1f1ec_1f1e7.png\" alt=\"🇬🇧\" width=\"16\" height=\"16\"></span>&nbsp;We also speak English - please feel welcome if you don\'t speak polish.<br class=\"html-br\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/2/16/1f1fa_1f1e6.png\" alt=\"🇺🇦\" width=\"16\" height=\"16\"></span> Багато учасників також розмовляють українською мовою.</div>', '2025-05-13 21:00:00', '2025-05-12 14:28:21', '2025-05-12 14:30:28', 3),
(18, 6, 14, 'Synth Jaw #167 - Otwarty jam muzyki elektronicznej', '<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tbe/2/16/1f3b6.png\" alt=\"🎶\" width=\"16\" height=\"16\"></span>&nbsp;Synth Jaw to otwarty jam dla początkujących oraz zaawansowanych muzyk&oacute;w. Gramy, uczymy siebie i wspieramy innych w tworzeniu muzyki elektronicznej. Poza graniem, chętnie odpowiemy na Wasze pytania, pokażemy graty, opowiemy o nich.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">Link do wydarzenia na Facebooku:</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><a href=\"https://www.facebook.com/events/2122588934928192\" target=\"_blank\" rel=\"noopener\">https://www.facebook.com/events/2122588934928192</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t42/2/16/1f193.png\" alt=\"🆓\" width=\"16\" height=\"16\"></span>&nbsp;Nasze spotkania są non-profit i takimi pozostają. Mimo to organizatorzy opłacają we własnym zakresie koszta przestrzeni i sprzętu. Zachęcamy do wsparcia nas na&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2FZrzutka.pl%2F%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR50zQUJMO80Z4ED2U990F7BWqiyI3U-Kvg-ajpKzOrCnl5yXvhJSixdnkrqLA_aem_L_bOZJVXx_JyQAkmsf7fYA&amp;h=AT3rWfaHmx-1Y45xbmK1abkN_N6XONKE-XGhe9-rKVAebeIUJOW28RrB4VID5857sI43qc2Omn_XhlA40EC6o-ErKP8diIVOA2xw6-rJpWMSp1hoBuEoxiHjm-XzIzalGPth8_Sydypq8DStIeI&amp;__tn__=q&amp;c[0]=AT3iqyhHYLW6LvfVCK1jzee0CcDDsG0QtM__WXTvuE0RM2O3q4u3xD8U2_n2OOmVsnjxuvd9WTRzAFmuE_RgjGJs9ygei5TdtyGq7Atxitfg-4abxHKZcS5qiummhN2qydltn9jgbzvXv5o18d6PIntrFurOc09oBSVbxg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Zrzutka.pl</a>&nbsp;lub wpłacając do skarbonki dostępnej na podczas jamu.<br class=\"html-br\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf9/2/16/1f4b0.png\" alt=\"💰\" width=\"16\" height=\"16\"></span>&nbsp;Link do zrzutki:&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://zrzutka.pl/z/synthjaw?fbclid=IwZXh0bgNhZW0CMTAAAR6V4evkLfDpCkmj_s_6vWEoxH7geA3v7qoFh54_JLcqvbFLu4CrZmTCk7413Q_aem_lyPL8T6Gbjoeo2bvC8a3Dg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://zrzutka.pl/z/synthjaw</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/2/16/1f558.png\" alt=\"🕘\" width=\"16\" height=\"16\"></span>&nbsp;Harmonogram:<br class=\"html-br\">19.30 - 21.00 - czas przyjścia muzyk&oacute;w, przygotowanie sprzętu.<br class=\"html-br\">Prosimy nie przeszkadzać, a dźwięk testować na słuchawkach,<br class=\"html-br\">21.00 - 2.00 - jam otwarty dla słuchaczy. W praktyce często dłużej, zależy od wsp&oacute;lnego flow,<br class=\"html-br\">23.00 - 23.30 - przerwa na regenerację, rekonfigurację sprzęt&oacute;w itp. To także moment kiedy możemy porozmawiać ze słuchaczami, wymienić wiedzą, podpytać o sprzęt itp.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc1/2/16/261d.png\" alt=\"☝️\" width=\"16\" height=\"16\"></span>&nbsp;CO MUZYK POWINIEN ZABRAĆ NA JAM?<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/2/16/1f3b9.png\" alt=\"🎹\" width=\"16\" height=\"16\"></span>&nbsp;instrumenty elektroniczne&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/2/16/1f609.png\" alt=\"😉\" width=\"16\" height=\"16\"></span><br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta0/2/16/1f3a7.png\" alt=\"🎧\" width=\"16\" height=\"16\"></span>&nbsp;słuchawki do osobistego odsłuchu. Jam jest nagrywany i testowe/losowe dźwięki mogą utrudniać granie i uniemożliwią zrobienie nagrania,<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdf/2/16/1f50c.png\" alt=\"🔌\" width=\"16\" height=\"16\"></span>&nbsp;jeśli potrzebujesz więcej niż 2 gniazdek prądu - weź dla siebie rozgałęziacz,<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf2/2/16/1f39a.png\" alt=\"🎚️\" width=\"16\" height=\"16\"></span>&nbsp;kable audio do podłączenia się do miksera (duży jack mono/stereo),<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t36/2/16/23f1.png\" alt=\"⏱️\" width=\"16\" height=\"16\"></span>&nbsp;kabel do synchronizacji z naszym midi (zalecany 3 m),<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1d/2/16/1f3a4.png\" alt=\"🎤\" width=\"16\" height=\"16\"></span>&nbsp;dla wokalist&oacute;w mamy do dyspozycji jeden mikrofon i efekt, ale zachęcamy by przynieść sw&oacute;je,<br class=\"html-br\">-&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta0/2/16/1fa9a.png\" alt=\"🪚\" width=\"16\" height=\"16\"></span>&nbsp;inne np. folkowe/etniczne (drumle, flety, okaryny itp).</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf0/2/16/1f449.png\" alt=\"👉\" width=\"16\" height=\"16\"></span>&nbsp;CO ZAPEWNIAMY NA JAMIE?<br class=\"html-br\">- bezpłatny udział w wydarzeniu,<br class=\"html-br\">- przestrzeń (w tym stoły, krzesła),<br class=\"html-br\">- mikser, nagłośnienie, zapasowe kable audio/midi,<br class=\"html-br\">- przyjazną, otwartą atmosferę,<br class=\"html-br\">- r&oacute;żne efekty świetlne, lasery, dym,<br class=\"html-br\">- napoje do kupienia na miejscu.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/2/16/1f3b9.png\" alt=\"🎹\" width=\"16\" height=\"16\"></span>&nbsp;CO GRAMY NA JAMIE?<br class=\"html-br\">Przede wszystkim jest to jam muzyki elektronicznej. Najczęściej są to brzmienia z gatunk&oacute;w: ambient, elektronika (klasyczna), IDM, synthwave, techno (minimal, hard, goa, breakbeat, tribal) oraz inne, spontaniczne eksperymenty wokalne (np. folkowe, hiphopowe, szamańskie). Tutaj możecie obejrzeć przykładowe nagranie z jamu:&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fyoutu.be%2FEwWwVsnmVUE%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR7A_fNodazItYfq_tFxDlb_KTkj7d4V6JIL-jU0WlNljVYX8TboAKWtQfOAOQ_aem_shNdoxr54Fzeos0hSgEGeg&amp;h=AT0a3mu0F8ofs-Mnxt8JJse402E5DckLkM1xR6k5Z_pkiNfQaq5gqVYJYc83m7jAS5FzYWKbP_yZ03fnPwuH8gwJ6D_iS7uhtiP2RRxJnOtnQkzlXMEaWOvmDOGj-DooocVyfERJ3mz3xc9l40I&amp;__tn__=q&amp;c[0]=AT3iqyhHYLW6LvfVCK1jzee0CcDDsG0QtM__WXTvuE0RM2O3q4u3xD8U2_n2OOmVsnjxuvd9WTRzAFmuE_RgjGJs9ygei5TdtyGq7Atxitfg-4abxHKZcS5qiummhN2qydltn9jgbzvXv5o18d6PIntrFurOc09oBSVbxg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://youtu.be/EwWwVsnmVUE</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t73/2/16/1f39b.png\" alt=\"🎛️\" width=\"16\" height=\"16\"></span>&nbsp;Nie ogranicza nas żaden instrument, jednak elektronika ma swoje specyficzne brzmienie, transowe sekwencje i nie każdy spos&oacute;b grania do niej pasuje. Dobrze wpasowują się folkowe instrumenty (a nawet atmosferyczna gitara ambientowa), ale rockowe granie będzie wyciszane.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta0/2/16/1f92b.png\" alt=\"🤫\" width=\"16\" height=\"16\"></span>&nbsp;Ze względu na kameralny klimat i klimatyczną muzykę, prosimy aby głośne rozmowy przenieść na patio, poza Cafe Kryzys. Jeśli chcecie porozmawiać z nami, to będzie nam miło - łapcie nas podczas przerwy koło godziny 23.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t66/2/16/1f9d1_200d_1f3eb.png\" alt=\"🧑&zwj;🏫\" width=\"16\" height=\"16\"></span>&nbsp;Gł&oacute;wnymi celami Synth Jaw są:<br class=\"html-br\">- stworzenie przestrzeni do improwizowania muzyki elektronicznej,<br class=\"html-br\">- stworzenie i integracja społeczności związanej z muzyką elektroniczną,<br class=\"html-br\">- rozw&oacute;j (nasz i wasz).</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">Jeśli tworzycie własne projekty związane z muzyką elektroniczną, zapraszamy do kontaktu - wspieramy zewnętrzne inicjatywy, a także chętnie włączymy się do Waszych.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t50/2/16/1faa9.png\" alt=\"🪩\" width=\"16\" height=\"16\"></span>&nbsp;Na jamie używamy dynamicznych świateł, laser&oacute;w, dymu itp. Jeśli jakieś bodźce mogą negatywnie wpływać na Wasze zdrowie podczas jamu, prosimy o wcześniejszy kontakt poprzez stronę Synth Jaw. Podobnie jeśli jesteście niepełnosprawni, dajcie znać aby zapewnić Wam jak najlepszą przestrzeń, pom&oacute;c z wejściem itp.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tca/2/16/1f399.png\" alt=\"🎙️\" width=\"16\" height=\"16\"></span>&nbsp;Przypominamy że muzyka z naszych jam&oacute;w jest nagrywana na rejestrator audio, a opr&oacute;cz tego organizatorzy robią także zdjęcia i filmy do naszych relacji. Jeśli chcesz robić zdjęcia/filmy, najpierw uzgodnij to z kt&oacute;rymś z organizator&oacute;w.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1b/2/16/1f64b.png\" alt=\"🙋\" width=\"16\" height=\"16\"></span>&nbsp;Wszelkie pytania/prośby prosimy przesyłać przed jamem, przed godziną 19, gdyż po tej godzinie jesteśmy zajęci organizacją wydarzenia.</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t26/2/16/1f4fa.png\" alt=\"📺\" width=\"16\" height=\"16\"></span>&nbsp;Zapraszamy do subskrybowania naszego kanału na YouTube, na kt&oacute;rym zamieszczamy wybrane nagrania z jam&oacute;w:&nbsp;<a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xkrqix3 x1sur9pj x1fey0fg x1s688f\" tabindex=\"0\" role=\"link\" href=\"https://www.youtube.com/@synthjaw?fbclid=IwZXh0bgNhZW0CMTAAAR785_AsRrCvacHYQ8ajmhrndnrwjapV4oNVS2goHbWtOsDN3U4gcG72A6BG1w_aem_bRW4BrYH3MCKU268l3vPiA\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://www.youtube.com/@synthjaw</a></div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\">&nbsp;</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf5/2/16/1f1ec_1f1e7.png\" alt=\"🇬🇧\" width=\"16\" height=\"16\"></span>&nbsp;We also speak English - please feel welcome if you don\'t speak polish.<br class=\"html-br\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\"><img class=\"xz74otr x168nmei x13lgxp2 x5pf9jr xo71vjh\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/2/16/1f1fa_1f1e6.png\" alt=\"🇺🇦\" width=\"16\" height=\"16\"></span> Багато учасників також розмовляють українською мовою.</div>', '2025-05-20 21:00:00', '2025-05-12 14:32:33', '2025-05-12 14:32:33', 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_genres`
--

CREATE TABLE `event_genres` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_genres`
--

INSERT INTO `event_genres` (`event_id`, `genre_id`) VALUES
(7, 1),
(7, 3),
(7, 5),
(7, 11),
(9, 2),
(10, 1),
(10, 2),
(10, 3),
(10, 6),
(10, 11),
(10, 13),
(10, 15),
(11, 2),
(17, 5),
(17, 7),
(17, 14),
(17, 15),
(18, 5),
(18, 7),
(18, 14),
(18, 15);

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`) VALUES
(2, 'Koncert'),
(3, 'Jam Session');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(3, 'Blues'),
(4, 'Classical'),
(6, 'Country'),
(7, 'Electronic'),
(5, 'Folk'),
(8, 'Hip Hop'),
(2, 'Jazz'),
(10, 'Metal'),
(15, 'Other'),
(11, 'Pop'),
(12, 'Punk'),
(9, 'R&B'),
(13, 'Reggae'),
(1, 'Rock'),
(14, 'World');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `city`) VALUES
(3, 'Marek Bakalarczuk', 'marek@websfera.pl', '$2y$10$L4o7c14I1MhreXcutK7BD.cHKuI/n/rRRX9lrsaHQLa2CbqalrOtK', '2025-02-04 08:25:51', '2025-02-04 08:25:51', 'Warszawa'),
(4, 'Wiktoria Tosik ', 'wiktoria.tosik01@gmail.com', '$2y$10$rKnov0D5c14Dtv7wA8LGfuVyPzbgKiwKLL1xpmmxJ6J5l1cvwOi1C', '2025-05-11 23:27:15', '2025-05-11 23:27:15', 'Warszawa '),
(6, 'Synth Jaw', 'kontakt@synthjaw.pl', '$2y$10$X6OfmuKfirOzybjTraacxu5gMck1s1BtoXV9ysU4aEFWPrkc/U4JC', '2025-05-12 14:10:51', '2025-05-12 14:10:51', 'Warszawa');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street` varchar(255) NOT NULL,
  `building_number` varchar(10) NOT NULL,
  `local_number` varchar(10) DEFAULT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `created_at`, `updated_at`, `street`, `building_number`, `local_number`, `city`) VALUES
(7, 'GARAŻ artystyczny', '2025-05-06 13:14:59', '2025-05-06 13:14:59', 'Wałbrzyska', '11', '', 'Warszawa'),
(8, 'MORPH Club', '2025-05-06 13:18:50', '2025-05-06 13:18:50', 'Ząbkowska', '12', '', 'Warszawa'),
(9, 'Fochy i Fanaberie', '2025-05-06 13:24:52', '2025-05-06 13:24:52', 'Ząbkowska', '3', '', 'Warszawa'),
(10, 'PROM Kultury Saska Kępa', '2025-05-07 14:54:11', '2025-05-07 14:54:11', 'Brukselska', '23', '', 'Warszawa'),
(11, 'Blue Note Poznań', '2025-05-07 14:57:20', '2025-05-07 14:57:20', 'Kościuszki', '79', '', 'Poznań'),
(12, 'La Boheme', '2025-05-07 15:16:06', '2025-05-07 15:16:06', 'Mysłowicka', '1', '', 'Warszawa'),
(13, 'New Vegas Club Ursynów', '2025-05-09 08:58:42', '2025-05-09 08:58:42', 'Kulczyńskiego', '14', '', 'Warszawa'),
(14, 'Cafe Kryzys (w przestrzeni skłotu Syrena)', NULL, NULL, 'Wilcza', '30', '', 'Warszawa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `venue_id` (`venue_id`),
  ADD KEY `events_fk_event_type` (`event_type_id`);

--
-- Indexes for table `event_genres`
--
ALTER TABLE `event_genres`
  ADD PRIMARY KEY (`event_id`,`genre_id`),
  ADD KEY `idx_genre_id` (`genre_id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_fk_event_type` FOREIGN KEY (`event_type_id`) REFERENCES `event_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_genres`
--
ALTER TABLE `event_genres`
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_genre` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
