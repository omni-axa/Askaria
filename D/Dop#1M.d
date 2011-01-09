BEGIN ~ZYDOP1~

IF WEIGHT #1 ~PartyHasItem("ZYSUDUST") Global("DustHave", "GLOBAL", 1) AreaCheck("AR6720")
IsValidForPartyDialogue("zyaska") ~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~TakePartyItem("ZYSUDUST") DestroyItem("ZYSUDUST") SetGlobal("DustHave", "GLOBAL", 0)~ GOTO d1
END

IF ~~ THEN BEGIN d1
  SAY @2
  IF ~~ THEN EXTERN ~zyaskaj~ dp#1
END

IF ~~ THEN BEGIN d2
  SAY @7
  IF ~~ THEN DO ~ ActionOverride("zydop2",Polymorph(DOPPLEGANGER_GREATER))
  Polymorph(DOPPLEGANGER_GREATER)  ChangeEnemyAlly("zydop2",ENEMY) ChangeEnemyAlly("zydop1",ENEMY) 
  SetGlobal("AskaEnding","GLOBAL",1)~EXIT
END
 
 IF WEIGHT #0 ~Global("ZyDGAlmostDie","GLOBAL",1)~ THEN BEGIN d3
   SAY @8
   IF ~~ THEN REPLY @9 DO ~CreateCreature("zyhagu",[663.324],4) ~ GOTO d4 
   IF ~~ THEN REPLY @10 EXIT
 END

 IF ~~ THEN BEGIN d4
  SAY @11 
  IF ~~ THEN EXTERN zyhagu epic1
END

IF ~!PartyHasItem("ZYSUDUST") Global("DustHave", "GLOBAL", 1) AreaCheck("AR6720")
IsValidForPartyDialogue("zyaska") ~ THEN BEGIN extra1
  SAY @15
  IF ~~ THEN EXIT 
END

IF ~Global("FirstMeet","GLOBAL",0) IsValidForPartyDialogue("zyaska")~ THEN BEGIN extra2
  SAY @15
  IF ~~ THEN EXIT 
END 

IF  ~Global("FirstMeet","GLOBAL",0) !IsValidForPartyDialogue("zyaska")~ THEN BEGIN extra3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("FirstMeet","GLOBAL",1)~ EXIT
END

IF  ~Global("FirstMeet","GLOBAL",1) !IsValidForPartyDialogue("zyaska")~ THEN BEGIN extra4
  SAY @17
  IF ~~ THEN DO ~ ActionOverride("zydop2",EscapeArea())
  CreateCreature("zyd#gd1", [491.449], 8)   CreateCreature("zyd#gd2", [498.424], 8)
  EscapeArea()~ EXIT
END

CHAIN ~zyaskaj~ dp#1
@3 == ~zydop1~ @4 == ~zyaskaj~ @5  END ~zydop1~ d2

BEGIN zyhagu

IF ~~ THEN BEGIN epic1
  SAY @12 = @13
  IF ~~ THEN DO ~Enemy()~EXIT
END