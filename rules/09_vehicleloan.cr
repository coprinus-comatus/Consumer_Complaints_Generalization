/// VEHICLES LOAN SOURCES ///

SCOPE SENTENCE ON ATOM
{
    DOMAIN(01.9:HIGH)
	{
		KEYWORD(EXPAND "vehicles.cl")
		<-5:5>
		LIST(220164,76227)//@SYN: #220164# [lease] //@SYN: #76227# [loan]
	}
}

SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.9:LOW)
	{
		LEMMA("contract")
		<-2:2>
		LIST(220164,76227)//@SYN: #220164# [lease] //@SYN: #76227# [loan]
	}
}

SCOPE SENTENCE ON ATOM
{
	DOMAIN(01.9:NORMAL)
	{
		KEYWORD("Ally","GM")
	}
}

SCOPE SENTENCE ON ATOM
{
	// ME 
	DOMAIN(01.9:HIGH)
	{
		(
		    LEMMA("vehicle","car","auto","car","odometer","mileage","truck","automobile","bus","jeep","limousine",
		           "wagon","van","motorbike","coupe","boat","ship","bike","aircraft")
		    OR
		    KEYWORD(EXPAND "vehicles.cl")
		    <:2>
		    !KEYWORD("responses")
		)
		AND NOT
		LEMMA(EXPAND "not_vehicle_loan.cl")
	}

}


