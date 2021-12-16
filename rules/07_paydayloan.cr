//// PAYDAY LOAN ////


SCOPE SENTENCE{
	DOMAIN(01.7:LOW)
	{
		LIST(100189539)//@SYN: #100189539# [loan]
		>>
		LIST(147796)//@SYN: #147796# [company]
	}
}


SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.7)
	{
		LIST(65422)//@SYN: #65422# [payday]
		>
		LIST(202429)//@SYN: #202429# [advance]
	}
}


SCOPE SENTENCE ON ATOM
{
DOMAIN(01.7:HIGH)
	{
		LEMMA("payday","title","personal","person","pawn","installment","payment","repayment","earnest")
		<-2:2>
		LIST(100189539,100783521) - TYPE(PRO)//@SYN: #100189539# [loan] //@SYN: #100783521# [title]
	}
}

SCOPE SENTENCE ON ATOM
{
    DOMAIN(01.7:LOW)
	{
		LIST(293714,76081,153479,168730,124641)//@SYN: #293714# [pay] //@SYN: #76081# [pay off] //@SYN: #153479# [payoff] //@SYN: #168730# [receive] //@SYN: #124641# [finance]
		<-5:5>
		LEMMA("loan")
		AND NOT
		(
		KEYWORD(EXPAND "studentloanservice.cl")
		OR
		LEMMA("student","study","college","university","graduate","graduated","school","career","vehicle","car","odometer")
	)
	}
}

SCOPE SENTENCE ON ATOM
{
    DOMAIN(01.7:NORMAL)
	{
		LIST(149242,282373)//@SYN: #149242# [cancel] //@SYN: #282373# [return]
		<-2:2>
		LEMMA("loan")
	}
}

SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.7:NORMAL)
	{
		LEMMA("personal","individual","exclusive","own")
		AND
		(
			LEMMA("line")
			<-2:2>
			LEMMA("credit")
		)
	}
}
 
SCOPE SENTENCE
{	
	DOMAIN(01.7)
	{
		KEYWORD("lien holder","lien","title loan")
		AND NOT
		(
			KEYWORD(EXPAND "studentloanservice.cl")
			OR
			LEMMA("student","study","college","university","graduate","graduated","school","career","vehicle","car",
			"odometer")
		)
	}
}


SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.7)
	{
		KEYWORD("salary","Payroll","small dollar","short term","cash advance")
		>
		LEMMA("loan")
	}
}
SCOPE SENTENCE ON ATOM
{
    DOMAIN(01.7:LOW)
	{
		LIST(293714,76081,153479,168730,124641)//@SYN: #293714# [pay] //@SYN: #76081# [pay off] //@SYN: #153479# [payoff] //@SYN: #168730# [receive] //@SYN: #124641# [finance]
		<-5:5>
		LEMMA("loan")
		>>
		KEYWORD("in full")
		<>
		LEMMA("take") + TYPE(VER)
		>>
		LIST(79297) - KEYWORD("pt.")//@SYN: #79297# [payment]
		AND NOT
		(
		KEYWORD(EXPAND "studentloanservice.cl")
		OR
		LEMMA("student","study","college","university","graduate","graduated","school","career","vehicle","car","odometer")
	)
	}
}
