//// STUDENT LOAN SOURCES /////


SCOPE SENTENCE*2 ON ATOM
{
	DOMAIN(01.8:HIGH)
	{
		KEYWORD(EXPAND "studentloanservice.cl")
		AND
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
	}
}


SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.8:HIGH)
	{
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
		<-5:5>
		LEMMA("repayment","refund")
	}
}


SCOPE SENTENCE ON ATOM
{
	//borrow {$30000.00} for school
	DOMAIN(01.8)
	{
		LEMMA("borrow")
		<>
		KEYWORD("for")
		>>
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
	}
}


SCOPE SENTENCE ON ATOM
{

	//ME federal student loans
	DOMAIN(01.8:HIGH)
	{
		KEYWORD(EXPAND "studentloanservice.cl")
		>
		LIST(100189539,220164)//@SYN: #100189539# [loan] //@SYN: #220164# [lease]
	}
}


SCOPE SENTENCE ON ATOM
{
	//ME federal student loans
	DOMAIN(01.8)
	{
		KEYWORD(EXPAND "studentloanservice.cl")
		OR
		(
		    LEMMA("student")
		    >
		    LIST(100189539,220164)//@SYN: #100189539# [loan] //@SYN: #220164# [lease]
		)
	}
}


SCOPE SENTENCE ON ATOM
{
    DOMAIN(01.8:HIGH)
	{
		!LEMMA("old")
		<
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
		<:5>
		!KEYWORD("payday")
		<
		LIST(100189539,220164)//@SYN: #100189539# [loan] //@SYN: #220164# [lease]
		AND NOT
		LEMMA("debt")
	}
}


SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.8:HIGH)
	{
		LEMMA("private","federal","estate")
		<-5:5>
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
		AND
		!KEYWORD("payday")
		<
		LIST(100189539,220164)//@SYN: #100189539# [loan] //@SYN: #220164# [lease]
		<-5:5>
		LEMMA("service","servicing")
	}
}


SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.8:NORMAL)
	{
		!KEYWORD("payday")
		<
		LIST(100189539,220164)//@SYN: #100189539# [loan] //@SYN: #220164# [lease]
		<:5>
		!LEMMA("old")
		<
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
		<>
		LEMMA("debt")
	}
}


SCOPE SENTENCE ON ATOM
{

	DOMAIN(01.8:HIGH)
	{
		LEMMA("private","federal","estate")
		<-5:5>
        LIST(100048282,68604,14803,100189004,75961,183999,793,101244442,75190,27705)//@SYN: #100048282# [student] //@SYN: #68604# [study] //@SYN: #14803# [college] //@SYN: #100189004# [college] //@SYN: #75961# [graduate] //@SYN: #183999# [graduated] //@SYN: #793# [graduation] //@SYN: #101244442# [school] //@SYN: #75190# [career] //@SYN: #27705# [teacher]
		AND
		!KEYWORD("payday")
		<
		LIST(100189539,220164)//@SYN: #100189539# [loan] //@SYN: #220164# [lease]
		<>
		LEMMA("debt")
	}
}


SCOPE SENTENCE*2 ON ATOM
{
DOMAIN(01.8:HIGH)
	{
		KEYWORD(EXPAND "studentloanservice.cl")
		AND
		KEYWORD("loan","repayment","refund","payment")
	}	
}
