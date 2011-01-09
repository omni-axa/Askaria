BEGIN ~ZYASMITH~

IF ~Global("AS#PAI","GLOBAL",3) PartyHasItem("ZYSUZUNG")
AreaCheck("AR6701")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN  DO ~TakePartyGold(100)
  TakePartyItem("ZYSUZUNG")
  SetGlobalTimer("MakeDust","GLOBAL",TWO_DAYS)
  SetGlobal("SmithDust","GLOBAL",1)~EXIT
END

IF ~GlobalTimerExpired("MakeDust","GLOBAL")
Global("SmithDust","GLOBAL",1)
AreaCheck("AR6701")~THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~GiveItem("ZYSUDUST",LastTalkedToBy()) SetGlobal("DustHave", "GLOBAL", 1) SetGlobal("SmithDust","GLOBAL",0)
   AddJournalEntry(@5,USER)~EXIT
END

IF ~!GlobalTimerExpired("MakeDust","GLOBAL")
Global("SmithDust","GLOBAL",1)
AreaCheck("AR6701")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("SmithDust","GLOBAL",0)
AreaCheck("AR6701")~ THEN BEGIN 4
  SAY @0
  IF ~~ THEN EXIT
END