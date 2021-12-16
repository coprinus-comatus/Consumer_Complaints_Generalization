 /// MONEY TRANSFER SOURCES ////


SCOPE SENTENCE ON ATOM{
	//Traveler's check or cashier's check
	DOMAIN(01.5)
	{
		LIST(154087,172040,42198)//@SYN: #154087# [traveller] //@SYN: #172040# [cashier] //@SYN: #42198# [anticipation]
		<:5>
		KEYWORD("check","checks")
	}
}


SCOPE SENTENCE ON ATOM{
	//Currency or CAD
	DOMAIN(01.5)
	{
		ANCESTOR(LOAD "money_currency_ancestor.cl") - KEYWORD("DM","sent","sterling","sterlings") - SYNCON(UNKNOWN)	//# 100014083: dollar, dlr, dol., d.; 101403377: franc, F, f; 100745316: escudo; 100004916: euro, Euro, EUR; 102499350: Eurocurrency; 123694: zaïre, z; 124301: xu; 100191068: krona, Faroese krona, króna, Fkr, kr.; 125143: florin; 100207523: vatu, V; 129074: halala; 100129983: kroon; 145986: crown; 182020: mina, minae; 100204656: sol, nuevo sol; 199793: pence; 100542304: angolar, ag; 202677: denar; 205823: benefit dollar; 216383: gopik; 100026360: kn, kuna, HRK; 100004608: lari; 100133011: lat, lati; 100081893: hryvnia, Ukrainian hryvnia, UAH; 100171503: nakfa; 100025627: litas; 100206600: rufiyaa; 100486637: manat; 223011: marka; 226646: milreis; 269144: sent; 100035881: kyrgyz som, kyrgyzstani som, som; 100173751: tenge, kazakhstani tenge, KZT; 100208133: tolar; 100244696: peso; 100522701: netherlands antillean guilder, guilder; 100232270: aruban florin, florin; 100130498: dram, armenian dram; 100181129: moldovan leu, leu; 100487888: uzbek som, som, uzbekistani som; 100199886: somoni, tajikistani somoni; 100177875: denar, macedonian denar; 100179620: convertible mark, Bosnia and Herzegovina convertible mark, Bosnia-Herzegovina convertible mark; 376872: dinar; 376873: lira; 376874: rial, riyal; 376875: dirham; 58823: Afghan monetary unit; 58826: Argentine monetary unit; 58828: Thai monetary unit; 58831: Panamanian monetary unit; 58833: Ethiopian monetary unit; 58840: Venezuelan monetary unit; 58842: Ghanian monetary unit; 58845: Costa Rican monetary unit; 58847: El Salvadoran monetary unit; 58849: Brazilian monetary unit; 58851: Gambian monetary unit; 58854: Algerian monetary unit; 58857: Bahrainian monetary unit; 58860: Iraqi monetary unit; 58862: Jordanian monetary unit; 58864: Kuwaiti monetary unit; 58867: Libyan monetary unit; 58870: Southern Yemeni monetary unit; 58872: Tunisian monetary unit; 58876: Yugoslavian monetary unit; 58879: Moroccan monetary unit; 58881: United Arab Emirate monetary unit; 58908: Vietnamese monetary unit; 58911: Greek monetary unit; 58914: Sao Thome e Principe monetary unit; 58916: Equatorial Guinea monetary unit; 58918: Cape Verde monetary unit; 58920: Portuguese monetary unit; 58923: Hungarian monetary unit; 58947: Haitian monetary unit; 58950: Paraguayan monetary unit; 58952: Dutch monetary unit; 58954: Surinamese monetary unit; 58956: Peruvian monetary unit; 58958: Papuan monetary unit; 58961: Laotian monetary unit; 58964: Czechoslovakian monetary unit; 58967: Icelandic monetary unit; 58970: Swedish monetary unit; 58973: Danish monetary unit; 58975: Norwegian monetary unit; 58977: Malawian monetary unit; 58980: Zambian monetary unit; 58983: Angolan monetary unit; 58986: Myanmar monetary unit; 58989: Albanian monetary unit; 58992: Honduran monetary unit; 58994: Sierra Leone monetary unit; 58996: Romanian monetary unit; 58999: Bulgarian monetary unit; 59002: Swaziland monetary unit; 59004: Italian monetary unit; 59006: British monetary unit; 59009: Turkish monetary unit; 59013: Lesotho monetary unit; 59016: German monetary unit; 59019: Finnish monetary unit; 59022: Mozambique monetary unit; 59024: Nigerian monetary unit; 59027: Bhutanese monetary unit; 59030: Mauritanian monetary unit; 59033: Tongan monetary unit; 59036: Macao monetary unit; 59039: Spanish monetary unit; 59041: Bolivian monetary unit; 59043: Nicaraguan monetary unit; 59045: Chilean monetary unit; 59047: Colombian monetary unit; 59049: Cuban monetary unit; 59051: Dominican monetary unit; 59053: Guinea-Bissau monetary unit; 59055: Mexican monetary unit; 59057: Philippine monetary unit; 59059: Uruguayan monetary unit; 59061: Cypriot monetary unit; 59064: Egyptian monetary unit; 59068: Irish monetary unit; 59070: Lebanese monetary unit; 59072: Maltese monetary unit; 59074: Sudanese monetary unit; 59076: Syrian monetary unit; 59078: Botswana monetary unit; 59081: Guatemalan monetary unit; 59083: South African monetary unit; 59085: Iranian monetary unit; 59088: Omani monetary unit; 59091: Yemeni monetary unit; 59093: Cambodian monetary unit; 59095: Malaysian monetary unit; 59097: Qatari monetary unit; 59100: Saudi Arabian monetary unit; 101415602: Russian monetary unit; 59106: Indian monetary unit; 59109: Pakistani monetary unit; 59112: Mauritian monetary unit; 59114: Nepalese monetary unit; 59116: Seychelles monetary unit; 59118: Sri Lankan monetary unit; 59120: Indonesian monetary unit; 59122: Austrian monetary unit; 59125: Israeli monetary unit; 59128: Kenyan monetary unit; 59130: Somalian monetary unit; 59132: Tanzanian monetary unit; 59134: Ugandan monetary unit; 59136: Ecuadoran monetary unit; 59138: Guinean monetary unit; 59140: Bangladeshi monetary unit; 59142: Western Samoan monetary unit; 59145: Mongolian monetary unit; 59148: North Korean monetary unit; 59151: South Korean monetary unit; 59154: Japanese monetary unit; 59156: Chinese monetary unit; 59160: Zairese monetary unit; 59163: Polish monetary unit; 117653: decimal currency; 126901: funny money; 100221828: ecu, European Currency Unit, ECU, Ecu; 101421756: hard currency; 100747699: unit of account, money of account, ac; 100756202: reserve currency; 101029329: continental currency; 205266: base currency; 100727103: single currency, common currency, unitary; 105027774: soft money; 283107: Asian currency unit, ACU; 303605: ancient currency; 303929: convertible currency; 303930: foreign exchange, foreign currency; 113479982: cryptocurrency, crypto currency; 374617: Madagascar monetary unit; 374632: South Sudanese monetary unit; 374636: Serbian monetary unit; 374640: Belarusian monetary unit
		OR
		KEYWORD("CAD")
	}
}


SCOPE SENTENCE ON ATOM{
	//send money, transfer money
	DOMAIN(01.5)
	{
		LIST(217444,170492,154060,122836,167780)//@SYN: #217444# [international] //@SYN: #170492# [transfer] //@SYN: #154060# [transaction] //@SYN: #122836# [wire] //@SYN: #167780# [send]
		<
		!KEYWORD("check")
		<:5>
		LEMMA("money","amount")
	}
}


SCOPE SENTENCE ON ATOM
{
	//purchased 2 Money orders 
	DOMAIN(01.5)
	{
		KEYWORD("money")
		<:4>
		LIST(33046,30009)//@SYN: #33046# [order] //@SYN: #30009# [transfer]
		<>
		!LEMMA("check")
	}
}


SCOPE SENTENCE ON ATOM{

	//exchange rate
	DOMAIN(01.5)
	{
		LEMMA("exchange")
		>
		LEMMA("rate")
	}
}


SCOPE SENTENCE ON ATOM{
	//foreign currency change
	DOMAIN(01.5)
	{
		LEMMA("foreign","exchange","change","virtual","international")
		<-5:5>
		LEMMA("currency")
	}
}



SCOPE SENTENCE ON ATOM{
	//paypal
	DOMAIN(01.5)
	{
		LIST(217444,170492,154060,122836,167780)//@SYN: #217444# [international] //@SYN: #170492# [transfer] //@SYN: #154060# [transaction] //@SYN: #122836# [wire] //@SYN: #167780# [send]
		<-10:10>
		KEYWORD("paypal","pay pal")
	}
}


SCOPE SENTENCE ON ATOM{
	//Mobile or digital wallet
	DOMAIN(01.5)
	{
		KEYWORD("mobile","digital")
		<:5>
		KEYWORD("wallet")
	}
}



SCOPE SENTENCE ON ATOM{
	//Check cashing service
	DOMAIN(01.5)
	{
		KEYWORD("check")
		<:5>
		KEYWORD("cashing")
	}
}
