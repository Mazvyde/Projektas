-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2024 at 04:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyber_security_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `published_date` datetime DEFAULT current_timestamp(),
  `image_path` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `published_date`, `image_path`, `category`) VALUES
(35, 'Kinija stiprina kibernetinį šnipinėjimą prieš Vakarus', '2024 m. gegužės 30 d. pranešta, kad Kinija sustiprino kibernetinio šnipinėjimo veiklą prieš Vakarų šalis, siekdama gauti jautrios informacijos iš vyriausybinių ir verslo sektorių. JAV ir Europos žvalgybos agentūros bendradarbiauja siekdamos atremti šią grėsmę ir užkirsti kelią tolesniam intelektinės nuosavybės vagystei​. ', '2024-06-01 19:48:42', './assets/spying.png', 'news'),
(36, 'Europos Sąjungos Kibernetinio saugumo mėnuo', '2023 m. spalio mėnesį visoje Europos Sąjungoje vyko aštuntasis kasmetinis Europos Kibernetinio saugumo mėnuo. Šių metų kampanija, pavadinimu „Think Before U Click“ („Pagalvok, prieš spustelėdamas“), atkreipė dėmesį į augančias internetinio sukčiavimo ir duomenų viliojimo (angl. phishing) atakų grėsmes.\r\n\r\nMėnesio tikslas – didinti informuotumą apie internetinius sukčiavimo būdus ir suteikti vartotojams žinių bei įrankių, kaip apsisaugoti nuo tokių atakų. \r\n\r\nLietuvoje Kibernetinio saugumo mėnesį koordinavo Krašto apsaugos ministerija (KAM) ir Nacionalinis kibernetinio saugumo centras (NKSC). \r\n\r\nEuropos Kibernetinio saugumo mėnuo sulaukė didelio susidomėjimo visoje Europos Sąjungoje. Manoma, kad kampanija padėjo padidinti informuotumą apie internetinio sukčiavimo ir duomenų viliojimo atakų grėsmes ir paskatino vartotojus imtis atsargumo priemonių siekiant apsisaugoti.\r\n\r\n', '2023-10-15 19:48:59', './assets/cyber.png', 'news'),
(37, 'Universiteto studentų duomenų nutekėjimas: Kibernetinio saugumo incidentas', 'Incidentas, pavadinimu „UniLeak“, atskleidė jautrią informaciją apie studentus, įskaitant jų vardus, el. paštus, ir netgi asmeninius adresus. Saugumo spraga pasireiškė dėl pasenusių prisijungimo sistemų ir neapsaugotų duomenų bazės, kurią naudojo daugybė universitetų. Nežinomi asmenys gavo neleistą prieigą prie šios duomenų bazės ir paviešino rastus duomenis internete. Tai sukėlė didelį susirūpinimą tarp universitetų bendruomenių ir paskatino skubias veiksmų priemones.\r\n\r\nŠis incidentas pabrėžia kibernetinio saugumo iššūkius, su kuriais susiduria švietimo institucijos. Universitetai ir kolegijos turi investuoti į modernias saugumo sistemas ir užtikrinti, kad jų duomenų bazės būtų apsaugotos nuo potencialių įsilaužimų ir nutekėjimų.\r\n\r\n„UniLeak“ incidentas yra priminimas, kad kibernetinis saugumas turi būti prioritetinis klausimas visose organizacijose, ypač švietimo srityje. Tik suderinti saugumo sprendimai ir nuolatinis saugumo mokymas gali padėti išvengti panašių nutekėjimų ateityje.\r\n', '2024-06-01 13:00:07', './assets/uni.png', 'news'),
(41, 'Lietuva kartu su ES ir NATO valstybėmis pasmerkė Rusijos vykdomą kenkėjišką veiklą kibernetinėje erdvėje', '2024 m. gegužės 3 d. Lietuva kartu su Europos Sąjunga (ES) ir NATO valstybėmis paskelbė pareiškimus, kuriuose griežtai pasmerkė Rusijos vykdomą kenkėjišką veiklą kibernetinėje erdvėje. Šis pasmerkimas grindžiamas koordinuotomis pastangomis priskiriant Rusijai kibernetinę grupuotę APT28 (angl. Advanced Persistent Threat), kuri buvo atsakinga už kibernetines atakas prieš įvairias institucijas ir procesus Vokietijoje, Čekijoje, Lenkijoje, Lietuvoje, Slovakijoje, Švedijoje ir kitose šalyse. \r\n\r\nKrašto apsaugos ministras Laurynas Kasčiūnas pabrėžė, kad Lietuva, kaip ir kitos sąjungininkės, nuolat susiduria su Rusijos žvalgybos ir saugumo tarnybų programišių vykdoma kibernetinio šnipinėjimo veikla, nukreipta prieš Lietuvos informacines sistemas. Anot ministro, tai yra netoleruotina ir Lietuva, kartu su tarptautine bendruomene, yra pasirengusi imtis koordinuotų priemonių siekiant sustabdyti ir atremti Rusijos vykdomas kibernetines operacijas.\r\n\r\nŠis Lietuvos, ES ir NATO valstybių bendras pasmerkimas rodo tvirtą tarptautinės bendruomenės poziciją prieš Rusijos vykdomą kenkėjišką veiklą kibernetinėje erdvėje. Tai taip pat pabrėžia būtinybę stiprinti kibernetinę gynybą ir bendradarbiavimą siekiant užtikrinti saugią ir atvirą kibernetinę erdvę.', '2024-05-03 19:52:00', './assets/virus.png', 'news'),
(42, 'Nacionalinis kibernetinio saugumo centras paskelbė 2023 metų kibernetinio saugumo būklės ataskaitą', 'NKSC paskelbė 2023 metų Nacionalinės kibernetinio saugumo būklės ataskaitą. Šiame dokumente aptarta, kad Lietuvoje pernai sumažėjo kibernetinių incidentų skaičius, tačiau išaugo sudėtingesnių ir pavojingesnių atakų skaičius. Ataskaitoje taip pat pažymėta, kad, nepaisant situacijos stabilumo, būtina tęsti kibernetinio saugumo stiprinimą, nes grėsmės išlieka reikšmingos dėl geopolitinės įtampos ir augančių technologinių iššūkių​. Kibernetinio saugumo būklės ataskaitoje išskiriama keletas pagrindinių temų. Per praėjusius metus Lietuvoje užfiksuotas mažesnis kibernetinių incidentų skaičius, tačiau padaugėjo sudėtingesnių ir pavojingesnių atakų. Šios atakos dažnai buvo nukreiptos prieš svarbiausią infrastruktūrą ir vyriausybines institucijas. Didelį susirūpinimą kelia geopolitinės įtampos, ypač susijusios su Rusija ir Baltarusija, dėl kurių Lietuva išlieka jautri kibernetinėms grėsmėms. Ataskaitoje taip pat pažymima, kad reikia tęsti kibernetinio saugumo stiprinimą, siekiant užtikrinti nacionalinį saugumą​. ', '2024-06-04 21:19:47', './assets/report.png', 'news'),
(43, '„Lietuvos banko“ duomenų bazė patyrė masinę kibernetinę ataką – pavogti klientų asmeniniai duomenys', 'Šiandien pranešta, kad „Lietuvos banko“ informacinė sistema buvo pažeista per masinę kibernetinę ataką, dėl kurios buvo pavogti tūkstančių klientų asmeniniai duomenys. Ši ataka laikoma viena didžiausių per pastaruosius metus, ir tai kelia didelį susirūpinimą dėl kibernetinio saugumo situacijos šalyje.\r\n\r\nPirminiais duomenimis, ataka įvyko naktį iš penktadienio į šeštadienį. Užpuolikai sugebėjo įsilaužti į banko serverius ir išgauti įvairią jautrią informaciją, įskaitant klientų vardus, pavardes, asmens kodus, sąskaitų numerius ir net kai kurių finansinių operacijų duomenis. Kol kas nežinoma, ar buvo pavogta slaptažodžių informacija, tačiau bankas skubiai rekomenduoja visiems klientams pasikeisti prisijungimo duomenis ir būti budriems dėl galimų sukčiavimo bandymų.\r\n\r\n„Lietuvos banko“ atstovas spaudai teigė: „Šiuo metu bendradarbiaujame su nacionalinėmis ir tarptautinėmis saugumo tarnybomis, siekdami išsiaiškinti atakos šaltinį ir sustiprinti mūsų kibernetinės apsaugos priemones. Mūsų prioritetas yra užtikrinti, kad tokie incidentai ateityje nepasikartotų.“\r\n\r\nEkspertai teigia, kad ši ataka galėjo būti įvykdyta organizuotos kibernetinių nusikaltėlių grupės, kurios taikiniu tapo svarbiausios finansinės institucijos visame pasaulyje. Šis incidentas vėl priminė, kaip svarbu investuoti į kibernetinį saugumą ir nuolat atnaujinti apsaugos sistemas.\r\n\r\nKol kas nėra aišku, kiek klientų buvo paveikta šios atakos, tačiau bankas užtikrina, kad visos nukentėjusios šalys bus informuotos asmeniškai ir joms bus suteikta visa reikalinga pagalba.', '2024-05-26 21:48:48', './assets/bank.png', 'news'),
(44, 'Patarimai kuriant saugius slaptažodžius', 'Slaptažodžiai yra pagrindinė jūsų asmeninės informacijos ir internetinių paskyrų apsaugos linija. Norint užtikrinti maksimalų saugumą, svarbu žinoti, kaip sukurti ir naudoti stiprius slaptažodžius. Štai keletas patarimų, kurie padės sukurti saugius slaptažodžius ir apsaugoti jūsų duomenis:\r\n\r\n1. Naudokite Ilgą Slaptažodį\r\nKuo ilgesnis slaptažodis, tuo jis saugesnis. Rekomenduojama naudoti slaptažodžius, kurie yra bent 12 simbolių ilgio. Ilgi slaptažodžiai yra sunkiau nulaužiami bruteforce (bandymų ir klaidų) metodu.\r\n\r\n2. Įvairinkite Simbolius\r\nNaudokite didžiąsias ir mažąsias raides, skaičius bei specialius simbolius (pvz., @, #, $, %). Šis įvairumas apsunkina slaptažodžio atspėjimą.\r\n\r\n3. Venkite Asmeninės Informacijos\r\nNenaudokite savo ar šeimos narių vardų, gimimo datų, adresų ar kitų lengvai atspėjamų informacijos fragmentų. Įsilaužėliai dažnai pirmiausia patikrina šią informaciją bandydami nulaužti slaptažodžius.\r\n\r\n4. Naudokite Unikalius Slaptažodžius Kiekvienai Paskyrai\r\nNiekada nenaudokite to paties slaptažodžio daugiau nei vienai paskyrai. Jei vienas iš jūsų slaptažodžių būtų pavogtas, įsilaužėlis negalės pasinaudoti juo prisijungdamas prie kitų jūsų paskyrų.\r\n\r\n5. Reguliariai Keiskite Slaptažodžius\r\nNors tai gali būti nepatogu, tačiau reguliariai keičiant slaptažodžius sumažėja tikimybė, kad ilgainiui jie bus nulaužti. Ypač svarbu keisti slaptažodžius po bet kokio duomenų nutekėjimo incidento.\r\n\r\n6. Naudokite Slaptažodžių Tvarkyklę\r\nSlaptažodžių tvarkyklės padeda saugiai saugoti ir tvarkyti jūsų slaptažodžius. Jos gali generuoti stiprius, atsitiktinius slaptažodžius ir automatiškai juos įvesti, kai reikia prisijungti.\r\n\r\n7. Naudokite Dviejų Veiksnių Autentifikaciją (2FA)\r\nDviejų veiksnių autentifikacija prideda papildomą saugumo sluoksnį. Net jei kažkas gauna jūsų slaptažodį, jie vis tiek negalės prisijungti prie jūsų paskyros be antrojo autentifikacijos veiksnio, pvz., SMS kodo ar autentifikacijos programos sugeneruoto kodo.\r\n\r\n8. Venkite Viešų Kompiuterių ir Wi-Fi Tinklų\r\nVenkite įvesti savo slaptažodžius viešuose kompiuteriuose ar neapsaugotuose Wi-Fi tinkluose. Jei privalote tai padaryti, įsitikinkite, kad naudojate VPN paslaugą, kad šifruotumėte savo ryšį.\r\n\r\n9. Stebėkite Duomenų Nutekėjimus\r\nReguliariai tikrinkite, ar jūsų paskyros nebuvo pažeistos duomenų nutekėjimų metu. Naudokite tokius įrankius kaip „Have I Been Pwned“ (https://haveibeenpwned.com), kad sužinotumėte, ar jūsų el. pašto adresas buvo pažeistas.\r\n\r\n10. Mokykitės ir Švieskitės\r\nNuolat mokykitės apie naujas kibernetinio saugumo grėsmes ir saugumo praktikas. Kuo daugiau žinote, tuo geriau galite apsisaugoti nuo potencialių pavojų.\r\n\r\nStiprūs ir saugūs slaptažodžiai yra vienas iš pagrindinių būdų apsaugoti savo asmeninę informaciją ir internetines paskyras. Sekdami šiais patarimais, galite žymiai sumažinti riziką tapti kibernetinių nusikaltėlių auka.', '2024-06-01 19:48:42', './assets/pass.png', 'tips'),
(45, 'Saugus nuotolinis darbas', 'Nuotolinis darbas tampa vis populiaresnis, tačiau kartu su patogumu atsiranda ir naujų saugumo iššūkių. Norint apsaugoti savo duomenis ir užtikrinti saugią darbo aplinką, svarbu laikytis tam tikrų saugumo priemonių. Štai keletas patarimų, kaip dirbti saugiai nuotoliniu būdu:\r\n\r\n1. Naudokite Saugų Interneto Ryšį\r\n- Naudokite VPN (Virtualų Privatų Tinklą): VPN šifruoja jūsų interneto srautą ir apsaugo jūsų duomenis nuo įsilaužėlių, ypač naudojantis viešaisiais Wi-Fi tinklais.\r\n- Venkite Viešųjų Wi-Fi Tinklų: Jei įmanoma, naudokite savo asmeninį mobiliojo ryšio hotspotą arba patikimą, apsaugotą Wi-Fi tinklą.\r\n\r\n2. Naudokite Stiprius Slaptažodžius ir Dviejų Veiksnių Autentifikaciją\r\n- Stiprių Slaptažodžių Naudojimas:Kiekvienai paskyrai naudokite unikalius ir sudėtingus slaptažodžius, kuriuose yra didžiosios ir mažosios raidės, skaičiai ir specialūs simboliai.\r\n- Dviejų Veiksnių Autentifikacija (2FA): Pridėkite papildomą saugumo sluoksnį, naudodami 2FA, kad apsaugotumėte savo paskyras nuo neteisėto prisijungimo.\r\n\r\n3. Atnaujinkite Programinę Įrangą\r\n- Reguliarūs Atnaujinimai:Užtikrinkite, kad jūsų operacinė sistema, antivirusinė programa ir visa kita programinė įranga būtų nuolat atnaujinama, kad būtų ištaisytos visos saugumo spragos.\r\n\r\n4. Naudokite Patikimą Antivirusinę Programinę Įrangą\r\n- Apsauga Nuo Kenkėjiškų Programų: Įdiekite ir reguliariai atnaujinkite patikimą antivirusinę programinę įrangą, kad apsaugotumėte savo įrenginius nuo kenkėjiškų programų ir virusų.\r\n\r\n5. Saugokite Įrenginius\r\n- Fizinė Apsauga: Užtikrinkite, kad jūsų kompiuteris ar kiti darbo įrenginiai būtų apsaugoti nuo vagystės ar neteisėtos prieigos. Naudokite stiprius slaptažodžius ir apsaugos priemones, kaip ekrano užraktai.\r\n- Šifravimas: Įgalinkite disko šifravimą savo kompiuteryje, kad apsaugotumėte duomenis net jei įrenginys būtų prarastas ar pavogtas.\r\n\r\n6. Naudokite Saugias Bendravimo Priemones\r\n- Saugios Komunikacijos Platformos: Naudokite šifruotas bendravimo priemones, tokias kaip „Signal“ ar „WhatsApp“, ir įmonių patvirtintas komunikacijos platformas, pavyzdžiui, „Microsoft Teams“ ar „Slack“.\r\n\r\n7. Atidžiai Tvarkykite Duomenis\r\n- Atsarginių Kopijų Darymas: Reguliariai darykite svarbių duomenų atsargines kopijas į saugią vietą, pavyzdžiui, debesų saugyklą arba išorinį kietąjį diską.\r\n- Dalinimasis Informacija: Venkite dalintis jautria informacija per nesaugias ar viešas platformas. Naudokite šifruotas ir saugias duomenų perdavimo priemones.\r\n\r\n8. Mokykitės ir Informuokite\r\n- Saugumo Mokymai: Dalyvaukite saugumo mokymuose, kuriuos siūlo jūsų įmonė, ir būkite informuoti apie naujausias kibernetinio saugumo grėsmes.\r\n- Atsargumo Principai: Būkite atsargūs atidarydami el. laiškus ar nuorodas iš nežinomų šaltinių, kad išvengtumėte phishing atakų ir kenkėjiškų programų.\r\n\r\n9. Atsakingas Naudojimasis Darbo Priemonėmis\r\n- Darbo ir Asmeninių Priemonių Atskyrimas: Naudokite atskirus įrenginius ir paskyras darbo ir asmeninėms reikmėms, kad sumažintumėte riziką.\r\n- Saugios Darbo Praktikos: Naudokite tik patikimas ir įmonės patvirtintas programas bei įrankius darbui.\r\n\r\n10. Konsultuokitės su IT Skyriumi\r\n- IT Pagalba: Jei kyla klausimų ar abejonės dėl saugumo, nedelsdami kreipkitės į savo įmonės IT skyrių pagalbos ir patarimų.\r\n\r\nSekdami šiais patarimais, galite užtikrinti saugesnę nuotolinio darbo aplinką ir apsaugoti savo bei savo įmonės duomenis nuo kibernetinių grėsmių.', '2024-06-01 19:48:42', './assets/home.png', 'tips'),
(46, '5 trumpi patarimai kibernetinio saugumo link', '1. Saugus El. Pašto Naudojimas\r\n- Saugokitės phishing atakos: Neatidarinėkite nuorodų ir priedų iš nepažįstamų siuntėjų. Patikrinkite siuntėjo adresą ir būkite atsargūs su el. laiškais, kurie prašo pateikti asmeninę informaciją.\r\n\r\n2. Fizinė Įrenginių Apsauga\r\n- Apsauga Nuo Vagystės: Užtikrinkite, kad jūsų kompiuteris, išmanusis telefonas ir kiti įrenginiai būtų fiziškai apsaugoti. Naudokite slaptažodžius ir biometrinę autentifikaciją, pavyzdžiui, piršto atspaudo skaitytuvą ar veido atpažinimą.\r\n\r\n3. Prieigos Kontrolė\r\n- Ribota Prieiga: Užtikrinkite, kad prieigą prie jautrios informacijos turėtų tik tie žmonės, kuriems tai būtina. Naudokite skirtingus naudotojų lygius ir leidimus bei sesijos užrakinimo funkciją.\r\n\r\n4. Duomenų Šifravimas\r\n- Šifravimo Naudojimas: Šifruokite svarbius dokumentus ir duomenis, kad apsaugotumėte juos net jei įrenginys būtų prarastas ar pavogtas. Naudokite viso disko šifravimą, kaip BitLocker (Windows) ar FileVault (Mac).\r\n\r\n5. Švietimas ir Mokymas\r\n- Nuolatinis Mokymasis: Reguliariai mokykitės apie naujausias kibernetinio saugumo grėsmes ir geriausias praktikas. Informuokite savo šeimos narius, kolegas ir draugus apie kibernetinio saugumo svarbą.\r\n\r\nLaikantis šių patarimų, galite žymiai sumažinti riziką tapti kibernetinių nusikaltėlių auka ir užtikrinti, kad jūsų asmeninė bei verslo informacija išliktų saugi.', '2024-06-01 19:48:42', './assets/safe.png', 'tips');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `article_id`, `rating`) VALUES
(12, 10, 41, 1),
(13, 4, 41, 4),
(14, 12, 42, 5),
(15, 26, 41, 2),
(16, 26, 42, 1),
(17, 26, 45, 5),
(18, 28, 35, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `is_admin`) VALUES
(4, 'admin', '$2y$10$wzVGoa5HJp.ucyxHFKX1j.GQuMxfJq/tTjmitwskMHWhNizvVtrXO', 'admin@admin.lt', 1),
(27, 'Administratorius ', '$2y$10$SS4dr5BifJ4pXswQSpH7VOAFSeSxtL/Girse6GFxjugfPVpuVZebm', 'administratorius@one.lt', 1),
(29, 'Vartotojas', '$2y$10$UhrzMnFqCFmI7JS7Z/z1cexND7F4zMss7qMajB/.vw9bCF0KOqtdq', 'vartotojas@one.lt', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`article_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
