DROP TABLE IF EXISTS vertex_country;
CREATE TABLE IF NOT EXISTS vertex_country (
  id integer,
  short_name varchar(255),
  alpha2_code varchar(2),
  alpha3_code varchar(3),
  numeric_code integer
);

INSERT INTO vertex_country  VALUES (1, 'Afghanistan', 'AF', 'AFG', 4);
INSERT INTO vertex_country  VALUES (2, 'Åland Islands', 'AX', 'ALA', 248);
INSERT INTO vertex_country  VALUES (3, 'Albania', 'AL', 'ALB', 8);
INSERT INTO vertex_country  VALUES (4, 'Algeria', 'DZ', 'DZA', 12);
INSERT INTO vertex_country  VALUES (5, 'American Samoa', 'AS', 'ASM', 16);
INSERT INTO vertex_country  VALUES (6, 'Andorra', 'AD', 'AND', 20);
INSERT INTO vertex_country  VALUES (7, 'Angola', 'AO', 'AGO', 24);
INSERT INTO vertex_country  VALUES (8, 'Anguilla', 'AI', 'AIA', 660);
INSERT INTO vertex_country  VALUES (9, 'Antarctica', 'AQ', 'ATA', 10);
INSERT INTO vertex_country  VALUES (10, 'Antigua and Barbuda', 'AG', 'ATG', 28);
INSERT INTO vertex_country  VALUES (11, 'Argentina', 'AR', 'ARG', 32);
INSERT INTO vertex_country  VALUES (12, 'Armenia', 'AM', 'ARM', 51);
INSERT INTO vertex_country  VALUES (13, 'Aruba', 'AW', 'ABW', 533);
INSERT INTO vertex_country  VALUES (14, 'Australia', 'AU', 'AUS', 36);
INSERT INTO vertex_country  VALUES (15, 'Austria', 'AT', 'AUT', 40);
INSERT INTO vertex_country  VALUES (16, 'Azerbaijan', 'AZ', 'AZE', 31);
INSERT INTO vertex_country  VALUES (17, 'Bahamas', 'BS', 'BHS', 44);
INSERT INTO vertex_country  VALUES (18, 'Bahrain', 'BH', 'BHR', 48);
INSERT INTO vertex_country  VALUES (19, 'Bangladesh', 'BD', 'BGD', 50);
INSERT INTO vertex_country  VALUES (20, 'Barbados', 'BB', 'BRB', 52);
INSERT INTO vertex_country  VALUES (21, 'Belarus', 'BY', 'BLR', 112);
INSERT INTO vertex_country  VALUES (22, 'Belgium', 'BE', 'BEL', 56);
INSERT INTO vertex_country  VALUES (23, 'Belize', 'BZ', 'BLZ', 84);
INSERT INTO vertex_country  VALUES (24, 'Benin', 'BJ', 'BEN', 204);
INSERT INTO vertex_country  VALUES (25, 'Bermuda', 'BM', 'BMU', 60);
INSERT INTO vertex_country  VALUES (26, 'Bhutan', 'BT', 'BTN', 64);
INSERT INTO vertex_country  VALUES (27, 'Bolivia, Plurinational State of', 'BO', 'BOL', 68);
INSERT INTO vertex_country  VALUES (28, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 535);
INSERT INTO vertex_country  VALUES (29, 'Bosnia and Herzegovina', 'BA', 'BIH', 70);
INSERT INTO vertex_country  VALUES (30, 'Botswana', 'BW', 'BWA', 72);
INSERT INTO vertex_country  VALUES (31, 'Bouvet Island', 'BV', 'BVT', 74);
INSERT INTO vertex_country  VALUES (32, 'Brazil', 'BR', 'BRA', 76);
INSERT INTO vertex_country  VALUES (33, 'British Indian Ocean Territory', 'IO', 'IOT', 86);
INSERT INTO vertex_country  VALUES (34, 'Brunei Darussalam', 'BN', 'BRN', 96);
INSERT INTO vertex_country  VALUES (35, 'Bulgaria', 'BG', 'BGR', 100);
INSERT INTO vertex_country  VALUES (36, 'Burkina Faso', 'BF', 'BFA', 854);
INSERT INTO vertex_country  VALUES (37, 'Burundi', 'BI', 'BDI', 108);
INSERT INTO vertex_country  VALUES (38, 'Cambodia', 'KH', 'KHM', 116);
INSERT INTO vertex_country  VALUES (39, 'Cameroon', 'CM', 'CMR', 120);
INSERT INTO vertex_country  VALUES (40, 'Canada', 'CA', 'CAN', 124);
INSERT INTO vertex_country  VALUES (41, 'Cape Verde', 'CV', 'CPV', 132);
INSERT INTO vertex_country  VALUES (42, 'Cayman Islands', 'KY', 'CYM', 136);
INSERT INTO vertex_country  VALUES (43, 'Central African Republic', 'CF', 'CAF', 140);
INSERT INTO vertex_country  VALUES (44, 'Chad', 'TD', 'TCD', 148);
INSERT INTO vertex_country  VALUES (45, 'Chile', 'CL', 'CHL', 152);
INSERT INTO vertex_country  VALUES (46, 'China', 'CN', 'CHN', 156);
INSERT INTO vertex_country  VALUES (47, 'Christmas Island', 'CX', 'CXR', 162);
INSERT INTO vertex_country  VALUES (48, 'Cocos (Keeling) Islands', 'CC', 'CCK', 166);
INSERT INTO vertex_country  VALUES (49, 'Colombia', 'CO', 'COL', 170);
INSERT INTO vertex_country  VALUES (50, 'Comoros', 'KM', 'COM', 174);
INSERT INTO vertex_country  VALUES (51, 'Congo', 'CG', 'COG', 178);
INSERT INTO vertex_country  VALUES (52, 'Congo, the Democratic Republic of the', 'CD', 'COD', 180);
INSERT INTO vertex_country  VALUES (53, 'Cook Islands', 'CK', 'COK', 184);
INSERT INTO vertex_country  VALUES (54, 'Costa Rica', 'CR', 'CRI', 188);
INSERT INTO vertex_country  VALUES (55, 'Côte d''Ivoire', 'CI', 'CIV', 384);
INSERT INTO vertex_country  VALUES (56, 'Croatia', 'HR', 'HRV', 191);
INSERT INTO vertex_country  VALUES (57, 'Cuba', 'CU', 'CUB', 192);
INSERT INTO vertex_country  VALUES (58, 'Cura', 'CW', 'CUW', 531);
INSERT INTO vertex_country  VALUES (59, 'Cyprus', 'CY', 'CYP', 196);
INSERT INTO vertex_country  VALUES (60, 'Czech Republic', 'CZ', 'CZE', 203);
INSERT INTO vertex_country  VALUES (61, 'Denmark', 'DK', 'DNK', 208);
INSERT INTO vertex_country  VALUES (62, 'Djibouti', 'DJ', 'DJI', 262);
INSERT INTO vertex_country  VALUES (63, 'Dominica', 'DM', 'DMA', 212);
INSERT INTO vertex_country  VALUES (64, 'Dominican Republic', 'DO', 'DOM', 214);
INSERT INTO vertex_country  VALUES (65, 'Ecuador', 'EC', 'ECU', 218);
INSERT INTO vertex_country  VALUES (66, 'Egypt', 'EG', 'EGY', 818);
INSERT INTO vertex_country  VALUES (67, 'El Salvador', 'SV', 'SLV', 222);
INSERT INTO vertex_country  VALUES (68, 'Equatorial Guinea', 'GQ', 'GNQ', 226);
INSERT INTO vertex_country  VALUES (69, 'Eritrea', 'ER', 'ERI', 232);
INSERT INTO vertex_country  VALUES (70, 'Estonia', 'EE', 'EST', 233);
INSERT INTO vertex_country  VALUES (71, 'Ethiopia', 'ET', 'ETH', 231);
INSERT INTO vertex_country  VALUES (72, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 238);
INSERT INTO vertex_country  VALUES (73, 'Faroe Islands', 'FO', 'FRO', 234);
INSERT INTO vertex_country  VALUES (74, 'Fiji', 'FJ', 'FJI', 242);
INSERT INTO vertex_country  VALUES (75, 'Finland', 'FI', 'FIN', 246);
INSERT INTO vertex_country  VALUES (76, 'France', 'FR', 'FRA', 250);
INSERT INTO vertex_country  VALUES (77, 'French Guiana', 'GF', 'GUF', 254);
INSERT INTO vertex_country  VALUES (78, 'French Polynesia', 'PF', 'PYF', 258);
INSERT INTO vertex_country  VALUES (79, 'French Southern Territories', 'TF', 'ATF', 260);
INSERT INTO vertex_country  VALUES (80, 'Gabon', 'GA', 'GAB', 266);
INSERT INTO vertex_country  VALUES (81, 'Gambia', 'GM', 'GMB', 270);
INSERT INTO vertex_country  VALUES (82, 'Georgia', 'GE', 'GEO', 268);
INSERT INTO vertex_country  VALUES (83, 'Germany', 'DE', 'DEU', 276);
INSERT INTO vertex_country  VALUES (84, 'Ghana', 'GH', 'GHA', 288);
INSERT INTO vertex_country  VALUES (85, 'Gibraltar', 'GI', 'GIB', 292);
INSERT INTO vertex_country  VALUES (86, 'Greece', 'GR', 'GRC', 300);
INSERT INTO vertex_country  VALUES (87, 'Greenland', 'GL', 'GRL', 304);
INSERT INTO vertex_country  VALUES (88, 'Grenada', 'GD', 'GRD', 308);
INSERT INTO vertex_country  VALUES (89, 'Guadeloupe', 'GP', 'GLP', 312);
INSERT INTO vertex_country  VALUES (90, 'Guam', 'GU', 'GUM', 316);
INSERT INTO vertex_country  VALUES (91, 'Guatemala', 'GT', 'GTM', 320);
INSERT INTO vertex_country  VALUES (92, 'Guernsey', 'GG', 'GGY', 831);
INSERT INTO vertex_country  VALUES (93, 'Guinea', 'GN', 'GIN', 324);
INSERT INTO vertex_country  VALUES (94, 'Guinea-Bissau', 'GW', 'GNB', 624);
INSERT INTO vertex_country  VALUES (95, 'Guyana', 'GY', 'GUY', 328);
INSERT INTO vertex_country  VALUES (96, 'Haiti', 'HT', 'HTI', 332);
INSERT INTO vertex_country  VALUES (97, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334);
INSERT INTO vertex_country  VALUES (98, 'Holy See (Vatican City State)', 'VA', 'VAT', 336);
INSERT INTO vertex_country  VALUES (99, 'Honduras', 'HN', 'HND', 340);
INSERT INTO vertex_country  VALUES (100, 'Hong Kong', 'HK', 'HKG', 344);
INSERT INTO vertex_country  VALUES (101, 'Hungary', 'HU', 'HUN', 348);
INSERT INTO vertex_country  VALUES (102, 'Iceland', 'IS', 'ISL', 352);
INSERT INTO vertex_country  VALUES (103, 'India', 'IN', 'IND', 356);
INSERT INTO vertex_country  VALUES (104, 'Indonesia', 'ID', 'IDN', 360);
INSERT INTO vertex_country  VALUES (105, 'Iran, Islamic Republic of', 'IR', 'IRN', 364);
INSERT INTO vertex_country  VALUES (106, 'Iraq', 'IQ', 'IRQ', 368);
INSERT INTO vertex_country  VALUES (107, 'Ireland', 'IE', 'IRL', 372);
INSERT INTO vertex_country  VALUES (108, 'Isle of Man', 'IM', 'IMN', 833);
INSERT INTO vertex_country  VALUES (109, 'Israel', 'IL', 'ISR', 376);
INSERT INTO vertex_country  VALUES (110, 'Italy', 'IT', 'ITA', 380);
INSERT INTO vertex_country  VALUES (111, 'Jamaica', 'JM', 'JAM', 388);
INSERT INTO vertex_country  VALUES (112, 'Japan', 'JP', 'JPN', 392);
INSERT INTO vertex_country  VALUES (113, 'Jersey', 'JE', 'JEY', 832);
INSERT INTO vertex_country  VALUES (114, 'Jordan', 'JO', 'JOR', 400);
INSERT INTO vertex_country  VALUES (115, 'Kazakhstan', 'KZ', 'KAZ', 398);
INSERT INTO vertex_country  VALUES (116, 'Kenya', 'KE', 'KEN', 404);
INSERT INTO vertex_country  VALUES (117, 'Kiribati', 'KI', 'KIR', 296);
INSERT INTO vertex_country  VALUES (118, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', 408);
INSERT INTO vertex_country  VALUES (119, 'Korea, Republic of', 'KR', 'KOR', 410);
INSERT INTO vertex_country  VALUES (120, 'Kuwait', 'KW', 'KWT', 414);
INSERT INTO vertex_country  VALUES (121, 'Kyrgyzstan', 'KG', 'KGZ', 417);
INSERT INTO vertex_country  VALUES (122, 'Lao People''s Democratic Republic', 'LA', 'LAO', 418);
INSERT INTO vertex_country  VALUES (123, 'Latvia', 'LV', 'LVA', 428);
INSERT INTO vertex_country  VALUES (124, 'Lebanon', 'LB', 'LBN', 422);
INSERT INTO vertex_country  VALUES (125, 'Lesotho', 'LS', 'LSO', 426);
INSERT INTO vertex_country  VALUES (126, 'Liberia', 'LR', 'LBR', 430);
INSERT INTO vertex_country  VALUES (127, 'Libya', 'LY', 'LBY', 434);
INSERT INTO vertex_country  VALUES (128, 'Liechtenstein', 'LI', 'LIE', 438);
INSERT INTO vertex_country  VALUES (129, 'Lithuania', 'LT', 'LTU', 440);
INSERT INTO vertex_country  VALUES (130, 'Luxembourg', 'LU', 'LUX', 442);
INSERT INTO vertex_country  VALUES (131, 'Macao', 'MO', 'MAC', 446);
INSERT INTO vertex_country  VALUES (132, 'Macedonia, the former Yugoslav Republic of', 'MK', 'MKD', 807);
INSERT INTO vertex_country  VALUES (133, 'Madagascar', 'MG', 'MDG', 450);
INSERT INTO vertex_country  VALUES (134, 'Malawi', 'MW', 'MWI', 454);
INSERT INTO vertex_country  VALUES (135, 'Malaysia', 'MY', 'MYS', 458);
INSERT INTO vertex_country  VALUES (136, 'Maldives', 'MV', 'MDV', 462);
INSERT INTO vertex_country  VALUES (137, 'Mali', 'ML', 'MLI', 466);
INSERT INTO vertex_country  VALUES (138, 'Malta', 'MT', 'MLT', 470);
INSERT INTO vertex_country  VALUES (139, 'Marshall Islands', 'MH', 'MHL', 584);
INSERT INTO vertex_country  VALUES (140, 'Martinique', 'MQ', 'MTQ', 474);
INSERT INTO vertex_country  VALUES (141, 'Mauritania', 'MR', 'MRT', 478);
INSERT INTO vertex_country  VALUES (142, 'Mauritius', 'MU', 'MUS', 480);
INSERT INTO vertex_country  VALUES (143, 'Mayotte', 'YT', 'MYT', 175);
INSERT INTO vertex_country  VALUES (144, 'Mexico', 'MX', 'MEX', 484);
INSERT INTO vertex_country  VALUES (145, 'Micronesia, Federated States of', 'FM', 'FSM', 583);
INSERT INTO vertex_country  VALUES (146, 'Moldova, Republic of', 'MD', 'MDA', 498);
INSERT INTO vertex_country  VALUES (147, 'Monaco', 'MC', 'MCO', 492);
INSERT INTO vertex_country  VALUES (148, 'Mongolia', 'MN', 'MNG', 496);
INSERT INTO vertex_country  VALUES (149, 'Montenegro', 'ME', 'MNE', 499);
INSERT INTO vertex_country  VALUES (150, 'Montserrat', 'MS', 'MSR', 500);
INSERT INTO vertex_country  VALUES (151, 'Morocco', 'MA', 'MAR', 504);
INSERT INTO vertex_country  VALUES (152, 'Mozambique', 'MZ', 'MOZ', 508);
INSERT INTO vertex_country  VALUES (153, 'Myanmar', 'MM', 'MMR', 104);
INSERT INTO vertex_country  VALUES (154, 'Namibia', 'NA', 'NAM', 516);
INSERT INTO vertex_country  VALUES (155, 'Nauru', 'NR', 'NRU', 520);
INSERT INTO vertex_country  VALUES (156, 'Nepal', 'NP', 'NPL', 524);
INSERT INTO vertex_country  VALUES (157, 'Netherlands', 'NL', 'NLD', 528);
INSERT INTO vertex_country  VALUES (158, 'New Caledonia', 'NC', 'NCL', 540);
INSERT INTO vertex_country  VALUES (159, 'New Zealand', 'NZ', 'NZL', 554);
INSERT INTO vertex_country  VALUES (160, 'Nicaragua', 'NI', 'NIC', 558);
INSERT INTO vertex_country  VALUES (161, 'Niger', 'NE', 'NER', 562);
INSERT INTO vertex_country  VALUES (162, 'Nigeria', 'NG', 'NGA', 566);
INSERT INTO vertex_country  VALUES (163, 'Niue', 'NU', 'NIU', 570);
INSERT INTO vertex_country  VALUES (164, 'Norfolk Island', 'NF', 'NFK', 574);
INSERT INTO vertex_country  VALUES (165, 'Northern Mariana Islands', 'MP', 'MNP', 580);
INSERT INTO vertex_country  VALUES (166, 'Norway', 'NO', 'NOR', 578);
INSERT INTO vertex_country  VALUES (167, 'Oman', 'OM', 'OMN', 512);
INSERT INTO vertex_country  VALUES (168, 'Pakistan', 'PK', 'PAK', 586);
INSERT INTO vertex_country  VALUES (169, 'Palau', 'PW', 'PLW', 585);
INSERT INTO vertex_country  VALUES (170, 'Palestine, State of', 'PS', 'PSE', 275);
INSERT INTO vertex_country  VALUES (171, 'Panama', 'PA', 'PAN', 591);
INSERT INTO vertex_country  VALUES (172, 'Papua New Guinea', 'PG', 'PNG', 598);
INSERT INTO vertex_country  VALUES (173, 'Paraguay', 'PY', 'PRY', 600);
INSERT INTO vertex_country  VALUES (174, 'Peru', 'PE', 'PER', 604);
INSERT INTO vertex_country  VALUES (175, 'Philippines', 'PH', 'PHL', 608);
INSERT INTO vertex_country  VALUES (176, 'Pitcairn', 'PN', 'PCN', 612);
INSERT INTO vertex_country  VALUES (177, 'Poland', 'PL', 'POL', 616);
INSERT INTO vertex_country  VALUES (178, 'Portugal', 'PT', 'PRT', 620);
INSERT INTO vertex_country  VALUES (179, 'Puerto Rico', 'PR', 'PRI', 630);
INSERT INTO vertex_country  VALUES (180, 'Qatar', 'QA', 'QAT', 634);
INSERT INTO vertex_country  VALUES (181, 'Réunion', 'RE', 'REU', 638);
INSERT INTO vertex_country  VALUES (182, 'Romania', 'RO', 'ROU', 642);
INSERT INTO vertex_country  VALUES (183, 'Russian Federation', 'RU', 'RUS', 643);
INSERT INTO vertex_country  VALUES (184, 'Rwanda', 'RW', 'RWA', 646);
INSERT INTO vertex_country  VALUES (185, 'Saint Barthélemy', 'BL', 'BLM', 652);
INSERT INTO vertex_country  VALUES (186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 654);
INSERT INTO vertex_country  VALUES (187, 'Saint Kitts and Nevis', 'KN', 'KNA', 659);
INSERT INTO vertex_country  VALUES (188, 'Saint Lucia', 'LC', 'LCA', 662);
INSERT INTO vertex_country  VALUES (189, 'Saint Martin (French part)', 'MF', 'MAF', 663);
INSERT INTO vertex_country  VALUES (190, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666);
INSERT INTO vertex_country  VALUES (191, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670);
INSERT INTO vertex_country  VALUES (192, 'Samoa', 'WS', 'WSM', 882);
INSERT INTO vertex_country  VALUES (193, 'San Marino', 'SM', 'SMR', 674);
INSERT INTO vertex_country  VALUES (194, 'Sao Tome and Principe', 'ST', 'STP', 678);
INSERT INTO vertex_country  VALUES (195, 'Saudi Arabia', 'SA', 'SAU', 682);
INSERT INTO vertex_country  VALUES (196, 'Senegal', 'SN', 'SEN', 686);
INSERT INTO vertex_country  VALUES (197, 'Serbia', 'RS', 'SRB', 688);
INSERT INTO vertex_country  VALUES (198, 'Seychelles', 'SC', 'SYC', 690);
INSERT INTO vertex_country  VALUES (199, 'Sierra Leone', 'SL', 'SLE', 694);
INSERT INTO vertex_country  VALUES (200, 'Singapore', 'SG', 'SGP', 702);
INSERT INTO vertex_country  VALUES (201, 'Sint Maarten (Dutch part)', 'SX', 'SXM', 534);
INSERT INTO vertex_country  VALUES (202, 'Slovakia', 'SK', 'SVK', 703);
INSERT INTO vertex_country  VALUES (203, 'Slovenia', 'SI', 'SVN', 705);
INSERT INTO vertex_country  VALUES (204, 'Solomon Islands', 'SB', 'SLB', 90);
INSERT INTO vertex_country  VALUES (205, 'Somalia', 'SO', 'SOM', 706);
INSERT INTO vertex_country  VALUES (206, 'South Africa', 'ZA', 'ZAF', 710);
INSERT INTO vertex_country  VALUES (207, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239);
INSERT INTO vertex_country  VALUES (208, 'South Sudan', 'SS', 'SSD', 728);
INSERT INTO vertex_country  VALUES (209, 'Spain', 'ES', 'ESP', 724);
INSERT INTO vertex_country  VALUES (210, 'Sri Lanka', 'LK', 'LKA', 144);
INSERT INTO vertex_country  VALUES (211, 'Sudan', 'SD', 'SDN', 729);
INSERT INTO vertex_country  VALUES (212, 'Suriname', 'SR', 'SUR', 740);
INSERT INTO vertex_country  VALUES (213, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744);
INSERT INTO vertex_country  VALUES (214, 'Swaziland', 'SZ', 'SWZ', 748);
INSERT INTO vertex_country  VALUES (215, 'Sweden', 'SE', 'SWE', 752);
INSERT INTO vertex_country  VALUES (216, 'Switzerland', 'CH', 'CHE', 756);
INSERT INTO vertex_country  VALUES (217, 'Syrian Arab Republic', 'SY', 'SYR', 760);
INSERT INTO vertex_country  VALUES (218, 'Taiwan, Province of China', 'TW', 'TWN', 158);
INSERT INTO vertex_country  VALUES (219, 'Tajikistan', 'TJ', 'TJK', 762);
INSERT INTO vertex_country  VALUES (220, 'Tanzania, United Republic of', 'TZ', 'TZA', 834);
INSERT INTO vertex_country  VALUES (221, 'Thailand', 'TH', 'THA', 764);
INSERT INTO vertex_country  VALUES (222, 'Timor-Leste', 'TL', 'TLS', 626);
INSERT INTO vertex_country  VALUES (223, 'Togo', 'TG', 'TGO', 768);
INSERT INTO vertex_country  VALUES (224, 'Tokelau', 'TK', 'TKL', 772);
INSERT INTO vertex_country  VALUES (225, 'Tonga', 'TO', 'TON', 776);
INSERT INTO vertex_country  VALUES (226, 'Trinidad and Tobago', 'TT', 'TTO', 780);
INSERT INTO vertex_country  VALUES (227, 'Tunisia', 'TN', 'TUN', 788);
INSERT INTO vertex_country  VALUES (228, 'Turkey', 'TR', 'TUR', 792);
INSERT INTO vertex_country  VALUES (229, 'Turkmenistan', 'TM', 'TKM', 795);
INSERT INTO vertex_country  VALUES (230, 'Turks and Caicos Islands', 'TC', 'TCA', 796);
INSERT INTO vertex_country  VALUES (231, 'Tuvalu', 'TV', 'TUV', 798);
INSERT INTO vertex_country  VALUES (232, 'Uganda', 'UG', 'UGA', 800);
INSERT INTO vertex_country  VALUES (233, 'Ukraine', 'UA', 'UKR', 804);
INSERT INTO vertex_country  VALUES (234, 'United Arab Emirates', 'AE', 'ARE', 784);
INSERT INTO vertex_country  VALUES (235, 'United Kingdom', 'GB', 'GBR', 826);
INSERT INTO vertex_country  VALUES (236, 'United States', 'US', 'USA', 840);
INSERT INTO vertex_country  VALUES (237, 'United States Minor Outlying Islands', 'UM', 'UMI', 581);
INSERT INTO vertex_country  VALUES (238, 'Uruguay', 'UY', 'URY', 858);
INSERT INTO vertex_country  VALUES (239, 'Uzbekistan', 'UZ', 'UZB', 860);
INSERT INTO vertex_country  VALUES (240, 'Vanuatu', 'VU', 'VUT', 548);
INSERT INTO vertex_country  VALUES (241, 'Venezuela, Bolivarian Republic of', 'VE', 'VEN', 862);
INSERT INTO vertex_country  VALUES (242, 'Viet Nam', 'VN', 'VNM', 704);
INSERT INTO vertex_country  VALUES (243, 'Virgin Islands, British', 'VG', 'VGB', 92);
INSERT INTO vertex_country  VALUES (244, 'Virgin Islands, U.S.', 'VI', 'VIR', 850);
INSERT INTO vertex_country  VALUES (245, 'Wallis and Futuna', 'WF', 'WLF', 876);
INSERT INTO vertex_country  VALUES (246, 'Western Sahara', 'EH', 'ESH', 732);
INSERT INTO vertex_country  VALUES (247, 'Yemen', 'YE', 'YEM', 887);
INSERT INTO vertex_country  VALUES (248, 'Zambia', 'ZM', 'ZMB', 894);
INSERT INTO vertex_country  VALUES (249, 'Zimbabwe', 'ZW', 'ZWE', 716);

INSERT INTO vertex_country  VALUES (250, 'Bolivia', 'BO', 'BOL', 68);
INSERT INTO vertex_country  VALUES (251, 'British Virgin Islands', 'VG', 'VGB', 92);
--INSERT INTO vertex_country  VALUES (252, 'Cote D'Ivoire', 'CI', 'CIV', 384);
INSERT INTO vertex_country  VALUES (253, 'Heard Island and Mcdonald Islands', 'HM', 'HMD', 334);
INSERT INTO vertex_country  VALUES (254, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 434);
INSERT INTO vertex_country  VALUES (255, 'Macedonia, the Former Yugoslav Republic', 'MK', 'MKD', 807);
INSERT INTO vertex_country  VALUES (256, 'Moldova', 'MD', 'MDA', 498);
INSERT INTO vertex_country  VALUES (257, 'Myanmar (Burma)', 'MM', 'MMR', 104);
INSERT INTO vertex_country  VALUES (258, 'Palestine', 'PS', 'PSE', 275);
INSERT INTO vertex_country  VALUES (259, 'Tanzania', 'TZ', 'TZA', 834);
INSERT INTO vertex_country  VALUES (260, 'Vietnam', 'VN', 'VNM', 704);
INSERT INTO vertex_country  VALUES (261, 'The Democratic Republic of the Congo', 'CD', 'COD', 180);



