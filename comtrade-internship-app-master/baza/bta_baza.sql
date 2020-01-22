-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 01:34 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bta_baza`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback_grad`
--

CREATE TABLE `feedback_grad` (
  `id` int(11) NOT NULL,
  `grad_id` int(11) NOT NULL,
  `korisnici_id` int(11) NOT NULL,
  `rating` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback_grad`
--

INSERT INTO `feedback_grad` (`id`, `grad_id`, `korisnici_id`, `rating`, `naziv`, `opis`, `datum`) VALUES
(1, 14, 2, '4', 'Obavezno probati masline.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '2019-06-16 20:38:16'),
(2, 15, 2, '3', 'Lorem ipsum dolor sit amet.', 'Nulla ac ipsum vel magna lobortis varius vel nec libero. Curabitur sagittis non nunc vel sollicitudin. Sed eu pretium nisl. Ut sollicitudin enim quam, rhoncus gravida ligula maximus eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2019-06-18 08:02:36'),
(3, 16, 2, '5', 'Ut sollicitudin enim quam.', 'Nulla ac ipsum vel magna lobortis varius vel nec libero. Curabitur sagittis non nunc vel sollicitudin. Sed eu pretium nisl. Ut sollicitudin enim quam, rhoncus gravida ligula maximus eget.', '2019-06-18 08:03:55'),
(4, 17, 1, '5', 'Ut sollicitudin enim quam.', 'Nulla ac ipsum vel magna lobortis varius vel nec libero. Curabitur sagittis non nunc vel sollicitudin. Sed eu pretium nisl. Ut sollicitudin enim quam, rhoncus gravida ligula maximus eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2019-06-18 08:04:16'),
(5, 18, 3, '3', 'Ut sollicitudin enim quam.', 'Vivamus faucibus nisi sed mi vehicula aliquet. Maecenas imperdiet sapien id pharetra efficitur. Nullam nisl sem, elementum vitae metus eu, pretium condimentum urna. In efficitur molestie consequat. Praesent congue viverra augue, quis euismod nisi cursus nec.', '2019-06-18 08:15:01'),
(6, 19, 4, '2', 'Lorem ipsum text.', 'Vivamus faucibus nisi sed mi vehicula aliquet. Maecenas imperdiet sapien id pharetra efficitur. Nullam nisl sem, elementum vitae metus eu, pretium condimentum urna. In efficitur molestie consequat. Praesent congue viverra augue, quis euismod nisi cursus nec.', '2019-06-18 08:15:58'),
(7, 20, 5, '5', 'Ut sollicitudin enim quam.', 'Vivamus faucibus nisi sed mi vehicula aliquet. Maecenas imperdiet sapien id pharetra efficitur. Nullam nisl sem, elementum vitae metus eu, pretium condimentum urna. In efficitur molestie consequat. Praesent congue viverra augue, quis euismod nisi cursus nec.', '2019-06-18 08:16:15'),
(8, 21, 3, '5', 'The city of light.', 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque. Pellentesque et nisi a erat pulvinar consectetur. Nam in gravida odio, non posuere diam. Nullam non dictum ante.', '2019-06-18 08:16:48'),
(9, 22, 5, '3', 'Ut sollicitudin enim quam.', 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque. Pellentesque et nisi a erat pulvinar consectetur. Nam in gravida odio, non posuere diam. Nullam non dictum ante. ', '2019-06-18 08:17:23'),
(10, 23, 4, '4', 'Lorem ipsum text.', 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque. Pellentesque et nisi a erat pulvinar consectetur. Nam in gravida odio, non posuere diam. Nullam non dictum ante. ', '2019-06-18 08:17:39'),
(11, 16, 4, '3', 'Lorem Ipsum', 'Lorem ipsum dolor est, gaudeamus igitur', '2019-06-24 07:40:39'),
(13, 20, 4, '4', 'Nov feedback', 'Lorem ipsum dolor est. Lorem ipsum dolor est.', '2019-06-25 16:29:01'),
(14, 18, 2, '4', 'Novi feedback', 'Novi feedback. Novi feedback. Novi feedback. Novi feedback. ', '2019-06-25 16:53:05'),
(16, 21, 2, '5', 'Paris, Paris', 'Duis volutpat euismod placerat. Suspendisse quis dolor non elit feugiat blandit eu et sapien. Nunc erat diam, tristique vitae mattis in, facilisis at leo. Fusce ac tempor ex, sed iaculis est.', '2019-06-25 18:00:56'),
(17, 22, 4, '5', 'Novi feedback', 'Vivamus tristique aliquam ullamcorper. Phasellus facilisis congue odio. Pellentesque porta, risus at elementum luctus, tellus elit gravida lorem, in gravida velit justo in urna. Mauris mattis ut dolor nec ullamcorper. Phasellus efficitur semper massa, sit amet feugiat sapien vulputate vitae.', '2019-06-25 19:04:55'),
(18, 23, 1, '5', 'Samo barsa', 'Phasellus facilisis congue odio. Pellentesque porta, risus at elementum luctus, tellus elit gravida lorem, in gravida velit justo in urna. Mauris mattis ut dolor nec ullamcorper. Phasellus efficitur semper massa, sit amet feugiat sapien vulputate vitae. Nunc efficitur vitae erat id congue.', '2019-06-25 19:39:46'),
(21, 14, 3, '5', 'Lorem ipsum.', 'Lorem ipsum. Lorem ipsum. Lorem ipsum.', '2019-06-26 11:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_hotel`
--

CREATE TABLE `feedback_hotel` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `korisnici_id` int(11) NOT NULL,
  `rating` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback_hotel`
--

INSERT INTO `feedback_hotel` (`id`, `hotel_id`, `korisnici_id`, `rating`, `naziv`, `opis`, `datum`) VALUES
(1, 1, 4, '4', 'Lorem ipsum.', 'Mauris posuere lorem ac varius placerat. Nullam turpis neque, molestie a mattis eu, molestie eu magna.', '2019-06-18 18:53:32'),
(2, 1, 5, '3', 'Vestibulum nec tellus.', 'Nam sed nisl nec ex feugiat semper. Praesent neque est, semper et nisl sit amet, euismod tristique ipsum. Nulla finibus arcu id purus commodo egestas. Duis eu odio arcu.', '2019-06-18 18:55:23'),
(4, 2, 4, '3', 'Lorem.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pretium metus et dolor eleifend accumsan. Vivamus porta sagittis posuere. In egestas at dolor eu pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-06-20 10:31:28'),
(6, 4, 1, '2', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pretium metus et dolor eleifend accumsan. Vivamus porta sagittis posuere. In egestas at dolor eu pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-06-20 10:35:37'),
(7, 6, 3, '1', 'Drugi probni feedback.', 'Etiam bibendum commodo ligula sed tincidunt. Fusce commodo dignissim velit, et mollis augue facilisis non. Fusce lorem ipsum, faucibus vitae metus id, consequat elementum urna. Vestibulum tincidunt, neque nec eleifend lacinia, sem diam pretium tellus, eget ornare justo erat blandit arcu.', '2019-06-20 10:40:04'),
(8, 6, 4, '4', 'Lorem ipsum.', 'Etiam bibendum commodo ligula sed tincidunt. Fusce commodo dignissim velit, et mollis augue facilisis non. Fusce lorem ipsum, faucibus vitae metus id, consequat elementum urna. Vestibulum tincidunt, neque nec eleifend lacinia, sem diam pretium tellus, eget ornare justo erat blandit arcu.', '2019-06-20 10:40:31'),
(9, 10, 1, '4', 'Lorem ipsum.', 'Etiam bibendum commodo ligula sed tincidunt. Fusce commodo dignissim velit, et mollis augue facilisis non. Fusce lorem ipsum, faucibus vitae metus id, consequat elementum urna. Vestibulum tincidunt, neque nec eleifend lacinia, sem diam pretium tellus, eget ornare justo erat blandit arcu.', '2019-06-20 10:44:21'),
(10, 10, 1, '1', 'Lorem.', 'Etiam bibendum commodo ligula sed tincidunt. Fusce commodo dignissim velit, et mollis augue facilisis non. Fusce lorem ipsum, faucibus vitae metus id, consequat elementum urna.', '2019-06-20 10:44:37'),
(11, 42, 5, '3', 'Milicino misljenje', 'Lorem ipsum dolor est. Lorem ipsum dolor est. Lorem ipsum dolor est. ', '2019-06-25 14:15:54'),
(12, 21, 5, '2', 'Lorem ipsum', 'Lorem ipsum. Lorem ipsum. Lorem ipsum.', '2019-06-25 16:10:59'),
(13, 62, 4, '5', 'Mnogo dobro.', 'Lorem ipsum. Lorem ipsum. Lorem ipsum.', '2019-06-25 16:30:31'),
(14, 31, 2, '4', 'Lorem ipsum', 'Lorem ipsum dolor est.', '2019-06-25 17:25:27'),
(15, 32, 2, '5', 'Fairmont is pretty good.', 'As the title says, Fairmont is pretty good.', '2019-06-25 17:40:10'),
(16, 43, 3, '4', 'Dobar dobar', 'Lorem ipsum dolor est.', '2019-06-25 17:42:03'),
(17, 41, 3, '4', 'Lorem ipsum', 'Lorem ipsum dolor est. Lorem ipsum dolor est. ', '2019-06-25 17:43:24'),
(18, 51, 3, '5', 'Lorem.', 'Lorem ipsum dolor est. Gaudeamus igitur, juvenes dum summus.', '2019-06-25 17:44:46'),
(19, 61, 2, '4', 'Zemlja snova', 'Aenean pretium, orci at pretium condimentum, eros lorem pharetra ligula, ac gravida quam purus ac lectus. Suspendisse molestie augue eleifend auctor venenatis. Nam et ultricies purus, eu vestibulum purus. Phasellus semper enim neque, ac scelerisque diam rhoncus vitae.', '2019-06-25 17:56:33'),
(20, 71, 2, '5', 'Lorem ipsum', 'Duis volutpat euismod placerat. Suspendisse quis dolor non elit feugiat blandit eu et sapien. Nunc erat diam, tristique vitae mattis in, facilisis at leo. Fusce ac tempor ex, sed iaculis est.', '2019-06-25 18:00:11'),
(21, 63, 3, '2', 'Lorem ipsum', 'Phasellus vel eros rhoncus, placerat tellus in, hendrerit dolor. Cras a ultricies erat, sit amet tincidunt ligula. Praesent vitae iaculis nunc. Nam vitae auctor leo. Curabitur ac commodo mauris.', '2019-06-25 18:55:06'),
(22, 81, 5, '5', 'Feedback', 'Phasellus vel eros rhoncus, placerat tellus in, hendrerit dolor. Cras a ultricies erat, sit amet tincidunt ligula. Praesent vitae iaculis nunc. Nam vitae auctor leo. Curabitur ac commodo mauris.', '2019-06-25 19:00:52'),
(23, 81, 4, '1', 'Nista ne valja', 'Fusce volutpat metus vel urna vulputate, vel gravida libero vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam finibus, magna vel bibendum porttitor, augue nulla volutpat urna, in bibendum urna nunc auctor lectus. Praesent arcu eros.', '2019-06-25 19:30:55'),
(24, 81, 4, '5', 'Lorem ipsum', 'Lorem ipsum. Lorem ipsum. Lorem ipsum.', '2019-06-25 19:35:47'),
(25, 91, 1, '5', 'Dobar dobar', 'Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque. Pellentesque et nisi a erat pulvinar consectetur. Pellentesque et nisi a erat pulvinar consectetur.', '2019-06-25 19:40:16'),
(26, 33, 2, '4', 'Lorem ipsum.', 'Lorem ipsum. Lorem ipsum. Lorem ipsum. Lorem ipsum. Lorem ipsum.', '2019-06-26 07:21:48'),
(33, 3, 1, '4', 'Lorem ipsum.', 'Lorem ipsum. Lorem ipsum. Lorem ipsum.', '2019-06-26 10:26:14'),
(34, 1, 3, '5', 'Lorem ipsum.', 'Cemu ovo sluzi, a pritom i ne radi? Lorem ipsum dolor est!', '2019-06-26 10:44:45'),
(35, 7, 1, '4', 'Probni feedback', 'Lorem ipsum dolor est!', '2019-06-26 11:04:59'),
(36, 1, 3, '5', 'Lorem ipsum.', 'Lorem ipsum.Lorem ipsum.Lorem ipsum.', '2019-06-26 11:26:54'),
(37, 5, 3, '5', 'Lorem ipsum.', 'Lorem ipsum.Lorem ipsum.Lorem ipsum.Lorem ipsum.', '2019-06-26 11:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `country_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `woeid` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`id`, `ime`, `opis`, `slika`, `latitude`, `longitude`, `country_code`, `woeid`) VALUES
(14, 'Madrid', 'Madrid is all bustling plazas, lively tapa bars, and a rich variety of museums showcasing Spain’s most celebrated artists. The world-famous Prado Museum features the work of Goya and Velázquez. The Prado forms the \'golden triangle\' with the Reina Sofía Museum—home to Picasso’s \'Guernica\'—and the Thyssen-Bornemisza Museum, an enormous private collection highlighting a wide array of artistic styles. Madrid’s medieval architecture holds centuries of history, like the intricate portico arches of Plaza Mayor, as well as the baroque Royal Palace, where state ceremonies are held to this day. And visiting top attractions like these is easy thanks to the city’s efficient and high-speed Metro system. Spain\'s sprawling capital is a city that lives and breathes soccer. If you’re a fan, catch a game at the Santiago Bernabéu Stadium—home to Real Madrid—and roar with the rest of the crowd as the \'Galácticos\' take the field. Madrid’s weather is pleasant year-round, with perfectly comfortable temperatures on either side of summer. Even a winter vacation practically guarantees clear blue skies – making for a beautiful sight when flying into the airport during the day.', 'https://q-ak.bstatic.com/xdata/images/xphoto/1680x560/49345503.webp?k=a9c9ce07f7c7ad673a9b862407cbda408c402441d0f048cc9921e308868832e5&amp;o=', 40.4168, 3.7038, 'es', '766273'),
(15, 'Rome', 'Ancient history comes alive down every street of Italy\'s capital. Many of the ruins depict stories of the powerful empire that once spanned three continents, making Rome an open-air museum thanks to iconic monuments like the Roman Forum, Palatine Hill, and the Colosseum. The former gladiator arena is the city\'s centerpiece, and brings to mind all the brutal games once held on its stage for thousands of roaring spectators. Visit the impressively preserved Pantheon to experience even more of the Eternal City\'s golden age. With over 900 churches and many beautiful basilicas among them, Rome is also home to the city-state of the Vatican, the seat of the Catholic Church. St. Peter\'s Basilica is a tourist hotspot, but treasures like Michelangelo\'s Sistine Chapel and countless other masterpieces are held inside the Vatican\'s great museums. Like any other Italian city, the local food varies from region to region. In Rome, the trademark dishes are \'cacio e pepe\'—a deliciously simple pecorino cheese and pepper pasta—and \'spaghetti carbonara\'. Don\'t miss other landmarks like the iconic Trevi Fountain, the Borghese Gallery, or Piazza Navona and Piazza di Spagna. The weather is best between April and June, perfect for a walk or bike ride through Villa Borghese park.', 'https://q-ak.bstatic.com/xdata/images/xphoto/1680x560/49345771.webp?k=eef1ebc043e9c90e1338efe31127f3a0a75ce7399e29a372f648bd53311fd240&amp;o=', 41.9028, 12.4964, 'it', '721943'),
(16, 'Amsterdam', 'Amsterdam, the capital of the Netherlands, has been a rich cultural hub for centuries thanks to travelers and traders. Located in North Holland, the city is famous for its iconic canal system, distinctive row houses, and eclectic range of museums, including the Anne Frank House, the Van Gogh Museum, and the Rijksmuseum. Great public transit options include buses and streetcars, but bicycles are the quintessential mode of transportation in Amsterdam. The 250 miles of bike paths and 8,000 bike parking spaces make exploring the city on two wheels easy and fun. The city\'s medieval center, or \'Centrum\', showcases many points of interest synonymous with Amsterdam tourism, including canals, traditional architecture, and the famous nightlife of the Red Light District. If you\'re visiting during tulip season, stop by Keukenhof\'s botanical garden in mid-April for its vibrant collection of blooming flowers. A variety of accommodations can be found across the city, from high-end hotels to cozy homestays and hostels. Schiphol—Amsterdam’s main airport—is just 9 miles southwest of the city and is connected by regular train services from the city center to the main terminal.', 'https://r-ak.bstatic.com/xdata/images/xphoto/1680x560/49345566.webp?k=a3bfe768d307618e99f9bd81bee62d09afb9f5499197e060ef315ed0ea024480&amp;o=', 52.3792, 4.89943, 'nl', '727232'),
(17, 'Barcelona', 'Located on the coast of Catalonia, Barcelona is a melting pot of cultures, filled with unforgettable architecture, medieval streets, and impressive museums. Its most famous figure, Antoni Gaudí, is the genius behind some of the city’s most incredible monuments. From the twisting, stone façade of Casa Milà to the world-famous Sagrada Familia, the works of this legendary architect can be found all over the city. In the Gothic Quarter, you’ll find all sorts of historic cafes and tapas bars leading the way to a cathedral protected by gargoyles. Be sure to try Catalonian classics like beef croquettes and salt-cod fritters under this dramatic backdrop, then wash it all down with a refreshing glass of Rioja. The perfect way to end the day is with a walk all the way down the lively, tree-lined boardwalk of La Rambla until you get to the calm port at dusk. If you’re looking to soak up the year-round sunshine, find a spot on the sand in Barceloneta or a comfy patch of grass in Parc de la Ciutadella. If you have time, take a stadium tour of Camp Nou, climb Carmel Hill for amazing panoramic views, or explore the iconic mosaics of Park Güell – yet another of Gaudí’s amazing creations.', 'https://q-ak.bstatic.com/xdata/images/xphoto/1680x560/49345466.webp?k=6ae21c5b2bdf1f7707e22228c7615f34c8ab07596a458883e58d79245355b05c&amp;o=', 41.3902, 2.15401, 'es', '753692'),
(18, 'Vienna', 'With all of Vienna\'s imperial palaces, countless architectural achievements, and a world-renowned cafe culture, there\'s almost too much to do in Austria\'s amazing capital. The historic city center is like an open-air museum, so it\'s no surprise it was designated as a UNESCO World Heritage Site. Ringstrasse Boulevard is lined with beautiful buildings like the Rathaus (town halll), the Spanish Riding School, and the Hofburg Palace. However, the best place to check out the city\'s main sights is in the MuseumsQuartier – a collection of great museums, as well as cozy cafes and bars all housed in former stables. Highlights include the MUMOK, Leopold Museum, Kunsthalle, Architekturzentrum, and the interactive children\'s museum Zoom. Enjoy the unique atmosphere of Vienna\'s coffee shops at Café Schwarzenberg—the oldest café on the Ringstrasse—which serves traditional liver dumpling soup and apple strudel. There\'s also Café Central, where icons like Leo Trotsky and Sigmund Freud used to gather. Then head over to the Riesenrad for some beautiful views over the city. This classic Ferris wheel is 215 feet tall and takes about 20 minutes to make a full rotation. Vienna International Airport is right outside the city limits and can be reached easily by train, bus or taxi.', 'https://q-ak.bstatic.com/xdata/images/xphoto/1680x560/49345467.webp?k=79b6fd6d6654e418f5fac99284af972cdb39cc1cbd2b1300e66f6d028d064a6c&amp;o=', 48.21, 16.3634, 'at', '551801'),
(19, 'Berlin', 'Home to the iconic Brandenburg Gate and the famous Fernsehturm at Alexanderplatz, Berlin is a renowned global city of culture, commerce and politics. Its eclectic architecture is visual and exciting proof of its fascinating history. In \'Mitte\', the city’s historical centre, you can find the famous Museum Island with the exquisite Pergamon Museum, as well as popular cafés, restaurants and clubs. The nearby Potsdamer Platz, once divided in two by the Berlin Wall, features great examples of ultramodern architecture and stunning night illumination. Berlin is the best place to try the famous Currywurst or jelly doughnuts, the Pfannkuchen. Explore the city’s bustling nightlife, famous festivals and parades, or simply walk through charming neighbourhoods like Prenzlauer Berg. Berlin is always full of things to do and see! Combining a vibrant culture and art scene, sites of historic interest like the Reichstag, and great shopping opportunities, the German capital truly is a symbol of a modern and unified Europe. Travelling to the city centre from Tegel International and Schönefeld Airports is a piece of cake using Berlin’s reliable public transit system. Whether you are looking for a cheap hostel, alternative apartment or a chic hotel, Booking.com has a perfect room for your Berlin holiday.', 'https://r-ak.bstatic.com/xdata/images/explorer_city/1680x560/3129.webp?k=651f912fdd5b3376c83a01d76f59b40bc1e69f12b6592193292cdb56e2f90571&o=', 52.52, 13.405, 'de', '638242'),
(20, 'London', 'London\'s inherent uniqueness and mix of cultures have made it one of the most visited cities in the world. Its diverse bundle of boroughs are often like mini cities in their own right, with each one offering something different to the last. London\'s iconic skyline is an eclectic combination of instantly recognisable landmarks, from the historic Tower of London to the ultra-modern skyscrapers of The Shard and 20 Fenchurch (better known as \'The Walkie-Talkie\'). A walk through the ‘Square Mile’ immerses you in the original Roman settlement, with parts of the ancient defensive wall still visible. You\'ll also find some of the London\'s cosiest (and oldest) pubs around there, such as Ye Olde Cheshire Cheese, a former haunt of Charles Dickens and Mark Twain. For lovers of the arts, look no further than the world-class theatres of London\'s West End and the live music venues of Camden, Soho and Shoreditch. You\'ll also find endless galleries and museums dotted around, such as the free-to-visit British Museum, Natural History Museum and the National Gallery. Amongst all the impressive architecture and endless points of interest, it\'s easy to forget how green London is. 47% of the city is made up of public green space, including 3,000 parks. The most popular spots include Hyde Park, Kensington Gardens and Green Park, but it\'s worth venturing out to places like Richmond where you can walk amongst roaming wild deer. London is served by several major airports, including Heathrow, Gatwick, City, Stansted, Luton and Southend. Travel is made easy by the extensive public transport links, as well as private coach services.', 'https://r-ak.bstatic.com/xdata/images/xphoto/1680x560/49345560.webp?k=b9f40f2afb962f44ea6d434de74f6e90668350e428bb3dcd917ba980b9489ea3&o=', 51.5099, -0.118092, 'gb', '44418'),
(21, 'Paris', 'As the birthplace of the Age of Enlightenment and a constant trendsetter in the world of fashion, Paris has cemented itself as one of the world\'s must-see cities. In a country known for exceptional food, style and culture, the capital delivers on all three counts. The city is split into 20 districts (known as \'arrondissements\'), which all display their own character. Le Marais (in the fourth arrondissement) is famed for its medieval, meandering lanes, full of traditional patisseries and chic boutiques. The area is also home to the iconic cathedral of Notre-Dame, considered one of the best examples of French Gothic architecture. The seventh arrondissement is home to some of Paris\' most famous landmarks, including the Eiffel Tower, Les Invalides and Musée d\'Orsay. Neighbouring districts also have plenty to offer, such as the famous Champs-Elysées, Arc de Triomphe and Opéra Garnier. In the centre of Paris you\'ll find the world-famous Musée du Louvre, home to tens of thousands of works of art, including da Vinci\'s \'Mona Lisa\'. Further outside the city, but still worth a visit, are the mysterious Catacombs and the Château de Versailles. Each French city takes pride in its cuisine and Paris is no exception, offering some of the world\'s best food. You\'ll find everything from three-Michelin-starred establishments like Restaurant Guy Savoy, to laid-back bistros like La Mascotte. Offering fun for visitors of all ages, Disneyland Paris is located to the east of the city, in the suburb of Marne-la-Vallée and can be reached easily by train.', 'https://q-ak.bstatic.com/xdata/images/xphoto/1680x560/49345752.webp?k=50900e5723e39b2ff17c86794601fc70e29919eedd114663ba00526d8c597674&o=', 48.8647, 2.34901, 'fr', '615702'),
(22, 'Istanbul', 'Straddling the border between Europe and Western Asia, Istanbul acts as an ancient crossroads of cultures, religions and civilisations. Greek, Persian, Byzantine and Ottoman influences can be seen across the city. The mesmerising Hagia Sophia, for instance, stood for over 1,000 years as an ornate church before being converted into an Imperial Mosque, which it remained as for over half a millennia. And there’s Topkapi Palace, a lavish complex of halls, courtyards and terraces with commanding views over the Bosphorus Strait. Today, both structures are religious museums attracting millions of visitors every year. The Blue Mosque is another glinting example of Byzantine-Ottoman fused architecture, with its domes, towering minarets and blue İznik tiles that adorn the interior. For a full view of the mosque’s design, enter through the crumbling remains of a Roman-era hippodrome in Sultanahmet Square. Yet Istanbul’s oldest monuments could easily escape you. Deep beneath the ground are several hundred ancient cisterns, where water was once delivered via 20 kilometres of aqueducts from a local reservoir. The largest of these is the Basilica Cistern, which you can explore along raised wooden platforms. Back on ground level, the Grand Bazaar will entice you with its maze-like network of craft stores and cosy teahouses. Go explore a little, before treating yourself to a Dürüm wrap on a street corner, or a mouthwatering meze in a bistro-style restaurant in Sultanahmet.', 'https://q-ak.bstatic.com/xdata/images/xphoto/1680x560/49345484.webp?k=69a8e45fc40ba3576548c4e23c400233a0e03d8808758f52d98318e6fdc397c4&o=', 41.0151, 28.9795, 'tr', '2344116'),
(23, 'Moscow', 'Russia\'s prestigious capital holds its own on the global stage, with stunning architecture, museums and a variety of cultural offerings making it an enticing place to visit any time of year. Set foot on the black cobblestones of Moscow\'s iconic Red Square and you\'ll be treated to a breathtaking panorama dominated by the Kremlin\'s extensive brick walls and St. Basil\'s Cathedral. This is the historic heart of the city, and where many festivals and celebrations take place. You\'ll also find the Lenin Mausoleum there, as well as The Monument to Minin and Pozharsky. Moscow is also home to a wide array of museums and architectural highlights, including the Pushkin Museum of Fine Arts, the Flacon Design Factory and an armoury dating back to 1511. The city is no stranger to the arts either, with the Natalya Sats Musical Theatre offering experimental productions for all ages. You can also catch some world-class ballet and opera at the Bolshoi, a six-tier auditorium which has hosted performances since 1825. The impressive Zaryadye Park is a great place to switch off for an hour or two, and features four different climate zones, an Arctic cave and an unmeltable glacier.', 'https://r-ak.bstatic.com/xdata/images/xphoto/1680x560/49345773.webp?k=3143e60b42e6c8a27d3ec9cb96254ec5fee1db6c9d3747278183f3958e7cbaef&o=', 55.7512, 37.6184, 'ru', '2122265');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `grad_id` int(11) NOT NULL,
  `ime` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `url_booking` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url_slike` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `grad_id`, `ime`, `address`, `opis`, `latitude`, `longitude`, `url_booking`, `url_slike`) VALUES
(1, 14, 'Hotel Nuevo Madrid, Madrid, Spain', 'Bausá, 27, Ciudad Lineal, 28033 Madrid, Spain', 'This elegant hotel is located north of the city, a 10-minute drive from IFEMA Convention Center and with direct access from the M30 motorway.', 40.469936, -3.669375, 'https://www.booking.com/hotel/es/nuevomadrid.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiA', 'https://q-cf.bstatic.com/images/hotel/max1024x768/933/93377350.jpg'),
(2, 14, 'Bless Hotel Madrid, Madrid, Spain', 'Velazquez, 62, Salamanca, 28001 Madrid, Spain', 'Bless Hotel Madrid is located in a s.XIX building in the Salamanca district, a 12-minute walk from Puerta de Alcalá, in Madrid.', 40.428387, -3.683550, 'https://www.booking.com/hotel/es/bless-hotel-madrid.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1g', 'https://q-cf.bstatic.com/images/hotel/max1024x768/199/199424867.jpg'),
(3, 14, 'VP Plaza España Design, Madrid, Spain', 'Plaza de España n.5, Madrid City Center, 28008 Madrid, Spain', 'Located in Gran Via, in Madrid city center, VP Plaza España Design offers 5-star accommodations with parking, a wellness center, and a seasonal pool.', 40.423088, -3.711334, 'https://www.booking.com/hotel/es/vp-plaza-espana-design.html?aid=397642&label=gog235jc-1FCAEoggI46Ad', 'https://r-ak.bstatic.com/images/hotel/max1024x768/197/197852006.jpg'),
(4, 14, 'NH Collection Madrid Paseo del Prado, Madrid, Spain', 'Plaza Cánovas del Castillo, 4, Madrid City Center, 28014 Madrid, Spain', 'Located on Paseo del Prado Boulevard and offering wonderful views of the Neptune Fountains, NH Collection Madrid Paseo del Prado offers free WiFi, an on-site restaurant, and gym with city views.', 40.414978, -3.694555, 'https://www.booking.com/hotel/es/paseo-del-prado.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://q-cf.bstatic.com/images/hotel/max1024x768/429/42921977.jpg'),
(5, 14, 'Catalonia Gran Vía', 'Gran Vía, 9, Madrid City Center, 28013 Madrid, Spain', 'Catalonia Gran Vía offers a terrace with a pool and views over Gran Via. There is free Wi-Fi, a spa and small gym.', 40.419708, -3.699054, 'https://www.booking.com/hotel/es/catalonia-gran-via.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1g', 'https://q-cf.bstatic.com/images/hotel/max1024x768/338/33852635.jpg'),
(6, 14, 'Preciados, Madrid, Spain', 'Preciados, 37, Madrid City Center, 28013 Madrid, Spain', 'The Hotel Preciados is located in the heart of Madrid, 5 minutes’ walk from the Puerta del Sol.', 40.419926, -3.707483, 'https://www.booking.com/hotel/es/hoprevippreciados.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1gD', 'https://r-cf.bstatic.com/images/hotel/max1024x768/194/194246147.jpg'),
(7, 14, 'Hotel Madrid Gran Vía 25, managed by Meliá, Madrid, Spain', 'Gran Vía, 25, Madrid City Center, 28013 Madrid, Spain', 'Hotel Madrid Gran Vía 25, managed by Meliá is set in a classic building featuring its original façade.', 40.419998, -3.702185, 'https://www.booking.com/hotel/es/trypgranviamadrid.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1gD', 'https://q-cf.bstatic.com/images/hotel/max1024x768/521/52170064.jpg'),
(8, 14, 'Room Mate Oscar, Madrid, Spain', 'Plaza de Pedro Zerolo, 12, Madrid City Center, 28004 Madrid, Spain', 'Room Mate Oscar is a stylish hotel located in central Madrid, between Gran Via and the Chueca district.', 40.420860, -3.698901, 'https://www.booking.com/hotel/es/room-mate-oscar.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://q-cf.bstatic.com/images/hotel/max1024x768/762/76289178.jpg'),
(9, 14, 'Francisco I, Madrid, Spain', 'Arenal, 15, Madrid City Center, 28013 Madrid, Spain', 'Francisco I is located within 820 feet of Madrid’s Plaza Mayor and Puerta del Sol.', 40.417690, -3.707677, 'https://www.booking.com/hotel/es/francisco-i.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1gDaMEBiA', 'https://q-cf.bstatic.com/images/hotel/max1024x768/529/52922370.jpg'),
(10, 14, 'Madrisol, Madrid, Spain', 'Nuñez de Arce, 1, Madrid City Center, 28012 Madrid, Spain', 'Madrisol Hotel is in the historic center of Madrid, 160 yards from the Puerta del Sol. All rooms at the hotel are exterior and have free Wi-Fi.', 40.416111, -3.701140, 'https://www.booking.com/hotel/es/madrisol.html?aid=397642&label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBm', 'https://q-ak.bstatic.com/images/hotel/max1024x768/224/22407677.jpg'),
(11, 15, 'Hotel Raphael – Relais & Châteaux, Rome, Italy', 'Largo Febo 2, Navona, 00186 Rome, Italy', 'One street from Piazza Navona, Hotel Raphael offers luxurious rooms with marble bathroom and parquet floors.', 41.900185, 12.472029, 'https://www.booking.com/hotel/it/raphael.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBmA', 'https://r-ak.bstatic.com/images/hotel/max1024x768/365/36559987.jpg'),
(12, 15, 'Hotel Eden - Dorchester Collection, Rome, Italy', 'Via Ludovisi 49, Via Veneto, 00187 Rome, Italy', 'Boasting a rooftop terrace and set in one of Rome\'s most exclusive areas, near Via Veneto street, Hotel Eden - Dorchester Collection offers luxury rooms, A Michelin-starred restaurant, and free WiFi throughout. The Spanish Steps are 550 m away.', 41.906826, 12.486416, 'https://www.booking.com/hotel/it/eden-roma.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEB', 'https://r-cf.bstatic.com/images/hotel/max1024x768/942/94297545.jpg'),
(13, 15, 'Grand Hotel De La Minerve, Rome, Italy', 'Piazza Della Minerva 69, Pantheon, 00186 Rome, Italy', 'Set in a 17th-century building 2-minutes\' walk from the Pantheon, Grand Hotel De La Minerve features a rooftop terrace with city views, air-conditioned rooms, and free WiFi throughout. Piazza Navona is 450 m away.', 41.897938, 12.477643, 'https://www.booking.com/hotel/it/grand-de-la-minerve.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1', 'https://q-ak.bstatic.com/images/hotel/max1024x768/294/29469355.jpg'),
(14, 15, 'The First Roma Dolce, Rome, Italy', 'Via del Corso 63, Spagna, 00187 Rome, Italy', 'Featuring a bar, The First Roma Dolce is located in Rome in the Lazio region, a 3-minute walk from Via Margutta and half a mile from Piazza del Popolo.', 41.907467, 12.477924, 'https://www.booking.com/hotel/it/the-first-roma-dolce.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM', 'https://q-cf.bstatic.com/images/hotel/max1024x768/201/201976190.jpg'),
(15, 15, 'Hotel Cristoforo Colombo, Rome, Italy', 'Via Cristoforo Colombo 710, Eur & Garbatella, 00144 Rome, Italy', 'Cristoforo Colombo is set in Rome\'s EUR district, next to Euroma2 shopping center and close to Rome\'s GRA ring road.', 41.818043, 12.458850, 'https://www.booking.com/hotel/it/cristoforo-colombo.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1g', 'https://q-ak.bstatic.com/images/hotel/max1024x768/102/102629921.jpg'),
(16, 15, 'Eitch Borromini Palazzo Pamphilj, Rome, Italy', 'Via di Santa Maria dell\'Anima, 30, Navona, 00186 Rome, Italy', 'Boasting a panoramic terrace with views of Piazza Navona, St.', 41.899269, 12.472366, 'https://www.booking.com/hotel/it/eitch-borromini.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://r-ak.bstatic.com/images/hotel/max1024x768/802/80274488.jpg'),
(17, 15, 'Hotel Mozart, Rome, Italy', 'Via Dei Greci 23, Spagna, 00187 Rome, Italy', 'The 4-star Hotel Mozart offers elegant accommodations in Rome’s center, just around the corner from the main shopping street, Via Del Corso.', 41.907509, 12.477875, 'https://www.booking.com/hotel/it/mozart.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBmAE', 'https://q-ak.bstatic.com/images/hotel/max1024x768/156/156208939.jpg'),
(18, 15, 'La Maison D\'Art Spagna, Rome, Italy', 'Via del Corso 112, Spagna, 00187 Rome, Italy', 'Featuring free WiFi throughout the property, La Maison D\'Art Spagna offers accommodations in Rome, 984 feet from Via Condotti.', 41.905899, 12.478578, 'https://www.booking.com/hotel/it/la-maison-d-39-art-spagna.html?aid=397642;label=gog235jc-1FCAEoggI4', 'https://q-ak.bstatic.com/images/hotel/max1024x768/677/67746882.jpg'),
(19, 15, 'Villa Eur Parco Dei Pini, Rome, Italy', 'Piazzale Marcellino Champagnat n.2, Eur & Garbatella, 00144 Rome, Italy', 'Offering free parking and free high-speed Wi-Fi, Villa Eur Parco Dei Pini is 500 m from Palalottomatica sports and concert venue in Rome\'s EUR business district. Laurentina Metro Station is a 10-minute walk away.', 41.823040, 12.474715, 'https://www.booking.com/hotel/it/villa-eur-parco-dei-pini.html?aid=397642;label=gog235jc-1FCAEoggI46', 'https://r-ak.bstatic.com/images/hotel/max1024x768/138/13827046.jpg'),
(20, 15, 'Hotel Charter, Rome, Italy', 'Via Filippo Turati 10, Central Station, 00185 Rome, Italy', 'Hotel Charter is located in the center of Rome just 164 feet from Termini Station.', 41.899303, 12.501209, 'https://www.booking.com/hotel/it/charter.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBmA', 'https://q-cf.bstatic.com/images/hotel/max1024x768/847/84759180.jpg'),
(21, 16, 'NH Collection Amsterdam Barbizon Palace, Amsterdam, Netherlands', 'Prins Hendrikkade 59-72, Amsterdam City Center, 1012 AD Amsterdam, Netherlands', 'NH Collection Amsterdam Barbizon Palace combines modern facilities such as a fitness area with historic features including a 15th-century chapel.', 52.376606, 4.900156, 'https://www.booking.com/hotel/nl/nhbarbizon.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAE', 'https://r-cf.bstatic.com/images/hotel/max1024x768/700/70099507.jpg'),
(22, 16, 'Grand Hotel Amrâth Amsterdam, Amsterdam, Netherlands', 'Prins Hendrikkade 108, Amsterdam City Center, 1011 AK Amsterdam, Netherlands', 'Located in a former shipping house, the luxurious 5-star Grand Hotel Amrâth Amsterdam offers spacious rooms in the center of Amsterdam.', 52.374619, 4.904219, 'https://www.booking.com/hotel/nl/grand-amrath-amsterdam.html?aid=397642;label=gog235jc-1FCAEoggI46Ad', 'https://r-cf.bstatic.com/images/hotel/max1024x768/548/54805528.jpg'),
(23, 16, 'Pestana Amsterdam Riverside – LVX Preferred Hotels & Resorts, Amsterdam, Netherlands', 'Amsteldijk 67, Oud Zuid, 1074 HZ Amsterdam, Netherlands', 'This new luxury 5-star hotel located in a monumental building, the former Town Hall and Archive of the Amstel Community.', 52.353558, 4.907228, 'https://www.booking.com/hotel/nl/pestana-amsterdam-riverside.html?aid=397642;label=gog235jc-1FCAEogg', 'https://r-cf.bstatic.com/images/hotel/max1024x768/122/122516278.jpg'),
(24, 16, 'art\'otel amsterdam, part of Radisson Hotel Group, Amsterdam, Netherlands', 'Prins Hendrikkade 33, Amsterdam City Center, 1012 TM Amsterdam, Netherlands', 'Located in the heart of Amsterdam opposite central station and within walking distance of Amsterdam\'s main attractions and shopping areas, art\'otel amsterdam features 5&33, which is a dining and social venue combining an all-day and late-night kitchen, bar, library, lounge and multi-functional public gallery. Guests of art\'otel amsterdam have exclusive on-site access.', 52.377754, 4.897057, 'https://www.booking.com/hotel/nl/art-otel-amsterdam.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1g', 'https://q-cf.bstatic.com/images/hotel/max1024x768/144/144504100.jpg'),
(25, 16, 'Hotel Jakarta Amsterdam, Amsterdam, Netherlands', 'Javakade 766, Zeeburg, 1019 SH Amsterdam, Netherlands', 'Hotel Jakarta Amsterdam is a unique sustainable hotel in Amsterdam at the IJ river, at the former location where ships left for Jakarta.', 52.379417, 4.922465, 'https://www.booking.com/hotel/nl/jakarta-amsterdam.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gD', 'https://q-ak.bstatic.com/images/hotel/max1024x768/186/186013467.jpg'),
(26, 16, 'Park Plaza Victoria Amsterdam, Amsterdam, Netherlands', 'Damrak 1 - 5, Amsterdam City Center, 1012 LG Amsterdam, Netherlands', 'Park Plaza Victoria Amsterdam is located in a historical building opposite Amsterdam Central Station.', 52.377129, 4.897790, 'https://www.booking.com/hotel/nl/victoria.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBm', 'https://q-ak.bstatic.com/images/hotel/max1024x768/133/13334194.jpg'),
(27, 16, 'Inntel Hotels Amsterdam Centre, Amsterdam, Netherlands', 'Nieuwezijdskolk 19, Amsterdam City Center, 1012 PV Amsterdam, Netherlands', 'Inntel Hotels Amsterdam Centre has rooms with free Wi-Fi and satellite TV, just a 5-minute walk from Amsterdam Central Train Station.', 52.376091, 4.894381, 'https://www.booking.com/hotel/nl/inntel-hotels-amsterdam-centre.html?aid=397642;label=gog235jc-1FCAE', 'https://q-cf.bstatic.com/images/hotel/max1024x768/146/146286193.jpg'),
(28, 16, 'Hotel Casa Amsterdam, Amsterdam, Netherlands', 'Eerste Ringdijkstraat 4, Oost, 1097 BC Amsterdam, Netherlands', 'Hotel Casa Amsterdam is a modern hotel offering a bar, rooftop terrace and an in-house restaurant.', 52.349930, 4.918713, 'https://www.booking.com/hotel/nl/casa-400.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBm', 'https://q-ak.bstatic.com/images/hotel/max1024x768/103/103763173.jpg'),
(29, 16, 'WestCord City Centre Hotel, Amsterdam, Netherlands', 'Nieuwezijds Voorburgwal 50, Amsterdam City Center, 1012 SC Amsterdam, Netherlands', 'Within walking distance of the Central Train Station and the main attractions, you can find the perfect starting point for exploring Amsterdam.', 52.376598, 4.893757, 'https://www.booking.com/hotel/nl/westcord-city-centre.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM', 'https://r-ak.bstatic.com/images/hotel/max1024x768/498/49803433.jpg'),
(30, 16, 'Amsterdam Wiechmann Hotel, Amsterdam, Netherlands', 'Prinsengracht 328 - 332, Amsterdam City Center, 1016 HX Amsterdam, Netherlands', 'This quaint hotel offers rooms with antique furniture and free Wi-Fi in a picturesque area of Amsterdam, a 10-minute walk from the Anne Frank House.', 52.369003, 4.882277, 'https://www.booking.com/hotel/nl/amsterdam-wiechmann.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1', 'https://q-cf.bstatic.com/images/hotel/max1024x768/157/15712420.jpg'),
(31, 17, 'Grand Hotel Central, Barcelona, Spain', 'Via Laietana, 30, Ciutat Vella, 08003 Barcelona, Spain', 'Grand Central Hotel Barcelona is a design hotel offering fantastic views of the Gothic Quarter and Barcelona Cathedral from its rooftop infinity pool.', 41.385010, 2.177663, 'https://www.booking.com/hotel/es/grandhotelcentral.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gD', 'https://q-ak.bstatic.com/images/hotel/max1024x768/754/75439878.jpg'),
(32, 17, 'Fairmont Rey Juan Carlos I, Barcelona, Spain', 'Avenida Diagonal 661 - 671, Les Corts, 08028 Barcelona, Spain', 'Set in 25,000 square yards of beautiful gardens and offering fantastic views of Barcelona, Fairmont Rey Juan Carlos I is a luxury hotel set on Diagonal Avenue.', 41.381268, 2.108428, 'https://www.booking.com/hotel/es/rey-juan-carlos-i.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gD', 'https://r-ak.bstatic.com/images/hotel/max1024x768/566/56682155.jpg'),
(33, 17, 'Eurostars Grand Marina Hotel GL, Barcelona, Spain', 'Moll de Barcelona WTC, Ciutat Vella, 08039 Barcelona, Spain', 'Set within the World Trade Center building, this 5-star design hotel overlooks Barcelona’s port and is a 5-minute walk from La Rambla.', 41.371468, 2.181773, 'https://www.booking.com/hotel/es/grandmarina.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiA', 'https://q-ak.bstatic.com/images/hotel/max1024x768/519/51959271.jpg'),
(34, 17, 'Pullman Barcelona Skipper, Barcelona, Spain', 'Avenida Litoral, 10, Ciutat Vella, 08005 Barcelona, Spain', 'The Pullman Barcelona Skipper offers 5-star luxury next to Barcelona’s Olympic Port.', 41.385746, 2.194813, 'https://www.booking.com/hotel/es/barcelona-skipper.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gD', 'https://q-ak.bstatic.com/images/hotel/max1024x768/268/26839221.jpg'),
(35, 17, 'Hotel SB Glow **** Sup, Barcelona, Spain', '154 Carrer de Badajoz, Sant Martí, 08018 Barcelona, Spain', 'Hotel SB Glow **** Sup has an outdoor swimming pool, garden, a fitness center and bar in Barcelona.', 41.402206, 2.191203, 'https://www.booking.com/hotel/es/sb-glow-4-sup.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEB', 'https://q-ak.bstatic.com/images/hotel/max1024x768/116/116101928.jpg'),
(36, 17, 'Iberostar Paseo de Gracia 4* Sup, Barcelona, Spain', 'Plaza de Cataluña,10, Eixample, 08002 Barcelona, Spain', 'Located right on Plaça Catalunya Square in Barcelona, Iberostar Paseo de Gracia 4* Sup offers a terrace with a pool and free WiFi throughout.', 41.387913, 2.169397, 'https://www.booking.com/hotel/es/iberostar-paseo-de-gracia.html?aid=397642;label=gog235jc-1FCAEoggI4', 'https://q-ak.bstatic.com/images/hotel/max1024x768/130/130803219.jpg'),
(37, 17, 'Hotel SB Diagonal Zero Barcelona 4* Sup, Barcelona, Spain', 'Plaça de Llevant, s/n, Sant Martí, 08019 Barcelona, Spain', 'Hotel SB Diagonal Zero Barcelona is opposite Barcelona’s International Convention Center and Barcelona\'s Forum Auditorium.', 41.411247, 2.219295, 'https://www.booking.com/hotel/es/diagonal-zero.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEB', 'https://r-ak.bstatic.com/images/hotel/max1024x768/151/151965924.jpg'),
(38, 17, 'Motel One Barcelona-Ciutadella, Barcelona, Spain', '11 Passeig de Pujades, Sant Martí, 08018 Barcelona, Spain', 'Set in Barcelona’s Born District, right beside Ciutadella Park, Motel One Barcelona-Ciutadella offers modern, air-conditioned rooms with a private bathroom and an interactive TV.', 41.390106, 2.184533, 'https://www.booking.com/hotel/es/motel-one-barcelona-ciutadella-barcelona12345.html?aid=397642;label', 'https://q-ak.bstatic.com/images/hotel/max1024x768/129/129133633.jpg'),
(39, 17, 'Catalonia Sagrada Familia, Barcelona, Spain', 'Aragó 577-579, Sant Martí, 08026 Barcelona, Spain', 'A 15-minute walk from Gaudí\'s Sagrada Família, Catalonia Sagrada Familia is just 984 feet from Clot Metro and Train Station.', 41.407856, 2.185340, 'https://www.booking.com/hotel/es/cataloniaaragon.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://q-ak.bstatic.com/images/hotel/max1024x768/693/69349885.jpg'),
(40, 17, 'Hotel Oasis, Barcelona, Spain', 'Pla Del Palau,17, Ciutat Vella, 08003 Barcelona, Spain', 'Hotel Oasis is located just 820 feet from França Railway Station and 328 feet from Barcelona’s Born district.', 41.382862, 2.184682, 'https://www.booking.com/hotel/es/oasis-barcelona.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://q-ak.bstatic.com/images/hotel/max1024x768/915/91582979.jpg'),
(41, 18, 'Hotel Ambassador, Vienna, Austria', 'Kärntner Straße 22, 01. Innere Stadt, 1010 Vienna, Austria', 'The luxurious Hotel Ambassador is located on the Kärntner Straße shopping street in the center of Vienna, just 200 m from the Stephansplatz and Karlsplatz Underground Stations. It offers a restaurant and free WiFi.', 48.205791, 16.371099, 'https://www.booking.com/hotel/at/ambassador.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAE', 'https://r-ak.bstatic.com/images/hotel/max1024x768/285/28532695.jpg'),
(42, 18, 'Steigenberger Hotel Herrenhof, Vienna, Austria', 'Herrengasse 10, 01. Innere Stadt, 1010 Vienna, Austria', 'Built in 1913, Steigenberger Hotel Herrenhof is located in the center of the first district of Vienna, only a few steps from the Hofburg Imperial Palace.', 48.209988, 16.366119, 'https://www.booking.com/hotel/at/steigenberger-herrenhof.html?aid=397642;label=gog235jc-1FCAEoggI46A', 'https://r-ak.bstatic.com/images/hotel/max1024x768/522/52204934.jpg'),
(43, 18, 'Vienna Stay Apartments Tabor 1020, Vienna, Austria', 'Taborstraße 41, 02. Leopoldstadt, 1020 Vienna, Austria', 'Set in Vienna, Vienna Stay Apartments Tabor 1020 is 0.6 mi from Giant Ferris Wheel and only a few steps from the U2 Taborstraße Metro Station.', 48.219921, 16.381104, 'https://www.booking.com/hotel/at/vienna-stay-tabor-1020.html?aid=397642;label=gog235jc-1FCAEoggI46Ad', 'https://q-ak.bstatic.com/images/hotel/max1024x768/639/63924880.jpg'),
(44, 18, 'Andaz Vienna Am Belvedere - a concept by Hyatt, Vienna, Austria', 'Arsenalstrasse 10, 1100 Vienna, Austria', 'Located in Vienna, a 7-minute walk from Museum of Military History, Andaz Vienna Am Belvedere - a concept by Hyatt provides accommodations with a garden, private parking, a fitness center and a bar. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi. The property has a concierge service, valet parking and currency exchange for guests.', 48.185238, 16.383371, 'https://www.booking.com/hotel/at/andaz-vienna-am-belvedere.html?aid=397642;label=gog235jc-1FCAEoggI4', 'https://q-ak.bstatic.com/images/hotel/max1024x768/198/198104309.jpg'),
(45, 18, 'Austria Trend Hotel Astoria Wien, Vienna, Austria', 'Kärntner Straße 32-34 / Eingang Führichgasse 1, 01. Innere Stadt, 1010 Vienna, Austria', 'Set in a charming building from 1912, Austria Trend Hotel Astoria Wien is located in the center of Vienna, right on the famous Kärtnerstraße shopping street. Free WiFi is available.', 48.204597, 16.370108, 'https://www.booking.com/hotel/at/astoria-wien.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBi', 'https://q-ak.bstatic.com/images/hotel/max1024x768/989/98926301.jpg'),
(46, 18, 'Boutique Hotel Das Tigra, Vienna, Austria', 'Tiefer Graben 14 - 20, 01. Innere Stadt, 1010 Vienna, Austria', 'This family-run hotel offers a very central location in a quiet street in the heart of Vienna, just a 10-minute walk away from Saint Stephen’s Cathedral.', 48.212246, 16.368111, 'https://www.booking.com/hotel/at/hotel-das-tigra.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://q-ak.bstatic.com/images/hotel/max1024x768/600/60057694.jpg'),
(47, 18, 'Schlosshotel Römischer Kaiser, Vienna, Austria', 'Annagasse 16, 01. Innere Stadt, 1010 Vienna, Austria', 'The Schlosshotel Römischer Kaiser is one of Vienna\'s most traditional hotels, offering an ideal city center location in a quiet side street of Kärntner Straße. The Karlsplatz Underground Station (lines U4, U1, U2) can be reached within a 5-minute walk.', 48.204144, 16.372505, 'https://www.booking.com/hotel/at/schlosshotel-romischer-kaiser.html?aid=397642;label=gog235jc-1FCAEo', 'https://q-ak.bstatic.com/images/hotel/max1024x768/150/150166827.jpg'),
(48, 18, 'Hotel Austria - Wien, Vienna, Austria', 'Fleischmarkt 20, 01. Innere Stadt, 1011 Vienna, Austria', 'Hotel Austria is located in the very heart of Vienna, just a short walk from the major sights of the historic city, such as St. Stephen\'s Cathedral.', 48.210468, 16.377550, 'https://www.booking.com/hotel/at/austria.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBmA', 'https://q-ak.bstatic.com/images/hotel/max1024x768/289/28938202.jpg'),
(49, 18, 'Hahn Apartments Vienna City, Vienna, Austria', 'Nestroygasse 7, 02. Leopoldstadt, 1020 Vienna, Austria', 'Located in Vienna’s central Leopoldstadt district close to the Baroque Augarten park, Hahn Apartments Vienna City is a 5-minute from the Karmeliter Market and a 10-minute walk from the historic center and the Schottenring Underground Station. Wi-Fi is available for free.', 48.220886, 16.374134, 'https://www.booking.com/hotel/at/hahn-apartments.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaM', 'https://q-ak.bstatic.com/images/hotel/max1024x768/788/78832421.jpg'),
(50, 18, 'Hotel Terminus, Vienna, Austria', 'Fillgradergasse 4, 06. Mariahilf, 1060 Vienna, Austria', 'Situated in a quiet side street near the Mariahilfer Straße shopping street, Hotel Terminus offers free Wi-Fi and rooms with satellite TV and a private bathroom.', 48.199818, 16.359720, 'https://www.booking.com/hotel/at/terminus.html?aid=397642;label=gog235jc-1FCAEoggI46AdIM1gDaMEBiAEBm', 'https://r-ak.bstatic.com/images/hotel/max1024x768/148/14813846.jpg'),
(51, 19, 'Hotel Palace Berlin, Berlin, Germany', 'Budapester Str. 45, Charlottenburg-Wilmersdorf, 10787 Berlin, Germany', 'This hotel offers a free pool with hot tub, modern fitness center and spa.', 52.504986, 13.338626, 'https://www.booking.com/hotel/de/hotelpalace.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiA', 'https://r-ak.bstatic.com/images/hotel/max1024x768/118/118529656.jpg'),
(52, 19, 'Hotel Adlon Kempinski Berlin, Berlin, Germany', 'Unter den Linden 77, Mitte, 10117 Berlin, Germany ', 'The quintessence of luxury lodging, the Adlon is a legendary 5-star hotel situated in Berlin’s Mitte, beside the Brandenburg Gate.', 52.515705, 13.380048, 'https://www.booking.com/hotel/de/adlon-kempinski-berlin.html?aid=304142;label=gen173nr-1FCAEoggI46Ad', 'https://q-ak.bstatic.com/images/hotel/max1024x768/485/48574655.jpg'),
(53, 19, 'Pullman Berlin Schweizerhof, Berlin, Germany', 'Budapester Str. 25, Mitte, 10787 Berlin, Germany', 'A spa with heated pool, 24-hour gym and elegant rooms are offered at this hotel.', 52.506069, 13.343924, 'https://www.booking.com/hotel/de/berlin-schweizerhof.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1', 'https://q-ak.bstatic.com/images/hotel/max1024x768/114/114525681.jpg'),
(54, 19, 'Sofitel Berlin Kurfürstendamm, Berlin, Germany', 'Augsburger Str. 41, Charlottenburg-Wilmersdorf, 10789 Berlin, Germany', 'Just 100 metres from the Kurfürstendamm boulevard, this 5-star design hotel offers air-conditioned rooms, free Wi-Fi and a French restaurant.', 52.502605, 13.332044, 'https://www.booking.com/hotel/de/sofitelhotelberlin-berlin.html?aid=304142;label=gen173nr-1FCAEoggI4', 'https://q-ak.bstatic.com/images/hotel/max1024x768/148/148368267.jpg'),
(55, 19, 'Titanic Chaussee Berlin, Berlin, Germany', 'Chausseestraße 30, Mitte, 10115 Berlin, Germany', 'The Titanic Chausee Berlin is situated in the heart of Berlin, just a 10-minute walk from Berlin Main Station.', 52.532406, 13.381203, 'https://www.booking.com/hotel/de/titanic-chaussee-berlin.html?aid=304142;label=gen173nr-1FCAEoggI46A', 'https://r-ak.bstatic.com/images/hotel/max1024x768/681/68180875.jpg'),
(56, 19, 'Crowne Plaza Berlin City Centre, Berlin, Germany', 'Nürnberger Str. 65, Tempelhof-Schöneberg, 10787 Berlin, Germany', 'This 4-star hotel with an indoor pool is a 2-minute walk from the Kurfürstendamm shopping street.', 52.504044, 13.340790, 'https://www.booking.com/hotel/de/crownplazaberlincitycentre.html?aid=304142&label=gen173nr-1FCAEoggI', 'https://r-ak.bstatic.com/images/hotel/max1024x768/211/21154860.jpg'),
(57, 19, 'SANA Berlin Hotel, Berlin, Germany', 'Nürnberger Straße 33/34, Charlottenburg-Wilmersdorf, 10777 Berlin, Germany', 'Just 701 m from the KaDeWe department store on Berlin’s Kurfürstendamm, this stylish hotel offers a free spa with pool, soundproofed rooms, and dining in the Lobby Lounge, serving snacks and light meals throughout the day.', 52.499043, 13.334180, 'https://www.booking.com/hotel/de/sana-berlin.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiA', 'https://q-ak.bstatic.com/images/hotel/max1024x768/343/34378402.jpg'),
(58, 19, 'Schulz Hotel Berlin Wall at the East Side Gallery, Berlin, Germany', 'Stralauer Platz 36, Friedrichshain-Kreuzberg, 10243 Berlin, Germany', 'This hotel is located directly next the East Side Gallery in the cool Friedrichshain district of Berlin.', 52.508556, 13.434069, 'https://www.booking.com/hotel/de/schulz-berlin-wall-at-the-east-side-gallery.html?aid=304142;label=g', 'https://r-ak.bstatic.com/images/hotel/max1024x768/159/159998029.jpg'),
(59, 19, 'Hotel AMANO Grand Central, Berlin, Germany', 'Heidestrasse 62, Mitte, 10557 Berlin, Germany', 'This large hotel is located in the heart of Berlin, just a 3-minute walk from Berlin Main Station.', 52.527901, 13.370379, 'https://www.booking.com/hotel/de/amano-grand-central.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1', 'https://q-ak.bstatic.com/images/hotel/max1024x768/841/84109085.jpg'),
(60, 19, 'ibis Berlin Ostbahnhof, Berlin, Germany', 'An der Schillingbrücke 2, Friedrichshain-Kreuzberg, 10243 Berlin, Germany', 'This 2-star-superior hotel offers air-conditioned rooms, free WiFi, a 24-hour bar and a private underground car park.', 52.510063, 13.429606, 'https://www.booking.com/hotel/de/ibisberlinostbhf.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEa', 'https://r-ak.bstatic.com/images/hotel/max1024x768/975/97502128.jpg'),
(61, 20, 'Shangri-La Hotel at The Shard, London, London, UK', '31 St Thomas Street, Southwark, London, SE1 9QU, United Kingdom', 'Occupying levels 34-52, the Shangri-La Hotel at The Shard, London offers 5-star luxury and breathtaking views of the capital and beyond.', 51.504051, -0.085999, 'https://www.booking.com/hotel/gb/shangri-la-at-the-shard-london.html?aid=304142;label=gen173nr-1FCAE', 'https://r-ak.bstatic.com/images/hotel/max1024x768/181/181718500.jpg'),
(62, 20, '300m from High Street Kensington Tube, London, UK', '22 Stafford Court, Kensington High Street, Kensington and Chelsea, London, W8 7DJ, United Kingdom', '984 ft from High Street Kensington Tube offers accommodations in London, a 13-minute walk from Olympia Exhibition Center and 0.8 mi from Royal Albert Hall.', 51.504967, -0.090811, 'https://www.booking.com/hotel/gb/high-on-the-high-street.html?aid=304142;label=gen173nr-1FCAEoggI46A', 'https://r-ak.bstatic.com/images/hotel/max1024x768/914/91473704.jpg'),
(63, 20, 'Beautiful and Cosy Apartment in Earls Court (Kesington), London, UK', '45 Earls Court Road, Kensington and Chelsea, London, W8 6ED, United Kingdom', 'Beautiful and Cosy Apartment in Earls Court (Kesington) in London offers accommodation with free WiFi, 1.1 km from Olympia Exhibition Centre, 1.', 51.497490, -0.197442, 'https://www.booking.com/hotel/gb/beautiful-and-cosy-apartment-in-earls-court-kesington.html?aid=3041', 'https://q-ak.bstatic.com/images/hotel/max1024x768/119/119425238.jpg'),
(64, 20, 'Private Maisonette, London, UK', '64 Chepstow Road Lower Maisonette, Westminster Borough, London, W2 5BE, United Kingdom', 'Private Maisonette is situated in London, less than 1 km from Portobello Road Market, and features a patio, garden, and free WiFi.', 51.517014, -0.195478, 'https://www.booking.com/hotel/gb/private-maisonette.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1g', 'https://r-ak.bstatic.com/images/hotel/max1024x768/117/117929238.jpg'),
(65, 20, 'Britannia International Hotel Canary Wharf, London, UK', '163 Marsh Wall, Docklands,, Tower Hamlets, London, E14 9SJ, United Kingdom', 'Britannia International Hotel Canary Wharf has spacious rooms and limited free WiFi access in bedrooms.', 51.502033, -0.023248, 'https://www.booking.com/hotel/gb/britannia-londoninternational.html?aid=304142;label=gen173nr-1FCAEo', 'https://r-ak.bstatic.com/images/hotel/max1024x768/507/50756453.jpg'),
(66, 20, 'Park Plaza Westminster Bridge London, London, UK', 'Westminster Bridge Road, Lambeth, London, SE1 7UT, United Kingdom', 'Park Plaza Westminster Bridge London is set opposite the Houses of Parliament and Big Ben, on the South Bank.', 51.499790, -0.114197, 'https://www.booking.com/hotel/gb/park-plaza-westminster-bridge.html?aid=304142;label=gen173nr-1FCAEo', 'https://r-ak.bstatic.com/images/hotel/max1024x768/428/42871490.jpg'),
(67, 20, 'Sunborn London Yacht Hotel, London, UK', 'Royal Victoria Dock, Newham, London, E16 1XL, United Kingdom', 'Located less than a minute\'s walk from ExCeL London, the Sunborn London is a floating super-yacht hotel docked in Royal Victoria Dock, boasting free WiFi access, a bar and a restaurant. The hotel is 7 minutes\' drive from London City Airport and a 6-minute drive from the iconic Canary Wharf.', 51.507809, 0.030060, 'https://www.booking.com/hotel/gb/sunborn-london.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaME', 'https://q-ak.bstatic.com/images/hotel/max1024x768/360/36080036.jpg'),
(68, 20, 'ibis London Canning Town, London, UK', '8 Silvertown Way, Newham, London, E16 1ED, United Kingdom', 'Featuring free WiFi throughout the property, ibis London Canning Town offers pet-friendly accommodation in London. Guests can enjoy the on-site bar.', 51.514420, 0.009496, 'https://www.booking.com/hotel/gb/ibis-canning-town.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gE', 'https://r-ak.bstatic.com/images/hotel/max1024x768/150/150897108.jpg'),
(69, 20, 'Central Park Hotel, London, UK', '49 Queensborough Terrace, Westminster Borough, London, W2 3SY, United Kingdom', 'Located less than 328 feet from Hyde Park, the Central Park Hotel is just a 2-minute walk from Queensway Underground Station.', 51.511402, -0.185402, 'https://www.booking.com/hotel/gb/centralparklondon.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gE', 'https://r-ak.bstatic.com/images/hotel/max1024x768/246/24627549.jpg'),
(70, 20, 'Clapham South Belvedere Hotel, London, UK', 'Clapham Common South Side, Lambeth, London, SW4 9DJ, United Kingdom', 'Overlooking Clapham Common and just 300 m from Clapham South London Underground Station, this carefully restored Victorian building offers rooms with attached bathroom. Clapham South Belvedere Hotel, formerly The Euro Lodge Clapham, has a convenient location, within easy reach of the bars and restaurants on Clapham High Street.', 51.455227, -0.145294, 'https://www.booking.com/hotel/gb/euro-lodge-clapham.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1g', 'https://r-ak.bstatic.com/images/hotel/max1024x768/845/84537620.jpg'),
(71, 21, 'Brach Paris, Paris, France', '1-7 Rue Jean Richepin, 16th arr., 75116 Paris, France', 'Brach Paris is set in the 16th arr. of Paris within easy reach of the Eiffel Tower and Trocadéro.', 48.861290, 2.275351, 'https://www.booking.com/hotel/fr/brach-paris.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiA', 'https://q-ak.bstatic.com/images/hotel/max1024x768/159/159823464.jpg'),
(72, 21, 'Hotel du Louvre in the Unbound Collection by Hyatt, Paris, France', 'Place André Malraux, 1st arr., 75001 Paris, France', 'Located in the heart of Paris, this 5-star hotel offers elegant guest rooms in a Hausmannian-style building.', 48.863022, 2.335691, 'https://www.booking.com/hotel/fr/du-louvre.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiAEB', 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/135005484.jpg'),
(73, 21, 'Hotel Lutetia - The Leading Hotels of the World, Paris, France', '45 Boulevard Raspail, 6th arr., 75006 Paris, France', 'Hotel Lutetia is an iconic luxury hotel located in the Saint-Germain-des-Prés area.', 48.851280, 2.327227, 'https://www.booking.com/hotel/fr/lutetia-paris12.html?aid=304142&label=gen173nr-1FCAEoggI46AdIM1gEaM', 'https://r-ak.bstatic.com/images/hotel/max1024x768/194/194457472.jpg'),
(74, 21, 'InterContinental Paris Le Grand, Paris, France', '2 Rue Scribe, 9th arr., 75009 Paris, France', 'Intercontinental Paris Le Grand is located just 30 metres from the Opéra Garnier and Opera Metro Station.', 48.870880, 2.330409, 'https://www.booking.com/hotel/fr/intercontinental-paris-le-grand.html?aid=304142;label=gen173nr-1FCA', 'https://r-ak.bstatic.com/images/hotel/max1024x768/141/14169504.jpg'),
(75, 21, 'Pullman Paris Tour Eiffel, Paris, France', '18 Avenue De Suffren, Entrée au 22 rue Jean Rey, 15th arr., 75015 Paris, France', 'The 4-star hotel Pullman Paris Tour Eiffel is set at the foot of the Eiffel Tower and the Trocadero.', 48.855652, 2.292664, 'https://www.booking.com/hotel/fr/tour-eiffel.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiA', 'https://q-ak.bstatic.com/images/hotel/max1024x768/159/159851404.jpg'),
(76, 21, 'Saint James Albany Paris Hotel Spa, Paris, France', '202, rue de Rivoli, 1st arr., 75001 Paris, France', 'Located in the center of Paris, opposite to the Jardin des Tuileries and Le Louver, this hotel offers free access to the 1640 ft² spa with an indoor pool, fitness center and hammam.', 48.864307, 2.330789, 'https://www.booking.com/hotel/fr/clarionstjames.html?aid=304142&label=gen173nr-1FCAEoggI46AdIM1gEaME', 'https://r-ak.bstatic.com/images/hotel/max1024x768/117/11762549.jpg'),
(77, 21, 'Hôtel Westminster, Paris, France', '13, Rue De La Paix, 2nd arr., 75002 Paris, France', 'Hotel Westminster is located in central Paris, between the Place Vendôme and Opéra.', 48.869431, 2.331072, 'https://www.booking.com/hotel/fr/hotelwestminster.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEa', 'https://q-ak.bstatic.com/images/hotel/max1024x768/865/8656454.jpg'),
(78, 21, 'Ibis Paris Tour Eiffel Cambronne 15ème, Paris, France', '2 Rue Cambronne, 15th arr., 75015 Paris, France', 'Located in the 15th district of Paris, just a 15-minute walk from the Eiffel Tower, ibis Paris Tour Eiffel offers a 24-hour reception, free Wi-Fi access throughout and luggage storage. Cambronne Metro Station is just 150 m away.', 48.847038, 2.301356, 'https://www.booking.com/hotel/fr/ibis-paris-tour-eiffel.html?aid=304142;label=gen173nr-1FCAEoggI46Ad', 'https://r-ak.bstatic.com/images/hotel/max1024x768/123/123596519.jpg'),
(79, 21, 'Hôtel Le Relais Saint Charles, Paris, France', '72 Boulevard de Grenelle, 15th arr., 75015 Paris, France', 'In the center of Paris, a 15-minute walk from the Eiffel Tower and Champ de Mars, this boutique hotel offers soundproofed and air-conditioned rooms with free Wi-Fi access.', 48.850307, 2.293377, 'https://www.booking.com/hotel/fr/hotel-le-relais-saint-charles.html?aid=304142;label=gen173nr-1FCAEo', 'https://r-ak.bstatic.com/images/hotel/max1024x768/595/5952737.jpg'),
(80, 21, 'Au Pacific Hotel, Paris, France', '11 Rue Fondary, 15th arr., 75015 Paris, France', 'Located 1148 feet from Avenue Emile Zola Metro Station, Au Pacific Hotel features a 24-hour reception, free WiFi and a luggage storage.', 48.848721, 2.291881, 'https://www.booking.com/hotel/fr/au-pacific.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiAE', 'https://q-ak.bstatic.com/images/hotel/max1024x768/655/65508198.jpg'),
(81, 22, 'Barceló Istanbul, Istanbul, Turkey', 'Abdulhakhamit Cad., No: 25/B, Taksim, Beyoglu, 34435 Istanbul, Turkey', 'The 5-star Barceló Istanbul is located in the heart of Istanbul, 500 metres from lively Taksim Square.', 41.041294, 28.983759, 'https://www.booking.com/hotel/tr/barcelo-istanbul.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEa', 'https://r-ak.bstatic.com/images/hotel/max1024x768/177/177934232.jpg'),
(82, 22, 'Wyndham Grand Istanbul Levent, Istanbul, Turkey', 'Esentepe Mahallesi Buyukdere Caddesi No 177-183 Sisli , Sisli, 34394 Istanbul, Turkey', 'Featuring luxurious interiors, Wyndham Grand Istanbul Levent is located on Buyukdere Road.', 41.077274, 29.012571, 'https://www.booking.com/hotel/tr/wyndham-grand-istanbul-levent.html?aid=304142;label=gen173nr-1FCAEo', 'https://r-ak.bstatic.com/images/hotel/max1024x768/199/199521122.jpg'),
(83, 22, 'Radisson Blu Hotel, Vadistanbul, Istanbul, Turkey', 'Vadistanbul, Ayazaga Mahallesi, Cendere Cd. Sanyer, 34396 Istanbul, Turkey', 'Radisson Blu Hotel, Vadistanbul is located in Istanbul, within 3.4 miles of Istinye Park Shopping Center and 3.9 miles of Istanbul Sapphire.', 41.107292, 28.987080, 'https://www.booking.com/hotel/tr/radisson-blu-vadistanbul.html?aid=304142;label=gen173nr-1FCAEoggI46', 'https://r-ak.bstatic.com/images/hotel/max1024x768/174/174219735.jpg'),
(84, 22, 'Soho House Istanbul - Special Category, Istanbul, Turkey', 'Mesrutiyet Cad. Evliya Celebi Mah. No:56 Beyoglu Istanbul, Beyoglu, 34430 Istanbul, Turkey', 'Located in Beyoglu district, Soho House Istanbul features 3 original buildings including the Chancery and the Annex, a new Glass Building, and members’ club 19th century Palazzo Corpi. The courtyard garden has a Cecconi’s restaurant, and Cowshed Spa offers a gym and a traditional hammam.', 41.030392, 28.973278, 'https://www.booking.com/hotel/tr/soho-house-istanbul.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1', 'https://r-ak.bstatic.com/images/hotel/max1024x768/768/76811249.jpg'),
(85, 22, 'Park Dedeman Levent, Istanbul, Turkey', 'Esentepe Mahallesi Büyükdere Caddesi No:187 Şişli, Sisli, 34394 Istanbul, Turkey', 'Park Dedeman Levent is located conveniently in Levent, which is one of the major commercial districts of Istanbul. Free WiFi access is available.', 41.078907, 29.011963, 'https://www.booking.com/hotel/tr/dedeman-park-levent.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1', 'https://r-ak.bstatic.com/images/hotel/max1024x768/500/50089636.jpg'),
(86, 22, 'Room Mate Emir, Istanbul, Turkey', 'Sadri Alisik Sok. Taksim , Beyoglu, 34437 Istanbul, Turkey', 'Located only 328 feet from vibrant Istiklal Avenue, Room Mate Emir offers 4-star accommodations.', 41.034061, 28.981207, 'https://www.booking.com/hotel/tr/room-mate-emir.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaME', 'https://r-fa.bstatic.com/images/hotel/max1024x768/126/126033034.jpg'),
(87, 22, 'Port Bosphorus, Istanbul, Turkey', 'Kılıçali Paşa Mahallesi Meclis-i Mebusan Caddesi No:13, Beyoglu, 34433 Istanbul, Turkey', 'Located in the heart of the city’s culture, art, historical atmosphere and entertainment district and just a short walk from Karaköy and Galata, Port Bosphorus features a garden. The property is set 901 m from Istiklal Street and 901 m from Galata Tower within walking distance.', 41.028320, 28.984262, 'https://www.booking.com/hotel/tr/port-bosphorus-beyoglu.html?aid=304142;label=gen173nr-1FCAEoggI46Ad', 'https://q-fa.bstatic.com/images/hotel/max1024x768/155/155625668.jpg'),
(88, 22, 'Levent Hotel Istanbul, Istanbul, Turkey', 'Talatpasa Cad. Bacadibi Sk. No:7 Gultepe Levent , Kagithane, 34413 Istanbul, Turkey', 'The Levent Hotel in Istanbul is located close to the metro and 656 feet from Kanyon shopping mall.', 41.080097, 29.006498, 'https://www.booking.com/hotel/tr/levent.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiAEBmAE', 'https://t-ec.bstatic.com/images/hotel/max1024x768/733/73391839.jpg'),
(89, 22, 'Peyk Hotel, Istanbul, Turkey', 'Peykhane Cad. No:10 Sultanahmet, Fatih, 34122 Istanbul, Turkey', 'Located in the heart of Historic Peninsula, Peyk Hotel is within a walking distance from many historic sites such as Topkapi Palace, Hagia Sophia and Blue Mosque. The tram station, which allows an easy access to other central sites of the city, is also within a walk. Free WiFi access is available in all areas.', 41.007050, 28.972174, 'https://www.booking.com/hotel/tr/peyk.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiAEBmAExu', 'https://q-fa.bstatic.com/images/hotel/max1024x768/378/37891664.jpg'),
(90, 22, 'Mardia city hotel, Istanbul, Turkey', 'Katip kasım mahalesi langa karakolu sokak no 4, Fatih, 34130 Istanbul, Turkey', 'Located in Istanbul, 1.1 miles from Column of Constantine, Mardia city hotel has accommodations with a bar, private parking, a shared lounge and a terrace.', 41.006069, 28.955341, 'https://www.booking.com/hotel/tr/mardia-city-fatih.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gE', 'https://r-fa.bstatic.com/images/hotel/max1024x768/146/146910700.jpg'),
(91, 23, 'Radisson Blu Olympiyskiy Hotel, Moscow, Russia', 'Ulitsa Samarskaya 1, Meshchansky, 120110 Moscow, Russia', 'Radisson Blu Olympiyskiy Hotel is located next to the Prospekt Mira avenue and Olympic Stadium, offering breathtaking views of the capital.', 55.784924, 37.626163, 'https://www.booking.com/hotel/ru/radisson-blu-olympiyskiy-moscow.html?aid=304142;label=gen173nr-1FCA', 'https://t-ec.bstatic.com/images/hotel/max1024x768/182/182024888.jpg'),
(92, 23, 'Radisson Collection Hotel Moscow, Moscow, Russia', 'Kutuzovsky Prospekt 2/1 bld.1, Dorogomilovo, 121248 Moscow, Russia', 'This luxury hotel is located at the intersection of Moscow’s Kutuzovskiy Prospekt and Novy Arbat and occupies a Stalinist skyscraper.', 55.751499, 37.565628, 'https://www.booking.com/hotel/ru/radisson-royal-moscow.html?aid=304142;label=gen173nr-1FCAEoggI46AdI', 'https://s-ec.bstatic.com/images/hotel/max1024x768/183/183608239.jpg'),
(93, 23, 'Hyatt Regency Moscow Petrovsky Park, Moscow, Russia', 'Leningradsky Avenue 36 Building 33, Aeroport, 125167 Moscow, Russia', 'Hyatt Regency Moscow Petrovsky Park is set in Moscow next to the historic Petrovsky Park and eponymous palace.', 55.788399, 37.561069, 'https://www.booking.com/hotel/ru/hyatt-regency-moscow-petrovsky-park.html?aid=304142;label=gen173nr-', 'https://q-fa.bstatic.com/images/hotel/max1024x768/187/187470276.jpg'),
(94, 23, 'Diamond Apartments Hotel, Moscow, Russia', '1-Y Krasnogvardeyskiy Proyezd 21 building 2 10th level, Presnensky, 123317 Moscow, Russia', '3.7 miles from Luzhniki Stadium, Diamond Apartments Hotel is located in Moscow and provides free WiFi and concierge services.', 55.750965, 37.547565, 'https://www.booking.com/hotel/ru/srystal-apartments.html?aid=304142&label=gen173nr-1FCAEoggI46AdIM1g', 'https://q-fa.bstatic.com/images/hotel/max1024x768/193/193234233.jpg'),
(95, 23, 'Radisson Slavyanskaya Hotel & Business Center, Moscow, Russia', 'Pl.Evropi 2, Dorogomilovo, 121059 Moscow, Russia', 'Offering panoramic views of the Moscow skyline, a free fitness center and 3 international restaurants, this hotel stands on the banks of the Moskva River, a 30-minute walk from Red Square.', 55.741779, 37.566727, 'https://www.booking.com/hotel/ru/radisson-slavyanskaya-business-center.html?aid=304142&label=gen173n', 'https://s-ec.bstatic.com/images/hotel/max1024x768/173/173396087.jpg'),
(96, 23, 'Novotel Moscow City, Moscow, Russia', 'Presnenskaya Naberezhnaya 2, Presnensky, 123317 Moscow, Russia', 'This modern hotel is conveniently located in Moscow City Business Center, a 5-minute walk from ExpoCenter.', 55.749142, 37.539494, 'https://www.booking.com/hotel/ru/novotel-moscow-city.html?aid=304142&label=gen173nr-1FCAEoggI46AdIM1', 'https://s-ec.bstatic.com/images/hotel/max1024x768/113/113273162.jpg'),
(97, 23, 'Palmira Business Club, Moscow, Russia', 'Novodanilovskaya Naberezhnaya 6, Donskoy, 117105 Moscow, Russia', 'Palmira Business Club offers accommodations in Moscow, within a 15-minute walk of Tulskaya Metro Station. The Kremlin and Red Square are 3 metro stops away. The property offers a fitness center, tour desk, spa and wellness center and private parking at surcharge. Free WiFi is available.', 55.697601, 37.624893, 'https://www.booking.com/hotel/ru/palmira-business-club.html?aid=304142;label=gen173nr-1FCAEoggI46AdI', 'https://t-ec.bstatic.com/images/hotel/max1024x768/115/115827085.jpg'),
(98, 23, 'Izmailovo Beta Hotel, Moscow, Russia', 'Izmailovskoye Shosse 71 Bld.2B, Izmailovo, 105613 Moscow, Russia', 'Set near the Izmailovsky Park, within a 3-minute walk of Partizanskaya Metro Station, Izmailovo Beta Hotel features free WiFi, banquet and meeting facilities and a variety of dining options. It is located within a 15-minute metro ride from the city center.', 55.789593, 37.747627, 'https://www.booking.com/hotel/ru/izmaylovo-beta.html?aid=304142&label=gen173nr-1FCAEoggI46AdIM1gEaME', 'https://r-fa.bstatic.com/images/hotel/max1024x768/904/90460449.jpg'),
(99, 23, 'ibis Moscow Kievskaya, Moscow, Russia', 'Kievskaya Ulitsa 2, Dorogomilovo, 121059 Moscow, Russia', 'ibis Moscow Kievskaya is located opposite Kievsky Train Station in Moscow, providing direct connections to Vnukovo International Airport.', 55.743198, 37.563217, 'https://www.booking.com/hotel/ru/ibis-moscow-kievskaya.html?aid=304142&label=gen173nr-1FCAEoggI46AdI', 'https://r-fa.bstatic.com/images/hotel/max1024x768/899/89958890.jpg'),
(100, 23, 'Voskhod Hotel, Moscow, Russia', 'Altufyevskoe Shosse 2, Otradnoye, 127273 Moscow, Russia', 'This is located in northern Moscow, a 2-minute walk from Vladykino Metro Station. It features 4 cafés, free WiFi and a 24-hour reception.', 55.886623, 37.588604, 'https://www.booking.com/hotel/ru/voskhod.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaMEBiAEBmA', 'https://s-ec.bstatic.com/images/hotel/max1024x768/171/171168152.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `komentari_grad`
--

CREATE TABLE `komentari_grad` (
  `id` int(11) NOT NULL,
  `korisnici_id` int(11) NOT NULL,
  `feedback_grad_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `komentari_grad`
--

INSERT INTO `komentari_grad` (`id`, `korisnici_id`, `feedback_grad_id`, `text`, `datum`) VALUES
(1, 1, 1, 'Nulla imperdiet nisl eget nibh aliquam, ut luctus dui vehicula. In vitae auctor leo, faucibus laoreet lacus. Mauris mollis mattis congue.', '2019-06-16 21:07:32'),
(2, 2, 2, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:22:22'),
(3, 3, 3, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:22:31'),
(4, 4, 4, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:22:44'),
(5, 5, 5, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:26:00'),
(6, 1, 6, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:26:08'),
(7, 2, 7, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:26:15'),
(8, 3, 8, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:26:21'),
(9, 4, 9, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta. Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-18 08:26:28'),
(10, 5, 10, 'Aenean elementum malesuada erat, condimentum pellentesque turpis condimentum non. Cras condimentum libero eget felis porttitor porta.', '2019-06-18 08:26:38'),
(11, 3, 11, 'Lorem ipsum dolor est, gaudeamus igitur', '2019-06-24 07:43:47'),
(12, 5, 5, 'Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque.', '2019-06-25 15:02:04'),
(14, 4, 13, 'Lorem ipsum dolor est. Lorem ipsum dolor est. Lorem ipsum dolor est. Lorem ipsum dolor est.', '2019-06-25 16:29:10'),
(15, 2, 14, 'Lorem ipsum dolor est.', '2019-06-25 16:53:16'),
(16, 2, 5, 'Lorem ipsum dolor est.', '2019-06-25 16:53:34'),
(17, 2, 8, 'Duis volutpat euismod placerat. Suspendisse quis dolor non elit feugiat blandit eu et sapien. Nunc erat diam, tristique vitae mattis in, facilisis at leo. Fusce ac tempor ex, sed iaculis est.', '2019-06-25 18:01:02'),
(18, 3, 7, 'Maecenas imperdiet sapien id pharetra efficitur. Nullam nisl sem, elementum vitae metus eu, pretium condimentum urna. In efficitur molestie consequat.', '2019-06-25 18:53:29'),
(19, 4, 17, 'Pellentesque porta, risus at elementum luctus, tellus elit gravida lorem, in gravida velit justo in urna. Mauris mattis ut dolor nec ullamcorper.', '2019-06-25 19:05:13'),
(20, 1, 10, 'Mauris tempor elit non elit tincidunt, a ultricies ex scelerisque. Pellentesque et nisi a erat pulvinar consectetur.', '2019-06-25 19:39:55'),
(25, 3, 1, 'Lorem ipsum dolor est.', '2019-06-26 11:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `komentari_hotel`
--

CREATE TABLE `komentari_hotel` (
  `id` int(11) NOT NULL,
  `korisnici_id` int(11) NOT NULL,
  `feedback_hotel_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `komentari_hotel`
--

INSERT INTO `komentari_hotel` (`id`, `korisnici_id`, `feedback_hotel_id`, `text`, `datum`) VALUES
(1, 3, 1, 'Suspendisse sed porta nibh, nec auctor tellus. Suspendisse porttitor eleifend erat, quis viverra massa congue ac. Etiam ut nisi tortor. Nam ut pretium lectus.', '2019-06-18 19:05:33'),
(6, 5, 12, 'My comment here. My comment here.', '2019-06-25 16:11:22'),
(7, 3, 17, 'I zaboravih da kazem: Lorem ipsum dolor est. ', '2019-06-25 17:43:41'),
(8, 3, 21, 'Cras a ultricies erat, sit amet tincidunt ligula. Praesent vitae iaculis nunc. Nam vitae auctor leo. Curabitur ac commodo mauris.', '2019-06-25 18:58:56'),
(9, 5, 22, 'Cras a ultricies erat, sit amet tincidunt ligula. Praesent vitae iaculis nunc. Nam vitae auctor leo. Curabitur ac commodo mauris.', '2019-06-25 19:02:15'),
(10, 4, 22, 'Odakle vam ova vatra, je\'li bre?', '2019-06-25 19:14:22'),
(11, 2, 1, 'Suspendisse porttitor eleifend erat, quis viverra massa congue ac. Etiam ut nisi tortor. Nam ut pretium lectus.', '2019-06-26 07:46:41'),
(12, 2, 2, 'Praesent neque est, semper et nisl sit amet, euismod tristique ipsum. Nulla finibus arcu id purus commodo egestas. Duis eu odio arcu.', '2019-06-26 07:49:29'),
(14, 1, 4, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-06-26 09:12:50'),
(18, 3, 2, 'Nas komentar ide ovde! 20 karaktera minimum!', '2019-06-26 10:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `slika` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `username`, `password`, `ime`, `prezime`, `admin`, `slika`) VALUES
(1, 'superadmin', 'password', 'Bojan', 'Bojanic', 1, 'https://randomuser.me/api/portraits/men/11.jpg'),
(2, 'pepe', 'password', 'Petar', 'Petrovic', 0, 'https://randomuser.me/api/portraits/men/12.jpg'),
(3, 'jojo', 'password', 'Jovana', 'Jovanovic', 0, 'https://randomuser.me/api/portraits/women/68.jpg'),
(4, 'scrummaster', 'password', 'Dragan', 'Draganic', 0, 'https://randomuser.me/api/portraits/men/68.jpg'),
(5, 'direktor', 'password', 'Milica', 'Milivojevic', 1, 'https://randomuser.me/api/portraits/women/49.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login_tabela`
--

CREATE TABLE `login_tabela` (
  `id` int(11) NOT NULL,
  `korisnici_id` int(11) NOT NULL,
  `web_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slike_hotela`
--

CREATE TABLE `slike_hotela` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `url_slike` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slike_hotela`
--

INSERT INTO `slike_hotela` (`id`, `hotel_id`, `url_slike`) VALUES
(1, 1, 'https://r-cf.bstatic.com/images/hotel/max1024x768/142/14249151.jpg'),
(2, 1, 'https://r-cf.bstatic.com/images/hotel/max1024x768/142/14249155.jpg'),
(3, 1, 'https://r-cf.bstatic.com/images/hotel/max1024x768/140/14089810.jpg'),
(4, 1, 'https://r-cf.bstatic.com/images/hotel/max1024x768/140/14089813.jpg'),
(5, 1, 'https://q-cf.bstatic.com/images/hotel/max1024x768/144/14484776.jpg'),
(6, 2, 'https://q-cf.bstatic.com/images/hotel/max1024x768/199/199424867.jpg'),
(7, 2, 'https://q-cf.bstatic.com/images/hotel/max1024x768/199/199424867.jpg'),
(8, 2, 'https://r-cf.bstatic.com/images/hotel/max1024x768/199/199424838.jpg'),
(9, 2, 'https://q-cf.bstatic.com/images/hotel/max1024x768/199/199424875.jpg'),
(10, 2, 'https://q-cf.bstatic.com/images/hotel/max1024x768/199/199424939.jpg'),
(11, 3, 'https://q-ak.bstatic.com/images/hotel/max1024x768/197/197852006.jpg'),
(12, 3, 'https://q-ak.bstatic.com/images/hotel/max1024x768/197/197853230.jpg'),
(13, 3, 'https://r-ak.bstatic.com/images/hotel/max1024x768/197/197853252.jpg'),
(14, 3, 'https://q-ak.bstatic.com/images/hotel/max1024x768/197/197852698.jpg'),
(15, 3, 'https://q-ak.bstatic.com/images/hotel/max1024x768/183/183281524.jpg'),
(16, 4, 'https://r-cf.bstatic.com/images/hotel/max1024x768/834/83416723.jpg'),
(17, 4, 'https://q-cf.bstatic.com/images/hotel/max1024x768/664/66429520.jpg'),
(18, 4, 'https://r-cf.bstatic.com/images/hotel/max1024x768/365/36582298.jpg'),
(19, 4, 'https://q-cf.bstatic.com/images/hotel/max1024x768/663/66300634.jpg'),
(20, 4, 'https://q-cf.bstatic.com/images/hotel/max1024x768/574/57472901.jpg'),
(21, 5, 'https://r-cf.bstatic.com/images/hotel/max1024x768/189/189098657.jpg'),
(22, 5, 'https://r-cf.bstatic.com/images/hotel/max1024x768/197/197030807.jpg'),
(23, 5, 'https://q-cf.bstatic.com/images/hotel/max1024x768/189/189098700.jpg'),
(24, 5, 'https://q-cf.bstatic.com/images/hotel/max1024x768/189/189098650.jpg'),
(25, 5, 'https://r-cf.bstatic.com/images/hotel/max1024x768/189/189098691.jpg'),
(26, 6, 'https://r-cf.bstatic.com/images/hotel/max1024x768/194/194246147.jpg'),
(27, 6, 'https://r-cf.bstatic.com/images/hotel/max1024x768/194/194254085.jpg'),
(28, 6, 'https://r-cf.bstatic.com/images/hotel/max1024x768/194/194253132.jpg'),
(29, 6, 'https://q-cf.bstatic.com/images/hotel/max1024x768/194/194254388.jpg'),
(30, 6, 'https://r-cf.bstatic.com/images/hotel/max1024x768/194/194250963.jpg'),
(31, 7, 'https://r-cf.bstatic.com/images/hotel/max1024x768/521/52169975.jpg'),
(32, 7, 'https://q-cf.bstatic.com/images/hotel/max1024x768/521/52169973.jpg'),
(33, 7, 'https://q-cf.bstatic.com/images/hotel/max1024x768/521/52195500.jpg'),
(34, 7, 'https://r-cf.bstatic.com/images/hotel/max1024x768/521/52195503.jpg'),
(35, 7, 'https://q-cf.bstatic.com/images/hotel/max1024x768/521/52170192.jpg'),
(36, 8, 'https://q-cf.bstatic.com/images/hotel/max1024x768/762/76289347.jpg'),
(37, 8, 'https://q-cf.bstatic.com/images/hotel/max1024x768/762/76289338.jpg'),
(38, 8, 'https://r-cf.bstatic.com/images/hotel/max1024x768/762/76289341.jpg'),
(39, 8, 'https://q-cf.bstatic.com/images/hotel/max1024x768/762/76289336.jpg'),
(40, 8, 'https://q-cf.bstatic.com/images/hotel/max1024x768/762/76289320.jpg'),
(41, 9, 'https://q-cf.bstatic.com/images/hotel/max1024x768/529/52922370.jpg'),
(42, 9, 'https://q-cf.bstatic.com/images/hotel/max1024x768/402/40217471.jpg'),
(43, 9, 'https://r-cf.bstatic.com/images/hotel/max1024x768/402/40216554.jpg'),
(44, 9, 'https://r-cf.bstatic.com/images/hotel/max1024x768/402/40217078.jpg'),
(45, 9, 'https://r-cf.bstatic.com/images/hotel/max1024x768/111/111846036.jpg'),
(46, 10, 'https://q-ak.bstatic.com/images/hotel/max1024x768/336/33652113.jpg'),
(47, 10, 'https://q-ak.bstatic.com/images/hotel/max1024x768/224/22408105.jpg'),
(48, 10, 'https://q-ak.bstatic.com/images/hotel/max1024x768/230/23075385.jpg'),
(49, 10, 'https://r-ak.bstatic.com/images/hotel/max1024x768/230/23075393.jpg'),
(50, 10, 'https://r-ak.bstatic.com/images/hotel/max1024x768/224/22408255.jpg'),
(51, 11, 'https://q-ak.bstatic.com/images/hotel/max1024x768/365/36559987.jpg'),
(52, 11, 'https://q-ak.bstatic.com/images/hotel/max1024x768/958/95811554.jpg'),
(53, 11, 'https://r-ak.bstatic.com/images/hotel/max1024x768/401/40182155.jpg'),
(54, 11, 'https://q-ak.bstatic.com/images/hotel/max1024x768/365/36560007.jpg'),
(55, 11, 'https://r-ak.bstatic.com/images/hotel/max1024x768/958/95811912.jpg'),
(56, 12, 'https://q-cf.bstatic.com/images/hotel/max1024x768/178/178525317.jpg'),
(57, 12, 'https://q-cf.bstatic.com/images/hotel/max1024x768/178/178525277.jpg'),
(58, 12, 'https://q-cf.bstatic.com/images/hotel/max1024x768/178/178525207.jpg'),
(59, 12, 'https://r-cf.bstatic.com/images/hotel/max1024x768/178/178524111.jpg'),
(60, 12, 'https://q-cf.bstatic.com/images/hotel/max1024x768/178/178523914.jpg'),
(61, 13, 'https://r-ak.bstatic.com/images/hotel/max1024x768/294/29469355.jpg'),
(62, 13, 'https://r-ak.bstatic.com/images/hotel/max1024x768/239/23945803.jpg'),
(63, 13, 'https://r-ak.bstatic.com/images/hotel/max1024x768/295/29519859.jpg'),
(64, 13, 'https://q-ak.bstatic.com/images/hotel/max1024x768/869/86917421.jpg'),
(65, 13, 'https://r-ak.bstatic.com/images/hotel/max1024x768/653/65355065.jpg'),
(66, 14, 'https://q-cf.bstatic.com/images/hotel/max1024x768/201/201976190.jpg'),
(67, 14, 'https://r-cf.bstatic.com/images/hotel/max1024x768/202/202096959.jpg'),
(68, 14, 'https://q-cf.bstatic.com/images/hotel/max1024x768/201/201986505.jpg'),
(69, 14, 'https://r-cf.bstatic.com/images/hotel/max1024x768/201/201984734.jpg'),
(70, 14, 'https://r-cf.bstatic.com/images/hotel/max1024x768/166/166442518.jpg'),
(71, 15, 'https://q-ak.bstatic.com/images/hotel/max1024x768/738/73891841.jpg'),
(72, 15, 'https://q-ak.bstatic.com/images/hotel/max1024x768/738/73891851.jpg'),
(73, 15, 'https://r-ak.bstatic.com/images/hotel/max1024x768/738/73891853.jpg'),
(74, 15, 'https://r-ak.bstatic.com/images/hotel/max1024x768/100/10071233.jpg'),
(75, 15, 'https://q-ak.bstatic.com/images/hotel/max1024x768/738/73891840.jpg'),
(76, 16, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184891166.jpg'),
(77, 16, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184890795.jpg'),
(78, 16, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184887085.jpg'),
(79, 16, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184886790.jpg'),
(80, 16, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184886335.jpg'),
(81, 17, 'https://r-ak.bstatic.com/images/hotel/max1024x768/606/60683278.jpg'),
(82, 17, 'https://q-ak.bstatic.com/images/hotel/max1024x768/616/61616198.jpg'),
(83, 17, 'https://r-ak.bstatic.com/images/hotel/max1024x768/616/61616211.jpg'),
(84, 17, 'https://r-ak.bstatic.com/images/hotel/max1024x768/616/61616208.jpg'),
(85, 17, 'https://r-ak.bstatic.com/images/hotel/max1024x768/616/61616203.jpg'),
(86, 18, 'https://r-ak.bstatic.com/images/hotel/max1024x768/200/200333453.jpg'),
(87, 18, 'https://q-ak.bstatic.com/images/hotel/max1024x768/200/200333447.jpg'),
(88, 18, 'https://q-ak.bstatic.com/images/hotel/max1024x768/200/200333442.jpg'),
(89, 18, 'https://q-ak.bstatic.com/images/hotel/max1024x768/200/200333444.jpg'),
(90, 18, 'https://r-ak.bstatic.com/images/hotel/max1024x768/200/200333744.jpg'),
(91, 19, 'https://r-ak.bstatic.com/images/hotel/max1024x768/758/75800478.jpg'),
(92, 19, 'https://q-ak.bstatic.com/images/hotel/max1024x768/758/75800707.jpg'),
(93, 19, 'https://r-ak.bstatic.com/images/hotel/max1024x768/758/75802184.jpg'),
(94, 19, 'https://q-ak.bstatic.com/images/hotel/max1024x768/758/75800500.jpg'),
(95, 19, 'https://q-ak.bstatic.com/images/hotel/max1024x768/536/53633235.jpg'),
(96, 20, 'https://r-cf.bstatic.com/images/hotel/max1024x768/169/169650685.jpg'),
(97, 20, 'https://q-cf.bstatic.com/images/hotel/max1024x768/169/169650316.jpg'),
(98, 20, 'https://r-cf.bstatic.com/images/hotel/max1024x768/169/169650317.jpg'),
(99, 20, 'https://q-cf.bstatic.com/images/hotel/max1024x768/716/71617042.jpg'),
(100, 20, 'https://q-cf.bstatic.com/images/hotel/max1024x768/716/71617033.jpg'),
(101, 21, 'https://r-cf.bstatic.com/images/hotel/max1024x768/700/70099504.jpg'),
(102, 21, 'https://r-cf.bstatic.com/images/hotel/max1024x768/615/61556023.jpg'),
(103, 21, 'https://r-cf.bstatic.com/images/hotel/max1024x768/700/70099494.jpg'),
(104, 21, 'https://q-cf.bstatic.com/images/hotel/max1024x768/700/70099495.jpg'),
(105, 21, 'https://q-cf.bstatic.com/images/hotel/max1024x768/782/78261910.jpg'),
(106, 22, 'https://q-cf.bstatic.com/images/hotel/max1024x768/948/94826942.jpg'),
(107, 22, 'https://r-cf.bstatic.com/images/hotel/max1024x768/317/31788864.jpg'),
(108, 22, 'https://q-cf.bstatic.com/images/hotel/max1024x768/417/41732260.jpg'),
(109, 22, 'https://q-cf.bstatic.com/images/hotel/max1024x768/571/57194824.jpg'),
(110, 22, 'https://q-cf.bstatic.com/images/hotel/max1024x768/663/66379127.jpg'),
(111, 23, 'https://r-cf.bstatic.com/images/hotel/max1024x768/137/137638405.jpg'),
(112, 23, 'https://q-cf.bstatic.com/images/hotel/max1024x768/137/137640219.jpg'),
(113, 23, 'https://q-cf.bstatic.com/images/hotel/max1024x768/176/176010409.jpg'),
(114, 23, 'https://r-cf.bstatic.com/images/hotel/max1024x768/123/123942495.jpg'),
(115, 23, 'https://r-cf.bstatic.com/images/hotel/max1024x768/124/124754740.jpg'),
(116, 24, 'https://q-cf.bstatic.com/images/hotel/max1024x768/265/26577600.jpg'),
(117, 24, 'https://q-cf.bstatic.com/images/hotel/max1024x768/211/21109771.jpg'),
(118, 24, 'https://q-cf.bstatic.com/images/hotel/max1024x768/211/21134972.jpg'),
(119, 24, 'https://q-cf.bstatic.com/images/hotel/max1024x768/144/144504178.jpg'),
(120, 24, 'https://r-cf.bstatic.com/images/hotel/max1024x768/211/21109831.jpg'),
(121, 25, 'https://q-ak.bstatic.com/images/hotel/max1024x768/186/186013467.jpg'),
(122, 25, 'https://r-ak.bstatic.com/images/hotel/max1024x768/185/185398890.jpg'),
(123, 25, 'https://q-ak.bstatic.com/images/hotel/max1024x768/173/173095051.jpg'),
(124, 25, 'https://r-ak.bstatic.com/images/hotel/max1024x768/173/173095918.jpg'),
(125, 25, 'https://q-ak.bstatic.com/images/hotel/max1024x768/173/173095919.jpg'),
(126, 26, 'https://q-ak.bstatic.com/images/hotel/max1024x768/182/182021115.jpg'),
(127, 26, 'https://q-ak.bstatic.com/images/hotel/max1024x768/182/182104156.jpg'),
(128, 26, 'https://r-ak.bstatic.com/images/hotel/max1024x768/182/182021507.jpg'),
(129, 26, 'https://q-ak.bstatic.com/images/hotel/max1024x768/182/182021378.jpg'),
(130, 26, 'https://r-ak.bstatic.com/images/hotel/max1024x768/145/145146212.jpg'),
(131, 27, 'https://r-cf.bstatic.com/images/hotel/max1024x768/189/18980484.jpg'),
(132, 27, 'https://r-cf.bstatic.com/images/hotel/max1024x768/189/18980514.jpg'),
(133, 27, 'https://q-cf.bstatic.com/images/hotel/max1024x768/189/18980642.jpg'),
(134, 27, 'https://q-cf.bstatic.com/images/hotel/max1024x768/189/18980805.jpg'),
(135, 27, 'https://r-cf.bstatic.com/images/hotel/max1024x768/189/18980555.jpg'),
(136, 28, 'https://q-ak.bstatic.com/images/hotel/max1024x768/103/103762997.jpg'),
(137, 28, 'https://r-ak.bstatic.com/images/hotel/max1024x768/103/103763230.jpg'),
(138, 28, 'https://q-ak.bstatic.com/images/hotel/max1024x768/103/103763236.jpg'),
(139, 28, 'https://r-ak.bstatic.com/images/hotel/max1024x768/103/103763012.jpg'),
(140, 28, 'https://r-ak.bstatic.com/images/hotel/max1024x768/103/103762978.jpg'),
(141, 29, 'https://r-ak.bstatic.com/images/hotel/max1024x768/747/74743669.jpg'),
(142, 29, 'https://q-ak.bstatic.com/images/hotel/max1024x768/747/74743630.jpg'),
(143, 29, 'https://r-ak.bstatic.com/images/hotel/max1024x768/747/74743338.jpg'),
(144, 29, 'https://q-ak.bstatic.com/images/hotel/max1024x768/747/74743562.jpg'),
(145, 29, 'https://q-ak.bstatic.com/images/hotel/max1024x768/747/74743635.jpg'),
(146, 30, 'https://r-cf.bstatic.com/images/hotel/max1024x768/311/31161828.jpg'),
(147, 30, 'https://r-cf.bstatic.com/images/hotel/max1024x768/311/31162466.jpg'),
(148, 30, 'https://q-cf.bstatic.com/images/hotel/max1024x768/311/31157731.jpg'),
(149, 30, 'https://r-cf.bstatic.com/images/hotel/max1024x768/311/31160365.jpg'),
(150, 30, 'https://q-cf.bstatic.com/images/hotel/max1024x768/157/15709771.jpg'),
(151, 31, 'https://r-ak.bstatic.com/images/hotel/max1024x768/477/47752500.jpg'),
(152, 31, 'https://r-ak.bstatic.com/images/hotel/max1024x768/132/132302208.jpg'),
(153, 31, 'https://q-ak.bstatic.com/images/hotel/max1024x768/477/47756346.jpg'),
(154, 31, 'https://q-ak.bstatic.com/images/hotel/max1024x768/477/47756338.jpg'),
(155, 31, 'https://r-ak.bstatic.com/images/hotel/max1024x768/477/47752502.jpg'),
(156, 32, 'https://q-ak.bstatic.com/images/hotel/max1024x768/181/181678381.jpg'),
(157, 32, 'https://q-ak.bstatic.com/images/hotel/max1024x768/181/181678384.jpg'),
(158, 32, 'https://r-ak.bstatic.com/images/hotel/max1024x768/181/181678388.jpg'),
(159, 32, 'https://r-ak.bstatic.com/images/hotel/max1024x768/181/181678393.jpg'),
(160, 32, 'https://r-ak.bstatic.com/images/hotel/max1024x768/181/181678397.jpg'),
(161, 33, 'https://r-ak.bstatic.com/images/hotel/max1024x768/519/51958757.jpg'),
(162, 33, 'https://r-ak.bstatic.com/images/hotel/max1024x768/519/51958743.jpg'),
(163, 33, 'https://r-ak.bstatic.com/images/hotel/max1024x768/519/51958753.jpg'),
(164, 33, 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/135082121.jpg'),
(165, 33, 'https://r-ak.bstatic.com/images/hotel/max1024x768/519/51958963.jpg'),
(166, 34, 'https://r-ak.bstatic.com/images/hotel/max1024x768/146/146741893.jpg'),
(167, 34, 'https://r-ak.bstatic.com/images/hotel/max1024x768/146/146742231.jpg'),
(168, 34, 'https://q-ak.bstatic.com/images/hotel/max1024x768/146/146742842.jpg'),
(169, 34, 'https://r-ak.bstatic.com/images/hotel/max1024x768/268/26839413.jpg'),
(170, 34, 'https://q-ak.bstatic.com/images/hotel/max1024x768/146/146753736.jpg'),
(171, 35, 'https://q-ak.bstatic.com/images/hotel/max1024x768/116/116101928.jpg'),
(172, 35, 'https://q-ak.bstatic.com/images/hotel/max1024x768/116/116560121.jpg'),
(173, 35, 'https://q-ak.bstatic.com/images/hotel/max1024x768/116/116560127.jpg'),
(174, 35, 'https://q-ak.bstatic.com/images/hotel/max1024x768/116/116560106.jpg'),
(175, 35, 'https://q-ak.bstatic.com/images/hotel/max1024x768/116/116560114.jpg'),
(176, 36, 'https://q-ak.bstatic.com/images/hotel/max1024x768/130/130803219.jpg'),
(177, 36, 'https://q-ak.bstatic.com/images/hotel/max1024x768/135/135700850.jpg'),
(178, 36, 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/135702094.jpg'),
(179, 36, 'https://r-ak.bstatic.com/images/hotel/max1024x768/130/130803124.jpg'),
(180, 36, 'https://q-ak.bstatic.com/images/hotel/max1024x768/109/109415508.jpg'),
(181, 37, 'https://r-ak.bstatic.com/images/hotel/max1024x768/151/151965924.jpg'),
(182, 37, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184308666.jpg'),
(183, 37, 'https://r-ak.bstatic.com/images/hotel/max1024x768/109/109718819.jpg'),
(184, 37, 'https://r-ak.bstatic.com/images/hotel/max1024x768/104/10419456.jpg'),
(185, 37, 'https://q-ak.bstatic.com/images/hotel/max1024x768/134/13451032.jpg'),
(186, 38, 'https://r-ak.bstatic.com/images/hotel/max1024x768/129/129133633.jpg'),
(187, 38, 'https://q-ak.bstatic.com/images/hotel/max1024x768/129/129133679.jpg'),
(188, 38, 'https://r-ak.bstatic.com/images/hotel/max1024x768/118/118535851.jpg'),
(189, 38, 'https://q-ak.bstatic.com/images/hotel/max1024x768/118/118535853.jpg'),
(190, 38, 'https://r-ak.bstatic.com/images/hotel/max1024x768/118/118535864.jpg'),
(191, 39, 'https://q-ak.bstatic.com/images/hotel/max1024x768/159/159068009.jpg'),
(192, 39, 'https://q-ak.bstatic.com/images/hotel/max1024x768/159/159063715.jpg'),
(193, 39, 'https://r-ak.bstatic.com/images/hotel/max1024x768/159/159068941.jpg'),
(194, 39, 'https://q-ak.bstatic.com/images/hotel/max1024x768/159/159068013.jpg'),
(195, 39, 'https://q-ak.bstatic.com/images/hotel/max1024x768/159/159068960.jpg'),
(196, 40, 'https://q-ak.bstatic.com/images/hotel/max1024x768/188/188035206.jpg'),
(197, 40, 'https://r-ak.bstatic.com/images/hotel/max1024x768/188/188035211.jpg'),
(198, 40, 'https://r-ak.bstatic.com/images/hotel/max1024x768/188/188035174.jpg'),
(199, 40, 'https://r-ak.bstatic.com/images/hotel/max1024x768/188/188035151.jpg'),
(200, 40, 'https://r-ak.bstatic.com/images/hotel/max1024x768/188/188035228.jpg'),
(201, 41, 'https://r-ak.bstatic.com/images/hotel/max1024x768/285/28533217.jpg'),
(202, 41, 'https://r-ak.bstatic.com/images/hotel/max1024x768/285/28532987.jpg'),
(203, 41, 'https://q-ak.bstatic.com/images/hotel/max1024x768/685/6850245.jpg'),
(204, 41, 'https://r-ak.bstatic.com/images/hotel/max1024x768/685/6853186.jpg'),
(205, 41, 'https://r-ak.bstatic.com/images/hotel/max1024x768/285/28585016.jpg'),
(206, 42, 'https://q-ak.bstatic.com/images/hotel/max1024x768/799/79942475.jpg'),
(207, 42, 'https://r-ak.bstatic.com/images/hotel/max1024x768/799/79942478.jpg'),
(208, 42, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/144098738.jpg'),
(209, 42, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/144097326.jpg'),
(210, 42, 'https://r-ak.bstatic.com/images/hotel/max1024x768/689/68915904.jpg'),
(211, 43, 'https://r-ak.bstatic.com/images/hotel/max1024x768/601/60101001.jpg'),
(212, 43, 'https://q-ak.bstatic.com/images/hotel/max1024x768/601/60100994.jpg'),
(213, 43, 'https://r-ak.bstatic.com/images/hotel/max1024x768/601/60100990.jpg'),
(214, 43, 'https://r-ak.bstatic.com/images/hotel/max1024x768/601/60100993.jpg'),
(215, 43, 'https://q-ak.bstatic.com/images/hotel/max1024x768/601/60100995.jpg'),
(216, 44, 'https://q-ak.bstatic.com/images/hotel/max1024x768/198/198104309.jpg'),
(217, 44, 'https://q-ak.bstatic.com/images/hotel/max1024x768/198/198112616.jpg'),
(218, 44, 'https://r-ak.bstatic.com/images/hotel/max1024x768/198/198112650.jpg'),
(219, 44, 'https://q-ak.bstatic.com/images/hotel/max1024x768/198/198112522.jpg'),
(220, 44, 'https://r-ak.bstatic.com/images/hotel/max1024x768/198/198116185.jpg'),
(221, 45, 'https://q-ak.bstatic.com/images/hotel/max1024x768/167/167867667.jpg'),
(222, 45, 'https://r-ak.bstatic.com/images/hotel/max1024x768/167/167867532.jpg'),
(223, 45, 'https://q-ak.bstatic.com/images/hotel/max1024x768/167/167867029.jpg'),
(224, 45, 'https://r-ak.bstatic.com/images/hotel/max1024x768/167/167867034.jpg'),
(225, 45, 'https://q-ak.bstatic.com/images/hotel/max1024x768/167/167867037.jpg'),
(226, 46, 'https://r-ak.bstatic.com/images/hotel/max1024x768/292/29271820.jpg'),
(227, 46, 'https://r-ak.bstatic.com/images/hotel/max1024x768/136/136215846.jpg'),
(228, 46, 'https://r-ak.bstatic.com/images/hotel/max1024x768/136/136215834.jpg'),
(229, 46, 'https://r-ak.bstatic.com/images/hotel/max1024x768/292/29271402.jpg'),
(230, 46, 'https://q-ak.bstatic.com/images/hotel/max1024x768/136/136215858.jpg'),
(231, 47, 'https://q-ak.bstatic.com/images/hotel/max1024x768/150/150183327.jpg'),
(232, 47, 'https://r-ak.bstatic.com/images/hotel/max1024x768/150/150181829.jpg'),
(233, 47, 'https://q-ak.bstatic.com/images/hotel/max1024x768/359/35988365.jpg'),
(234, 47, 'https://r-ak.bstatic.com/images/hotel/max1024x768/150/150180687.jpg'),
(235, 47, 'https://q-ak.bstatic.com/images/hotel/max1024x768/150/150183812.jpg'),
(236, 48, 'https://r-ak.bstatic.com/images/hotel/max1024x768/111/111830861.jpg'),
(237, 48, 'https://r-ak.bstatic.com/images/hotel/max1024x768/111/111830779.jpg'),
(238, 48, 'https://q-ak.bstatic.com/images/hotel/max1024x768/111/111830823.jpg'),
(239, 48, 'https://r-ak.bstatic.com/images/hotel/max1024x768/111/111831589.jpg'),
(240, 48, 'https://q-ak.bstatic.com/images/hotel/max1024x768/289/28940856.jpg'),
(241, 49, 'https://q-ak.bstatic.com/images/hotel/max1024x768/788/78832421.jpg'),
(242, 49, 'https://q-ak.bstatic.com/images/hotel/max500/788/78832454.jpg'),
(243, 49, 'https://q-ak.bstatic.com/images/hotel/max500/788/78831462.jpg'),
(244, 49, 'https://r-ak.bstatic.com/images/hotel/max1024x768/788/78832261.jpg'),
(245, 49, 'https://r-ak.bstatic.com/images/hotel/max1024x768/788/78831470.jpg'),
(246, 50, 'https://r-ak.bstatic.com/images/hotel/max1024x768/149/14900814.jpg'),
(247, 50, 'https://r-ak.bstatic.com/images/hotel/max1024x768/148/14819557.jpg'),
(248, 50, 'https://r-ak.bstatic.com/images/hotel/max1024x768/164/16497114.jpg'),
(249, 50, 'https://r-ak.bstatic.com/images/hotel/max1024x768/149/14900813.jpg'),
(250, 50, 'https://q-ak.bstatic.com/images/hotel/max1024x768/148/14813786.jpg'),
(251, 51, 'https://q-ak.bstatic.com/images/hotel/max1024x768/158/15801119.jpg'),
(252, 51, 'https://q-ak.bstatic.com/images/hotel/max1024x768/441/44195139.jpg'),
(253, 51, 'https://r-ak.bstatic.com/images/hotel/max1024x768/158/15802581.jpg'),
(254, 51, 'https://q-ak.bstatic.com/images/hotel/max1024x768/783/7831485.jpg'),
(255, 51, 'https://q-ak.bstatic.com/images/hotel/max1024x768/606/60694637.jpg'),
(256, 52, 'https://r-ak.bstatic.com/images/hotel/max1024x768/129/129756091.jpg'),
(257, 52, 'https://r-ak.bstatic.com/images/hotel/max1024x768/165/16596877.jpg'),
(258, 52, 'https://r-ak.bstatic.com/images/hotel/max1024x768/165/16596862.jpg'),
(259, 52, 'https://r-ak.bstatic.com/images/hotel/max1024x768/165/16596847.jpg'),
(260, 52, 'https://q-ak.bstatic.com/images/hotel/max1024x768/129/129756117.jpg'),
(261, 53, 'https://r-ak.bstatic.com/images/hotel/max1024x768/110/110280386.jpg'),
(262, 53, 'https://r-ak.bstatic.com/images/hotel/max1024x768/110/110280390.jpg'),
(263, 53, 'https://q-ak.bstatic.com/images/hotel/max1024x768/110/110280395.jpg'),
(264, 53, 'https://q-ak.bstatic.com/images/hotel/max1024x768/110/110280469.jpg'),
(265, 53, 'https://q-ak.bstatic.com/images/hotel/max1024x768/110/110279727.jpg'),
(266, 54, 'https://q-ak.bstatic.com/images/hotel/max1024x768/192/192949369.jpg'),
(267, 54, 'https://q-ak.bstatic.com/images/hotel/max1024x768/190/19076149.jpg'),
(268, 54, 'https://q-ak.bstatic.com/images/hotel/max1024x768/192/192949256.jpg'),
(269, 54, 'https://q-ak.bstatic.com/images/hotel/max1024x768/192/192949199.jpg'),
(270, 54, 'https://r-ak.bstatic.com/images/hotel/max1024x768/144/144084737.jpg'),
(271, 55, 'https://r-ak.bstatic.com/images/hotel/max1024x768/681/68180945.jpg'),
(272, 55, 'https://r-ak.bstatic.com/images/hotel/max1024x768/681/68180941.jpg'),
(273, 55, 'https://q-ak.bstatic.com/images/hotel/max1024x768/681/68180952.jpg'),
(274, 55, 'https://r-ak.bstatic.com/images/hotel/max1024x768/705/70561197.jpg'),
(275, 55, 'https://r-ak.bstatic.com/images/hotel/max1024x768/705/70561203.jpg'),
(276, 56, 'https://q-ak.bstatic.com/images/hotel/max1024x768/507/50739483.jpg'),
(277, 56, 'https://r-ak.bstatic.com/images/hotel/max1024x768/507/50739633.jpg'),
(278, 56, 'https://r-ak.bstatic.com/images/hotel/max1024x768/211/21166298.jpg'),
(279, 56, 'https://q-ak.bstatic.com/images/hotel/max1024x768/178/17830202.jpg'),
(280, 56, 'https://q-ak.bstatic.com/images/hotel/max1024x768/211/21154860.jpg'),
(281, 57, 'https://r-ak.bstatic.com/images/hotel/max1024x768/343/34378398.jpg'),
(282, 57, 'https://r-ak.bstatic.com/images/hotel/max1024x768/343/34378539.jpg'),
(283, 57, 'https://r-ak.bstatic.com/images/hotel/max1024x768/343/34380634.jpg'),
(284, 57, 'https://r-ak.bstatic.com/images/hotel/max1024x768/343/34382462.jpg'),
(285, 57, 'https://q-ak.bstatic.com/images/hotel/max1024x768/343/34378440.jpg'),
(286, 58, 'https://r-ak.bstatic.com/images/hotel/max1024x768/159/159998029.jpg'),
(287, 58, 'https://q-ak.bstatic.com/images/hotel/max1024x768/168/168614620.jpg'),
(288, 58, 'https://q-ak.bstatic.com/images/hotel/max1024x768/168/168614731.jpg'),
(289, 58, 'https://q-ak.bstatic.com/images/hotel/max1024x768/161/161749964.jpg'),
(290, 58, 'https://q-ak.bstatic.com/images/hotel/max1024x768/166/166921754.jpg'),
(291, 59, 'https://r-ak.bstatic.com/images/hotel/max1024x768/557/55757304.jpg'),
(292, 59, 'https://r-ak.bstatic.com/images/hotel/max1024x768/557/55757349.jpg'),
(293, 59, 'https://r-ak.bstatic.com/images/hotel/max1024x768/557/55757271.jpg'),
(294, 59, 'https://r-ak.bstatic.com/images/hotel/max1024x768/557/55757400.jpg'),
(295, 59, 'https://r-ak.bstatic.com/images/hotel/max1024x768/557/55757273.jpg'),
(296, 60, 'https://q-ak.bstatic.com/images/hotel/max1024x768/292/29293618.jpg'),
(297, 60, 'https://r-ak.bstatic.com/images/hotel/max1024x768/292/29293611.jpg'),
(298, 60, 'https://r-ak.bstatic.com/images/hotel/max1024x768/677/67760398.jpg'),
(299, 60, 'https://r-ak.bstatic.com/images/hotel/max1024x768/688/68824658.jpg'),
(300, 60, 'https://r-ak.bstatic.com/images/hotel/max1024x768/688/68824416.jpg'),
(301, 61, 'https://r-ak.bstatic.com/images/hotel/max1024x768/181/181718500.jpg'),
(302, 61, 'https://q-ak.bstatic.com/images/hotel/max1024x768/197/197851123.jpg'),
(303, 61, 'https://q-ak.bstatic.com/images/hotel/max1024x768/180/180045501.jpg'),
(304, 61, 'https://r-ak.bstatic.com/images/hotel/max1024x768/180/180044142.jpg'),
(305, 61, 'https://q-ak.bstatic.com/images/hotel/max1024x768/180/180045032.jpg'),
(306, 62, 'https://r-ak.bstatic.com/images/hotel/max1024x768/914/91473671.jpg'),
(307, 62, 'https://r-ak.bstatic.com/images/hotel/max1024x768/914/91473677.jpg'),
(308, 62, 'https://r-ak.bstatic.com/images/hotel/max1024x768/914/91473679.jpg'),
(309, 62, 'https://r-ak.bstatic.com/images/hotel/max1024x768/914/91473680.jpg'),
(310, 62, 'https://r-ak.bstatic.com/images/hotel/max1024x768/914/91473682.jpg'),
(311, 63, 'https://r-ak.bstatic.com/images/hotel/max1024x768/119/119425232.jpg'),
(312, 63, 'https://q-ak.bstatic.com/images/hotel/max1024x768/119/119425235.jpg'),
(313, 63, 'https://q-ak.bstatic.com/images/hotel/max1024x768/119/119425238.jpg'),
(314, 63, 'https://r-ak.bstatic.com/images/hotel/max1024x768/119/119425240.jpg'),
(315, 63, 'https://r-ak.bstatic.com/images/hotel/max1024x768/119/119425243.jpg'),
(316, 64, 'https://r-ak.bstatic.com/images/hotel/max1024x768/113/113679513.jpg'),
(317, 64, 'https://r-ak.bstatic.com/images/hotel/max1024x768/113/113679514.jpg'),
(318, 64, 'https://r-ak.bstatic.com/images/hotel/max1024x768/113/113679516.jpg'),
(319, 64, 'https://r-ak.bstatic.com/images/hotel/max1024x768/113/113679517.jpg'),
(320, 64, 'https://r-ak.bstatic.com/images/hotel/max1024x768/117/117928982.jpg'),
(321, 65, 'https://q-ak.bstatic.com/images/hotel/max1024x768/507/50754530.jpg'),
(322, 65, 'https://r-ak.bstatic.com/images/hotel/max1024x768/507/50754511.jpg'),
(323, 65, 'https://r-ak.bstatic.com/images/hotel/max1024x768/507/50752599.jpg'),
(324, 65, 'https://r-ak.bstatic.com/images/hotel/max1024x768/507/50753563.jpg'),
(325, 65, 'https://r-ak.bstatic.com/images/hotel/max1024x768/507/50753437.jpg'),
(326, 66, 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/13510377.jpg'),
(327, 66, 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/13510398.jpg'),
(328, 66, 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/13510366.jpg'),
(329, 66, 'https://r-ak.bstatic.com/images/hotel/max1024x768/135/13510480.jpg'),
(330, 66, 'https://q-ak.bstatic.com/images/hotel/max1024x768/252/25282436.jpg'),
(331, 67, 'https://q-ak.bstatic.com/images/hotel/max1024x768/408/40892787.jpg'),
(332, 67, 'https://r-ak.bstatic.com/images/hotel/max1024x768/369/36970243.jpg'),
(333, 67, 'https://q-ak.bstatic.com/images/hotel/max1024x768/303/30355560.jpg'),
(334, 67, 'https://q-ak.bstatic.com/images/hotel/max1024x768/369/36970241.jpg'),
(335, 67, 'https://r-ak.bstatic.com/images/hotel/max1024x768/303/30355578.jpg'),
(336, 68, 'https://r-ak.bstatic.com/images/hotel/max1024x768/122/122160795.jpg'),
(337, 68, 'https://q-ak.bstatic.com/images/hotel/max1024x768/122/122160821.jpg'),
(338, 68, 'https://r-ak.bstatic.com/images/hotel/max1024x768/122/122160835.jpg'),
(339, 68, 'https://r-ak.bstatic.com/images/hotel/max1024x768/122/122160765.jpg'),
(340, 68, 'https://q-ak.bstatic.com/images/hotel/max1024x768/123/123302029.jpg'),
(341, 69, 'https://r-ak.bstatic.com/images/hotel/max1024x768/469/46955618.jpg'),
(342, 69, 'https://r-ak.bstatic.com/images/hotel/max1024x768/469/46955613.jpg'),
(343, 69, 'https://r-ak.bstatic.com/images/hotel/max1024x768/469/46955610.jpg'),
(344, 69, 'https://r-ak.bstatic.com/images/hotel/max1024x768/469/46955651.jpg'),
(345, 69, 'https://q-ak.bstatic.com/images/hotel/max1024x768/469/46955637.jpg'),
(346, 70, 'https://r-ak.bstatic.com/images/hotel/max1024x768/190/190438242.jpg'),
(347, 70, 'https://r-ak.bstatic.com/images/hotel/max1024x768/190/190438276.jpg'),
(348, 70, 'https://r-ak.bstatic.com/images/hotel/max1024x768/190/190438312.jpg'),
(349, 70, 'https://r-ak.bstatic.com/images/hotel/max1024x768/190/190438318.jpg'),
(350, 70, 'https://q-ak.bstatic.com/images/hotel/max1024x768/190/190438252.jpg'),
(351, 71, 'https://r-ak.bstatic.com/images/hotel/max1024x768/159/159823464.jpg'),
(352, 71, 'https://r-ak.bstatic.com/images/hotel/max1024x768/199/199460519.jpg'),
(353, 71, 'https://r-ak.bstatic.com/images/hotel/max1024x768/187/187494355.jpg'),
(354, 71, 'https://q-ak.bstatic.com/images/hotel/max1024x768/187/187493385.jpg'),
(355, 71, 'https://r-ak.bstatic.com/images/hotel/max1024x768/184/184325196.jpg'),
(356, 72, 'https://r-ak.bstatic.com/images/hotel/max1024x768/154/154283027.jpg'),
(357, 72, 'https://r-ak.bstatic.com/images/hotel/max1024x768/194/194941532.jpg'),
(358, 72, 'https://r-ak.bstatic.com/images/hotel/max1024x768/196/196610216.jpg'),
(359, 72, 'https://q-ak.bstatic.com/images/hotel/max1024x768/196/196610224.jpg'),
(360, 72, 'https://r-ak.bstatic.com/images/hotel/max1024x768/196/196610235.jpg'),
(361, 73, 'https://r-ak.bstatic.com/images/hotel/max1024x768/157/157402458.jpg'),
(362, 73, 'https://q-ak.bstatic.com/images/hotel/max1024x768/157/157402460.jpg'),
(363, 73, 'https://q-ak.bstatic.com/images/hotel/max1024x768/157/157402461.jpg'),
(364, 73, 'https://q-ak.bstatic.com/images/hotel/max1024x768/158/158533846.jpg'),
(365, 73, 'https://q-ak.bstatic.com/images/hotel/max1024x768/153/153903330.jpg'),
(366, 74, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/14408007.jpg'),
(367, 74, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/14407322.jpg'),
(368, 74, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/14407358.jpg'),
(369, 74, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/14400487.jpg'),
(370, 74, 'https://q-ak.bstatic.com/images/hotel/max1024x768/144/14407102.jpg'),
(371, 75, 'https://r-ak.bstatic.com/images/hotel/max1024x768/161/161413235.jpg'),
(372, 75, 'https://r-ak.bstatic.com/images/hotel/max1024x768/161/161412891.jpg'),
(373, 75, 'https://q-ak.bstatic.com/images/hotel/max1024x768/470/47000039.jpg'),
(374, 75, 'https://q-ak.bstatic.com/images/hotel/max1024x768/161/161413252.jpg'),
(375, 75, 'https://r-ak.bstatic.com/images/hotel/max1024x768/161/161413246.jpg'),
(376, 76, 'https://q-ak.bstatic.com/images/hotel/max1024x768/157/157219975.jpg'),
(377, 76, 'https://r-ak.bstatic.com/images/hotel/max1024x768/735/73530263.jpg'),
(378, 76, 'https://r-ak.bstatic.com/images/hotel/max1024x768/735/73530295.jpg'),
(379, 76, 'https://r-ak.bstatic.com/images/hotel/max1024x768/735/73534378.jpg'),
(380, 76, 'https://q-ak.bstatic.com/images/hotel/max1024x768/865/86559613.jpg'),
(381, 77, 'https://r-ak.bstatic.com/images/hotel/max1024x768/222/22291939.jpg'),
(382, 77, 'https://r-ak.bstatic.com/images/hotel/max1024x768/222/22292516.jpg'),
(383, 77, 'https://q-ak.bstatic.com/images/hotel/max1024x768/222/22292771.jpg'),
(384, 77, 'https://r-ak.bstatic.com/images/hotel/max1024x768/222/22292335.jpg'),
(385, 77, 'https://r-ak.bstatic.com/images/hotel/max1024x768/222/22291525.jpg'),
(386, 78, 'https://q-ak.bstatic.com/images/hotel/max1024x768/233/23361282.jpg'),
(387, 78, 'https://q-ak.bstatic.com/images/hotel/max1024x768/149/149367740.jpg'),
(388, 78, 'https://q-ak.bstatic.com/images/hotel/max1024x768/152/152443569.jpg'),
(389, 78, 'https://q-ak.bstatic.com/images/hotel/max1024x768/233/23361277.jpg'),
(390, 78, 'https://q-ak.bstatic.com/images/hotel/max1024x768/384/38476506.jpg'),
(391, 79, 'https://r-ak.bstatic.com/images/hotel/max1024x768/103/10375305.jpg'),
(392, 79, 'https://q-ak.bstatic.com/images/hotel/max1024x768/600/60036114.jpg'),
(393, 79, 'https://q-ak.bstatic.com/images/hotel/max1024x768/103/10375317.jpg'),
(394, 79, 'https://q-ak.bstatic.com/images/hotel/max1024x768/600/60037896.jpg'),
(395, 79, 'https://q-ak.bstatic.com/images/hotel/max1024x768/103/10376674.jpg'),
(396, 80, 'https://q-ak.bstatic.com/images/hotel/max1024x768/655/65508115.jpg'),
(397, 80, 'https://r-ak.bstatic.com/images/hotel/max1024x768/655/65508053.jpg'),
(398, 80, 'https://r-ak.bstatic.com/images/hotel/max1024x768/655/65507932.jpg'),
(399, 80, 'https://r-ak.bstatic.com/images/hotel/max1024x768/655/65508106.jpg'),
(400, 80, 'https://q-ak.bstatic.com/images/hotel/max1024x768/655/65508197.jpg'),
(401, 81, 'https://q-ak.bstatic.com/images/hotel/max1024x768/177/177934232.jpg'),
(402, 81, 'https://r-ak.bstatic.com/images/hotel/max1024x768/177/177934258.jpg'),
(403, 81, 'https://q-ak.bstatic.com/images/hotel/max1024x768/180/180665082.jpg'),
(404, 81, 'https://q-ak.bstatic.com/images/hotel/max1024x768/180/180665081.jpg'),
(405, 81, 'https://r-ak.bstatic.com/images/hotel/max1024x768/177/177934135.jpg'),
(406, 82, 'https://r-ak.bstatic.com/images/hotel/max1024x768/349/34991486.jpg'),
(407, 82, 'https://r-ak.bstatic.com/images/hotel/max1024x768/349/34991337.jpg'),
(408, 82, 'https://q-ak.bstatic.com/images/hotel/max1024x768/349/34991350.jpg'),
(409, 82, 'https://q-ak.bstatic.com/images/hotel/max1024x768/349/34991352.jpg'),
(410, 82, 'https://r-ak.bstatic.com/images/hotel/max1024x768/349/34991386.jpg'),
(411, 83, 'https://q-ak.bstatic.com/images/hotel/max1024x768/181/181016074.jpg'),
(412, 83, 'https://q-ak.bstatic.com/images/hotel/max1024x768/181/181015966.jpg'),
(413, 83, 'https://q-ak.bstatic.com/images/hotel/max1024x768/181/181016051.jpg'),
(414, 83, 'https://r-ak.bstatic.com/images/hotel/max1024x768/181/181016426.jpg'),
(415, 83, 'https://q-ak.bstatic.com/images/hotel/max1024x768/181/181015821.jpg'),
(416, 84, 'https://q-ak.bstatic.com/images/hotel/max1024x768/618/61840623.jpg'),
(417, 84, 'https://r-ak.bstatic.com/images/hotel/max1024x768/618/61841496.jpg'),
(418, 84, 'https://r-ak.bstatic.com/images/hotel/max1024x768/618/61846876.jpg'),
(419, 84, 'https://q-ak.bstatic.com/images/hotel/max1024x768/767/76799505.jpg'),
(420, 84, 'https://r-ak.bstatic.com/images/hotel/max1024x768/618/61849822.jpg'),
(421, 85, 'https://r-ak.bstatic.com/images/hotel/max1024x768/575/57544502.jpg'),
(422, 85, 'https://r-ak.bstatic.com/images/hotel/max1024x768/453/45328363.jpg'),
(423, 85, 'https://q-ak.bstatic.com/images/hotel/max1024x768/575/57507442.jpg'),
(424, 85, 'https://q-ak.bstatic.com/images/hotel/max1024x768/838/83896251.jpg'),
(425, 85, 'https://q-ak.bstatic.com/images/hotel/max1024x768/575/57507468.jpg'),
(426, 86, 'https://q-fa.bstatic.com/images/hotel/max1024x768/126/126089511.jpg'),
(427, 86, 'https://r-fa.bstatic.com/images/hotel/max1024x768/126/126089517.jpg'),
(428, 86, 'https://q-fa.bstatic.com/images/hotel/max1024x768/126/126068420.jpg'),
(429, 86, 'https://q-fa.bstatic.com/images/hotel/max1024x768/126/126068448.jpg'),
(430, 86, 'https://r-fa.bstatic.com/images/hotel/max1024x768/126/126068509.jpg'),
(431, 87, 'https://q-fa.bstatic.com/images/hotel/max1024x768/155/155625668.jpg'),
(432, 87, 'https://r-fa.bstatic.com/images/hotel/max1024x768/197/197647725.jpg'),
(433, 87, 'https://q-fa.bstatic.com/images/hotel/max1024x768/197/197647357.jpg'),
(434, 87, 'https://q-fa.bstatic.com/images/hotel/max1024x768/197/197647223.jpg'),
(435, 87, 'https://q-fa.bstatic.com/images/hotel/max1024x768/196/196419059.jpg'),
(436, 88, 'https://t-ec.bstatic.com/images/hotel/max1024x768/733/73388110.jpg'),
(437, 88, 'https://t-ec.bstatic.com/images/hotel/max1024x768/733/73388251.jpg'),
(438, 88, 'https://t-ec.bstatic.com/images/hotel/max1024x768/733/73388385.jpg'),
(439, 88, 'https://t-ec.bstatic.com/images/hotel/max1024x768/733/73388641.jpg'),
(440, 88, 'https://t-ec.bstatic.com/images/hotel/max1024x768/408/40895297.jpg'),
(441, 89, 'https://r-fa.bstatic.com/images/hotel/max1024x768/384/38478633.jpg'),
(442, 89, 'https://r-fa.bstatic.com/images/hotel/max1024x768/384/38479052.jpg'),
(443, 89, 'https://q-fa.bstatic.com/images/hotel/max1024x768/384/38479015.jpg'),
(444, 89, 'https://q-fa.bstatic.com/images/hotel/max1024x768/384/38478995.jpg'),
(445, 89, 'https://q-fa.bstatic.com/images/hotel/max1024x768/390/39000968.jpg'),
(446, 90, 'https://q-fa.bstatic.com/images/hotel/max1024x768/171/171998997.jpg'),
(447, 90, 'https://r-fa.bstatic.com/images/hotel/max1024x768/171/171998867.jpg'),
(448, 90, 'https://q-fa.bstatic.com/images/hotel/max1024x768/171/171998843.jpg'),
(449, 90, 'https://q-fa.bstatic.com/images/hotel/max1024x768/171/171998784.jpg'),
(450, 90, 'https://q-fa.bstatic.com/images/hotel/max1024x768/171/171998763.jpg'),
(451, 91, 'https://t-ec.bstatic.com/images/hotel/max1024x768/182/182024888.jpg'),
(452, 91, 'https://s-ec.bstatic.com/images/hotel/max1024x768/181/181549998.jpg'),
(453, 91, 'https://s-ec.bstatic.com/images/hotel/max1024x768/186/186557007.jpg'),
(454, 91, 'https://t-ec.bstatic.com/images/hotel/max1024x768/186/186557021.jpg'),
(455, 91, 'https://t-ec.bstatic.com/images/hotel/max1024x768/182/182023033.jpg'),
(456, 92, 'https://t-ec.bstatic.com/images/hotel/max1024x768/177/177371320.jpg'),
(457, 92, 'https://t-ec.bstatic.com/images/hotel/max1024x768/794/79443858.jpg'),
(458, 92, 'https://s-ec.bstatic.com/images/hotel/max1024x768/273/27346804.jpg'),
(459, 92, 'https://s-ec.bstatic.com/images/hotel/max1024x768/794/79443857.jpg'),
(460, 92, 'https://s-ec.bstatic.com/images/hotel/max1024x768/184/184671543.jpg'),
(461, 93, 'https://r-fa.bstatic.com/images/hotel/max1024x768/187/187470276.jpg'),
(462, 93, 'https://r-fa.bstatic.com/images/hotel/max1024x768/187/187470230.jpg'),
(463, 93, 'https://r-fa.bstatic.com/images/hotel/max1024x768/187/187470606.jpg'),
(464, 93, 'https://r-fa.bstatic.com/images/hotel/max1024x768/177/177170389.jpg'),
(465, 93, 'https://q-fa.bstatic.com/images/hotel/max1024x768/177/177170393.jpg'),
(466, 94, 'https://r-fa.bstatic.com/images/hotel/max1024x768/193/193234233.jpg'),
(467, 94, 'https://r-fa.bstatic.com/images/hotel/max1024x768/170/170009642.jpg'),
(468, 94, 'https://q-fa.bstatic.com/images/hotel/max1024x768/193/193233973.jpg'),
(469, 94, 'https://r-fa.bstatic.com/images/hotel/max1024x768/193/193233948.jpg'),
(470, 94, 'https://r-fa.bstatic.com/images/hotel/max1024x768/193/193233928.jpg'),
(471, 95, 'https://s-ec.bstatic.com/images/hotel/max1024x768/173/173396087.jpg'),
(472, 95, 'https://s-ec.bstatic.com/images/hotel/max1024x768/173/173388502.jpg'),
(473, 95, 'https://s-ec.bstatic.com/images/hotel/max1024x768/173/173391530.jpg'),
(474, 95, 'https://t-ec.bstatic.com/images/hotel/max1024x768/150/150810306.jpg'),
(475, 95, 'https://s-ec.bstatic.com/images/hotel/max1024x768/173/173394569.jpg'),
(476, 96, 'https://s-ec.bstatic.com/images/hotel/max1024x768/202/202333653.jpg'),
(477, 96, 'https://t-ec.bstatic.com/images/hotel/max1024x768/202/202333243.jpg'),
(478, 96, 'https://t-ec.bstatic.com/images/hotel/max1024x768/202/202332760.jpg'),
(479, 96, 'https://s-ec.bstatic.com/images/hotel/max1024x768/202/202332511.jpg'),
(480, 96, 'https://t-ec.bstatic.com/images/hotel/max1024x768/202/202332412.jpg'),
(481, 97, 'https://s-ec.bstatic.com/images/hotel/max1024x768/165/165832263.jpg'),
(482, 97, 'https://t-ec.bstatic.com/images/hotel/max1024x768/167/167102854.jpg'),
(483, 97, 'https://s-ec.bstatic.com/images/hotel/max1024x768/167/167103098.jpg'),
(484, 97, 'https://t-ec.bstatic.com/images/hotel/max1024x768/167/167106667.jpg'),
(485, 97, 'https://t-ec.bstatic.com/images/hotel/max1024x768/182/182506684.jpg'),
(486, 98, 'https://r-fa.bstatic.com/images/hotel/max1024x768/187/187476526.jpg'),
(487, 98, 'https://q-fa.bstatic.com/images/hotel/max1024x768/187/187476535.jpg'),
(488, 98, 'https://r-fa.bstatic.com/images/hotel/max1024x768/187/187476530.jpg'),
(489, 98, 'https://r-fa.bstatic.com/images/hotel/max1024x768/189/189136948.jpg'),
(490, 98, 'https://r-fa.bstatic.com/images/hotel/max1024x768/657/65721636.jpg'),
(491, 99, 'https://r-fa.bstatic.com/images/hotel/max1024x768/109/109377853.jpg'),
(492, 99, 'https://r-fa.bstatic.com/images/hotel/max1024x768/899/89958890.jpg'),
(493, 99, 'https://r-fa.bstatic.com/images/hotel/max1024x768/899/89959139.jpg'),
(494, 99, 'https://r-fa.bstatic.com/images/hotel/max1024x768/100/100854565.jpg'),
(495, 99, 'https://q-fa.bstatic.com/images/hotel/max1024x768/109/109377853.jpg'),
(496, 100, 'https://s-ec.bstatic.com/images/hotel/max1024x768/171/171149369.jpg'),
(497, 100, 'https://s-ec.bstatic.com/images/hotel/max1024x768/100/100355179.jpg'),
(498, 100, 'https://t-ec.bstatic.com/images/hotel/max1024x768/171/171149840.jpg'),
(499, 100, 'https://t-ec.bstatic.com/images/hotel/max1024x768/144/14427837.jpg'),
(500, 100, 'https://s-ec.bstatic.com/images/hotel/max1024x768/217/21735139.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `znamenitosti`
--

CREATE TABLE `znamenitosti` (
  `id` int(11) NOT NULL,
  `grad_id` int(11) NOT NULL,
  `naziv` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `znamenitosti`
--

INSERT INTO `znamenitosti` (`id`, `grad_id`, `naziv`, `slika`, `opis`, `latitude`, `longitude`) VALUES
(1, 14, 'The Lázaro Galdiano Museum', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/50134123.webp?k=3c8ddab20c21a659ce369b7c0d66791423f141abc7e1f6b07ce276477896c9bf&amp;o=', 'Set within an early 20th-century Italianate stone mansion, this extensive art collection includes an array of masterpieces. Aside from paintings, there\'s also a variety of bronze figures, ceramics, glassware and even antique weapons. Highlights include works by Goya, El Greco, Zurbarán, Murillo, Bosch, Cranach and Constable. Visitors will have access to permanent and temporary exhibitions during their visit.', 40.457489, -3.686890),
(2, 14, 'Toledo Half-day Tour', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/17720099.webp?k=348bb98552cf642e535cc55f053577d51307c51529751816663fc09e05f66c8c&o=', 'Located 43 mi south of Madrid, Toledo is an historical city listed among UNESCO’s World Heritage Sites. It’s one of the oldest towns in Europe, with architectural styles encompassing many eras from Arabian and Gothic to Mudéjar, Renaissance and Baroque.Christians, Muslims and Jews have lived together in Toldeo for centuries, earning it the nickname ‘The City of the Three Cultures’. It was also home to the great This tour lets you see El Greco’s works up close in St Tomé Church, as well as buildings like Toledo Cathedral, Santa María la Blanca Synagogue and Monastery of San Juan de los Reyes. You’ll also get to see a demonstration of the famous ‘Damascene’ technique of metalwork, which involves the incrustation of precious metals like gold and silver onto steel.', 40.415951, -3.698163),
(3, 14, 'Madrid Wax Museum', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/52833138.webp?k=2aa9bc6f61a37cf47a88452fcec7b5962da1bdb51273aa07f05e68b2b19ece43&o=', 'This museum features realistic wax sculptures of celebrities and historical figures like Leonardo DiCaprio, Angelina Jolie, Cristiano Ronaldo and more. The Gallery of Kings and other exhibits provide an overview of Spanish history, and the fun continues with a space ride and a ghost train.', 40.425133, -3.694094),
(4, 14, 'Santiago Bernabeu Stadium Tour', 'https://r-ak.bstatic.com/xdata/images/xphoto/max1024x768/64616196.webp?k=ccb95f9cfaee8699a463f6225af8e80ca6d9e4419cd26e175386c19d0b780a7e&o=', 'The Santiago Bernabeu tour takes you inside the home stadium of the Real Madrid football club. Led by an expert guide, you\'ll gain access to exclusive areas like the Presidential Box, trophy room and dressing rooms. You\'ll even get to step out on the pitch and admire panoramic views of the stadium from one of its four towers. Plenty of stories about famous players and epic matches will be shared along the way.', 40.453106, -3.690950),
(5, 14, 'Rent & Roll – 24-hour bike rental', 'https://r-ak.bstatic.com/xdata/images/xphoto/max1024x768/46429782.webp?k=2ab010eb755d77ffdc0b45ec1609f5c5ed325e307aefb71b4ccb1eb4bec47f29&o=', 'This bike hire service lets you explore the marvels of Madrid on your own custom-made route. Choose your lightweight city bike and set off down paved roads and into green parks. Staff at the hire site will provide you with maps and plenty of tips on places to visit during your time in the Spanish capital.', 40.453556, -3.692882),
(6, 14, 'Retiro', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/52827.webp?k=50825d772a0c23978cb7325f54a3f501acca6214ea50e8ef967652909eeabbe4&o=', 'This historic district can’t be missed. Loop around Retiro Park – once the royal family’s private garden, it’s full of lavish monuments and tree-lined avenues. People-watch on Paseo del Prado boulevard, filled with joggers, street vendors and locals, then spend a few hours exploring El Prado Museum’s important collection of paintings.', 40.408066, -3.693607),
(7, 15, 'Rome Wax Museum', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/15097677.jpg?k=c55a1277b9a237fa27c92cb8987ed82639babb5f0b030b4ee42d1b19df18bc89&o=', 'Inspired by the wax museums in London and Paris, this collection is the first in Italy and the third largest in Europe. The museum holds more than 250 figures, including world-famous actors, painters, poets and popes, some of them wearing their original clothes. As you wander through this multi-themed gallery, you can come face-to-face with Barack Obama, Leonardo Da Vinci, Columbus, Napoleon, Oscar Wilde or Snow White.', 41.897064, 12.481414),
(8, 15, 'Museo Leonardo da Vinci', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/32811932.jpg?k=a63b4d27b1828eda24fb5602750c076607c3786a88d8b4e29dc7bddae5fd3bb5&o=', 'Dedicated to Italy\'s great engineer and artist, Leonardo da Vinci Museum offers a comprehensive look at the Renaissance works of the master craftsman through a collection of more than 60 inventions modeled on his machines. You\'ll have the chance to explore the artist\'s unique creations via interactive exhibitions.', 41.897099, 12.466093),
(9, 15, 'Roman Houses of Caelian Hill', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/19494685.jpg?k=29310459b07fa6fd9f08a7bbeb778ecb6d43a4f077ddda2d5ce5162af9bee47f&o=', 'Located below the Basilica of Saints John and Paul, the Roman Houses of Caelian Hill are thought to be the home and burial place of those martyrs. The houses are also a spectacular example of the subterranean spaces that typified that era, giving an insight into the lives of the different social classes who once lived there. Visitors can take in 20 rooms full of well-preserved frescoes, then check out the collection of everyday artifacts in the museum.', 41.883347, 12.491245),
(10, 15, 'Big Bus Hop-On Hop-Off Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/9842096.jpg?k=7606458895c1d5c53925be1feca7714ff9d644b0298fbac6ff1a3354d6e96f62&o=', 'This tour gives you the opportunity to visit key Roman landmarks and hop on and off a double-decker bus as often as you\'d like. You can stay on board the bus for the full ride or get off at any stop along the way. Educational prerecorded audio commentary is available on board all busses, and you\'ll also have access to four free walking tours: \'Vatican and St. Peter\'s Square\' (starting at 12:00), \'Roman Forum and Colosseum\' (starting at 15:30), \'Pantheon and Piazza Navona\' (starting at 14:00) and \'Piazza Barberini and Spanish Steps\' (starting at 17:00).', 41.900696, 12.462941),
(11, 15, 'Trastevere', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/38908.webp?k=605e24238436186e0891217524e3b896cdd8f232c05245d72ebc8ac6f5953043&o=', 'Trastevere is filled with narrow, winding streets. Piazza di Santa Maria in Trastevere has plenty of lively pubs, restaurants and clubs. Head to the lookout at Piazzale Garibaldi on Janiculum Hill for a city vista, or shop for clothes and accessories on Viale Trastevere. On Sundays, visit Porta Portese flea market.', 41.891178, 12.459316),
(12, 17, 'Gaudí Exhibition Center', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/64967791.jpg?k=0ddb109f235449b685326d8c1b21d76896080ed544ac90d88ab9bd6a17859c7e&o=', 'The Gaudí Exhibition Center will take you on a journey through the famous architect\'s life, introducing you to his major works that include not less than seven UNESCO World Heritage Sites such as the Sagrada Familia, Casa Batlló and Park Güell. A 4D cinema with moving seats, a stereo screen and surround sound will bring you close to Gaudí and his creations. Virtual and augmented reality technology, touchscreens and exhibitions of his artwork complete the interactive experience.', 41.384537, 2.173944),
(13, 17, 'Chocolate Museum', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/19463763.jpg?k=9d21fe59e8f5376787b8efabb80b58865cd5a7d9200ab3bd6ae35e1d95ef6b20&o=', 'Whether you’ve got a sweet tooth or not, this chocolaty experience has something for everyone. You’ll also learn all about the origins of this scrumptious confection and its medicinal properties. Chocolate has played a key role in the social and economic fabric of Barcelona, as the Catalan capital was once a major distribution port. There are lots of tastings on offer at the museum, housed in former Saint Agustí monastery, and you can finish your trip with a cup of hot chocolate at the on-site cafe.', 41.387058, 2.179571),
(14, 17, 'Barcelona Highlights tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/64983153.jpg?k=8a43c3920af1b533a37d4530fd3ece7bed9adf4113ebb65278626f5e1d01a8ce&o=', 'Pass Gaudí masterpieces on Passeig de Gràcia before catching a cable car up to Montjuïc’s seafront panoramas. The tour winds downhill to Poble Espanyol’s model village, before wrapping up at Las Ramblas in the Gothic Quarter. Tickets to Poble Espanyol and the cable car are included.', 41.387077, 2.173005),
(15, 17, 'GoCar Experience', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/39153144.jpg?k=690a0689a37d0a773bc29dab2d61c44f1a1f6332e2dca0c7d7edf8ae924d8f36&o=', 'Cruising through the Catalan capital, your onboard GPS system will guide you and provide facts and stories about the surrounding sights, which include the Arc de Triomf and Las Ramblas. You’ll also explore the Montjuic Olympic park and marvel at the iconic Sagrada Familia and Parc Guell. A pit stop will be taken at the medieval-style Torre Bellesguard and the Guell Pavilions. You can choose between four different routes that will take you through the city\'s main attractions.', 41.389648, 2.181839),
(16, 17, 'Ciutat Vella', 'https://r-ak.bstatic.com/xdata/images/district/max1024x768/54819.webp?k=80d0f712430fd3125a34e5835e55befd19c05338b751f8b396b1c9997d10b581&o=', 'Ciutat Vella (\'Old City\') is comprised of several neighborhoods: Barri Gòtic, Raval, El Born and Barceloneta (all in more detail in separate descriptions). As a whole, the district’s characteristic features include narrow, winding streets that reach from Las Ramblas to the coast.', 41.376873, 2.163100),
(17, 20, 'Legendary Burgers at Hard Rock Cafe', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/46837803.jpg?k=db826c68614f870e3037772d4060e11be292ebe04626620e802441a754c4025c&o=', 'Located just around the corner from Hyde Park, Hard Rock Cafe London – the brand\'s flagship branch – pairs rock \'n\' roll culture with delicious American-style cuisine. This offer gives you a discount on one of their Legendary Burgers, which you can enjoy while surrounded by rock music memorabilia. After your meal, head down into The Vault – a treasure trove of more historic rock-themed items from across the globe.', 51.503960, -0.151460),
(18, 16, 'Rijksmuseum', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/49774016.jpg?k=92657ad052b9a09c54a7d0e13e1c5b77087ddaabd5f65c00a54cc54c8b4d2067&o=', 'The Rijksmuseum is the most-visited museum in the Netherlands, and houses a collection featuring art from the Middle Ages to the present day. You’ll see more than 8,000 masterpieces in this breathtaking building, including Rembrandt’s \'The Night Watch\' and Vermeer’s \'The Milkmaid.\' If you have time, you can also walk through the Gallery of Honor.', 52.359661, 4.882916),
(19, 16, 'The Oude Kerk (Old Church)', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/11511602.jpg?k=bad6882d33e69df22b71059a0b28460ac5a9390827e32896839ce39063920e91&o=', 'Surrounded by stained-glass windows and period decor, this 800-year-old church is Amsterdam\'s oldest building and hosts contemporary art exhibitions and a pretty garden cafe.', 52.374371, 4.896018),
(20, 15, 'Aventino', 'https://r-ak.bstatic.com/xdata/images/district/max1024x768/48322.webp?k=5bb9a09026f8ab3d3f7386b54483bd38ff8f2b426688599863c6687b3cb7423d&o=', 'Aventino is known for its medieval churches. The Bocca della Verità (the \'mouth of truth\') is right at the entrance to Santa Maria in Cosmedin church. The Rose Garden contains 1100 varieties of roses, and nearby you’ll find Circus Maximus, an ancient Roman chariot-racing stadium.', 41.882496, 12.468885),
(21, 20, 'London Film Museum – Bond in Motion Exhibition', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/37238451.jpg?k=e44251c3119d186a97376d91c544b3e9dadaf2e645288ebfd9e537d0494347e0&o=', 'This official exhibition of James Bond vehicles showcases the various modes of transport used by the big screen’s most famous spy. As well as gadget-filled cars, visitors will also feast their eyes on aircraft, boats and motorcycles. Audio guides are recorded by Ben Collins – the stunt double for Daniel Craig in films \'Casino Royale\' and \'Quantum of Solace\', and the original \'Stig\' from Top Gear.', 51.512299, -0.123437),
(22, 19, 'Dalí­ - The Exhibition at Potsdamer Platz Guided Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/29218438.jpg?k=ec2c43be50bc31ac508c9d7f4deb5c29e1e5d6725c6ec1051523d8456d5a1a69&o=', 'With over 450 individual artworks from private collections worldwide, Dalí – The Exhibition showcases Salvador Dalí\'s fascinating surrealist style through permanent and temporary exhibitions. A team of experts will guide you through the exhibition, providing insight into the many different artistic techniques Dalí used.', 52.508877, 13.376387),
(23, 16, 'Cheese Tasting Experience', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/38899317.jpg?k=0757e1c89fec861e571262f277d2b7fe79c211b7d7c71e14aab4e7f63684f4b8&o=', 'A cheese tasting lesson at Henri Willig\'s Cheese & More store, with traditional Dutch cheeses including Baby Gouda. On the tour, your guide will explain how cheeses are made and you\'ll watch a short film about this artisanal craft. Cheese is accompanied by mustard and dips, and either a glass of wine, beer, or soft drink.', 52.366539, 4.892331),
(24, 16, 'Oud Zuid', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/44390.webp?k=fbd6d7855ae6973b8236dd3ebcb36e9d1d2739563c114ddde644672fbb8f9114&o=', 'The \'Old South\' is Amsterdam’s most elegant neighborhood, with a mix of commercial and residential areas. The luxurious PC Hooftstraat features designer-label clothing and accessories, and a stroll along the Northern Amstel Canal will take you to one of the many parks in the area.', 52.350296, 4.858702),
(25, 20, 'Tower of London with Beefeater Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/37071220.jpg?k=b01754f82671f542da9fd145ed952503497b3e11a3b77cab3137d96a6c39eeae&o=', 'This experience includes a tour of the storied castle grounds at the Tower of London and you\'ll be taken around by real-life Beefeaters, the famous guardians of the Tower. You\'ll hear fascinating stories about the Tower’s gruesome history and you\'ll even get a peek at the dazzling Crown Jewels. Explore the tower and its displays at your leisure or join one of the guided tours throughout the day.', 51.508114, -0.078130),
(26, 19, 'Discover Berlin Walking Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/23041117.jpg?k=22f3d1a3dc385bda2f72de3a895f77bb235137705aa4da97bbd07361bd384e2d&o=', 'Taking in the awe-inspiring history of the city, this walking tour also encompasses the city’s main sights. Visitors will touch the Berlin Wall, walk through the Brandenburg Gate and stand over the remains of Hitler’s former bunker.', 52.523293, 13.399981),
(27, 19, 'Charlottenburg', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/44402.webp?k=ccf8f672e3533ba7fe512b9c31be3cd51f378c664ac7c5582d29d717d13a671f&o=', 'This arty district is home to affluent city-dwellers. There’s a bucolic feel to the lush grounds of the Charlottenburg Palace, which houses a collection of opulent treasures. Kaiser-Wilhelm Memorial Church is a haunting place to spend an afternoon, followed by a splurge at KaDeWe – Continental Europe’s largest department store.', 52.515640, 13.276044),
(28, 16, 'Hop-On, Hop-Off Canal Boat', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/21715115.jpg?k=a757cfeb2be7fdd3b88ee00464e08801fbdf4d00ac9f48d05ff2a9448ca69be7&o=', 'This hop-on/hop-off boat tour of Amsterdam allows visitors to explore this historic city at their own pace. The tour provides 24-hour access to a canal boat, giving guests time to see landmarks across the city.', 52.366566, 4.877010),
(29, 19, 'DDR Museum', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/37969629.jpg?k=9428dca744a9953ae3304ac2d548cbda155862e980a9f0654d86805757fc1a97&o=', 'This museum offers a fascinating look at life in the former German Democratic Republic, or East Germany. Visitors can view a replica of a 1980s apartment, take a virtual tour in a Trabi car and learn how the Stasi secret police controlled citizens.', 52.519630, 13.400586),
(30, 19, 'One-hour City Centre Tour Boat Cruise', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/38607579.jpg?k=95692abfac7e5caf46938d848be6b5e32434538a44fd4ebd314a68259daf382f&o=', 'A sightseeing cruise along the banks of the River Spree, taking in many of Berlin’s historic landmarks, such as Reichstag and Berlin Cathedral. An English-speaking guide will be on board to explain how the city has developed over the years.', 52.522064, 13.387572),
(31, 18, 'Leopoldstadt', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/45737.webp?k=1af7d85387fdd3f8ce3aa23a4c56927d1cd97e51ab528d0dcee323e6fab79f6a&o=', 'This district features two of Vienna’s biggest draws in one place: the Prater Park and its giant Ferris Wheel. A fairly traditional neighborhood, with many synagogues and kosher shops that cater to the largely Jewish population. On Saturdays, visit the bustling Karmeliter Market for food and contemporary art.', 48.203857, 16.392258),
(32, 18, 'Schönbrunn Palace and Bus City Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/33775528.jpg?k=06310567952c20a59ba4fd685e1a887c1d87c4f4af106634cc663f404b6274d9&o=', 'This guided tour will give you an overview of the most important spots in Vienna along the famous Ringstrasse including the State Opera House, the Art and Natural History Museum, the Parliament, the City Hall and the National Theater. The tour also includes entry to Schönbrunn Palace. Once inside, you will enjoy a guided tour of the State Rooms, while you will also have some free time at your disposal.', 48.185818, 16.310575),
(33, 18, 'KUNST HAUS WIEN Museum Hundertwasser', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/57841936.jpg?k=cf804940ec0112c5097694cbf2b4e194f71edda0f561bad8313a47c990857bdf&o=', 'This museum houses a wealth of contemporary art, with a strong focus on photography. Visitors will also find a permanent exhibition of works by the Austrian artist Friedensreich Hundertwasser, who designed the museum.', 48.211079, 16.391096),
(34, 17, 'Eixample', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/37908.webp?k=52ec38815dc1e3a1a3bd716bcd21161e635ad6322f63b46421ab87c19449ba74&o=', 'L’Eixample’s large, grid-like avenues (modeled after New York) are easy to navigate. Passeig de Gràcia (in the center) is a tourist hot-spot, with Gaudí\'s Casa Batlló and La Pedrera, as well as Puig i Cadafalch\'s Casa Amatller within easy reach. Carrer Balmes is a safe and tolerant area for all kinds of travelers.', 41.393513, 2.147176),
(35, 19, 'German Spy Museum Berlin', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/29553822.jpg?k=1f6dcc8c3bf917592d06a2e9e92456c73a57e4c5e8fe438106a3820c56439c0c&o=', 'Berlin’s recently opened German Spy Museum unveils spectacular secret operations, mysterious espionage cases and fabled spies from the Cold War. The ‘Capital of Spies’ exhibition also displays meticulously reproduced replicas, which are supported with multimedia guides.', 52.508987, 13.377081),
(36, 17, 'Museum of Modernism', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/39148834.jpg?k=d7ce534c0ae77fe6bcb38bb6cf3560f7e06202d32634a5b28164d6de65a93186&o=', 'At this institution of art and culture, you can observe and admire the Museum of Modernism’s unique collection of paintings and sculptures. The museum displays original pieces from Gaudí and Rusiñol among others.', 41.388832, 2.161290),
(37, 18, 'Day trip to Danube Valley', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/37883754.jpg?k=2ef0d94ea5dd73512109eab0ff544e4e0c2ddb1dcb9fac46cd6678885e7ecf5a&o=', 'This day trip to the Danube Valley will take you to Danube’s Wachau Valley, a UNESCO World Heritage Site known for its many medieval castles, monasteries and excellent wines. You will drive through the wine-growing region of Krems, stop to see the ruins of Duernstein castle and take a boat ride in summer or lunch at Hotel zum Schwarzen Baeren in winter. The day trip also includes a guided tour of the Benedictine Abbey in Melk, one of Austria\'s most famous baroque buildings.', 48.220829, 16.239973),
(38, 18, 'MUMOK The Museum of Modern Art Ludwig Foundation', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/50493923.jpg?k=faa3ff6949a66d0b3039baad0f2559b9c460891b38ae3a3cbeac95838987b3e7&o=', 'Also known as MUMOK, this visually striking stone-clad building is home to the largest museum of modern and contemporary art in central Europe. Inside, there’s a large collection of work from all over the world, dating from the 20th century to the present day.', 48.203785, 16.355644),
(39, 15, 'Ancient Rome Segway Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/48761260.jpg?k=9883344da66ef6b3467aa8f8ea9b731f94fb0255a429e4c6c7c2028e96f69e4e&o=', 'Sightsee across Ancient Rome on an eco-friendly Segway. The tour provides the opportunity for you to experience highlights such as the Colosseum, Circus Maximus and Roman Forum. Uniquely created for this tour, the stop at each landmark is supported by audio-visual presentations on a personal iPod provided. The landmark visits offer an exterior experience and you can access those offering free entry. Each tour departs from and returns to the Rome by Segway office, located near the Colosseum where you will have access to water, WiFi and bathroom facilities.', 41.900715, 12.456375),
(40, 20, 'Big Bus Hop-On Hop-Off Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/37382584.jpg?k=827cba2b7911e3991b7285476791ceea814a6b78c84c17ed04bfe2bfc42424b2&o=', 'This guided tour allows you to soak up the city\'s atmosphere and enjoy fascinating facts about London\'s rich culture and dramatic history. The open-top double-decker buses have over 50 stops near landmarks and attractions such as Piccadilly Circus, Tower Bridge, Buckingham Palace and London Eye. You can then hop off the bus to explore as often as you wish, and re-join the tour when you\'re ready.', 51.503990, -0.166781),
(41, 21, 'National Museum of Modern Art Pompidou – Tourism Board Ticket', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/11816522.jpg?k=cbecb4a7fa539c49e24ffc5609adfab4cc3a60f29495281bb8202035a5837613&o=', 'The Centre Pompidou is an architectural marvel, immediately recognisable by its exterior escalators and enormous coloured tubing. Inside, visitors can see one of the world\'s largest modern art collections, home to masterpieces by the likes of Miro, Dali and Kandinsky.', 48.860645, 2.350056),
(42, 20, 'Kensington', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/37892.webp?k=66e78f2e313551fb1d1fefe698b69d3f7c9ef4d763e006f0286220f129917d63&o=', 'Kensington is a mix of residential and commercial areas that ooze class. Stretching from Old Brompton Road to Kensington High Street, you’ll find bistros, cafés and boutiques galore. Stop to admire Kensington Palace, or visit the nearby Victoria and Albert and Natural History Museums. The streets around Holland Park are perfect for walking.', 51.495930, -0.210027),
(43, 20, 'Stonehenge, Bath and Windsor Tour with Lunch', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/14473699.jpg?k=5a026fb53632fc84c1a55e96e90544748ebd7c654fd18e2887bd1a5ca19beab2&o=', 'This day trip takes in three of the UK\'s most famous destinations, starting at the Queen\'s favoured royal residence of Windsor Castle. You\'ll then move onto the mysterious Neolithic site of Stonehenge before enjoying a free lunch. The tour concludes at the UNESCO World Heritage Site of Bath city centre, where you\'ll observe the ancient Roman Baths and the Pump Room.', 51.493877, -0.146170),
(44, 21, 'Grévin Paris – Celebrity Wax Museum', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/18610836.jpg?k=258349ef0e23a912dfa875916a46b589753f2e57262da715724c0ddef6af90a6&o=', 'With over 200 intricate waxwork models, the Musée Grévin promises unforgettable encounters with world-famous personalities from the past and the present. Pose alongside stars such as George Clooney, Brad Pitt and Marilyn Monroe, or politicians like Angela Merkel and Donald Trump.', 48.871841, 2.340031),
(45, 21, 'Big Bus Paris', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/40751464.jpg?k=71ea1df7b0dffabc2f7e816c0e71eaab4ac4c0c40514832261e24c0d348f1285&o=', 'This hop-on, hop-off tour includes the Central and Montmartre lines which pass over 50 famous sights. A night tour route is also available, offering you the chance to see the illuminated landmarks of Paris on a two-hour trip. A cruise along the Seine river can be added as an optional extra and provides an entirely different way to explore the sights.', 48.867657, 2.307217),
(46, 21, 'Opera Garnier Guided Tour', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/31831555.jpg?k=f487c377dc0d6f1dadf707fc2db8085c1aa0b6bf96425e4025194d7a63be367d&o=', 'This tour of the baroque designs of the Opera Garnier offers a peek at 19th-century splendour. See the steps where well-dressed attendees descended and view the impressive sculptures and paintings housed in this extravagant building. The tour ends in the Glacier Rotunda, a later addition to the building.', 48.871971, 2.329412),
(47, 21, 'VIP Access to Palace of Versailles', 'https://q-xx.bstatic.com/xdata/images/xphoto/900x600/19557018.jpg?k=b883efb3cfcc5701a16a971232a9b1776f9396b83d905952e6b9a23255c3ff8f&o=', 'The Palace of Versailles is home to over 60,000 artefacts and the famous Hall of Mirrors. Guests can choose between a guided tour or an audio guide for a self-guided tour. Tickets are also valid for the famous gardens and when fountain shows are taking place from April until October. Visitors may choose an option which includes the Marie-Antoinette Trianon.', 48.804867, 2.117887),
(48, 21, '1st arr.', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/42035.webp?k=8e4c3ad81d68dc89dd78ba64740f0294de8d4f7ac832df63445667fbd5e65b2a&o=', 'Many visitors head straight for the Louvre, but it\'s worth exploring the other landmarks, museums, shops, restaurants and bars that make up this small district on the right bank of the River Seine. The area also includes the western part of the Île de la Cité. Don’t miss the Orangerie Museum, Sainte Chapelle or the Palais Royal Gardens.', 48.862011, 2.327166),
(49, 22, 'Rahmi M. Koç Museum', 'https://r-ak.bstatic.com/xdata/images/xphoto/max1024x768/51393927.webp?k=7512162fbd21e7561bbac4e13c957cc393a43e407dc50e379c2f71096a72e256&o=', 'You’ll learn more about the history of transportation, industry and communication in this museum. Featuring thousands of items from miniatures to a full-sized submarine, the collection is housed in two historic buildings and an open-air exhibition area. Located in a beautiful building on the shore of the historic Golden Horn, the museum houses the collection of thousands of items from gramophone needles to full size aircraft.', 41.041660, 28.946983),
(50, 22, 'Istanbul Toy Museum', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/52831478.webp?k=6ae46d3bdd6a24df3644e00583a7fb68035bea507b958080e70592b96b646d7d&o=', 'Established by poet and writer Sunay Akın, Istanbul Toy Museum is home to thousands of toys, some of which date back over 400 years. Inside, a gallery of space-related toys comes with shining stars overhead, and miniature train sets are displayed in a genuine train compartment. You’ll even pass through a submarine on your way to the bathroom. Afterwards, take a break in a cafe decorated with antique dollhouses and miniature furniture. Then, pass by the gift shop where Sunay Akin\'s books and other toy-themed souvenirs are sold.', 40.975887, 29.068480),
(51, 22, 'Guided Tour of Princes Island from Istanbul', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/49610248.webp?k=ec3689284583fb4cdf43d5cbf883875d64c9327f86c3d806bb4411706fdc0266&o=', 'Cruise over Sea of Marmara to the Princes\' Islands famous for their beautiful pine woods and beaches. The largest and most popular of the islands is Buyukada. There you can enjoy a ride in a horse-drawn carriage among the pine trees after relaxing on the beaches in the numerous coves of its coast. Spend a slow and quiet day as you pass by traditional Ottoman mansions and Victorian villas, listening to sounds of hoof beats and bicycles along the way. There also may be a chance to spot the other islands as you sail around the Golden Horn. Evening return to Istanbul and transfer to hotel as the tour finishes between 17:00 and 18:00.', 40.975998, 29.000628),
(52, 22, 'Bursa Full Day Tour from Istanbul', 'https://r-ak.bstatic.com/xdata/images/xphoto/max1024x768/49609424.webp?k=0e95ce33a60e4e37b5f241f719b1c756a4af79603e44989d9aa770b00c6b3424&o=', 'This full-day guided tour takes visitors to the main sights of Bursa, starting with a ferry ride from Istanbul and then a drive through the countryside to the former Ottoman capital. It also includes a cable car ride to the top of Uludağ – known historically as Mount Olympus – so you can enjoy stunning panoramic views. After lunch, you\'ll visit the old Silk Market in the covered bazaar, as well as the Green Mosque, Grand Mosque and a 600-year-old pine tree and several outlet malls, before returning to Istanbul in the evening.', 41.023682, 28.960243),
(53, 22, 'Full Day Trip to Masukiye and Lake Sapanca', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/49610916.webp?k=9e71cf6f641e95942d55ed108ec6d6fe12e495d80255fc29099f069f8deda203&o=', 'This day trip begins with a trip to a scenic botanical garden with over 400 plant species and 8,000 plant populations. Afterwards, lunch will be served in Masukiye\'s forest beside a picturesque waterfall, providing plenty of time to relax and take photos. The tour ends with a tea break at beautiful Lake Sapanca.', 40.717537, 30.170397),
(54, 22, 'Old City Sultanahmet', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/37938.webp?k=73a06465b3e8f8da218b73fc465a05433cdf0f4771ebbb6726047bb8b2ff3361&o=', 'Begin your adventure in Sultanahmet Square, gateway to the historic centre. In Topkapi Palace, Byzantine artefacts sparkle through the display cases as light beams in. Hagia Sophia’s mosaics are time worn, reflecting the history of a space that has been both mosque and church across 1.5 millennia. Zany bars and cosy cafes beckon you.', 41.006603, 28.968433),
(55, 23, 'Moscow Museum of Soviet Arcade Machines', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/54113120.webp?k=f84b7667b978c7f3d0fb63af5dba5ac6641c6fc987d94a5ae8ec3a34b94e9170&o=', 'The Museum of Soviet Arcade Machines was founded by three young enthusiasts who collected arcade machines from different parts of the former Soviet Union. They brought them back to life so that you can revel in nostalgia as you play games like ‘Magistral’, ‘Sniper’, ‘Battleship’ and ‘Rally M’. Now more than ten years old, the museum hosts an ever-growing collection of arcades.', 55.761745, 37.619015),
(56, 23, 'The Museum of Technics of Vadim Zadorozhny', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/45614803.webp?k=ae6a190561c70b89214d6b581213df043e0ee8a1c2f435e41abd79d4810916a9&o=', 'With around 1,000 exhibits in its collection, this museum houses Russia’s largest private collection of vintage technical equipment. You can find an array of antique cars, motorcycles and engines on display, and there is also an area dedicated to military aircraft and armoured vehicles used during WWII.', 55.796539, 37.296059),
(57, 23, 'Moscow Metro Tour', 'https://q-ak.bstatic.com/xdata/images/xphoto/max1024x768/40760219.webp?k=835d7b2a74c9aa14e71fe613d40ab9c46e28d144c87627644ab1d0464491e847&o=', 'Nicknamed \'the people\'s palace\', Moscow Metro is often touted as one of the world\'s most beautiful Metro systems. With stunning sculptures at Kurskaya Station\'s lobby, stained glass panels at Novoslobodskaya station, and mural mosaics at Komsomolskaya station, it\'s a veritable showcase for Soviet-era artists. Many stations, such as  Komsomolskaya, Revolution square, Novoslobodskaya and Mayakovskaya, were constructed under rule of Stalin, and have interesting stories behind them. Listen as your guide reveals all about this historic Metro system.', 55.784847, 37.506496),
(58, 23, 'Communist Moscow Tour', 'https://r-ak.bstatic.com/xdata/images/xphoto/max1024x768/49972912.webp?k=6f84d4fcb2c6ab32d1d9fadf7614875103f020116a83a535788d03c25777ba7d&o=', 'During the tour, the guide will take you to the Bolshoi theatre and the first McDonalds in the USSR. Your guide will tell you about the hidden pages of Soviet history from the Great October Revolution to Perestroika, from Lenin to Gorbachev. You will also learn about the Great Terror under Stalin, the GULAG system, secret KGB prison and how people lived in the Soviet Union.', 54.467140, 19.847858),
(59, 23, 'Kremlin Guided Tour', 'https://r-ak.bstatic.com/xdata/images/xphoto/max1024x768/43714823.webp?k=e10de5c4757b324f2947f3cf23e1a5951074ba14080b142bb8eaff4d30bec0fb&o=', 'The Moscow Kremlin encapsulates Russia’s long and fascinating history, as well as its spiritual and cultural heritage. This guided tour lets you explore and learn all about the complex, which includes attractions like Tsar Cannon, Tsar Bell and Cathedral Square. Uspenskii Cathedral, one of the stops of the tour, is the heart of the Russian Orthodox Church. It has been the setting for important coronations and election ceremonies, as well as many monumental political decisions. You\'ll also have the option to select a combination ticket that allows you access to the Armoury Chamber. Besides weapons and other historic military equipment, various historical treasures are displayed at this museum.', 55.750118, 37.613583),
(60, 23, 'Zamoskvorechye', 'https://q-ak.bstatic.com/xdata/images/district/max1024x768/46846.webp?k=548f9f8a568b744104b7467ab35e56502108cb9ad25153383e155d212b4b2056&o=', 'Wind back your pocket watch and get lost in Soviet-era glamour. Zamoskvorechye’s faded beauty comes into focus as you wind through the streets. Every turn reveals dramatic neo-classical architecture. The State Tretyakov Gallery is an essential stop for lovers of fine art, consistently ranked among Russia’s best collections.', 55.735020, 37.599377);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback_grad`
--
ALTER TABLE `feedback_grad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnici_id` (`korisnici_id`),
  ADD KEY `grad_id` (`grad_id`);

--
-- Indexes for table `feedback_hotel`
--
ALTER TABLE `feedback_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`,`korisnici_id`),
  ADD KEY `korisnici_id` (`korisnici_id`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grad_id` (`grad_id`);

--
-- Indexes for table `komentari_grad`
--
ALTER TABLE `komentari_grad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_grad_id` (`feedback_grad_id`),
  ADD KEY `korisnici_id` (`korisnici_id`);

--
-- Indexes for table `komentari_hotel`
--
ALTER TABLE `komentari_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnici_id` (`korisnici_id`,`feedback_hotel_id`),
  ADD KEY `feedback_hotel_id` (`feedback_hotel_id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `login_tabela`
--
ALTER TABLE `login_tabela`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnici_id` (`korisnici_id`);

--
-- Indexes for table `slike_hotela`
--
ALTER TABLE `slike_hotela`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `znamenitosti`
--
ALTER TABLE `znamenitosti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grad_id` (`grad_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback_grad`
--
ALTER TABLE `feedback_grad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback_hotel`
--
ALTER TABLE `feedback_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `komentari_grad`
--
ALTER TABLE `komentari_grad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `komentari_hotel`
--
ALTER TABLE `komentari_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_tabela`
--
ALTER TABLE `login_tabela`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `znamenitosti`
--
ALTER TABLE `znamenitosti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback_grad`
--
ALTER TABLE `feedback_grad`
  ADD CONSTRAINT `feedback_grad_ibfk_1` FOREIGN KEY (`korisnici_id`) REFERENCES `korisnici` (`id`),
  ADD CONSTRAINT `feedback_grad_ibfk_2` FOREIGN KEY (`grad_id`) REFERENCES `grad` (`id`);

--
-- Constraints for table `feedback_hotel`
--
ALTER TABLE `feedback_hotel`
  ADD CONSTRAINT `feedback_hotel_ibfk_1` FOREIGN KEY (`korisnici_id`) REFERENCES `korisnici` (`id`),
  ADD CONSTRAINT `feedback_hotel_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`grad_id`) REFERENCES `grad` (`id`);

--
-- Constraints for table `komentari_grad`
--
ALTER TABLE `komentari_grad`
  ADD CONSTRAINT `komentari_grad_ibfk_1` FOREIGN KEY (`feedback_grad_id`) REFERENCES `feedback_grad` (`id`),
  ADD CONSTRAINT `komentari_grad_ibfk_2` FOREIGN KEY (`korisnici_id`) REFERENCES `korisnici` (`id`);

--
-- Constraints for table `komentari_hotel`
--
ALTER TABLE `komentari_hotel`
  ADD CONSTRAINT `komentari_hotel_ibfk_1` FOREIGN KEY (`feedback_hotel_id`) REFERENCES `feedback_hotel` (`id`),
  ADD CONSTRAINT `komentari_hotel_ibfk_2` FOREIGN KEY (`korisnici_id`) REFERENCES `korisnici` (`id`);

--
-- Constraints for table `login_tabela`
--
ALTER TABLE `login_tabela`
  ADD CONSTRAINT `login_tabela_ibfk_1` FOREIGN KEY (`korisnici_id`) REFERENCES `korisnici` (`id`);

--
-- Constraints for table `slike_hotela`
--
ALTER TABLE `slike_hotela`
  ADD CONSTRAINT `slike_hotela_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Constraints for table `znamenitosti`
--
ALTER TABLE `znamenitosti`
  ADD CONSTRAINT `znamenitosti_ibfk_1` FOREIGN KEY (`grad_id`) REFERENCES `grad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
