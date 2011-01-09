BEGIN zyhauser

IF WEIGHT #1 ~Global("HAU#SM","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~
  MoveToPoint([866.732])
  ActionOverride("zyhaum1", MoveToPoint([866.732])
  ActionOverride("zyhaum2", MoveToPoint([866.732])
  ActionOverride("zyhaum1",EscapeAreaDestroy(3))
  ActionOverride("zyhaum2",EscapeAreaDestroy(3))
  EscapeAreaDestroy(5) SetGlobal("HAU#SM","GLOBAL",1) ~EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~ForceSpell(Player1,SAREVOK_STRIKE)
  Wait(2)
  Kill(Player1)~EXIT
END

IF WEIGHT #2 ~Global("HAU#SM","GLOBAL",1)~ THEN BEGIN fa0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO fa1
END

IF ~~ THEN BEGIN fa1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO fa2
END

IF ~~ THEN BEGIN fa2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO fa3
  IF ~~ THEN REPLY @11 GOTO fa4
  IF ~~ THEN REPLY @12 GOTO fa4
END

IF ~~ THEN BEGIN fa3
  SAY @13
  =
  @14
  IF ~~ THEN DO ~TakePartyItem("ZYSUZUNG")
  ActionOverride("zyhaum1",EscapeAreaDestroy(5))
  ActionOverride("zyhaum2",EscapeAreaDestroy(5))
  EscapeAreaDestroy(5)~EXIT
END

IF ~~ THEN BEGIN fa4
  SAY @15
  IF ~~ THEN DO ~SetGlobal("HAU#SM","GLOBAL",2)
  ActionOverride("zyhaum1",Enemy())
  ActionOverride("zyhaum2",Enemy())
  Enemy() ~EXIT
END

IF WEIGHT #0 ~Global("HAU#SM","GLOBAL",2)~ THEN BEGIN fa5
  SAY @16
  IF ~~ THEN REPLY @17 GOTO fa6
  IF ~~ THEN REPLY @18 GOTO fa7 
END
    
IF ~~ THEN BEGIN fa6
  SAY @19
  IF ~~ THEN DO ~GiveItemCreate("sethel",Player1,0,0,0)
  EscapeAreaDestroy(1) ~EXIT
END

IF ~~ THEN BEGIN fa7
  SAY @21
   IF ~IsValidForPartyDialogue("zyjcob")~ THEN EXTERN ~zyjcobj~ zyhau#die
   IF ~!IsValidForPartyDialogue("zyjcob")~ THEN EXIT
END 

IF ~~ THEN BEGIN fa8
  SAY @22
  IF ~~ THEN  EXIT
END

CHAIN ~zyjcobj~ zyhau#die
  @20 END ~zyhauser~ fa8