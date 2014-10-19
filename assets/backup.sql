-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 19 okt 2014 om 18:06
-- Serverversie: 5.6.20
-- PHP-versie: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `testforgedb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `db_backup`
--

CREATE TABLE IF NOT EXISTS `db_backup` (
  `id` text NOT NULL,
  `backupString` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `db_backup`
--

INSERT INTO `db_backup` (`id`, `backupString`) VALUES
('1', '#\n# TABLE STRUCTURE FOR: db_backup\n#\n\nDROP TABLE IF EXISTS db_backup;\n\nCREATE TABLE `db_backup` (\n  `id` text NOT NULL,\n  `backupString` text NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8;\n\nINSERT INTO db_backup (`id`, `backupString`) VALUES (''1'', '''');\n\n\n#\n# TABLE STRUCTURE FOR: forms\n#\n\nDROP TABLE IF EXISTS forms;\n\nCREATE TABLE `forms` (\n  `formId` int(11) NOT NULL,\n  `formTitle` text CHARACTER SET utf8 NOT NULL,\n  `formTableName` text CHARACTER SET utf8 NOT NULL,\n  `formColumn` int(11) NOT NULL,\n  `columnFields` text CHARACTER SET utf8 NOT NULL,\n  `fieldcontents` text NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=latin1;\n\nINSERT INTO forms (`formId`, `formTitle`, `formTableName`, `formColumn`, `columnFields`, `fieldcontents`) VALUES (1, ''Verstuur bericht'', ''contact form'', 1, ''TextField;EmailField'', ''Naam,Voer hier uw naam in,name;Email,Voer hier uw emailadres in,email'');\nINSERT INTO forms (`formId`, `formTitle`, `formTableName`, `formColumn`, `columnFields`, `fieldcontents`) VALUES (1, ''Verstuur bericht'', ''contact form'', 2, ''TextBoxField'', ''Bericht,Voer hier uw Bericht in,message,4'');\n\n\n#\n# TABLE STRUCTURE FOR: menuitems\n#\n\nDROP TABLE IF EXISTS menuitems;\n\nCREATE TABLE `menuitems` (\n  `menuId` int(11) NOT NULL,\n  `menuOrder` int(11) NOT NULL,\n  `menuName` text CHARACTER SET utf8,\n  `pageRef` int(11) DEFAULT NULL,\n  `parentMenu` int(11) DEFAULT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=latin1;\n\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (1, 0, ''home'', 1, NULL);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (2, 1, ''Voeding'', NULL, NULL);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (3, 0, ''natuurVoeding'', NULL, 2);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (4, 1, ''sportVoeding'', NULL, 2);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (5, 2, ''Therapieën'', NULL, NULL);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (6, 0, ''Holistic Pulsing'', NULL, 5);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (7, 1, ''Gezichtsmassage'', NULL, 5);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (8, 2, ''Oorkaars-therapie'', 4, 5);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (9, 3, ''Ontzuren'', NULL, 5);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (10, 3, ''activiteiten'', NULL, NULL);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (11, 0, ''Outdoor-training'', NULL, 10);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (12, 1, ''Workshop: Ontzuren'', NULL, 10);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (13, 2, ''Workshop: Holistic Pulsing``'', NULL, 10);\nINSERT INTO menuitems (`menuId`, `menuOrder`, `menuName`, `pageRef`, `parentMenu`) VALUES (14, 4, ''Contact'', 5, NULL);\n\n\n#\n# TABLE STRUCTURE FOR: page_pagecontent\n#\n\nDROP TABLE IF EXISTS page_pagecontent;\n\nCREATE TABLE `page_pagecontent` (\n  `pageIndex` int(11) NOT NULL,\n  `contentIndex` int(11) NOT NULL,\n  `row` int(11) NOT NULL,\n  `position` int(11) NOT NULL,\n  `size` text\n) ENGINE=InnoDB DEFAULT CHARSET=latin1;\n\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (2, 1, 0, 0, ''col-md-offset-2 col-md-8'');\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (1, 2, 2, 1, ''col-md-offset-1 col-md-10 columnsize'');\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (1, 3, 2, 2, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (3, 4, 0, 0, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (3, 5, 1, 0, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (4, 6, 0, 1, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (4, 7, 0, 2, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (5, 9, 0, 1, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (5, 8, 0, 2, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (1, 10, 0, 0, NULL);\nINSERT INTO page_pagecontent (`pageIndex`, `contentIndex`, `row`, `position`, `size`) VALUES (1, 11, 1, 0, NULL);\n\n\n#\n# TABLE STRUCTURE FOR: pagecontent\n#\n\nDROP TABLE IF EXISTS pagecontent;\n\nCREATE TABLE `pagecontent` (\n  `contentId` int(11) NOT NULL,\n  `contentTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,\n  `subContent` text,\n  `content` text CHARACTER SET utf8,\n  `form` int(11) NOT NULL,\n  `contentImg` text CHARACTER SET utf8,\n  `imgForm` varchar(255) CHARACTER SET utf8 DEFAULT NULL,\n  `pageLinks` text NOT NULL,\n  `template` int(11) NOT NULL,\n  PRIMARY KEY (`contentId`)\n) ENGINE=InnoDB DEFAULT CHARSET=latin1;\n\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (1, '''', ''Om naar een zo goed mogelijke gezondheid te streven is het van belang dat lichaam en geest in balans zijn. Voeding, stressbeperking en beweging zijn drie belangrijke factoren voor een optimaal evenwicht.'', ''<p> Hippocrates, de grondlegger van onze hedendaagse geneeskunde, wist heel lang geleden al dat het lichaam beschikt over een krachtig zelfgenezend vermogen. Het lichaam bezit alle benodigde systemen voor regeneratie, verjonging en vitaliteit. </br></br>\\r\\nGezonde voeding is de basis voor een gezond, vitaal en duurzaam leven. Door een juiste voedselkeuze en de juiste bereidingstechnieken kunnen wij onze gezondheid ondersteunen en versterken. </br></br>\\r\\nHeb je wel eens een massage ondergaan, dan weet je hoe ontspannend dit kan werken. Je laat alle stress varen en ervaart een compleet gevoel van welzijn. Maar massage doet nog veel meer dan je alleen maar goed laten voelen. Wetenschappelijk onderzoek toont aan dat massage zowel psychische als lichamelijke gezondheidsvoordelen biedt. </br></br>\\r\\nEen lichaam is gemaakt om te bewegen. Ook al weten we dat wel, we handelen er niet altijd naar. Meer beweging heeft een positieve invloed op zowel lichaam en geest. Demeter Voeding &amp; Welzijn verzorgt diverse outdoor trainingen op locatie in Purmerend om cliënten te stimuleren op een ongedwongen manier in beweging te komen.</br></br>\\r\\nDe synergie van het werken met al deze drie factoren kan meer opleveren dan de som der delen. Om een  voorbeeld te geven; als overgewicht is ontstaan door emotionele factoren, \\r\\nhelpt het aanleren van een gezond voedingspatroon een heel eind in de goede richting, maar haalt niet de oorzaak weg.  Met behulp van een massagetherapie als Holistic Pulsing kan gekeken worden naar de  achterliggende emotie. Als de emoties zijn verwerkt, is het veel makkelijker om de juiste balans te vinden én vast te houden. </p>\\r\\n<p class=\\"text-center\\" style=\\"font-size: 16px;\\"><i><b>                                    Niet je capaciteiten,<br>                                      niet je doelen,<br>\\r\\nniet je plannen,<br>\\r\\nmaar je dagelijkse activiteiten<br>                                    bepalen of een verandering slaagt ! \\r\\n</b></i></p>'', 0, '''', ''0'', '''', 1);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (2, ''Demeter Voeding en Welzijn'', NULL, ''<p>Om naar een zo goed mogelijke gezondheid te streven is het van belang dat lichaam en geest in balans zijn. Voeding, stressbeperking en beweging zijn drie belangrijke factoren voor een optimaal evenwicht ...</p>'', 0, ''demeter.png'', ''columnimg'', ''bedrijf'', 2);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (3, ''Even voorstellen'', NULL, ''<p>Mijn naam is Karin Papadopoulos-Broers, geboren in 1965, getrouwd, trotse moeder van drie zonen, met een passie voor gezonde voeding, koken en sport. Op een bepaald moment in mijn leven, was ik de balans behoorlijk kwijt ...</p>'', 0, ''Karin_icon.jpg'', ''img-circle columnimg'', ''voorstellen'', 2);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (4, NULL, ''Mijn naam is Karin Papadopoulos-Broers, geboren in 1965, getrouwd, trotse moeder van drie zonen, met een passie voor gezonde voeding, koken en sport.'', ''<p> Op een bepaald moment in mijn leven, was ik de balans behoorlijk kwijt. Door te focussen op gezonde voeding, het verwerken van emoties en beweging als ontspanning,  heb ik het evenwicht weer weten te vinden en ben er zelfs sterker uitgekomen. Dit was voor mij de aanleiding diverse opleidingen en cursussen te gaan volgen op het gebied van voeding &amp; welzijn. </p>\\r\\n<p> Met de opgedane ervaringen en een grote mate van betrokkenheid, wil ik graag anderen  ondersteunen in het vinden van de juiste balans tussen lichaam en geest! </p>'', 0, ''Karin.jpg'', NULL, '''', 3);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (5, ''Opleidingen/Cursussen'', NULL, ''HBO Natuurvoedingsadviseur, <span class=\\"badge\\">in progressie</span> HBO Medische basiskennis, Ontzuren en Ontslakken, Holistic Pulsing, Gezichtsmassage, Handreflex therapie, Oorreflex therapie, Hotstone Massage, Aromatherapie, XCO Walking &amp; Running'', 0, NULL, NULL, '''', 5);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (6, NULL, ''€ 30,-;Ca 40 min'', ''oorkaarstherapie;\\r\\nHartvormig Aubergine;\\r\\nVorig Demeter Logo;\\r\\nGezichtmassage;\\r\\nH3OPro;'', 0, ''oorkaarstherapie.jpg;Natuurvoeding foto liggend.png;demeter_oud.gif;Ontspannende gezichtsmassage.jpg;H3OPro.png;'', NULL, '''', 6);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (7, NULL, ''De oorkaars therapie is een warmtetherapie die het lichaam ontspant en de doorbloeding stimuleert en op zijn beurt weer belangrijk is voor de genezingsprocessen. Oorkaarsen werken lichaamszuiverend. Alle met het oor verbonden organen, zoals buitenkant trommelvlies, middenoor en evenwichtsorgaan, worden door de warmtewerking beïnvloed. Een lichte onderdruk (schouweffect) in de oorkaars en een trilling van de stijgende lucht te wijten aan de natuurlijke beweging van de vlam, geven een lichte massage van het trommelvlies. Dit brengt een intensief gevoel van aangename warmte teweeg en een \\"bevrijdend\\" aanvoelende drukregeling in oor-, voorhoofd- en bijholten gebied. Deze lichamelijke prikkel wordt bijna onmiddellijk na het aanwenden beschreven als een weldadig gevoel, pijn- en drukverminderend, vooral in hoofd en oorgebied. Spontaan kan dit ook een vrijere neusademhaling en een beter geurvermogen tot gevolg hebben, ook bij een tot dan toe verstopte neus.'', ''<p>Bovendien geeft deze ceremonie een heerlijk gevoel van ontspanning en geborgenheid. Door de directe werking van de kruiden op het zenuwstelsel van het limbische systeem is het mogelijk om meerdere klachten te behandelen, omdat het limbische systeem veel psychische en fysieke klachten beïnvloedt.\\r\\nEen aantal veel voorkomende klachten die je met ondersteuning van oorkaarsen kunt behandelen zijn:</p>\\r\\n<ul>\\r\\n<li>irritaties aan het oor, neus, voorhoofd en bijholten</li>\\r\\n<li>hooikoorts</li>\\r\\n<li>oordruk (dichtslaan van het oor)</li>\\r\\n<li>oorsuizen</li>\\r\\n<li>drukregulatie bij hoofdpijn</li>\\r\\n<li>migraine</li>       <li>bijholteontstekingen</li><li>verkoudheid en griep</li>\\r\\n<li>keelpijn, ontstoken amandelen</li>\\r\\n<li>doorbloedingsstoornissen van het oor</li>\\r\\n<li>hyperactiviteit</li>                        <li>stress</li>\\r\\n<li>nervositeit, angsten, depressies</li>  <li>slapeloosheid</li>                        <li>vermoeidheid (ook psychisch)</li>\\r\\n</ul>\\r\\n<p>Bij het regelmatig gebruiken van oorkaarsen kunnen oude processen weer actief gemaakt worden en zo voorgoed uit het lichaam worden verbannen. In een aantal gevallen mag de oorkaars therapie niet worden toegepast:</p>\\r\\n<ul>\\r\\n<li>geperforeerd trommelvlies</li>                        <li>geïmplanteerde gehoorbeentjes</li>\\r\\n<li>ontsteking van het buitenoor en middenoor</li>\\r\\n<li>eczeem en schimmelinfecties in het oor</li>\\r\\n<li>epilepsie</li>\\r\\n</ul>\\r\\n<p>Raadpleeg bij twijfel altijd eerst een reguliere arts !</p>\\r\\n<p> De oorkaarsen (Biosun) De oorkaarsen waren honderden jaren geleden een veel voorkomend ritueel- en ceremonievoorwerp bij de natuurvolkeren uit Midden- en Noord Amerika, Indonesië, Azië. Als heilig en spiritueel onderdeel was het gebruik slechts aan een paar ingewijden, sjamanen en medicijnmannen voorbehouden. De oorkaars is een holle buis van 20 centimeter bestaand uit 100% linnen weefsel van de beste kwaliteit, dat wil zeggen niet met bestrijdingsmiddelen bespoten op het veld en niet chemisch behandelt bij de verwerking. Dit linnen weefsel is verwerkt met een mengsel van speciale indiaanse geneeskrachtige kruiden (salie, kamille en Sint-Janskruid) en zuivere bijenwas en honingextracten. Dit speciale mengsel is een origineel recept van de Hopi-indianen en wordt met de hand gerold in het linnen weefsel. De oorkaars is voorzien van een speciale filter, die voorkomt dat de bijenwas in het oor loopt.</p>'', 0, NULL, NULL, '''', 7);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (8, ''Adres-gegevens:'', '''', ''1444 VX Purmerend; Kievithof 2;0299-435748/0625543640; info@demetervoeding.nl; KvK 55141889; Btw nr NL191428838B01;'', 0, NULL, NULL, '''', 8);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (9, '''', '''', NULL, 1, NULL, NULL, '''', 9);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (10, NULL, NULL, ''Hartvormig Aubergine;Vorig Demeter Logo;Gezichtmassage;H3OPro;'', 0, ''Natuurvoeding foto liggend.png;demeter_oud.gif;Ontspannende gezichtsmassage.jpg;H3OPro.png;'', NULL, '''', 10);\nINSERT INTO pagecontent (`contentId`, `contentTitle`, `subContent`, `content`, `form`, `contentImg`, `imgForm`, `pageLinks`, `template`) VALUES (11, NULL, NULL, NULL, 0, NULL, NULL, '''', 11);\n\n\n#\n# TABLE STRUCTURE FOR: pages\n#\n\nDROP TABLE IF EXISTS pages;\n\nCREATE TABLE `pages` (\n  `pageId` int(11) NOT NULL,\n  `pageTitle` varchar(250) CHARACTER SET utf8 NOT NULL,\n  `pageUrl` varchar(200) CHARACTER SET utf8 NOT NULL,\n  PRIMARY KEY (`pageId`),\n  UNIQUE KEY `pageTitle` (`pageTitle`)\n) ENGINE=InnoDB DEFAULT CHARSET=latin1;\n\nINSERT INTO pages (`pageId`, `pageTitle`, `pageUrl`) VALUES (1, ''Home'', ''home'');\nINSERT INTO pages (`pageId`, `pageTitle`, `pageUrl`) VALUES (2, ''Demeter voeding en welzijn'', ''bedrijf'');\nINSERT INTO pages (`pageId`, `pageTitle`, `pageUrl`) VALUES (3, ''Even voorstellen'', ''voorstellen'');\nINSERT INTO pages (`pageId`, `pageTitle`, `pageUrl`) VALUES (4, ''Oorkaars therapie'', ''oorkaarstherapie'');\nINSERT INTO pages (`pageId`, `pageTitle`, `pageUrl`) VALUES (5, ''Contact'', ''contact'');\n\n\n#\n# TABLE STRUCTURE FOR: templates\n#\n\nDROP TABLE IF EXISTS templates;\n\nCREATE TABLE `templates` (\n  `templateId` int(11) NOT NULL,\n  `templateType` text CHARACTER SET utf8 NOT NULL,\n  PRIMARY KEY (`templateId`)\n) ENGINE=InnoDB DEFAULT CHARSET=latin1;\n\nINSERT INTO templates (`templateId`, `templateType`) VALUES (1, ''simple text'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (2, ''VimgText'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (3, ''TextLImgR'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (4, ''TextRImgL'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (5, ''SingleColumnTable'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (6, ''TherapieSideColumn'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (7, ''TherapieColumn'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (8, ''adresInfoWithMap'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (9, ''contactForm'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (10, ''carousel'');\nINSERT INTO templates (`templateId`, `templateType`) VALUES (11, ''NieuwsBriefsubscribe'');\n\n\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
