function byte_seed_initialize(value);
% Initialize the random number generator based upon a one-byte
% seed (i.e., value = 0 .. 255).
% 
% If seeds 0 to 255 were used, then the random number sequences would be
% too highly correlated.  So, instead map these to larger seeds.

persistent lookup_table;

if length(lookup_table) == 0,
    lookup_table(1) = 1897185378;
    lookup_table(2) = 1066488359;
    lookup_table(3) =  469826451;
    lookup_table(4) = 2118173615;
    lookup_table(5) = 1525173811;
    lookup_table(6) = 1921612659;
    lookup_table(7) =  270789793;
    lookup_table(8) = 1092838882;
    lookup_table(9) = 2140862377;
    lookup_table(10) =  171301525;
    lookup_table(11) =  194323213;
    lookup_table(12) = 1979635411;
    lookup_table(13) = 2080900264;
    lookup_table(14) =  855754864;
    lookup_table(15) =  988266877;
    lookup_table(16) =  712888649;
    lookup_table(17) =  993014307;
    lookup_table(18) = 1615189009;
    lookup_table(19) = 2015070152;
    lookup_table(20) =  388579405;
    lookup_table(21) = 2136936863;
    lookup_table(22) =  503474791;
    lookup_table(23) = 1532438911;
    lookup_table(24) = 1803675713;
    lookup_table(25) = 1114556869;
    lookup_table(26) = 1328013104;
    lookup_table(27) = 1430636439;
    lookup_table(28) = 1931329700;
    lookup_table(29) =  191146180;
    lookup_table(30) =  469383999;
    lookup_table(31) =  993660206;
    lookup_table(32) =  211961798;
    lookup_table(33) = 1397523174;
    lookup_table(34) =  442852592;
    lookup_table(35) =  940296100;
    lookup_table(36) =   38853642;
    lookup_table(37) = 1504350032;
    lookup_table(38) = 1186990462;
    lookup_table(39) = 1518287875;
    lookup_table(40) =  412762606;
    lookup_table(41) =  980528966;
    lookup_table(42) =  386509091;
    lookup_table(43) = 1747377178;
    lookup_table(44) =  922924406;
    lookup_table(45) =  463376688;
    lookup_table(46) =  828621712;
    lookup_table(47) = 1367435319;
    lookup_table(48) = 1043878659;
    lookup_table(49) =  467483164;
    lookup_table(50) = 1698078052;
    lookup_table(51) =  947752381;
    lookup_table(52) = 1107930600;
    lookup_table(53) = 1217619163;
    lookup_table(54) = 1127829365;
    lookup_table(55) =  641441568;
    lookup_table(56) = 1057654331;
    lookup_table(57) = 2122000731;
    lookup_table(58) = 1007008857;
    lookup_table(59) =  398595439;
    lookup_table(60) = 1314028061;
    lookup_table(61) = 1970045095;
    lookup_table(62) = 1538427911;
    lookup_table(63) = 1574756053;
    lookup_table(64) = 1441048639;
    lookup_table(65) = 2070381469;
    lookup_table(66) = 1740338118;
    lookup_table(67) = 1066859735;
    lookup_table(68) = 1012243658;
    lookup_table(69) = 1553285506;
    lookup_table(70) =  340493104;
    lookup_table(71) = 1542989373;
    lookup_table(72) =  305498009;
    lookup_table(73) = 1509547323;
    lookup_table(74) =  281426956;
    lookup_table(75) = 1146173967;
    lookup_table(76) =  338762159;
    lookup_table(77) = 1792806373;
    lookup_table(78) = 1738216187;
    lookup_table(79) =  892347647;
    lookup_table(80) = 1532795531;
    lookup_table(81) =   62376016;
    lookup_table(82) = 1488761268;
    lookup_table(83) = 1189387213;
    lookup_table(84) =  597260555;
    lookup_table(85) = 1381843506;
    lookup_table(86) =  339917019;
    lookup_table(87) =  592990360;
    lookup_table(88) = 1734468648;
    lookup_table(89) = 1978977606;
    lookup_table(90) =  245593108;
    lookup_table(91) = 1937067061;
    lookup_table(92) = 1384645546;
    lookup_table(93) =   57642079;
    lookup_table(94) =  733117993;
    lookup_table(95) = 1394372172;
    lookup_table(96) = 1297793969;
    lookup_table(97) =  624510019;
    lookup_table(98) = 2130119291;
    lookup_table(99) = 1139202190;
    lookup_table(100) =  187790940;
    lookup_table(101) =  303176804;
    lookup_table(102) =  969036573;
    lookup_table(103) =  818389952;
    lookup_table(104) =  384345664;
    lookup_table(105) =  918295537;
    lookup_table(106) = 1787200603;
    lookup_table(107) = 1156389410;
    lookup_table(108) = 1667729914;
    lookup_table(109) =  456179335;
    lookup_table(110) =  669265026;
    lookup_table(111) =  488362535;
    lookup_table(112) = 1894042915;
    lookup_table(113) =  162687246;
    lookup_table(114) =  347194178;
    lookup_table(115) =  621673377;
    lookup_table(116) =  153868399;
    lookup_table(117) = 1281875062;
    lookup_table(118) = 1687827843;
    lookup_table(119) =  271280682;
    lookup_table(120) = 1840509850;
    lookup_table(121) =  839035052;
    lookup_table(122) = 1234248022;
    lookup_table(123) = 1476697549;
    lookup_table(124) = 1424294382;
    lookup_table(125) =  637104443;
    lookup_table(126) =  687180001;
    lookup_table(127) = 1070096479;
    lookup_table(128) =  307108847;
    lookup_table(129) =  314703782;
    lookup_table(130) = 1184842246;
    lookup_table(131) =  383796191;
    lookup_table(132) = 1154270368;
    lookup_table(133) =  982855966;
    lookup_table(134) = 1812905327;
    lookup_table(135) =  151359994;
    lookup_table(136) = 1073109740;
    lookup_table(137) =  764334660;
    lookup_table(138) =  337602417;
    lookup_table(139) =  185383552;
    lookup_table(140) = 1650642049;
    lookup_table(141) = 2025310646;
    lookup_table(142) = 1876445880;
    lookup_table(143) = 2078659170;
    lookup_table(144) =  487589173;
    lookup_table(145) =  400829821;
    lookup_table(146) = 1969076955;
    lookup_table(147) = 1283746182;
    lookup_table(148) = 2046239170;
    lookup_table(149) =  134369394;
    lookup_table(150) =  910082437;
    lookup_table(151) =  702595010;
    lookup_table(152) = 1713916430;
    lookup_table(153) = 2024954021;
    lookup_table(154) =  781604127;
    lookup_table(155) = 1298249183;
    lookup_table(156) =  534827054;
    lookup_table(157) = 1069646071;
    lookup_table(158) = 1581669926;
    lookup_table(159) = 1260536688;
    lookup_table(160) = 1584644205;
    lookup_table(161) = 1000514680;
    lookup_table(162) = 2126458918;
    lookup_table(163) = 1265326170;
    lookup_table(164) = 1823457590;
    lookup_table(165) = 1268344510;
    lookup_table(166) =  995708785;
    lookup_table(167) =  971733014;
    lookup_table(168) = 2018230044;
    lookup_table(169) =  100246183;
    lookup_table(170) = 1991632766;
    lookup_table(171) =  153126504;
    lookup_table(172) = 1085560803;
    lookup_table(173) =  333177913;
    lookup_table(174) =  205028022;
    lookup_table(175) =  702594331;
    lookup_table(176) =  311775098;
    lookup_table(177) =  365339190;
    lookup_table(178) =  333110574;
    lookup_table(179) =  897687543;
    lookup_table(180) = 1549097891;
    lookup_table(181) =  110854963;
    lookup_table(182) = 1583498971;
    lookup_table(183) =   88505613;
    lookup_table(184) =  657186792;
    lookup_table(185) =  243940967;
    lookup_table(186) = 1850717822;
    lookup_table(187) =  522578464;
    lookup_table(188) =  714957866;
    lookup_table(189) =  143733879;
    lookup_table(190) =  800670225;
    lookup_table(191) =  185805613;
    lookup_table(192) =  146476093;
    lookup_table(193) =  945887981;
    lookup_table(194) = 1958216655;
    lookup_table(195) =  109485192;
    lookup_table(196) =  863141108;
    lookup_table(197) =  891267828;
    lookup_table(198) = 1844132719;
    lookup_table(199) =  820944837;
    lookup_table(200) =  686231428;
    lookup_table(201) = 1982364920;
    lookup_table(202) = 1112047817;
    lookup_table(203) = 1920070939;
    lookup_table(204) = 1268930416;
    lookup_table(205) =  724962992;
    lookup_table(206) = 1776874680;
    lookup_table(207) = 1299094223;
    lookup_table(208) = 1138227679;
    lookup_table(209) = 1697323079;
    lookup_table(210) =  812544711;
    lookup_table(211) = 1316020030;
    lookup_table(212) = 1884680464;
    lookup_table(213) = 1831183688;
    lookup_table(214) = 1633556534;
    lookup_table(215) =  552820107;
    lookup_table(216) = 1087135179;
    lookup_table(217) = 1419785141;
    lookup_table(218) = 1286709852;
    lookup_table(219) = 1421362525;
    lookup_table(220) =  612756731;
    lookup_table(221) =  561658383;
    lookup_table(222) = 1483768961;
    lookup_table(223) = 2108531550;
    lookup_table(224) = 1040927913;
    lookup_table(225) =   47268917;
    lookup_table(226) = 2063202126;
    lookup_table(227) = 1624334628;
    lookup_table(228) = 1966140556;
    lookup_table(229) = 1178281374;
    lookup_table(230) =  190644785;
    lookup_table(231) = 1659354539;
    lookup_table(232) = 1746588544;
    lookup_table(233) = 1792149775;
    lookup_table(234) =  243612295;
    lookup_table(235) = 1639641353;
    lookup_table(236) =  650701242;
    lookup_table(237) = 1542228451;
    lookup_table(238) =  732458622;
    lookup_table(239) = 1839370133;
    lookup_table(240) = 1235445320;
    lookup_table(241) = 1051458608;
    lookup_table(242) = 1187516229;
    lookup_table(243) = 1220361317;
    lookup_table(244) = 1684873846;
    lookup_table(245) =  444119905;
    lookup_table(246) = 1001735386;
    lookup_table(247) =  779278852;
    lookup_table(248) =  941165360;
    lookup_table(249) =  207135201;
    lookup_table(250) = 1712917065;
    lookup_table(251) =   47071013;
    lookup_table(252) = 1298682492;
    lookup_table(253) =  639430479;
    lookup_table(254) = 1836200353;
    lookup_table(255) = 1982898019;
    lookup_table(256) =  836586726;
end

rand('state',double(lookup_table(value+1)));
