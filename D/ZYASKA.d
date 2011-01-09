BEGIN ~ZYASKA~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN zya#1gan e1_1  
END

IF ~~ THEN BEGIN a1
  SAY @3
  IF ~~ THEN REPLY @4 EXTERN zya#1gan e1_2
END

IF ~~ THEN BEGIN a2
  SAY @9
  IF ~~ THEN  DO ~ 
  ChangeEnemyAlly(Myself,ALLY) // 아스카리아의 Reaction을 neautral에서 ally로 바꾸기. 밑에는 비슷.
  ChangeEnemyAlly("zya#1gan",ENEMY) //그냥 ActionOverride("zya#1gan",Enemy())로하면 적으로 바뀌긴 하는데, 주변에 중립의 npc가 있을경우 적대화가 된다. 따라서 이렇게 Reaction을 바꿔줘야한다.
  CreateCreature("zya#2gan", [1877.2626], 0)
  CreateCreature("zya#3gan", [1962.2743], 3)
  CreateCreature("zya#4gan", [1916.2927], 3)
  CreateCreature("zya#5gan", [1737.3052], 6)
  CreateCreature("zya#6gan", [1412.2976], 9)
  CreateCreature("zya#2gan", [1527.2882], 9)~EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(1)~ THEN BEGIN aa0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO aa1
END

IF ~~ THEN BEGIN aa1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO aa2
END

IF ~~ THEN BEGIN aa2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO aa3
  IF ~~ THEN REPLY @16 GOTO aa4
  IF ~~ THEN REPLY @17 GOTO aa3
END

IF ~~ THEN BEGIN aa3
   SAY @18
   IF ~~ THEN REPLY @19 GOTO aa3_1
END

IF ~~ THEN BEGIN aa3_1
   SAY @20
   IF ~~ THEN REPLY @21 GOTO aa3_2
END

IF ~~ THEN BEGIN aa3_2
   SAY @22
   IF ~~ THEN REPLY @23 GOTO aa4
   IF ~~ THEN REPLY @24 GOTO aa4
END

IF ~~ THEN BEGIN aa4
   SAY @25
   IF ~~ THEN REPLY @26 GOTO aa5
END

IF ~~ THEN BEGIN aa5
   SAY @27
  =
  @28
  IF ~~ THEN REPLY @29 EXIT
  IF ~~ THEN REPLY @30 GOTO aa6
  IF ~~ THEN REPLY @31 EXIT
  IF ~~ THEN REPLY @32 GOTO aa6
END

IF ~~ THEN BEGIN aa6
  SAY @33
  IF ~IsValidForPartyDialogue("zyjcob")~ THEN  DO ~SetGlobal("AS#PAI","GLOBAL",1)~
  EXTERN ~zyjcobj~ zya#ihh 
  IF ~!IsValidForPartyDialogue("zyjcob")~ THEN DO ~SetGlobal("AS#PAI","GLOBAL",1) AddJournalEntry(@37,USER) 
  ChangeEnemyAlly("zyaska",PC)  JoinParty()~ EXIT
END

IF ~~ THEN BEGIN aa7
  SAY @36
  IF ~~ THEN DO ~AddJournalEntry(@37,USER)
  JoinParty()~EXIT
END

IF WEIGHT #3 ~Global("AskaEnding","GLOBAL",2)~ THEN BEGIN abye1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO abye2
END

IF ~~ THEN BEGIN abye2
  SAY @40
  IF ~~ THEN REPLY @41 GOTO abye3
END

IF ~~ THEN BEGIN abye3
  SAY @42
  IF ~~ THEN REPLY @43 GOTO abye4
END

IF ~~ THEN BEGIN abye4
  SAY @44
  IF ~~ THEN REPLY @45 GOTO abye5
END

IF ~~ THEN BEGIN abye5
  SAY @46
  IF ~~ THEN REPLY @47 GOTO abye6
END

IF ~~ THEN BEGIN abye6
  SAY @48
  IF ~~ THEN DO ~AddJournalEntry(@49,USER) GiveItemCreate("zyaring",Player1,0,0,0) EscapeArea()~ EXIT
END

CHAIN ~zyjcobj~ zya#ihh
 @34
 == ~zyaska~ @35 END ~zyaska~ aa7

BEGIN zya#1gan

IF ~~ THEN BEGIN e1_1
  SAY @2
  IF ~~ THEN EXTERN zyaska a1
END

IF ~~ THEN BEGIN e1_2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO e1_3
END

IF ~~ THEN BEGIN e1_3
  SAY @7
  IF ~~ THEN REPLY @8 EXTERN zyaska a2
END