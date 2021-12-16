 /// CHECKING SAVING ACCOUNT SOURCES ////

SCOPE SENTENCE ON ATOM
{
	//credit instrument
	DOMAIN(01.1)
	{
		ANCESTOR(135276) - LEMMA("check")//# 135276: credit instrument
	}
}


SCOPE SENTENCE ON ATOM {

	//ancestor
	DOMAIN(01.1)
	{
	    !KEYWORD("unauthorized withdrawal from")
	    <:2>
		ANCESTOR(100695430,100159421) - LEMMA("savings","checking", "line")//@SYN: #100695430# [checking account] //@SYN: #100159421# [savings account]
		AND NOT
		LEMMA("loan","mortgage")
	}
}


SCOPE SENTENCE ON ATOM
{
	//a paper check
	DOMAIN(01.1)
	{
		LEMMA("paper")
		>
		LIST(100080042)//# 100080042: cheque, bank check, check, banker's card, cheque card, chq., ck.
		AND NOT
		LEMMA("loan","mortgage")
	}
}


SCOPE SENTENCE ON ATOM
{
	//ira
	DOMAIN(01.1)
	{
	(
		!KEYWORD("like an")
		>
		ANCESTOR(106025330)//# 106025330: individual retirement account, Individual Retirement Account, IRA
	)
	OR
	KEYWORD("retirement")
	>
	KEYWORD("account","accounts")
	}
}


SCOPE SENTENCE ON ATOM
{
	//lemma
	DOMAIN(01.1)
	{
		!LEMMA("send","transfer", "withdrawal")
		<>
        LIST(100319622:2, 2323) - KEYWORD("check", "checks", "checked")//@SYN: #100319622# [saving] //@SYN: #2323# [checking]
		>>
		!KEYWORD("out")
		<:4>
		LEMMA("account")
		AND NOT
		LEMMA("loan","mortgage")
	}
}


SCOPE SENTENCE ON ATOM
{
	//cd
	DOMAIN(01.1)
	{
		LIST(100200995)//# 100200995: certificate of deposit, C/D, CD
		OR
		KEYWORD("cds","cd")
		OR
		(
			KEYWORD("certificate")
			<:3>
			KEYWORD("deposit")
		)
	}
}


SCOPE SENTENCE ON ATOM
{
	//transaction isn't deposited into my account 
	DOMAIN(01.1)
	{
		LEMMA("transaction")
		>
		KEYWORD("isn't","was not","is not","wasn't")
		AND
		LEMMA("account")
	}
}

