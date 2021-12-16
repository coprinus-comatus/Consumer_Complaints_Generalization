//// CREDIT REPORTING SOURCES ////

SCOPE PARAGRAPH*5 ON ATOM
{

    // ME: generic credit report
    DOMAIN(01.3:LOW)
    {
        LEMMA("credit","account","report","letter","payment","dispute","item")
        AND NOT
        LEMMA(LOAD "credit_reporting_exclusions_lemma.cl")
        AND NOT
        KEYWORD("heloc","HOA","FHA","loancare")
    }
}


SCOPE PARAGRAPH*5 ON ATOM
{
    // ME: generic credit report
        DOMAIN(01.3:LOW)
        {
            LEMMA("credit")
            <:5>
            LEMMA("report")
			AND NOT
            LEMMA(LOAD "credit_reporting_exclusions_lemma.cl")
            AND NOT
            KEYWORD("heloc","HOA","FHA","loancare")
        }
}


SCOPE PARAGRAPH*5 ON ATOM
{
	//  ME
	DOMAIN(01.3:LOW)
	{
		(
		    KEYWORD("credit")
		    AND
		    LEMMA("report", "service")
		)
		OR
		KEYWORD("creditreport")
		AND NOT
		KEYWORD("heloc","HOA","FHA","loancare")
	}
}


SCOPE PARAGRAPH*5 ON ATOM
{
	//  ME
	DOMAIN(01.3)
	{
		KEYWORD("credit")
		AND
		LEMMA("repair","reparation")
	}
}

SCOPE SENTENCE
{
	//  ME
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("credit")
		>
		LEMMA("repair","reparation")
	}
}

SCOPE PARAGRAPH*5 ON ATOM
{
	//  ME
	//"Fair Credit Reporting Act"
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("credit reporting")
		AND
		LEMMA("act")
	}
}

SCOPE PARAGRAPH*5 ON ATOM
{
	//  ME
	//Other personal consumer report
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("credit")
		AND
		LEMMA("repair")
		>
		LEMMA("service")
	}
}

SCOPE PARAGRAPH*5 ON ATOM
{
	//FCRA
	DOMAIN(01.3:HIGH)
	{
		(
            KEYWORD("fcra", "fair credit reporting act", "fdr", "freedom debt relief")
            OR
            KEYWORD("reporting")
		    >
		    KEYWORD("agency")
		)
		AND NOT
		LEMMA("debt","owe")
		AND NOT
		KEYWORD("heloc","HOA","FHA","loancare")
	}
}


SCOPE PARAGRAPH*5 ON ATOM
{
	//Credit agency
	DOMAIN(01.3)
	{
		KEYWORD("credit")
		>
		LEMMA("agency")
		<>
		LEMMA("dispute")
		AND NOT
		LEMMA("debt","owe")
	}
}

SCOPE PARAGRAPH*5 ON ATOM
{
	//Credit agency
	DOMAIN(01.3)
	{
		LEMMA("dispute")
		<>
		KEYWORD("credit")
		>
		KEYWORD("agency","agencies")
		AND NOT
		LEMMA("debt","owe")
	}
}

SCOPE SENTENCE ON ATOM
{
	//  ME
	//Experian
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("experian", "equifax", "transunion", "lexington", "clear one advantage", "clear one")
	}
}

SCOPE SENTENCE ON ATOM
{
	//  ME
	//Fair Credit Reporting Act, 15 USC sections 1681i
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("Fair Credit Reporting Act")
		<-5:5>
		KEYWORD("1681i")
	}
}

SCOPE SENTENCE ON ATOM
{
	//  ME
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("negligence")
		<-5:5>
		KEYWORD("creditor")
		<-5:5>
		KEYWORD("non-compliance")
	}
}

SCOPE SENTENCE ON ATOM
{
	//  ME
	DOMAIN(01.3:HIGH)
	{
		KEYWORD("erroneous")
		<-5:5>
		LEMMA("report", "reporting")
	}
}
