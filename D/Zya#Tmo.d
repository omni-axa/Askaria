BEGIN ~zya#tmo~

IF ~Global("zya#tmoFM","GLOBAL",0)~ THEN BEGIN t0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO t1
  IF ~~ THEN REPLY @2 DO ~EscapeArea()~ EXIT 
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN t1
  SAY @4
  IF ~~ THEN REPLY @5 EXIT
  IF ~PartyHasItem("zya#book")~ THEN REPLY @6 GOTO t2
END

IF ~~ THEN BEGIN t2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO t3
  IF ~~ THEN REPLY @9 GOTO t3
END

IF ~~ THEN BEGIN t3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO t4
END

IF ~~ THEN BEGIN t4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO t5
  IF ~~ THEN REPLY @14 GOTO t6
END

IF ~~ THEN BEGIN t5
  SAY @15
  IF ~~ THEN DO ~AddJournalEntry(@18, USER) ReputationInc(1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN t6
  SAY @16
  IF ~~ THEN DO ~AddJournalEntry(@17, USER) GivePartyGold(50) EscapeArea() ~ EXIT
END