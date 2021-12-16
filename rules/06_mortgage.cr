//// MORTGAGE SOURCES ////


SCOPE SECTION (BODY) ON ATOM
{
	//VA mortgage
	DOMAIN(01.6)
	{
		KEYWORD("va")
		>
		LIST(57571)//@SYN: #57571# [mortgage]
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//mortgage
	DOMAIN(01.6)
	{
		LIST(57571,101210094)//# 57571: mortgage, hypotheca, mtge., mtg.; 101210094: mortgage, mortgage loan, mtge., mtg.
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//equity line
	DOMAIN(01.6)
	{
		LIST(57492)//@SYN: #57492# [equity]
		>
		LIST(200228,100189539)//@SYN: #200228# [line] //@SYN: #100189539# [loan]
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")

	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//home, house
	DOMAIN(01.6)
	{
		KEYWORD("mortgage")
		>>
		LIST(100189539,118236144,34632,31025,192106)//@SYN: #100189539# [loan] //@SYN: #118236144# [lender] //@SYN: #34632# [security] //@SYN: #31025# [bill] //@SYN: #192106# [billing]
		>>
		!KEYWORD(":")
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//home equityy loan
	DOMAIN(01.6)
	{
		LEMMA("home","house")
		>
		LIST(57492)//@SYN: #57492# [equity]
		>
		LIST(200228,100189539)//@SYN: #200228# [line] //@SYN: #100189539# [loan]
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	DOMAIN(01.6)
	{
		LIST(200228,100189539)//@SYN: #200228# [line] //@SYN: #100189539# [loan]
		>
		LEMMA("credit")
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
				AND NOT
		KEYWORD(EXPAND "vehicles.cl")
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//reverse mortgage
	DOMAIN(01.6)
	{
		LEMMA("reverse")
		>
        LIST(165155,29340,30983)//@SYN: #165155# [mortgage] //@SYN: #29340# [title] //@SYN: #30983# [contract]
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//home, house
	DOMAIN(01.6)
	{
		!LEMMA("drive","driving","stay")
		<
		KEYWORD("house","home","apartment","property","homeowner","homeowners","lender","mortgage","morgage","residence",
					"flat","penthouse","rental")
		>>
		!KEYWORD(":","office","page")
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")
		AND NOT
		KEYWORD(EXPAND "studentloanservice.cl")
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	DOMAIN(01.6)
	{
		LEMMA("escrow")
		>
		LEMMA("credit","account")	
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	DOMAIN(01.6)
	{
		KEYWORD("real")
		>>
		KEYWORD("estate")
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")
		AND NOT
		LEMMA("vehicle","car","mileage","odometer","student","study","college","university","graduate","graduated",
				"school","career","teacher")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//refinancing my mortgage
	DOMAIN(01.6)
	{
		LEMMA("refinance")
		<-5:5>
		KEYWORD("mortgage")
		AND NOT
		KEYWORD("cds")
		AND NOT
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		AND NOT
		KEYWORD(EXPAND "vehicles.cl")
	}
}

SCOPE SECTION (BODY) ON ATOM
{
	//heloc
	DOMAIN(01.6)
	{
		KEYWORD("heloc","HOA","FHA","loancare")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//Federal Housing Administration
	DOMAIN(01.6)
	{
		KEYWORD("federal")
		>
		KEYWORD("housing")
		>
		KEYWORD("administration")
	}
}
