(defrule int1  =>(printout t crlf "Buna ziua si bine ati venit!Numele meu este Gizmo si ma ocup de problemele acestui gsm.Va pot ajuta ?
Va rugam raspundeti cu Da sau Nu." crlf)
			(bind ?intrebare(readline))
			(assert (fit ?intrebare))
			(assert(INTREBARE))
)

(defrule int2 (INTREBARE) ?type <-(fit ?intrebare)
		=> (if (eq ?intrebare "Da")
				then(assert(SEC)))
			(if (eq ?intrebare "Nu")
				then (printout t "Va doresc o zi minunata!")
					(retract ?type)
					)
			
)

(defrule int3 (SEC) =>(printout t crlf "Ce ati dori sa reparati mai exact? Noi va putem ajuta cu laptop/telefon/tableta.  
Tasteaza numele uneia dintre cele trei ramuri pentru a merge mai departe" crlf)
	(bind ?raspuns(readline))
		(assert(fit ?raspuns))
		(assert(RASPUNS))
)

(defrule xdadada  (RASPUNS) ?type <-(fit ?raspuns)
		=>(if (eq ?raspuns "telefon")
			then(assert(TTELEFON)))
			(if (eq ?raspuns "tableta")
			then(assert(TTABLETA)))
			(if (eq ?raspuns "laptop")
			then(assert(LAPTOPP)))
			
)

(defrule xs4 (TTELEFON) =>(printout t crlf "Ce problema preintampinati? Software sau Hardware? " crlf)
	(bind ?raspuns(readline))
		(assert(fit ?raspuns))
		(assert(RRRASPUNS))
)

(defrule xsd5 (RRRASPUNS) ?type <-(fit ?raspuns)
		=>(if (eq ?raspuns "Software")
			then(assert(SOFTTWARE)))
			(if(eq ?raspuns "Hardware")
			then(assert(HARDWAREE)))
			
)


(defrule soft (SOFTTWARE) =>(printout t crlf "Ce sistem de operare aveti?Android sau Apple?" crlf)
	(bind ?SOFFTWAREx (readline))
		(assert(fit ?SOFFTWAREx))
		(assert(SOFFTWAREx))
)

(defrule xpx (SOFFTWAREx) ?type <-(fit ?inca)
		=>(if (eq ?inca "Android")
			then(assert(Androidxx)))
			(if(eq ?inca "Apple")
			then(assert(Apple)))
)

(defrule softuere (Androidxx) =>(printout t crlf "Am inteles! Ce problema mai exact?Vi se inchide telefonul singur/Se restarteaza constant /Nu se deschide/Se blocheaza frecvent?" crlf)
	(bind ?xCxS(readline))
		(assert(fit ?xCxS))
		(assert(AnxDroid))
)

(defrule APPPPLE (Apple) =>(printout t crlf "Am inteles! Ce problema mai exact?Vi se inchide telefonul singur/Se restarteaza constant /Nu se deschide/Se blocheaza frecvent?" crlf)
	(bind ?h(readline))
		(assert(fit ?h))
		(assert(Apxlel))AM
)

(defrule Epal (Apxlel) ?type <-(fit ?apxlle)
        =>(if(eq ?apxlle "Se inchide telefonul")
            then(printout t "Problema ar fi de la un Scurt circuit pe placa de baza sau telefonul dumneavoastra a intrat intr-un soc termic sau sistemul de operare este corupt" crlf))
          (if (eq ?apxlle "Se restarteaza constant")
			then(printout t "Problemele in cauza ar fi urmatoarele :Software-ul ar putea fi corupt/Telefonul ar putea intra in loop din cauza unui update de soft si bateria a fost sub 30%" crlf))
            (if (eq ?apxlle "Nu se deschide")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf))
			(if (eq ?apxlle "Se blocheaza frecvent")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf)) 		
)

(defrule CoSS (AnxDroid) ?type <-(fit ?androyd)
     =>(if(eq ?androyd "Se inchide telefonul")
            then(printout t "Problema ar fi de la un Scurt circuit pe placa de baza sau telefonul dumneavoastra a intrat intr-un soc termic sau sistemul de operare este corupt" crlf))
          (if (eq ?androyd "Se restarteaza constant")
			then(printout t "Problemele in cauza ar fi urmatoarele :Software-ul ar putea fi corupt/Telefonul ar putea intra in loop din cauza unui update de soft si bateria a fost sub 30%" crlf))
            (if (eq ?androyd "Nu se deschide")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf))
			(if (eq ?androyd "Se blocheaza frecvent")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf)) 	
            
)


(defrule xpEE (HARDWAREE) =>(printout t crlf "Inteleg! Problema este la Display/Baterie/Touch?" crlf)
	(bind ?same(readline))
		(assert(fit ?same))
		(assert(COD))
)



(defrule xDD (COD) ?type <-(fit ?HARDSSxx)
        => (if(eq ?HARDSSxx "Display")
            then(printout t "Solutia ar fi sa il lasati 3 zile lucratoare la noi si il vom repara."crlf))
			
            (if (eq ?HARDSSxx "Bateria")
          then(printout t "Solutia ar fi sa il lasati 1 zi lucratoare la noi si il vom inlocui." crlf))
 
			(if (eq ?HARDSSxx "Touch")
          then(printout t "Solutia ar fi sa il lasati 4 zile lucratoare la noi si il vom inlocui." crlf))
)

(defrule xsx5xs (TTABLETA) =>(printout t crlf "Ce problema preintampinati? Software sau hardware? " crlf)
	(bind ?raspuns(readline))
		(assert(fit ?raspuns))
		(assert(RRRASPUNS))
)

(defrule xsdx9d (RRRASPUNS) ?type <-(fit ?raspuns)
		=>(if (eq ?raspuns "Software")
			then(assert(SOFTTWARExxx)))
			(if(eq ?raspuns "Hardware")
			then(assert(HARDWAREExxzxxz)))
			
)


(defrule softsswsxd (SOFTTWARExxx) =>(printout t crlf "Ce sistem de operare aveti?Android sau Apple?" crlf)
	(bind ?SOFFTWARExxzzx (readline))
		(assert(fit ?SOFFTWARExxzzx))
		(assert(SOFFTWARExxzzx))
)

(defrule xpxdda (SOFFTWARExxzzx) ?type <-(fit ?inca)
		=>(if (eq ?inca "Android")
			then(assert(Androidxx)))
			(if(eq ?inca "Apple")
			then(assert(Apple)))
)

(defrule softuereswd (Androidxx) =>(printout t crlf "Am inteles! Ce problema mai exact?Vi se inchide telefonul singur/Se restarteaza constant /Nu se deschide/Se blocheaza frecvent?" crlf)
	(bind ?xCxS(readline))
		(assert(fit ?xCxS))
		(assert(AnxDroidx))
)

(defrule APPPPLExx (Apple) =>(printout t crlf "Am inteles! Ce problema mai exact?Vi se inchide telefonul singur/Se restarteaza constant /Nu se deschide/Se blocheaza frecvent?" crlf)
	(bind ?h(readline))
		(assert(fit ?h))
		(assert(Apxlel))AM
)

(defrule Epalxx (Apxlxel) ?type <-(fit ?apxllex)
        =>(if(eq ?apxllex "Se inchide telefonul")
            then(printout t "Problema ar fi de la un Scurt circuit pe placa de baza sau telefonul dumneavoastra a intrat intr-un soc termic sau sistemul de operare este corupt" crlf))
          (if (eq ?apxllex "Se restarteaza constant")
			then(printout t "Problemele in cauza ar fi urmatoarele :Software-ul ar putea fi corupt/Telefonul ar putea intra in loop din cauza unui update de soft si bateria a fost sub 30%" crlf))
            (if (eq ?apxllex "Nu se deschide")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf))
			(if (eq ?apxllex "Se blocheaza frecvent")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf)) 		
)

(defrule CASSxxsax (AnxDroidx) ?type <-(fit ?androydx)
     =>(if(eq ?androydx "Se inchide telefonul")
            then(printout t "Problema ar fi de la un Scurt circuit pe placa de baza sau telefonul dumneavoastra a intrat intr-un soc termic sau sistemul de operare este corupt" crlf))
          (if (eq ?androydx "Se restarteaza constant")
			then(printout t "Problemele in cauza ar fi urmatoarele :Software-ul ar putea fi corupt/Telefonul ar putea intra in loop din cauza unui update de soft si bateria a fost sub 30%" crlf))
            (if (eq ?androydx "Nu se deschide")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf))
			(if (eq ?androydx "Se blocheaza frecvent")
			then(printout t "Problemele in general sunt cauzate de lipsa bateriei/Sistem corupt/Sau un soc termic si in acest caz" crlf)) 	
            
)


(defrule sadad (HARDWAREExxz) =>(printout t crlf "Inteleg! Problema este la Display/Baterie/Touch?" crlf)
	(bind ?same(readline))
		(assert(fit ?same))
		(assert(COD))
)



(defrule xDDD (COD) ?type <-(fit ?HARDSSx)
        => (if(eq ?HARDSSx "Display")
            then(printout t "Solutia ar fi sa il lasati 3 zile lucratoare la noi si il vom repara."crlf))
			
            (if (eq ?HARDSSx "Bateria")
          then(printout t "Solutia ar fi sa il lasati 1 zi lucratoare la noi si il vom inlocui." crlf))
 
			(if (eq ?HARDSSx "Touch")
          then(printout t "Solutia ar fi sa il lasati 4 zile lucratoare la noi si il vom inlocui." crlf))
)

(defrule xsx5xd (LAPTOPP) =>(printout t crlf "Ce problema preintampinati? Software sau hardware? " crlf)
	(bind ?raspuns(readline))
		(assert(fit ?raspuns))
		(assert(RRRASPUNS))
)

(defrule xsdx9a (RRRASPUNS) ?type <-(fit ?raspuns)
		=>(if (eq ?raspuns "Software")
			then(assert(SOFTTWARExxx)))
			(if(eq ?raspuns "Hardware")
			then(assert(HARDWAREExxzxxz)))
			
)


(defrule softsswsxa (SOFTTWARExxx) =>(printout t crlf "Ce sistem de operare aveti?Windows sau Linux?" crlf)
	(bind ?SOFFTWARExxzzx (readline))
		(assert(fit ?SOFFTWARExxzzx))
		(assert(SOFFTWARExxzzx))
)

(defrule xpxddd (SOFFTWARExxzzx) ?type <-(fit ?inca)
		=>(if (eq ?inca "Windows")
			then(assert(Windowsxx)))
			(if(eq ?inca "Linux")
			then(assert(Linux)))
)

(defrule softuereswa (Windowsxx) =>(printout t crlf "Am inteles! Ce problema mai exact?Vi se inchide laptopul singur/Se restarteaza constant /Nu se deschide/Se blocheaza frecvent?" crlf)
	(bind ?xCxS(readline))
		(assert(fit ?xCxS))
		(assert(Winnndows))
)

(defrule Liinuxs (Linux) =>(printout t crlf "Am inteles! Ce problema mai exact?Vi se inchide laptopul singur/Se restarteaza constant /Nu se deschide/Se blocheaza frecvent?" crlf)
	(bind ?h(readline))
		(assert(fit ?h))
		(assert(Wpxlel))AM
)

(defrule Epxalxx (Wpxlel) ?type <-(fit ?winsewr)
        =>(if(eq ?winsewr "Se inchide laptopul")
            then(printout t "Supraincalzirea este cea mai frecventa cauza pentru aceasta problema.Aceasta problema apare des cand laptopul dumneavoastra nu face fata la toate procesele:" crlf))
          (if (eq ?winsewr "Se restarteaza constant")
			then(printout t "Fie e HDD-ul cu probleme(bad-uri) caz in care va recomand sa faceti un scan cu HD TUNE, fie ventilatoarele de pe procesor/placa grafica sunt pline de praf/par samd si  blocheaza ventilatia, caz in care recomand sa instalati AIDA 64 si sa verifici temperatura componentelor(asta daca poti intra in safe mode cumva). " crlf))
            (if (eq ?winsewr "Nu se deschide")
			then(printout t "Solutiile pentru aceasta problema sunt:Verificati daca se alimenteaza in mod corespunzator/ Booteaza in Safe Mode/erifica daca nu exista componente defecte sau incompatibile." crlf))
			(if (eq ?winsewr "Se blocheaza frecvent")
			then(printout t "Ca si in multe alte cauze..fizic vorbind laptopul se poate supraincalzi din cauza prafului sau a diferitelor materiale intrate in cooler " crlf)) 		
)

(defrule CASxSxxsax (Winnndows) ?type <-(fit ?liiinx)
     =>(if(eq ?liiinx "Se inchide laptopul")
            then(printout t "Supraincalzirea este cea mai frecventa cauza pentru aceasta problema.Aceasta problema apare des cand laptopul dumneavoastra nu face fata la toate procesele:" crlf))
          (if (eq ?liiinx "Se restarteaza constant")
			then(printout t "Fie e HDD-ul cu probleme(bad-uri) caz in care va recomand sa faceti un scan cu HD TUNE, fie ventilatoarele de pe procesor/placa grafica sunt pline de praf/par samd si  blocheaza ventilatia, caz in care recomand sa instalati AIDA 64 si sa verifici temperatura componentelor(asta daca poti intra in safe mode cumva). " crlf))
            (if (eq ?liiinx "Nu se deschide")
			then(printout t "Solutiile pentru aceasta problema sunt:Verificati daca se alimenteaza in mod corespunzator/ Booteaza in Safe Mode/erifica daca nu exista componente defecte sau incompatibile." crlf))
			(if (eq ?liiinx "Se blocheaza frecvent")
			then(printout t "Ca si in multe alte cauze..fizic vorbind laptopul se poate supraincalzi din cauza prafului sau a diferitelor materiale intrate in cooler " crlf)) 	
            
)


(defrule dadax (HARDWAREExxzzxxz) =>(printout t crlf "Inteleg! Problema este la Display/Baterie/Touch?" crlf)
	(bind ?same(readline))
		(assert(fit ?same))
		(assert(CoDDxz))
)



(defrule xDDDz (CoDDxz) ?type <-(fit ?HARDSSss)
        => (if(eq ?HARDSSss "Display")
            then(printout t "Solutia ar fi sa il lasati 5 zile lucratoare la noi si il vom repara."crlf))
			
            (if (eq ?HARDSSss "Bateria")
          then(printout t "Solutia ar fi sa il lasati 6 zi lucratoare la noi si il vom inlocui." crlf))
 
			(if (eq ?HARDSSss "Touch")
          then(printout t "Solutia ar fi sa il lasati 9 zile lucratoare la noi si il vom inlocui." crlf))
)





(defrule inttt2 (INTREBARE) ?type <-(fit ?intrebare)
		=> (if (eq ?intrebare "Da")
				then(assert(RaspPoz)))
			(if (eq ?intrebare "Nu")
				then (printout t " Va multumesc. O zi minunata va doresc si sper ca v-am fost de ajutor!")
					(retract ?type)
			)
			
)

(defrule Rasszz (RaspPoz) =>(printout t crlf "Buna ziua,cu ce va pot ajuta ?" crlf)
	(bind ?stadii(readline))
		(assert(fit ?stadii))
		(assert(STADII))
)


 
		  



      







