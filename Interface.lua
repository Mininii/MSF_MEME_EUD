function Interface()
	
Cunit2 = CreateVar(FP)
count = CreateVar(FP)
f_Read(FP, 0x6283F0, count)
CIfX(FP,Never()) -- 상위플레이어 단락 시작
	for i = 0, 4 do
		CElseIfX(HumanCheck(i,1),{SetCVar(FP,CurrentOP[2],SetTo,i),})
		if Limit == 1 then
			
			f_Read(FP,0x6284E8+(0x30*i),"X",Cunit2)
		end

	end
CIfXEnd()


--rigger { -- When the unit's death number reaches 2, the cannot trigger activates.
--	players = {P1, P2, P3, P4, P5},
--	conditions = {
--		Memory(0x628438,Exactly,0);
--	},
--	actions = {
--		PreserveTrigger();
--		Defeat();
--		DisplayText("\x13Cannot activates and you lose.", 0);
--		Comment("When the unit's death number reaches 2, the cannot trigger activates.");
--	},
--

CanC = CreateVar(FP)
CanCT = CreateCcode()
CanCT = CreateCcode()


CIf(FP,{--캔발동
	CV(CanC,0,AtMost);
	CDeaths(FP,AtMost,0,CanCT);
	Memory(0x628438,AtMost,0);
},{
	KillUnit(37,Force2);
	KillUnit(38,Force2);
	KillUnit(39,Force2);
	KillUnit(41,Force2);
	KillUnit(42,Force2);
	KillUnit(43,Force2);
	KillUnit(44,Force2);
	KillUnit(48,Force2);
	KillUnit(53,Force2);
	KillUnit(54,Force2);
	KillUnit(55,Force2);
	KillUnit(56,Force2);
	SetCDeaths(FP,SetTo,24*7,CanCT);
	AddV(CanC,1);})
Trigger2X(FP,{},{
	RotatePlayer({
		DisplayTextX("\x13\x08캔낫 \x041회 \x07감지\x04. \x08캔낫 2회 \x04이후에는 \x11패널티\x04가 존재합니다.", 0);
		PlayWAVX("sound\\Bullet\\TNsHit00.wav"),
		PlayWAVX("staredit\\wav\\warn.wav"),
		PlayWAVX("sound\\Terran\\GOLIATH\\TGoPss01.WAV"),
		PlayWAVX("sound\\Terran\\GOLIATH\\TGoPss01.WAV")
		},HumanPlayers,FP);
},{preserved})
CIfEnd()

CIf(FP,{--캔발동
	CV(CanC,1,Exactly);
	CDeaths(FP,AtMost,0,CanCT);
	Memory(0x628438,AtMost,0);
},{
	KillUnit(37,Force2);
	KillUnit(38,Force2);
	KillUnit(39,Force2);
	KillUnit(41,Force2);
	KillUnit(42,Force2);
	KillUnit(43,Force2);
	KillUnit(44,Force2);
	KillUnit(48,Force2);
	KillUnit(53,Force2);
	KillUnit(54,Force2);
	KillUnit(55,Force2);
	KillUnit(56,Force2);
	SetCDeaths(FP,SetTo,24*7,CanCT);
	AddV(CanC,1);})
Trigger2X(FP,{},{
	RotatePlayer({
		DisplayTextX("\x13\x08캔낫 \x042회 \x07감지\x04. 보유중인\x07 포인트\x04를 \x08몰수합니다\x04.", 0);
		PlayWAVX("sound\\Bullet\\TNsHit00.wav"),
		PlayWAVX("staredit\\wav\\warn.wav"),
		PlayWAVX("sound\\Terran\\GOLIATH\\TGoPss01.WAV"),
		PlayWAVX("sound\\Terran\\GOLIATH\\TGoPss01.WAV")
		},HumanPlayers,FP);
		SetScore(Force1, SetTo, 0, Kills);
},{preserved})
CIfEnd()
CIfOnce(FP, {--캔발동
	CV(CanC,2,AtLeast);
	CDeaths(FP,AtMost,0,CanCT);
	Memory(0x628438,AtMost,0);
},{
	KillUnit(37,Force2);
	KillUnit(38,Force2);
	KillUnit(39,Force2);
	KillUnit(41,Force2);
	KillUnit(42,Force2);
	KillUnit(43,Force2);
	KillUnit(44,Force2);
	KillUnit(48,Force2);
	KillUnit(53,Force2);
	KillUnit(54,Force2);
	KillUnit(55,Force2);
	KillUnit(56,Force2);
	AddV(CanC,1);
	SetCDeaths(FP,SetTo,24*7,CanCT);})

	Trigger2X(FP,{},{
		RotatePlayer({
			DisplayTextX("\x13\x08캔낫 \x043회 \x07감지\x04. \x11벙커\x04를 \x08몰수합니다\x04.", 0);
			PlayWAVX("sound\\Bullet\\TNsHit00.wav"),
			PlayWAVX("staredit\\wav\\CanOver.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("sound\\Terran\\GOLIATH\\TGoPss05.WAV"),
			PlayWAVX("sound\\Terran\\GOLIATH\\TGoPss05.WAV")
			},HumanPlayers,FP);
			KillUnit(125, Force1);
			
	})
CIfEnd()

CIfOnce(FP, {--캔발동
	CV(CanC,3,AtLeast);
	CDeaths(FP,AtMost,0,CanCT);
	Memory(0x628438,AtMost,0);
},{
	KillUnit(37,Force2);
	KillUnit(38,Force2);
	KillUnit(39,Force2);
	KillUnit(41,Force2);
	KillUnit(42,Force2);
	KillUnit(43,Force2);
	KillUnit(44,Force2);
	KillUnit(48,Force2);
	KillUnit(53,Force2);
	KillUnit(54,Force2);
	KillUnit(55,Force2);
	KillUnit(56,Force2);
	AddV(CanC,1);
	SetCDeaths(FP,SetTo,24*7,CanCT);})

	Trigger2X(FP,{},{
		RotatePlayer({
			DisplayTextX("\x13\x08캔낫\x04 \x044회 감지. \x08ㄴrㄱr", 0);
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			PlayWAVX("staredit\\wav\\why.ogg"),
			},HumanPlayers,FP);
			RotatePlayer({Defeat()}, Force1, FP)
			
	})
CIfEnd()
for i = 0, 4 do
	CIf(FP,{HumanCheck(i, 1)})
	CMov(FP,0x5821A4+(i*4),8)
	CMov(FP,0x582144+(i*4),8)
	CMov(FP,0x582174+(i*4),CanC)
	CAdd(FP,0x582174+(i*4),CanC)
	CMov(FP,0x582264+(i*4),1500*2)
	CMov(FP,0x5822C4+(i*4),1500*2) 	
	CMov(FP,0x582294+(i*4),count)
	CAdd(FP,0x582294+(i*4),count)
	CIf(FP,{TTOR({Bring(i, AtLeast, 1, "Men", "Money");Bring(P8, AtMost, 0, "Protoss Temple", 64),CD(CodeEnable,1)})})
	for p = 15, 0, -1 do --환전트리거
	TriggerX(FP, {Score(i,Kills,AtLeast,1000*2^p);}, {SetScore(i,Subtract,1000*2^p,Kills);SetResources(i,Add,280*2^p,Ore);}, {preserved})
	end
	CIfEnd()
	if i == 0 then
		CIf(FP,{CV(P1MValue,1,AtLeast)},{SubV(P1MValue,1)})
		DisplayPrint(HumanPlayers,{"\x12",PName(i)," \x04Marine \x06DIE"},nil,{"staredit\\wav\\_9992.ogg","staredit\\wav\\_9992.ogg"})
	else
		CIf(FP,{Deaths(i, AtLeast, 1, "Terran Marine");},{SetDeaths(i, Subtract, 1, "Terran Marine"),SetScore(i, Add, 1, Custom)})
		DisplayPrint(HumanPlayers,{"\x12",PName(i)," \x04Marine \x06DIE"},nil,{"staredit\\wav\\_9992.ogg","staredit\\wav\\_9992.ogg"})
		
	end
	CIfEnd()
	CIf(FP,{Deaths(i, AtLeast, 1, "Jim Raynor (Marine)");},{SetDeaths(i, Subtract, 1, "Jim Raynor (Marine)"),SetScore(i, Add, 2, Custom)})
	DisplayPrint(HumanPlayers,{"\x12",PName(i)," \x04Jim Raynor \x06DIE"},nil,{"staredit\\wav\\_999.ogg","staredit\\wav\\_999.ogg"})
	CIfEnd()
	CIf(FP,{Deaths(i, AtLeast, 1, 99);},{SetDeaths(i, Subtract, 1, 99),SetScore(i, Add, 4, Custom)})
	DisplayPrint(HumanPlayers,{"\x12",PName(i)," \x04Samar Duran \x06DIE"},nil,{"staredit\\wav\\_9993.ogg","staredit\\wav\\_9993.ogg"})
	CIfEnd()

	for j = 1, 251, 5 do
		TriggerX(FP,{MemoryB(0x58D2B0+(46*i)+0, AtLeast, j),MemoryB(0x58D2B0+(46*i)+0, AtMost, j+3)},{SetMemoryB(0x58D2B0+(46*i)+0, SetTo, j+4),SetMemoryB(0x58D2B0+(46*i)+15, SetTo, j+4)})
	end
	if TestStart==1 then
		DoActions(FP, {SetResources(i, Add, 99999999, Ore),}, 1)--SetInvincibility(Enable, "Buildings", Force2, 64)
	end
	TriggerX(FP,{Command(i, AtLeast, 1, "Terran Ghost")},{RemoveUnitAt(1, "Terran Ghost", "Anywhere", i);CreateUnit(1, 99, "CD23", i);},{preserved})

	TriggerX(FP,{Bring(i, AtLeast, 1, "Men", 143),Bring(P8, AtMost, 0, "Protoss Temple", 64)},{
		MoveUnit(All, "Men", i, 143, "CD228"),
		MoveUnit(All, "Men", i, 143, "CD227"),
	},{preserved})
	TriggerX(FP,{Bring(i, AtLeast, 1, "Men", 143),Bring(P8, AtLeast, 1, "Protoss Temple", 64)},{
		MoveUnit(All, "Men", i, 143, "HZ"),
		MoveUnit(All, "Men", i, 143, "CD24"),
		MoveUnit(All, "Men", i, 143, "MMM"),
	},{preserved})

	
	
	TriggerX(FP,{DeathsX(i,AtLeast,1*16777216,12,0xFF000000);Bring(i, AtLeast, 1, "Terran Firebat", "Anywhere");},{
		SetCp(i),
		DisplayText("\x13\x07 BGM ON", 4);
		SetCp(FP),
		SetDeathsX(i,SetTo,0*16777216,12,0xFF000000);
		SetDeaths(i, SetTo, 0, "Terran Firebat");
		RemoveUnitAt(1, "Terran Firebat", "Anywhere", i);},{preserved})
	TriggerX(FP,{DeathsX(i,Exactly,0*16777216,12,0xFF000000);Bring(i, AtLeast, 1, "Terran Firebat", "Anywhere");},{
		SetCp(i),
		DisplayText("\x13\x08 BGM OFF", 4);
		SetCp(FP),
		SetDeathsX(i,SetTo,1*16777216,12,0xFF000000);
		SetDeaths(i, SetTo, 1, "Terran Firebat");
		RemoveUnitAt(1, "Terran Firebat", "Anywhere", i);},{preserved})
	




	CIfEnd()


end



DoActions2X(FP,{SubCD(CanCT,1)})


	BanCode2 = CreateCcodeArr(7)
	WanCT = CreateCcodeArr(7)
	WanC = CreateCcodeArr(7)
	local ExchangeP = CreateVar(FP)
	MacroWarn1 = "\x13\x04\n\x0D\x0D\x13\x04！！！　\x08ＷＡＲＮＩＮＧ\x04　！！！\n\x14\n\x14\n"..StrDesignX("\x08매크로 또는 핵이 감지되었습니다.").."\n"..StrDesignX("\x08경고를 무시하고 계속 사용하실 경우 드랍됩니다.").."\n\n\x14\n\x0D\x0D\x13\x04！！！　\x08ＷＡＲＮＩＮＧ\x04　！！！\n\x0D\x0D\x13\x04"
	MacroWarn = "\x13\x04\n\x0D\x0D\x13\x04！！！　\x08ＷＡＲＮＩＮＧ\x04　！！！\n\x14\n\x14\n"..StrDesignX("\x08매크로 또는 핵이 감지되었습니다.").."\n"..StrDesignX("\x08패널티로 모든 미네랄, 유닛 몰수, 무한 찌릿찌릿이 제공됩니다.").."\n\n\x14\n\x0D\x0D\x13\x04！！！　\x08ＷＡＲＮＩＮＧ\x04　！！！\n\x0D\x0D\x13\x04"



WarnCT = CreateVarArr(5, FP)
for i = 0, 4 do
	CIf(FP,HumanCheck(i,1),{SubCD(WanCT[i+1],1),SetInvincibility(Enable, "Devouring One (Zergling)", i, "GiveRe")})
	
	--if Limit == 1 then
	--	local APM1,APM2,APM3 = CreateVars(3, FP) 
	--	CIf(FP,Memory(DtoA(i, 135), AtLeast, 1))
	--	f_Read(FP, DtoA(i, 135), APM1, nil, nil, 1)
	--	CIfEnd()
	--	CIf(FP,Memory(DtoA(i, 136), AtLeast, 1))
	--	f_Read(FP, DtoA(i, 136), APM2, nil, nil, 1)
	--	CIfEnd()
	--	CIf(FP,Memory(DtoA(i, 137), AtLeast, 1))
	--	f_Read(FP, DtoA(i, 137), APM3, nil, nil, 1)
	--	CIfEnd()
	--	DisplayPrintEr(i, {"아픔감지기 : 1. ",APM1,"  2. ",APM2,"  3. ",APM3})
	--end
	
	--TriggerX(FP, {Deaths(i,AtLeast,1,140),CV(WarnC[i+1],0)},{SetV(WarnCT[i+1],24*30),SetV(WarnC[i+1],1),SetCp(i),,,DisplayText(MacroWarn, 4)})
	
	--TriggerX(FP, {Deaths(i,AtLeast,1,140),CV(WarnC[i+1],1),CV(WarnCT[i+1],0,AtMost)},{SetCD(BanCode2[i+1],1)})

		TriggerX(FP, {ElapsedTime(AtLeast, 10),Deaths(i,AtLeast,1,140),CD(WanCT[i+1],0),CD(WanC[i+1],3,AtMost)},{SetCD(WanCT[i+1],60),AddCD(WanC[i+1],1),SetCp(i),DisplayText(MacroWarn1, 4),PlayWAV("sound\\Bullet\\TNsFir00.wav"),PlayWAV("sound\\Bullet\\TNsFir00.wav"),PlayWAV("sound\\Bullet\\TNsFir00.wav"),PlayWAV("sound\\Bullet\\TNsFir00.wav")},{preserved})
		TriggerX(FP, {ElapsedTime(AtLeast, 10),Deaths(i,AtLeast,1,140),CD(WanCT[i+1],0),CD(WanC[i+1],4,AtLeast)},{SetCD(BanCode2[i+1],1)})
	--TriggerX(FP, {Deaths(i,AtLeast,1,140)},{SetCD(BanCode2[i+1],1)})
	TriggerX(FP, {CD(BanCode2[i+1],1)}, {
		SetMemory(0x59CC78, SetTo, -1048576),
		SetMemory(0x59CC80, SetTo, 2),SetCp(i),PlayWAV("staredit\\wav\\zzirizziri.ogg"),PlayWAV("staredit\\wav\\zzirizziri.ogg"),DisplayText(MacroWarn, 4),SetCp(FP),SetResources(i, SetTo, 0, Ore),ModifyUnitEnergy(All, "Men", i, 64, 0),ModifyUnitEnergy(All, "Buildings", i, 64, 0),RemoveUnit("Men", i),RemoveUnit(203, i),RemoveUnit(125, i)},{preserved})

	Trigger {
		players = {FP},
		conditions = {
			Label(0);
			LocalPlayerID(i);
			CD(BanCode2[i+1],1)
		},
		actions = {
			SetCtrigX("X",0xFFFD,0x4,0,SetTo,"X",0xFFFD,0x0,0,1);
		},
		flag = {preserved}
	}
	CIfOnce(FP,{CDeaths(FP,AtLeast,1,BanCode2[i+1])})
	DisplayPrint(HumanPlayers, {"\x13",PName(i),"\x04가 매크로를 사용하여 \x08찌리리릿 500배 \x04당하셨습니다."}, nil, {"staredit\\wav\\zzirizziri.ogg","staredit\\wav\\zzirizziri.ogg","staredit\\wav\\zzirizziri.ogg"})
	CIfEnd()
		--	local WAVT = {}
	--	for k = 0, 9 do
	--		table.insert(WAVT,PlayWAVX("sound\\Protoss\\ARCHON\\PArDth00.WAV"))
	--		table.insert(WAVT,DisplayTextX(StrDesign("\x04당신은 강되당했습니다. 드랍 코드 0x32223223 작동."),4))
	--	end
	--		Trigger2X(FP,{CDeaths(FP,AtLeast,1,BanCode2[i+1]);Memory(0x57F1B0, Exactly, i)},{RotatePlayer(WAVT,i,i),SetMemory(0xCDDDCDDC,SetTo,1);})

	CIfEnd()
	--PlayWAV("sound\\Bullet\\TNsFir00.wav");
end






TriggerX(FP,{Command(P7,AtLeast,50,42)},{RemoveUnitAt(1, 42, 64, P7)},{preserved})
TriggerX(FP,{Command(P8,AtLeast,50,42)},{RemoveUnitAt(1, 42, 64, P8)},{preserved})

if Limit == 1 then
	CMov(FP,0x6509B0,CurrentOP)--상위플레이어 단락
	CIf(FP,CD(TestMode,1)) -- 테스트 트리거


	
--for i = 0, 1699 do
--	TriggerX(FP,{ -- 테스트모드 무한스팀
--		DeathsX(EPDF(0x628298-0x150*i+(25*4)),Exactly,20,0,0xFF); -- EPD 35 Unused 0x8C
--	},
--	{
--		SetDeathsX(EPDF(0x628298-0x150*i+(69*4)),SetTo,255*256,0,0xFF00); -- \
--	},{preserved})
--end

	
	CMov(FP,0x6509B0,CurrentOP)--상위플레이어 단락

	TriggerX(FP,{Deaths(CurrentPlayer,AtLeast,1,208)},{RemoveUnit(0, Force1),RemoveUnit(20, Force1)},{preserved})
	--CIfOnce(FP,Deaths(CurrentPlayer,AtLeast,1,208))
	--CMov(FP,0x6509B0,19025+9) --CUnit 시작지점 +19 (0x4C)
	--CWhile(FP,Memory(0x6509B0,AtMost,19025+9 + (84*1699)),{SetDeathsX(CurrentPlayer,SetTo,0,0,0xFF0000),SetMemory(0x6509b0,Add,84)})
	--CWhileEnd()
	--CMov(FP,0x6509B0,FP)
	--CIfEnd()

		Trigger {
			players = {FP},
			conditions = {
				Label(0);
				Deaths(CurrentPlayer,AtLeast,1,204); -- KillAll
			},
			actions = {
				KillUnit("Men",Force2);
				PreserveTrigger();
			}
			}
		TestUPtr = CreateVar(FP)
		CTrigger(FP,{Deaths(CurrentPlayer,AtLeast,1,199)},{TCreateUnit(12, 20, _Add(CurrentOP,ParseLocation("P1L")), CurrentOP)},{preserved}) -- CreateMarine
		--CTrigger(FP,{Deaths(CurrentPlayer,AtLeast,1,199)},{SetV(TestUPtr,Cunit2)},{preserved})
		--CIf(FP,{CVar(FP,TestUPtr[2],AtLeast,1),CVar(FP,TestUPtr[2],AtMost,0x7FFFFFFF)})
		--	CDoActions(FP,{TSetMemoryX(_Add(CurrentOP,EPD(0x57f120)),SetTo,_Div(_Read(_Add(TestUPtr,19)),256),0xFF)})
		--CIfEnd()

		CMov(FP,0x6509B0,CurrentOP)--상위플레이어 단락
		CIf(FP,{CVar(FP,Cunit2[2],AtLeast,1),CVar(FP,Cunit2[2],AtMost,0x7FFFFFFF)})
			CIf(FP,{Deaths(CurrentPlayer,AtLeast,1,207)})-- 207 KillUnitSelected
				CMov(FP,0x6509B0,Cunit2,25)
				CTrigger(FP,{TTDeathsX(CurrentPlayer,NotSame,58,0,0xFF),TTDeathsX(CurrentPlayer,NotSame,111,0,0xFF),TTDeathsX(CurrentPlayer,NotSame,107,0,0xFF)},{
					MoveCp(Add,15*4);
					--SetDeathsX(CurrentPlayer,SetTo,0,0,0xFF000000);
					MoveCp(Subtract,21*4);
					SetDeathsX(CurrentPlayer,SetTo,0,0,0xFF00);
					MoveCp(Add,6*4);
				},1)
			CIfEnd()

			CMov(FP,0x6509B0,CurrentOP)--상위플레이어 단락
			CIf(FP,{Deaths(CurrentPlayer,AtLeast,1,203)}) -- KillUnitOnceSelectedWithSetDeaths
				CMov(FP,0x6509B0,Cunit2,25)
				f_SaveCp()
				TestUID = CreateVar(FP)
				TestP = CreateVar(FP)
				f_Read(FP,BackupCp,TestUID,nil,0xFF,1)
				f_Read(FP,_Sub(BackupCp,6),TestP,nil,0xFF,1)
				CDoActions(FP,{TSetMemory(_Add(_Mul(TestUID,12),TestP),Add,1)})
				f_LoadCp()
				CTrigger(FP,{TTDeathsX(CurrentPlayer,NotSame,58,0,0xFF),TTDeathsX(CurrentPlayer,NotSame,111,0,0xFF),TTDeathsX(CurrentPlayer,NotSame,107,0,0xFF)},{
					MoveCp(Subtract,6*4);
					SetDeathsX(CurrentPlayer,SetTo,0,0,0xFF00);
					MoveCp(Add,6*4);
				},1)
			CIfEnd()
			
			CMov(FP,0x6509B0,CurrentOP)--상위플레이어 단락
			CMov(FP,0x6509B0,Cunit2,19)
			f_SaveCp()
			CDoActions(FP,{TSetMemoryX(_Add(Cunit2,35),SetTo,_Mul(_Read(BackupCp),65536),0xFF000000)})
			f_LoadCp()
		CIfEnd()
	CIfEnd()

	CMov(FP,0x6509B0,FP)--상위플레이어 단락
			end


	--리더보드
	LeaderBoardT = CreateCcode()
	TriggerX(FP, {}, {AddCD(LeaderBoardT,1)}, {preserved})
	TriggerX(FP, {CD(LeaderBoardT,1)}, {
		LeaderBoardScore(Custom, "DIE");
		LeaderBoardComputerPlayers(Disable);}, {preserved})
	TriggerX(FP, {CD(LeaderBoardT,200)}, {
		LeaderBoardScore(Kills, "Point");
		LeaderBoardComputerPlayers(Disable);}, {preserved})
	TriggerX(FP, {CD(LeaderBoardT,400)}, {
		LeaderBoardKills("Any unit","Kills");
		LeaderBoardComputerPlayers(Disable);}, {preserved})
	TriggerX(FP, {CD(LeaderBoardT,600)}, {
		LeaderBoardGreed(10000000);
		LeaderBoardComputerPlayers(Disable);}, {preserved})
	TriggerX(FP, {CD(LeaderBoardT,800)}, {SetCD(LeaderBoardT,0)}, {preserved})

	CIf(FP,{Memory(0x512684,AtLeast,128),Memory(0x512684,AtMost,131);})
	FixText(FP, 1)
	TriggerX(FP,{Memory(0x68C144,AtLeast,1);},{SetMemory(0x68C144,SetTo,2);SetCp(128),DisplayText("\x07『 \x03관전 상태\x04에서도 \x11플레이어\x04에게 \x07채팅을 보낼 수 있습니다. \x07』", 4),SetCp(FP)},{preserved})
	FixText(FP, 2)
	CIfEnd()


--[[
--카르텔 전용 인식 여부에 따라 마린공격력과 체력 재설정

Trigger2X(FP,{ElapsedTime(AtLeast, 35),Memory(0xA03740,Exactly,0)},{
	RotatePlayer({PlayWAVX("sound\\Terran\\Frigate\\AfterOn.wav"),PlayWAVX("sound\\Terran\\Frigate\\AfterOn.wav"),PlayWAVX("sound\\Terran\\Frigate\\AfterOn.wav"),PlayWAVX("sound\\Terran\\Frigate\\AfterOn.wav"),
	DisplayTextX(string.rep("\x13\x07코드 정상 입력 감지되었습니다! \x04마린 \x08체력 \x04및 \x1B공격력 \x07상향, \x17자환 적용, \x08응머즐 ㄱㄱ\n",5), 4)
}, HumanPlayers, FP),
SetMemory(0x662350 + (20*4),SetTo,9999*256),
SetMemoryW(0x660E00 + (20 *2), SetTo, 9999),
SetMemory(0x662350 + (99*4),SetTo,15000*256),
SetMemoryW(0x660E00 + (99 *2), SetTo, 15000),
SetMemoryW(0x656EB0+(1 *2),SetTo,600),
SetMemoryW(0x657678+(1 *2),SetTo,40),
SetMemoryW(0x656EB0+(112 *2),SetTo,1200),
SetMemoryW(0x657678+(112 *2),SetTo,80),
SetCD(CodeEnable, 1),
Order("Any unit", Force2, 64, Move, "HZ"),
})
]]

end