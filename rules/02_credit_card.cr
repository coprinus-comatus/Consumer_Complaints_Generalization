/// CREDIT CARD SOURCES ///

SCOPE SENTENCE
{
    //Credit card concept
    DOMAIN(01.2)
    {
        ANCESTOR(101290202) + TYPE(NPR)//@SYN: #101290202# [credit card]
    }
}


SCOPE SECTION (BODY) ON ATOM
{
    //GIFT card
	DOMAIN(01.2)
	{
		ANCESTOR(100554910)//# 100554910: gift card, gift certificate, gift voucher, gift token
		AND NOT
		KEYWORD("heloc","cds", "certification of deposit", "C/D", "CD")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
	//credit card 
	DOMAIN(01.2)
	{
		LIST(101436963:99)//# 101436963: payment card, plastic money, plastic
		AND NOT
		KEYWORD("heloc","cds", "certification of deposit", "C/D", "CD")
	}
}


//paycard / purchase + card
SCOPE SECTION (BODY) ON ATOM
{	DOMAIN(01.2)
	{
		LEMMA("purchase")
		<-15:15>
		KEYWORD("card")
		AND NOT
		KEYWORD("heloc","cds", "certification of deposit", "C/D", "CD")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
    DOMAIN(01.2)
	{
        LIST(100184303,90973,57870,57303,57356)//@SYN: #100184303# [present] //@SYN: #90973# [prepaid] //@SYN: #57870# [payroll] //@SYN: #57303# [benefit] //@SYN: #57356# [charge]
		>
		KEYWORD("card")
		AND NOT
		KEYWORD("heloc","cds", "certification of deposit", "C/D", "CD")
	}
}


SCOPE SECTION (BODY) ON ATOM
{
    DOMAIN(01.2)
	{
		LEMMA("give")
		<-15:15>
		KEYWORD("card")
		<>
        LIST(44907,45441,107406919,2391)//@SYN: #44907# [employer] //@SYN: #45441# [leader] //@SYN: #107406919# [service] //@SYN: #2391# [job]
		AND NOT
		KEYWORD("heloc","cds", "certification of deposit", "C/D", "CD")
	}
}


SCOPE PARAGRAPH*3
{
	DOMAIN(01.2)
	{
		(
			SYNCON(100081235)//# 100081235: automatic teller machine, automated teller machine, cash machine, bank machine, cash dispenser, cashpoint, cash point, automated teller, automatic teller, ATM, cashomat
			OR
			KEYWORD("atm","a.t.m","a.t.m.")
		)
		AND
		LEMMA("problem","issue","malfunction")
		AND NOT
		KEYWORD("heloc","cds", "certification of deposit", "C/D", "CD")
	}
}


//general
SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.2)
	{
		LIST(90973)//@SYN: #90973# [prepaid]
		>>
		LIST(63716)//@SYN: #63716# [card]
		AND
		LEMMA("student")
	}
}


SCOPE SENTENCE ON ATOM
{
	//credit card
	DOMAIN(01.2)
	{
		!LEMMA("pay")
		<:4>
		KEYWORD("credit")
		>
		KEYWORD("card")
	}
}


SCOPE SENTENCE ON ATOM
{
	//ME: credit card brand mentioned
	DOMAIN(01.2:LOW)
	{
	    KEYWORD("visa", "mastercard", "american express", "diners club", "paycard")

	}
	
}


