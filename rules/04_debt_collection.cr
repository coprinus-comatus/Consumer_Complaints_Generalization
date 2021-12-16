 //// DEBT COLLECTION SOURCES ////

//consolidate my student loan debt
SCOPE SENTENCE
{

	//purchased 2 Money orders 
	DOMAIN(01.4)
	{
		//LEMMA("consolidate","collect","collection")
		LIST(67037,188546,147688)//@SYN: #67037# [consolidate] //@SYN: #188546# [collect] //@SYN: #147688# [collection]
		AND
		KEYWORD("debt")
	}
}


SCOPE SENTENCE
{
	//loan forgiveness 
	DOMAIN(01.4)
	{
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		AND
		KEYWORD("forgiveness")
	}
}


SCOPE SENTENCE
{
	DOMAIN(01.4)
	{
		KEYWORD(EXPAND "studentloanservice.cl")
		AND
		!KEYWORD("log")
		<
		LEMMA("collect","collection")
	}
}


SCOPE SENTENCE
{
	//loan forgiveness 
	DOMAIN(01.4)
	{
		//LEMMA("loan","lease","student loan")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		AND
		LEMMA("collect","collection","debt")
	}
}


SCOPE SENTENCE
{
	//late payments
	DOMAIN(01.4)
	{
		KEYWORD("late payment","late payments")
		AND
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
	}	
}


SCOPE SENTENCE
{
	//inaccurate debts
	DOMAIN(01.4)
	{
		LIST(91712,84780,88164)//# 91712: inaccurate, imprecise, inexact, off target; 84780: incorrect, erroneous, faulty, inaccurate; 88164: deceitful, fraudulent, fallacious, sharp
		<-10:10>
		LEMMA("debt")
	}
}


SCOPE SENTENCE
{
	//owe debt
	DOMAIN(01.4)
	{
		LEMMA("owe")
		<-10:10>
		LEMMA("debt")
	}
}


SCOPE SENTENCE
{
	//Identity theft. This loan is not mine.
	DOMAIN(01.4)
	{
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		<:10>
		KEYWORD("not","no","isn't","did not")
		>
		KEYWORD("mine","take out")
	}
}


SCOPE SENTENCE
{
	//Identity theft. This loan is not mine.
	DOMAIN(01.4)
	{
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		<-15:15>
		LEMMA("pay off")
	}
}


SCOPE SENTENCE
{
	//Identity theft. This loan is not mine.
	DOMAIN(01.4)
	{
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		AND
		LEMMA("harass","harassment")
	}

}


SCOPE SENTENCE
{	//KEPT CALLING
	DOMAIN(01.4)
	{
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		AND
		LEMMA("keep","kept")
		>
		LEMMA("call","calling","send")
	}
}


SCOPE SENTENCE
{
    // ME: Identity theft. This loan does not belong to me
    DOMAIN(01.4)
    {
        //LEMMA("loan","lease","student loan","debt")
        LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
        AND
        KEYWORD("belonged","belongs","belonging","belong")
        >
        KEYWORD("to")
        >
        KEYWORD("me")
    }

}


SCOPE SECTION (BODY)
{
	//my student loans were all appropriately deferred
	DOMAIN(01.4)
	{
		KEYWORD("late payment","late payments")
		AND
		//LEMMA("loan","lease","student loan","debt")
		LIST(100189539,220164,100462058,103196867) - LEMMA("debt")//@SYN: #100189539# [loan] //@SYN: #220164# [lease] //@SYN: #100462058# [student loan] //@SYN: #103196867# [debt]
		<-10:10>
		LIST(86449,144360)//# 86449: deferred, postponed, shelved; 144360: postpone, defer, put off, supersede
	}
}



SCOPE SENTENCE
{
	// ME: federal student loans
	DOMAIN(01.8:HIGH)
	{
		KEYWORD(EXPAND "studentloanservice.cl")
		AND
		NOT LEMMA("student","study","college","university","graduate","graduated","graduation","school","career","teacher")
	}
}


SCOPE SENTENCE
{

    // ME: generic debt report
    DOMAIN(01.4:LOW)
    {
        KEYWORD(LOAD "debt_collection_kwords.cl")
    }
}




SCOPE SECTION(BODY)
{
	//ME alcune parole specifiche correlanti
	DOMAIN(01.4)
	{
		KEYWORD("fair debt collection practices act", "FDCPA")
	}
}


//o	Federal student loan debt: 

SCOPE SENTENCE ON ATOM
{
	//my student loans were all appropriately deferred 
	DOMAIN(01.4)
	{
		KEYWORD("auto","medical","hospital")
		<-5:5>
		LEMMA("debt")
	}
}


SCOPE SENTENCE ON ATOM
{
	//outstanding balance
	DOMAIN(01.4)
	{
		KEYWORD("outstanding")
		<:8>
		LEMMA("balance","bill","debt")
	}

}

