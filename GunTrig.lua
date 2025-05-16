function GunTrig()

	BGMType = CreateVar(FP)
	Dt = IBGM_EPD(FP, {P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12}, BGMType, {
		{1,"staredit\\wav\\happy.ogg",19*1000},--해피캣
		{2,"staredit\\wav\\yodelsong.ogg",157*1000},--철권요들송
		{3,"staredit\\wav\\_Hong.ogg",16*1000},--홍박사
		{4,"staredit\\wav\\Lethal_Icecream.ogg",24*1000},--리썰배달
		{5,"staredit\\wav\\Bombyanggang.ogg",16*1000},--감염된 밤양갱
		{6,"staredit\\wav\\__CIPI1.ogg",38*1000},--치피치피
		{7,"staredit\\wav\\MaraTangFuru.ogg",18*1000},--마라탕후루
		{8,"staredit\\wav\\UnwelcomeSchool.ogg",53*1000},--아루
		{9,"staredit\\wav\\Damedane.ogg",35*1000},--다메다네
		{10,"staredit\\wav\\00.ogg",47*1000},--제로2
		{11,"staredit\\wav\\_DDING1.ogg",82*1000},--띵띵땅땅
		{12,"staredit\\wav\\lolikami_cut.ogg",68*1000},--로리카미
		{13,"staredit\\wav\\Toka.ogg",16*1000},--토카
		{14,"staredit\\wav\\Nyancat.ogg",31*1000},--냥캣
		{15,"staredit\\wav\\nodap.ogg",55*1000},--할말이업네
		{16,"staredit\\wav\\bling.ogg",86*1000},--브링방방
		{17,"staredit\\wav\\_PAI2.ogg",41*1000},--파이
		{18,"staredit\\wav\\_JSH.ogg",50*1000},--신창섭
		{19,"staredit\\wav\\_XL1.ogg",31*1000},--
		{20,"staredit\\wav\\_GUCI2.ogg",67*1000},--구찌
		{21,"staredit\\wav\\_KWI2.ogg",106*1000},--귀여워서미안해
		{22,"staredit\\wav\\_YSS2.ogg",40*1000},--워싱쉬
		{23,"staredit\\wav\\_ITN1.ogg",43*1000},--인터넷
		{24,"staredit\\wav\\_JOJO2.ogg",290*1000},--조조..등록만해놓고 밑에서 강제로 틀듯
		{25,"staredit\\wav\\_JOP1.ogg",89*1000},--
		{26,"staredit\\wav\\__NUT.ogg",29*1000},--
		{27,"staredit\\wav\\UnwelcomeSchool2.ogg",66*1000},--아루2

		
		
		
	})
	

	
	if BGMTimerForceReset == 1 then
		DoActions(FP, {SetDeathsX(Force1, SetTo, 0, 12,0xFFFFFF)})
	else
		CDoActions(FP, {TSetDeathsX(Force1, Subtract, Dt, 12,0xFFFFFF)})
	
	end
	if TestStart == 0 then
		DoActionsX(FP,{SetV(BGMType,2)},1)
	end
	function CIf_GunTrig(PlayerID,GunID,LocID,TimerMax,BGMTypes)
		local BGMAct
		if BGMTypes~=nil then
			BGMAct = SetV(BGMType,BGMTypes)
		else
			BGMAct = nil
		end
		local GunCcode = CreateCcode()
		GunTrigGLoc = LocID
		GunTrigGCcode = GunCcode
		TriggerX(FP, Bring(PlayerID, Exactly, 0, GunID, LocID), {SetCD(GunCcode,1),BGMAct})--RotatePlayer({DisplayTextX("\x13GunID : "..GunID.."    LocID : "..LocID)}, HumanPlayers, FP)
		CIf(FP,{CD(GunCcode,1,AtLeast),CD(GunCcode,TimerMax,AtMost)},{AddCD(GunCcode,1)})
		return GunCcode
	end
--P7Guns


if GunBossTestMode == 0 then
HacCD1 = CIf_GunTrig(P7, "Zerg Hatchery", "CD1",500,1);
	CD1Sh = CSMakeStar(4, 180, 64, 45, PlotSizeCalc(4*2, 2), 0)
	G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD1Sh,P8,GunTrigGLoc,1,{FNTable=2})
	G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD1Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD1Sh,P8,GunTrigGLoc,1,{FNTable=2})
CIfEnd()
HacCD3 = CIf_GunTrig(P7, "Zerg Hatchery", "CD3",500,1);
	CD3Sh = CSMakeLine(2, 32, 90, 5, 0)
	for i = 0,4 do
		G_CB_TSetSpawn({CD(GunTrigGCcode,0+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD3Sh,P8,GunTrigGLoc,1,{DistanceXY={0,(-32*2)+(32*i)},LMTable="MAX"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD3Sh,P8,GunTrigGLoc,1,{DistanceXY={0,(-32*2)+(32*i)},LMTable="MAX",RepeatType="KiilUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,200+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD3Sh,P8,GunTrigGLoc,1,{DistanceXY={0,(-32*2)+(32*i)},LMTable="MAX"})
	end
CIfEnd()
HacCD4 = CIf_GunTrig(P7, "Zerg Hatchery", "CD4",500,1);
	CD4Sh_1 = CSMakeCircle(12, 72, 0, 13, 1)
	CD4Sh_2 = CSMakeLine(4, 48, 0, 13, 0)
	G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD4Sh_1,P8,GunTrigGLoc,1)
	G_CB_TSetSpawn({CD(GunTrigGCcode,70,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD4Sh_2,P8,GunTrigGLoc,1)
	G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD4Sh_1,P8,GunTrigGLoc,1,{LMTable = "MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD4Sh_2,P8,GunTrigGLoc,1,{LMTable = "MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD4Sh_1,P8,GunTrigGLoc,1)
	G_CB_TSetSpawn({CD(GunTrigGCcode,270,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD4Sh_2,P8,GunTrigGLoc,1)
CIfEnd()
HacCD37 = CIf_GunTrig(P7, "Zerg Hatchery", "CD37",500,1);
	CD37Sh = CSMakeLine(2, 32, 0, 5, 0)
	for i = 0,4 do
		G_CB_TSetSpawn({CD(GunTrigGCcode,0+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD37Sh,P8,GunTrigGLoc,1,{DistanceXY={(-32*2)+(32*i),0},LMTable="MAX"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD37Sh,P8,GunTrigGLoc,1,{DistanceXY={(-32*2)+(32*i),0},LMTable="MAX",RepeatType="KiilUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,200+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD37Sh,P8,GunTrigGLoc,1,{DistanceXY={(-32*2)+(32*i),0},LMTable="MAX"})
	end
CIfEnd()
HacCD38 = CIf_GunTrig(P7, "Zerg Hatchery", "CD38",500,1);
CD38Sh = CSMakeCircle(5, 96, 0, 6, 1)
RandRotV = f_CRandNum(360)
CMov(FP,G_CB_RotateV,RandRotV)
for i = 0,4 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,0+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD38Sh,P8,GunTrigGLoc,1,{DistanceXY={(32*2)-(32*i),(-32*2)+(32*i)},LMTable="MAX",RotateTable = "Main"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD38Sh,P8,GunTrigGLoc,1,{DistanceXY={(-32*2)+(32*i),(-32*2)+(32*i)},LMTable="MAX",RotateTable = "Main",RepeatType="KiilUnit"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,200+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD38Sh,P8,GunTrigGLoc,1,{DistanceXY={(-32*2)+(32*i),(-32*2)+(32*i)},LMTable="MAX",RotateTable = "Main"})

end
CIfEnd()
HacCD39 = CIf_GunTrig(P7, "Zerg Hatchery", "CD39",500,1);
CD39Sh = {28  ,{672, 1632},{704, 1632},{736, 1632},{768, 1632},{800, 1632},{832, 1632},{864, 1632},{896, 1632},{928, 1632},{960, 1632},{960, 1664},{960, 1696},{960, 1728},{960, 1760},{960, 1792},{960, 1824},{960, 1856},{960, 1888},{960, 1920},{960, 1952},{960, 1984},{928, 1792},{896, 1792},{864, 1792},{832, 1792},{800, 1792},{768, 1792},{736, 1792}}

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD39Sh,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD39Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD39Sh,P8,{0,0},1,{LMTable="MAX"})
CIfEnd()
HacCD40 = CIf_GunTrig(P7, "Zerg Hatchery", "CD40",500,1);
CD40Sh = {23  ,{1408, 1728},{1440, 1728},{1472, 1728},{1504, 1728},{1536, 1728},{1568, 1600},{1568, 1632},{1568, 1664},{1568, 1696},{1568, 1728},{1568, 1760},{1568, 1792},{1568, 1824},{1568, 1856},{1376, 1600},{1376, 1632},{1376, 1664},{1376, 1696},{1376, 1728},{1376, 1760},{1376, 1792},{1376, 1824},{1376, 1856}}

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD40Sh,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD40Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD40Sh,P8,{0,0},1,{LMTable="MAX"})
CIfEnd()
HacCD41 = CIf_GunTrig(P7, "Zerg Hatchery", "CD41",500,1);
Shape9081 = {4   ,{768, 2208},{1152, 2016},{1248, 2112},{864, 2304}}
CD41Sh = CS_FillPathXY(Shape9081, 1, 64, 32, 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD41Sh,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD41Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD41Sh,P8,{0,0},1,{LMTable="MAX"})

CIfEnd()
HacCD42 = CIf_GunTrig(P7, "Zerg Hatchery", "CD42",500,1);
CD42Sh = CSMakePolygon(6, 48, 0, PlotSizeCalc(6, 3), 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD42Sh,P8,GunTrigGLoc,1,{FNTable=2})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD42Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD42Sh,P8,GunTrigGLoc,1,{FNTable=2})

CIfEnd()


HacCD2 = CIf_GunTrig(P8, "Zerg Hatchery", "CD2",500,1);
CD2Sh = CSMakePolygon(6, 48, 0, PlotSizeCalc(6, 2), 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD2Sh,P8,GunTrigGLoc,1,{FNTable=2})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD2Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD2Sh,P8,GunTrigGLoc,1,{FNTable=2})
CIfEnd()
HacCD5 = CIf_GunTrig(P8, "Zerg Hatchery", "CD5",500,1);
Shape9081_1 = {4   ,{1472, 3552},{1568, 3648},{1408, 3744},{1312, 3648}}
Shape9081_2 = {4   ,{1760, 3744},{1856, 3808},{1632, 3936},{1472, 3872}}
Shape9081_1 = CS_FillPathXY(Shape9081_1, 1, 64, 32, 0)
Shape9081_2 = CS_FillPathXY(Shape9081_2, 1, 64, 32, 0)
CD5Sh = CS_OverlapX(Shape9081_1,Shape9081_2)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD5Sh,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD5Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD5Sh,P8,{0,0},1,{LMTable="MAX"})



CIfEnd()
HacCD6 = CIf_GunTrig(P8, "Zerg Hatchery", "CD6",500,1);
CD6Sh = CSMakeLine(1, 64, 0, 5, 1)
for i = 0, 7 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,0+(i*10),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD6Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RotateTable = (i*360)/8})
	G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD6Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RotateTable = (i*360)/8,RepeatType="KiilUnit"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,200+(i*10),AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD6Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RotateTable = (i*360)/8})
end
CIfEnd()
HacCD49 = CIf_GunTrig(P7, "Zerg Hatchery", "CD49",500,1);
CD49Sh = CSMakeStar(4, 180, 48, 45, PlotSizeCalc(4*2, 3), PlotSizeCalc(4*2, 2))

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD49Sh,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD49Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD49Sh,P8,GunTrigGLoc,1)


CIfEnd()
HacCD50 = CIf_GunTrig(P7, "Zerg Hatchery", "CD50",500,1); -- 1. 알랜 가디언 영웅 2. 구이몬 톰
CD50Sh = {16  ,{1408, 672},{1392, 704},{1376, 736},{1360, 768},{1344, 800},{1328, 832},{1312, 864},{1424, 704},{1440, 736},{1456, 768},{1472, 800},{1488, 832},{1504, 864},{1376, 800},{1408, 800},{1440, 800}}
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Alan Schezar (Goliath)","Kukulza (Guardian)"},CD50Sh,P8,{0,0},1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD50Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Gui Montag (Firebat)","Tom Kazansky (Wraith)"},CD50Sh,P8,{0,0},1)


CIfEnd()
HacCD51 = CIf_GunTrig(P7, "Zerg Hatchery", "CD51",500,1); --1. 워브 톰 2. 시즈탱크
CD51Sh = CS_FillPathXY({3   ,{1920, 704},{2304, 704},{1920, 1088}}, 1, 48, 48, 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Warbringer (Reaver)","Tom Kazansky (Wraith)"},CD51Sh,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD51Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Edmund Duke (Siege Mode)"},CD51Sh,P8,{0,0},1,{LMTable="MAX"})


CIfEnd()
HacCD52 = CIf_GunTrig(P7, "Zerg Hatchery", "CD52",500,1);
CD52Sh = CS_OverlapX(CS_MoveXY(CSMakeLine(2, 32, 45, 16, 0), 0, -182+23),CS_MoveXY(CSMakeLine(2, 32, 45+90, 16, 0), 0, 182-23))

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD52Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD52Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)","Kukulza (Mutalisk)"},CD52Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})

CIfEnd()	
HacCD53 = CIf_GunTrig(P7, "Zerg Hatchery", "CD53",500,1); -- 1. 짐레벌쳐 사라 2. 시즈탱크
CD53Sh_1 = CSMakeCircle(20, 3*32, 0, 21, 1)
CD53Sh_2 = CSMakeCircle(30, 5*32, 0, 31, 1)
CD53Sh_3 = CS_FillPathXY({4   ,{1792, 1280},{2048, 1152},{1952, 1088},{1728, 1184}}, 1, 32, 32, 0)

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Jim Raynor (Vulture)"},CD53Sh_1,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Sarah Kerrigan (Ghost)"},CD53Sh_2,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD53Sh_3,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Edmund Duke (Siege Mode)"},CD53Sh_3,P8,{0,0},1)

CIfEnd()	
LairCD8 = CIf_GunTrig(P7, "Zerg Lair", "CD8",500,3);
Shape9081 = {6   ,{1440, 2848},{1664, 2720},{1664, 2624},{1536, 2560},{1344, 2656},{1376, 2752}}
CD8Sh = CS_FillPathXY(Shape9081, 1, 40, 40, 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD8Sh,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD8Sh,P8,{0,0},1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD8Sh,P8,{0,0},1,{LMTable="MAX"})

CIfEnd()
LairCD12 = CIf_GunTrig(P7, "Zerg Lair", "CD12",500,3);
CD12Sh = CSMakeStar(6,135,64,0,CS_Level("Star",6,4),CS_Level("Star",6,3)) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD12Sh,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD12Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD12Sh,P8,GunTrigGLoc,1) 
CIfEnd()
LairCD13 = CIf_GunTrig(P7, "Zerg Lair", "CD13",500,3);
CD13Sh= CS_OverlapX(CS_MoveXY(CSMakePolygon(3, 16, 0, PlotSizeCalc(3, 5), PlotSizeCalc(3, 4)),0,  80),CS_MoveXY(CSMakePolygon(3, 16, 180, PlotSizeCalc(3, 5), PlotSizeCalc(3, 4)), 0, -80))
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD13Sh,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD13Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD13Sh,P8,GunTrigGLoc,1) 

CIfEnd()
LairCD14 = CIf_GunTrig(P7, "Zerg Lair", "CD14",500,3); -- 첫, 둘째젠 동일, 3젠 존재. 시즈탱크 톰
CD14Sh_1 = CSMakeLine(3, 48, 0, 16, 0)
CD14Sh_2 = CSMakeLine(3, 48, 180, 16, 0)
CD14Sh_3 = CS_OverlapX(CD14Sh_1,CD14Sh_2)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD14Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD14Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD14Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,340,AtLeast)},{"Zerg Devourer"},CD14Sh_3,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"},CD14Sh_3,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
CIfEnd()
LairCD15 = CIf_GunTrig(P7, "Zerg Lair", "CD15",500,3); -- 첫, 둘째젠 동일, 3젠 존재. 시즈탱크 톰
CD15Sh = CSMakeLine(8, 48, 0, (8*5)+1, 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD15Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD15Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD15Sh,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,340,AtLeast)},{"Zerg Devourer"},CD15Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"},CD15Sh,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
CIfEnd()
LairCD18 = CIf_GunTrig(P7, "Zerg Lair", "CD18",500,3); -- 첫, 둘째젠 동일, 3젠 존재. 시즈탱크 톰

CD18Sh = CS_OverlapX(
	CS_MoveXY(CSMakeCircle(6, 45, 0, 7, 1), -220/2, -50),
	CS_MoveXY(CSMakeCircle(6, 45, 0, 7, 1), 0, -50),
	CS_MoveXY(CSMakeCircle(6, 45, 0, 7, 1), 220/2, -50),
	CS_MoveXY(CSMakeCircle(6, 45, 0, 7, 1), -110/2, 50),
	CS_MoveXY(CSMakeCircle(6, 45, 0, 7, 1), 110/2, 50))
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD18Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD18Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD18Sh,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,340,AtLeast)},{"Zerg Devourer"},CD18Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"},CD18Sh,P8,GunTrigGLoc,1,{LMTable="MAX"}) 

CIfEnd()
LairCD19 = CIf_GunTrig(P7, "Zerg Lair", "CD19",500,3); -- 첫, 둘째젠 동일, 3젠 존재. 시즈탱크 톰
CD19Sh = CSMakePolygon(8, 32, 0, PlotSizeCalc(8, 4), PlotSizeCalc(8, 3))
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD19Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD19Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD19Sh,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,340,AtLeast)},{"Zerg Devourer"},CD19Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"},CD19Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
CIfEnd()
LairCD7 = CIf_GunTrig(P8, "Zerg Lair", "CD7",500,3);
CD7Sh_1 = CSMakeLine(4, 64, 45, 17, 1)
CD7Sh_2 = CS_ConnectPath(CSMakePath({-182,-182},{182,-182},{182,182},{-182,182}),4,1)
CD7Sh = CS_OverlapX(CD7Sh_1,CD7Sh_2)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD7Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD7Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD7Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
CIfEnd()
LairCD9 = CIf_GunTrig(P8, "Zerg Lair", "CD9",500,3);
CD9Sh = CS_FillPathHX2({4	,{-32*4, -32*4},{32*4, -32*4},{32*4, 32*4},{-32*4, 32*4}},1,48,32,1,0,26.57,5)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD9Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD9Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD9Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
CIfEnd()
LairCD10 = CIf_GunTrig(P8, "Zerg Lair", "CD10",500,3);
CD10ShArr = {CSMakeCircle(9, 64, 0, 10, 1),CSMakeCircle(9+1, 64*2, 0, 10+1, 1),CSMakeCircle(9+2, 64*3, 0, 10+2, 1)}
CD10Sh_1 = CS_OverlapX(CSMakeCircle(9, 64, 0, 10, 1),CSMakeCircle(9+1, 64*2, 0, 10+1, 1),CSMakeCircle(9+2, 64*3, 0, 10+2, 1))
for i = 1,3 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,0+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD10ShArr[i],P8,GunTrigGLoc,1,{LMTable="MAX"})
end
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD10Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
for i = 1,3 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,200+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD10ShArr[i],P8,GunTrigGLoc,1,{LMTable="MAX"})
end
CIfEnd()
LairCD11 = CIf_GunTrig(P8, "Zerg Lair", "CD11",500,3);
CD11ShArr= {CSMakePolygon(6, 64, 0, PlotSizeCalc(6,1), 1),CSMakePolygon(7, 96, 0, PlotSizeCalc(7,1), 1),CSMakePolygon(8, 128, 0, PlotSizeCalc(8,1), 1)}
CD11Sh_1 = CS_OverlapX(CSMakePolygon(6, 64, 0, PlotSizeCalc(6,1), 1),CSMakePolygon(7, 96, 0, PlotSizeCalc(7,1), 1),CSMakePolygon(8, 128, 0, PlotSizeCalc(8,1), 1))
for i = 1,3 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,0+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD11ShArr[i],P8,GunTrigGLoc,1,{LMTable="MAX"})
end
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD11Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
for i = 1,3 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,200+(i*20),AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD11ShArr[i],P8,GunTrigGLoc,1,{LMTable="MAX"})
end

CIfEnd()
LairCD16 = CIf_GunTrig(P8, "Zerg Lair", "CD16",500,3);
CD16Sh_1 = CS_Rotate(CS_SortY(CSMakeStar(4, 180, 64, 0, PlotSizeCalc(8, 3), 0), 0), 45)
CD16Sh_2 = CS_Rotate(CS_SortY(CSMakeStar(4, 180, 64, 0, PlotSizeCalc(8, 3), 0), 0), -45)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD16Sh_1,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD16Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD16Sh_2,P8,GunTrigGLoc,1)
CIfEnd()
LairCD17 = CIf_GunTrig(P8, "Zerg Lair", "CD17",500,3);
CD17Sh = CSMakeCircle(6, 32, 0, PlotSizeCalc(6, 3), 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD17Sh,P8,GunTrigGLoc,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,140,AtLeast)},{"Zerg Devourer"},CD17Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD17Sh,P8,GunTrigGLoc,1)
CIfEnd()
LairCD54 = CIf_GunTrig(P7, "Zerg Lair", "CD54",500,3); -- 첫, 둘째젠 동일, 3젠 존재. 시즈탱크 톰
CD54Sh_1 = CSMakeLine(4, 64, 0, 21, 1)
CD54Sh_2 = CSMakeCircle(20, 128, 0, 21, 1)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,140,AtLeast)}, {CD54Sh_1}, GunTrigGLoc, 429, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,170,AtLeast)}, {CD54Sh_2}, GunTrigGLoc, 978, 1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)","Kukulza (Guardian)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"}) 
G_CB_TScanEff({CD(GunTrigGCcode,340,AtLeast)}, {CD54Sh_1}, GunTrigGLoc, 429, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,370,AtLeast)}, {CD54Sh_2}, GunTrigGLoc, 978, 1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})
CIfEnd()
LairCD55 = CIf_GunTrig(P7, "Zerg Lair", "CD55",400,4); -- 마인. 리썰 배달 브금으로 변경.
CD55Sh = CSMakeCircle(8,64,0,PlotSizeCalc(8, 3),0)
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Zerg Devourer"},CD55Sh,P8,GunTrigGLoc,1,{LMTable="MAX",RepeatType="KiilUnit"})
G_CB_TSetSpawn({CD(GunTrigGCcode,40,AtLeast)},{"Vulture Spider Mine"},CD55Sh,P8,GunTrigGLoc,1,{LMTable="MAX"})
CIfEnd()


HiveCD27 = CIf_GunTrig(P7, "Zerg Hive", "CD27",20000 // 0x1D,7);

	
function HyperCycloidC(T) return {12*math.sin(T) - 4*math.sin(3*T), 13*math.cos(T) - 5*math.cos(2*T) - 2*math.cos(3*T) - math.cos(4*T)} end
HCCC = CSMakeGraphT({12,12},"HyperCycloidC",0,0,4.1,4.1,25) 
HCC0 = CS_Rotate(HCCC,180)
HCC = CS_RemoveStack(HCC0,15,0) -------하트
HSh_1 = CS_OverlapX(CD54Sh_1,CD54Sh_2)
HSh_2 = CSMakeLine(4, 128, 45, 5, 1)
HSh_T1 = {
	CSMakeCircle(5, 64, 0, 6, 1),
	CSMakeCircle(6, 64+(32*1), 0, 7, 1),
	CSMakeCircle(7, 64+(32*2), 0, 8, 1),
	CSMakeCircle(8, 64+(32*3), 0, 9, 1),
	CSMakeCircle(9, 64+(32*4), 0, 10, 1)
}

HSh_T2 = {
	CSMakePolygon(6, 16, 90, PlotSizeCalc(6, 4), PlotSizeCalc(6, 3)),
	CSMakePolygon(6, 24, 90, PlotSizeCalc(6, 4), PlotSizeCalc(6, 3)),
	CSMakePolygon(6, 32, 90, PlotSizeCalc(6, 4), PlotSizeCalc(6, 3)),
	CSMakePolygon(6, 40, 90, PlotSizeCalc(6, 4), PlotSizeCalc(6, 3))
}

--CS_PrintBMPGraph(CSMakePolygon(6, 40, 90, PlotSizeCalc(6, 4), PlotSizeCalc(6, 3)),nil,{{-10},{10}},{{-5},{5}},1,100,25,{0x00FFC0,0x80FFE0,0xC4FFF0},3)


	
G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,980//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,1960 // 0x1D,AtLeast)},{"Zeratul (Dark Templar)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,2450 // 0x1D,AtLeast)},{"Mojo (Scout)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,2950 // 0x1D,AtLeast)},{"Gui Montag (Firebat)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,3320 // 0x1D,AtLeast)},{"Danimoth (Arbiter)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TScanEff({CD(GunTrigGCcode,3680//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,3930//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,4420//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 426, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,4910 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5040 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5160 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5280 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[4],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5410 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[5],P8,GunTrigGLoc,1,{LMTable="MAX"})



G_CB_TSetSpawn({CD(GunTrigGCcode,5950 // 0x1D,AtLeast)},{"Alan Schezar (Goliath)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,6390 // 0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,6880 // 0x1D,AtLeast)},{"Fenix (Zealot)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,7250 // 0x1D,AtLeast)},{"Kukulza (Mutalisk)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})


G_CB_TSetSpawn({CD(GunTrigGCcode,7860 // 0x1D,AtLeast)},{"Mojo (Scout)"},HSh_T2[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8110 // 0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},HSh_T2[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8360 // 0x1D,AtLeast)},{"Mojo (Scout)"},HSh_T2[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8600 // 0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},HSh_T2[4],P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,8850 // 0x1D,AtLeast)},{"Fenix (Dragoon)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Norad II (Battlecruiser)"},HSh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})



CIfEnd()

HiveCD26 = CIf_GunTrig(P8, "Zerg Hive", "CD26",20000 // 0x1D,7);



	
G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,980//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,1960 // 0x1D,AtLeast)},{"Zeratul (Dark Templar)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,2450 // 0x1D,AtLeast)},{"Mojo (Scout)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,2950 // 0x1D,AtLeast)},{"Gui Montag (Firebat)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,3320 // 0x1D,AtLeast)},{"Danimoth (Arbiter)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TScanEff({CD(GunTrigGCcode,3680//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,3930//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,4420//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 426, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,4910 // 0x1D,AtLeast)},{30},HSh_T1[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5040 // 0x1D,AtLeast)},{30},HSh_T1[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5160 // 0x1D,AtLeast)},{30},HSh_T1[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5280 // 0x1D,AtLeast)},{30},HSh_T1[4],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5410 // 0x1D,AtLeast)},{30},HSh_T1[5],P8,GunTrigGLoc,1,{LMTable="MAX"})



G_CB_TSetSpawn({CD(GunTrigGCcode,5950 // 0x1D,AtLeast)},{"Alan Schezar (Goliath)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,6390 // 0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,6880 // 0x1D,AtLeast)},{"Fenix (Zealot)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,7250 // 0x1D,AtLeast)},{"Kukulza (Mutalisk)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})


G_CB_TSetSpawn({CD(GunTrigGCcode,7860 // 0x1D,AtLeast)},{"Mojo (Scout)"},HSh_T2[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8110 // 0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},HSh_T2[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8360 // 0x1D,AtLeast)},{"Mojo (Scout)"},HSh_T2[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8600 // 0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},HSh_T2[4],P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,8850 // 0x1D,AtLeast)},{"Fenix (Dragoon)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Norad II (Battlecruiser)"},HSh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})




CIfEnd()



HiveCD20 = CIf_GunTrig(P7, "Zerg Hive", "CD20",20000 // 0x1D,7);



G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,980//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,1960 // 0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,2450 // 0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,2950 // 0x1D,AtLeast)},{"Kukulza (Mutalisk)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,3320 // 0x1D,AtLeast)},{"Kukulza (Guardian)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TScanEff({CD(GunTrigGCcode,3680//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,3930//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,4420//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 426, 1,{LMTable="MAX"})



G_CB_TSetSpawn({CD(GunTrigGCcode,4910 // 0x1D,AtLeast)},{30},HSh_T1[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5040 // 0x1D,AtLeast)},{30},HSh_T1[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5160 // 0x1D,AtLeast)},{30},HSh_T1[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5280 // 0x1D,AtLeast)},{30},HSh_T1[4],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5410 // 0x1D,AtLeast)},{30},HSh_T1[5],P8,GunTrigGLoc,1,{LMTable="MAX"})



G_CB_TSetSpawn({CD(GunTrigGCcode,5950 // 0x1D,AtLeast)},{"Zeratul (Dark Templar)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,6390 // 0x1D,AtLeast)},{"Mojo (Scout)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,6880 // 0x1D,AtLeast)},{"Gui Montag (Firebat)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,7250 // 0x1D,AtLeast)},{"Danimoth (Arbiter)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})


G_CB_TSetSpawn({CD(GunTrigGCcode,7860 // 0x1D,AtLeast)},{"Fenix (Zealot)"},HSh_T2[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8110 // 0x1D,AtLeast)},{"Fenix (Dragoon)"},HSh_T2[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8360 // 0x1D,AtLeast)},{"Fenix (Zealot)"},HSh_T2[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8600 // 0x1D,AtLeast)},{"Fenix (Dragoon)"},HSh_T2[4],P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,8850 // 0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Norad II (Battlecruiser)"},HSh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})



CIfEnd()
HiveCD21 = CIf_GunTrig(P8, "Zerg Hive", "CD21",20000 // 0x1D,7);

G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,980//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,1960 // 0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Devouring One (Zergling)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,2450 // 0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Torrasque (Ultralisk)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,2950 // 0x1D,AtLeast)},{"Kukulza (Mutalisk)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,3320 // 0x1D,AtLeast)},{"Kukulza (Guardian)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TScanEff({CD(GunTrigGCcode,3680//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 10, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,3930//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 4, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,4420//0x1D,AtLeast)}, {HCC}, GunTrigGLoc, 426, 1,{LMTable="MAX"})



G_CB_TSetSpawn({CD(GunTrigGCcode,4910 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5040 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5160 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5280 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[4],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,5410 // 0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},HSh_T1[5],P8,GunTrigGLoc,1,{LMTable="MAX"})



G_CB_TSetSpawn({CD(GunTrigGCcode,5950 // 0x1D,AtLeast)},{"Zeratul (Dark Templar)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,6390 // 0x1D,AtLeast)},{"Mojo (Scout)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,6880 // 0x1D,AtLeast)},{"Gui Montag (Firebat)"},CD54Sh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,7250 // 0x1D,AtLeast)},{"Danimoth (Arbiter)"},CD54Sh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})


G_CB_TSetSpawn({CD(GunTrigGCcode,7860 // 0x1D,AtLeast)},{"Fenix (Zealot)"},HSh_T2[1],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8110 // 0x1D,AtLeast)},{"Fenix (Dragoon)"},HSh_T2[2],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8360 // 0x1D,AtLeast)},{"Fenix (Zealot)"},HSh_T2[3],P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,8600 // 0x1D,AtLeast)},{"Fenix (Dragoon)"},HSh_T2[4],P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,8850 // 0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},HSh_1,P8,GunTrigGLoc,1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,9340 // 0x1D,AtLeast)},{"Norad II (Battlecruiser)"},HSh_2,P8,GunTrigGLoc,1,{LMTable="MAX"})


CIfEnd()



NDCD200 = CIf_GunTrig(P7, "Norad II (Crashed Battlecruiser)", "CD200",400,5);
-- ms // 0x1D
G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 213, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,340 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 332, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,670 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 215, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,1000 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 334, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,4030 // 0x1D,AtLeast)}, {50}, {CSMakeCircle(8, 64, 0, PlotSizeCalc(8, 3), 0)}, P8, GunTrigGLoc, 1, {RepeatType="Patrol_Center",LMTable="MAX"})


G_CB_TScanEff({CD(GunTrigGCcode,4030 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 213, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,4380 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 332, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,4610 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 215, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,5040 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 334, 1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,6080 // 0x1D,AtLeast)}, {"Vulture Spider Mine"}, {CSMakeCircle(25, 256, 0, 26, 1)}, P8, GunTrigGLoc, 1, {RepeatType="RemoveTimer",LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,6080 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 213, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,6400 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 332, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,6750 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 215, 1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,7080 // 0x1D,AtLeast)}, {CSMakeCircle(25, 256, 0, 26, 1)}, GunTrigGLoc, 334, 1,{LMTable="MAX"})


CIfEnd()


DGCD61 = CIf_GunTrig(P8, "Zerg Cerebrate Daggoth", "CD61",400);



Trigger2X(FP,{},{
	RotatePlayer({PlayWAVX("staredit\\wav\\fakeqt.ogg");PlayWAVX("staredit\\wav\\fakeqt.ogg");}, HumanPlayers, FP);
})

DoActions(FP, {SetDeathsX(Force1, SetTo, 0, 12,0xFFFFFF)},1)
CD61Sh_1 = CS_RatioXY(CSMakeLine(2, 48, 45, 20, 0), 1, 0.5)
CD61Sh_2 = CSMakeLine(2, 48, 0, 20, 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,2200 // 0x1D,AtLeast)}, {"Edmund Duke (Siege Mode)"}, CD61Sh_1, P6, "CD62", 1, {LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,3400 // 0x1D,AtLeast)}, {"Edmund Duke (Siege Mode)"}, CD61Sh_2, P6, "CD62", 1, {LMTable="MAX",DistanceXY={9*32,0}})
G_CB_TSetSpawn({CD(GunTrigGCcode,3400 // 0x1D,AtLeast)}, {"Edmund Duke (Siege Mode)"}, CD61Sh_2, P6, "CD62", 1, {LMTable="MAX",DistanceXY={-9*32,0}})

CIfOnce(FP, CD(GunTrigGCcode,4300 // 0x1D,AtLeast))
CFor(FP, 0, 100, 1)
CIf(FP,{Bring(P6, AtLeast, 1, "Edmund Duke (Siege Mode)", 64)})
DoActions(FP, {Simple_SetLoc(0, -32, -32, 32, 32),MoveLocation(1, "Edmund Duke (Siege Mode)", P6, 64),GiveUnits(1, "Edmund Duke (Siege Mode)", P6, 1, P9),RemoveUnit("Edmund Duke (Siege Mode)", P9),CreateUnit(1, 30, 1, P8)})
CIfEnd()
CForEnd()
CIfEnd()


CIfEnd()


CRCDANY = CIf_GunTrig(P8, "Mature Crysalis", 64,45000 // 0x1D);

CRCDT = CreateCcode()
CRCDT2 = CreateCcode()
DoActionsX(FP, {AddCD(CRCDT,1),AddCD(CRCDT2,1)})

CRCDMode = CreateCcode()
CIfOnce(FP)
TriggerX(FP, {}, {SetSwitch("Switch 100", Random)})
TriggerX(FP, {Switch("Switch 100", Cleared)}, {SetCD(CRCDMode,0)})
TriggerX(FP, {Switch("Switch 100", Set)}, {SetCD(CRCDMode,1)})


TriggerX(FP,{CD(CRCDMode,0)},{
	RotatePlayer({DisplayTextX(string.rep("\x13\x08불길한 예감\x04이 든다... \x11우리 집\x04으로 도망쳐야 할 것 같다...\n\x13\x08Feel not good\x04. \x07Run away \x04to the \x11Home\n", 3), 4);
	PlayWAVX("staredit\\wav\\Jester.ogg");PlayWAVX("staredit\\wav\\Jester.ogg");}, HumanPlayers, FP);
})
TriggerX(FP,{CD(CRCDMode,1)},{
	RotatePlayer({DisplayTextX(string.rep("\x13\x08불길한 예감\x04이 든다... \x11우리 집\x04에서 도망쳐야 할 것 같다...\n\x13\x08Feel not good\x04. \x07Run away \x04from the \x11Home\n", 3), 4);
	PlayWAVX("staredit\\wav\\Jester.ogg");PlayWAVX("staredit\\wav\\Jester.ogg");}, HumanPlayers, FP);
})
CIfEnd()



JRot = CreateVar(FP)
JRot2 = CreateVar(FP)
CIf(FP,{CD(CRCDANY,40500 // 0x1D,AtMost)})
--G_CB_TScanEff({CD(CRCDT,10,AtLeast)}, {CSMakeLine(1, 32, 90, 9, 0)}, {4032-(9*32),864}, 974, nil,{LMTable="MAX"})



TriggerX(FP,{CD(CRCDANY,1 // 0x1D,AtLeast)},{AddV(JRot,3)},{preserved})
TriggerX(FP,{CD(CRCDANY,5700 // 0x1D,AtLeast)},{AddV(JRot,3)},{preserved})
TriggerX(FP,{CD(CRCDANY,10400 // 0x1D,AtLeast)},{AddV(JRot,4)},{preserved})
TriggerX(FP,{CD(CRCDANY,15400 // 0x1D,AtLeast)},{AddV(JRot,6)},{preserved})
TriggerX(FP,{CD(CRCDANY,20000 // 0x1D,AtLeast)},{AddV(JRot,7)},{preserved})
TriggerX(FP,{CD(CRCDANY,24000 // 0x1D,AtLeast)},{AddV(JRot,9)},{preserved})
TriggerX(FP,{CD(CRCDANY,27000 // 0x1D,AtLeast)},{AddV(JRot,15)},{preserved})
for i = 0, 10 do
	TriggerX(FP,{CD(CRCDANY,(30000+(i*1000)) // 0x1D,AtLeast)},{AddV(JRot,15)},{preserved})
end
CIfX(FP,{CD(CRCDMode,1)})
CNeg(FP,JRot2,JRot)
CElseX()
CMov(FP,JRot2,JRot)
CIfXEnd()
CMov(FP,G_CB_RotateV,_Div(JRot2, 10))
f_Lengthdir(FP, 9*32, G_CB_RotateV, G_CB_X, G_CB_Y)
CAdd(FP,G_CB_X,4032-(9*32))
CAdd(FP,G_CB_Y,864)
G_CB_TScanEff({CD(CRCDT2,5,AtLeast)}, {CSMakeLine(1, 32, 90, 9, 0)}, {4032-(9*32),864}, 998, nil,{LMTable="MAX",RotateTable="Main"},nil,FP)
NegRot = CreateVar(FP)
CNeg(FP,NegRot,G_CB_RotateV)
G_CB_TScanEff({CD(CRCDT2,5,AtLeast)}, {CSMakeLine(1, 64, 90, 4, 0)}, nil, 429, nil,{LMTable="MAX",RotateTable=NegRot},nil,FP)

TriggerX(FP, {CD(CRCDT,10,AtLeast)}, {SetCD(CRCDT,0)},{preserved})
TriggerX(FP, {CD(CRCDT2,5,AtLeast)}, {SetCD(CRCDT2,0)},{preserved})
CIfEnd()

CIf(FP,{CD(CRCDANY,40500 // 0x1D,AtLeast)})


G_CB_TScanEff({CD(CRCDANY,40500 // 0x1D,AtLeast),CD(CRCDMode,0)}, {CSMakeCircle(6, 192, 0, PlotSizeCalc(6, 13), 0)}, {4032-(9*32),864}, 60, 1,{RepeatType=44},nil,FP)
G_CB_TScanEff({CD(CRCDANY,40500 // 0x1D,AtLeast),CD(CRCDMode,1)}, {CSMakeCircle(6, 192, 0, PlotSizeCalc(6, 13), 0)}, {448,3888}, 60, 1,{RepeatType=44},nil,FP)

CMov(FP,0x6509B0,19025+25)
CFor(FP, 19025+19, 19025+(1700*84)+19,84)
CI=CForVariable()
CIf(FP,{{
	TTOR({DeathsX(CurrentPlayer, Exactly, 20, 0, 0xFF),DeathsX(CurrentPlayer, Exactly, 0, 0, 0xFF)}),
	TDeathsX(_Add(CI,55-19), Exactly, 0x04000000, 0, 0x04000000),
	TDeathsX(CI, AtLeast, 1*256, 0, 0xFF00)}})
	f_SaveCp()
	f_Read(FP,_Add(CI,6),RepHeroIndex,nil,0xFF,1)
	f_Read(FP,CI,PlayerV,nil,0xFF,1)
	f_LoadCp()
	TriggerX(FP, {CV(PlayerV,0),CV(RepHeroIndex,0)}, {AddV(P1MValue,1)}, {preserved})
	CDoActions(FP, {
		TSetMemory(_Add(_Mul(RepHeroIndex,12),PlayerV),Add,1),
		TSetDeathsX(_Add(CI,55-19), SetTo, 0, 0, 0x04000000),
		TSetDeathsX(CI, SetTo, 0, 0, 0xFF00),})
		


CIfEnd()
CAdd(FP,0x6509B0,84)
CForEnd()
CMov(FP,0x6509B0,FP)

CIfEnd()

TriggerX(FP,{CD(CRCDANY,40500 // 0x1D,AtLeast)},{
	SetInvincibility(Disable, "Protoss Temple", P8, "Anywhere");
	Order("Any unit", P8, "Anywhere", Patrol, "CD231");})



CIfEnd()




ICD1 = CIf_GunTrig(P8, "Infested Command Center", "ICD",(21500//0x1D)+2,8);

ICD1T = CreateCcode()
HCCC = CSMakeGraphT({12,12},"HyperCycloidC",0,0,1.4,1.4,256) 
HCC0 = CS_Rotate(HCCC,180)
HCC = CS_RemoveStack(HCC0,15,0) -------하트
HCCR = CS_RatioXY(HCC, 7, 7)
ICDHeart = CS_FillPathXY(HCCR, 1, 96, 96, 0)
ICDHeartX = CS_OverlapX(HCCR,ICDHeart)
ActT = {}
for i = 2, #HCCR do
	if i~= #HCCR then
		table.insert(ActT,SetMemory(0x58DC60+(20*123),SetTo,2048+HCCR[i][1]-64))
		table.insert(ActT,SetMemory(0x58DC64+(20*123),SetTo,2048+HCCR[i][2]-64))
		table.insert(ActT,SetMemory(0x58DC68+(20*123),SetTo,2048+HCCR[i][1]+64))
		table.insert(ActT,SetMemory(0x58DC6C+(20*123),SetTo,2048+HCCR[i][2]+64))
		
		table.insert(ActT,SetMemory(0x58DC60+(20*125),SetTo,2048+HCCR[i+1][1]-64))
		table.insert(ActT,SetMemory(0x58DC64+(20*125),SetTo,2048+HCCR[i+1][2]-64))
		table.insert(ActT,SetMemory(0x58DC68+(20*125),SetTo,2048+HCCR[i+1][1]+64))
		table.insert(ActT,SetMemory(0x58DC6C+(20*125),SetTo,2048+HCCR[i+1][2]+64))

	else
		table.insert(ActT,SetMemory(0x58DC60+(20*123),SetTo,2048+HCCR[i][1]-64))
		table.insert(ActT,SetMemory(0x58DC64+(20*123),SetTo,2048+HCCR[i][2]-64))
		table.insert(ActT,SetMemory(0x58DC68+(20*123),SetTo,2048+HCCR[i][1]+64))
		table.insert(ActT,SetMemory(0x58DC6C+(20*123),SetTo,2048+HCCR[i][2]+64))
		
		table.insert(ActT,SetMemory(0x58DC60+(20*125),SetTo,2048+HCCR[2][1]-64))
		table.insert(ActT,SetMemory(0x58DC64+(20*125),SetTo,2048+HCCR[2][2]-64))
		table.insert(ActT,SetMemory(0x58DC68+(20*125),SetTo,2048+HCCR[2][1]+64))
		table.insert(ActT,SetMemory(0x58DC6C+(20*125),SetTo,2048+HCCR[2][2]+64))
	end
	
	table.insert(ActT,{Order("Tom Kazansky (Wraith)", P6, 124, Move, 126)})
end


G_CB_TSetSpawn({},{"Tom Kazansky (Wraith)"},ICDHeartX,P6,{2048,2048},1,{LMTable=6,RepeatType = "Nothing"})
DoActionsX(FP, {AddCD(ICD1T,1)})

G_CB_TScanEff({CD(ICD1T,15,AtLeast),CD(ICD1,10800//0x1D,AtLeast),CD(ICD1,21500//0x1D,AtMost)}, {HCCR}, {2048,2048}, 334,nil,nil,nil,FP)
TriggerX(FP, {CD(ICD1T,15,AtLeast)}, {SetCD(ICD1T,0)}, {preserved})
TriggerX(FP, {CD(ICD1,10800//0x1D)}, {SetCp(P6),RunAIScriptAt(JYD, 64)})
Trigger2X(FP, {CD(ICD1,10800//0x1D,AtLeast),CD(ICD1,21500//0x1D,AtMost)}, ActT,{preserved})
TriggerX(FP, {CD(ICD1,(21500//0x1D)+1)}, {GiveUnits(All, "Tom Kazansky (Wraith)", P6, 64, P8),SetCp(P8),RunAIScriptAt(JYD, 64)})

CIfEnd()






CD77 = CIf_GunTrig(P8, "Warp Gate", "CD77",(21500//0x1D)+2,27);

ICD2T = CreateCcode()

ICD2Star = CS_SortA(CSMakeStar(5,135,128,180,CS_Level("Star",5,13),CS_Level("Star",5,12)) , 0)
--CS_PrintBMPGraph(ICD2Star,nil,{{-10},{10}},{{-5},{5}},1,100,25,{0x00FFC0,0x80FFE0,0xC4FFF0},3)

ICD2StarFill = CS_FillPathXY(ICD2Star, 1, 96, 96, 0)
ICD2StarFillX = CS_OverlapX(ICD2Star,ICD2StarFill)
--PushErrorMsg(ICD2StarFillX[1])
ActT = {}
for i = 2, #ICD2Star do
	if i~= #ICD2Star then
		table.insert(ActT,SetMemory(0x58DC60+(20*123),SetTo,2048+ICD2Star[i][1]-48))
		table.insert(ActT,SetMemory(0x58DC64+(20*123),SetTo,2048+ICD2Star[i][2]-48))
		table.insert(ActT,SetMemory(0x58DC68+(20*123),SetTo,2048+ICD2Star[i][1]+48))
		table.insert(ActT,SetMemory(0x58DC6C+(20*123),SetTo,2048+ICD2Star[i][2]+48))
		
		table.insert(ActT,SetMemory(0x58DC60+(20*125),SetTo,2048+ICD2Star[i+1][1]-48))
		table.insert(ActT,SetMemory(0x58DC64+(20*125),SetTo,2048+ICD2Star[i+1][2]-48))
		table.insert(ActT,SetMemory(0x58DC68+(20*125),SetTo,2048+ICD2Star[i+1][1]+48))
		table.insert(ActT,SetMemory(0x58DC6C+(20*125),SetTo,2048+ICD2Star[i+1][2]+48))

	else
		table.insert(ActT,SetMemory(0x58DC60+(20*123),SetTo,2048+ICD2Star[i][1]-48))
		table.insert(ActT,SetMemory(0x58DC64+(20*123),SetTo,2048+ICD2Star[i][2]-48))
		table.insert(ActT,SetMemory(0x58DC68+(20*123),SetTo,2048+ICD2Star[i][1]+48))
		table.insert(ActT,SetMemory(0x58DC6C+(20*123),SetTo,2048+ICD2Star[i][2]+48))
		
		table.insert(ActT,SetMemory(0x58DC60+(20*125),SetTo,2048+ICD2Star[2][1]-48))
		table.insert(ActT,SetMemory(0x58DC64+(20*125),SetTo,2048+ICD2Star[2][2]-48))
		table.insert(ActT,SetMemory(0x58DC68+(20*125),SetTo,2048+ICD2Star[2][1]+48))
		table.insert(ActT,SetMemory(0x58DC6C+(20*125),SetTo,2048+ICD2Star[2][2]+48))
	end
	
	table.insert(ActT,{Order("Artanis (Scout)", P6, 124, Move, 126)})
end


G_CB_TSetSpawn({},{"Artanis (Scout)"},ICD2StarFillX,P6,{2048,2048},1,{LMTable=6,RepeatType = "Nothing"})
DoActionsX(FP, {AddCD(ICD2T,1)})

G_CB_TScanEff({CD(ICD2T,15,AtLeast),CD(CD77,10800//0x1D,AtLeast),CD(CD77,21500//0x1D,AtMost)}, {ICD2Star}, {2048,2048}, 215,nil,nil,nil,FP)
TriggerX(FP, {CD(ICD2T,15,AtLeast)}, {SetCD(ICD2T,0)}, {preserved})
TriggerX(FP, {CD(CD77,10800//0x1D)}, {SetCp(P6),RunAIScriptAt(JYD, 64)})
Trigger2X(FP, {CD(CD77,10800//0x1D,AtLeast),CD(CD77,21500//0x1D,AtMost)}, ActT,{preserved})
TriggerX(FP, {CD(CD77,(21500//0x1D)+1)}, {GiveUnits(All, "Artanis (Scout)", P6, 64, P8),SetCp(P8),RunAIScriptAt(JYD, 64)})

CIfEnd()


CD219 = CIf_GunTrig(P7, "Ion Cannon", "CD219",(6000//0x1D)+2,6);

CD219Sh_1_1 = CSMakeCircle(20, 128, 0, 21, 1)
CD219Sh_1_2 = CSMakeCircle(20, 128+16, 0, 21, 1)
CD219Sh_1_3 = CSMakeCircle(20, 128+32, 0, 21, 1)
CD219Sh_1_4 = CSMakeCircle(20, 128+48, 0, 21, 1)
CD219Sh_2_1 = CSMakeCircle(20, 128+64, 0, 21, 1)
CD219Sh_2_2 = CSMakeCircle(20, 128+72, 0, 21, 1)
CD219Sh_2_3 = CSMakeCircle(20, 128+84, 0, 21, 1)
CD219Sh_2_4 = CSMakeCircle(20, 128+96, 0, 21, 1)
G_CB_TSetSpawn({CD(GunTrigGCcode,0 // 0x1D,AtLeast)},{"Kukulza (Mutalisk)"},CD219Sh_1_1,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,370 // 0x1D,AtLeast)},{"Kukulza (Mutalisk)"},CD219Sh_1_2,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,740 // 0x1D,AtLeast)},{"Kukulza (Guardian)"},CD219Sh_1_3,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,1100 // 0x1D,AtLeast)},{"Kukulza (Guardian)"},CD219Sh_1_4,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,1480 // 0x1D,AtLeast)},{"Artanis (Scout)"},CD219Sh_2_1,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,1850 // 0x1D,AtLeast)},{"Artanis (Scout)"},CD219Sh_2_2,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,2220 // 0x1D,AtLeast)},{"Tom Kazansky (Wraith)"},CD219Sh_2_3,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,2590 // 0x1D,AtLeast)},{"Tom Kazansky (Wraith)"},CD219Sh_2_4,P8,GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
CD219Sh_3 = CSMakePolygon(6, 64, 90, PlotSizeCalc(6, 3), PlotSizeCalc(6, 2))
G_CB_TSetSpawn({CD(GunTrigGCcode,2960 // 0x1D,AtLeast)},{84,"Danimoth (Arbiter)","Tassadar/Zeratul (Archon)"},CD219Sh_3,{P6,P8,P8},"CD50",1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,3330 // 0x1D,AtLeast)},{84,"Danimoth (Arbiter)","Tassadar/Zeratul (Archon)"},CD219Sh_3,{P6,P8,P8},"CD51",1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,3700 // 0x1D,AtLeast)},{84,"Danimoth (Arbiter)","Tassadar/Zeratul (Archon)"},CD219Sh_3,{P6,P8,P8},"CD53",1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,4070 // 0x1D,AtLeast)},{84,"Danimoth (Arbiter)","Tassadar/Zeratul (Archon)"},CD219Sh_3,{P6,P8,P8},"CP1",1,{LMTable="MAX",Order={Patrol,"CD219"}})

CD219Sh_4 = CS_RatioXY(CSMakePolygon(4, 96, 0, PlotSizeCalc(4, 5), PlotSizeCalc(4, 4)), 1, 0.5)
CD219Sh_5 = CS_RatioXY(CSMakePolygon(4, 96, 0, PlotSizeCalc(4, 4), PlotSizeCalc(4, 3)), 1, 0.5)
CD219Sh_6 = CS_RatioXY(CSMakePolygon(4, 96, 0, PlotSizeCalc(4, 3), PlotSizeCalc(4, 2)), 1, 0.5)
CD219Sh_7 = CS_RatioXY(CSMakePolygon(4, 128, 0, PlotSizeCalc(4, 3), PlotSizeCalc(4, 2)), 1, 0.5)
G_CB_TSetSpawn({CD(GunTrigGCcode,4440 // 0x1D,AtLeast)},{84,"Edmund Duke (Siege Mode)"},CD219Sh_4,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,4810 // 0x1D,AtLeast)},{84,"Warbringer (Reaver)"},CD219Sh_5,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,5180 // 0x1D,AtLeast)},{84,"Gantrithor (Carrier)"},CD219Sh_6,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,5550 // 0x1D,AtLeast)},{84,"Norad II (Battlecruiser)"},CD219Sh_7,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,5550 // 0x1D,AtLeast)},{84,"Artanis (Scout)"},CD219Sh_4,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,5550 // 0x1D,AtLeast)},{84,"Artanis (Scout)"},CD219Sh_5,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,5550 // 0x1D,AtLeast)},{84,"Artanis (Scout)"},CD219Sh_6,{P6,P8},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD219"}})



TriggerX(FP,{CD(GunTrigGCcode,4440 // 0x1D,AtLeast)},{CreateUnit(10, "Edmund Duke (Siege Mode)", "CD187", P8)})
TriggerX(FP,{CD(GunTrigGCcode,4810 // 0x1D,AtLeast)},{CreateUnit(10, "Edmund Duke (Siege Mode)", "CD187", P8)})
TriggerX(FP,{CD(GunTrigGCcode,5180 // 0x1D,AtLeast)},{CreateUnit(10, "Edmund Duke (Siege Mode)", "CD187", P8)})
TriggerX(FP,{CD(GunTrigGCcode,5550 // 0x1D,AtLeast)},{CreateUnit(10, "Edmund Duke (Siege Mode)", "CD187", P8)})


CIfEnd()

CD68 = CIf_GunTrig(P8, "Protoss Stargate", "CD68", 40000//0x1D, 10)
CD68Sh_1_1 = CSMakeCircle(6, 64, 0, PlotSizeCalc(6, 2), PlotSizeCalc(6, 1))
CD68Sh_1_2 = CSMakeCircle(6, 64, 0, PlotSizeCalc(6, 3), PlotSizeCalc(6, 2))
CD68Sh_1_3 = CSMakeCircle(6, 64, 0, PlotSizeCalc(6, 4), PlotSizeCalc(6, 3))
CD68Sh_2 = CS_SortA(CSMakeCircle(3, 48, 0, PlotSizeCalc(3, 4), PlotSizeCalc(3, 3)), 0)
CD68Sh_3 = CS_SortA(CSMakeCircle(9, 64, 0, PlotSizeCalc(9, 5), PlotSizeCalc(9, 2)), 1)

CD68Sh_2_1 = CS_SortA(CSMakeCircle(6, 107, 0, PlotSizeCalc(6, 3), PlotSizeCalc(6, 2)), 0)
CD68Sh_4 = CSMakeCircle(6, 64, 0, PlotSizeCalc(6, 4), 0)
function Z2Eff1(Time)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(0//0x1D),AtLeast)}, {CD68Sh_1_1}, GunTrigGLoc, 334,1,{LMTable="MAX"},17)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(350//0x1D),AtLeast)}, {CD68Sh_1_2}, GunTrigGLoc, 334,1,{LMTable="MAX"},16)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(700//0x1D),AtLeast)}, {CD68Sh_1_3}, GunTrigGLoc, 334,1,{LMTable="MAX"},9)
end
function Z2Eff2(Time)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(0//0x1D),AtLeast)}, {CD68Sh_1_1}, GunTrigGLoc, 60,1,{LMTable="MAX"},17)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(350//0x1D),AtLeast)}, {CD68Sh_1_2}, GunTrigGLoc, 60,1,{LMTable="MAX"},16)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(700//0x1D),AtLeast)}, {CD68Sh_1_3}, GunTrigGLoc, 60,1,{LMTable="MAX"},9)
end
--PushErrorMsg(CD68Sh_3[1])
function Z2Eff3(Time)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+(0//0x1D),AtLeast)}, {CD68Sh_2}, GunTrigGLoc, 215,1,{LMTable=4})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time//0x1D)+(0//0x1D),AtLeast)},{"Norad II (Battlecruiser)"},CD68Sh_2,{P8},GunTrigGLoc,1,{LMTable=4,RepeatType = "Patrol_Center"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*1)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*2)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*3)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*4)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*5)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*6)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D)+((460*7)//0x1D),AtLeast)}, {CD68Sh_3}, GunTrigGLoc, 215,1,{LMTable=4})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time//0x1D)+((460*7)//0x1D),AtLeast)},{"Hyperion (Battlecruiser)"},CD68Sh_3,{P8},GunTrigGLoc,1,{LMTable=7,RepeatType = "Patrol_Center"})
end
for i = 0, 7 do
	Z2Eff1(930+(930*i))
end
for i = 0, 5 do
	Z2Eff2(8430+(930*i))
end
Z2Eff3(930)
Z2Eff3(4680)
Z2Eff3(8430)

G_CB_TScanEff({CD(GunTrigGCcode,(12180//0x1D)+(0//0x1D),AtLeast)}, {CD68Sh_2}, GunTrigGLoc, 215,1,{LMTable=4})
G_CB_TScanEff({CD(GunTrigGCcode,(12180//0x1D)+((460*1)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(12180//0x1D)+((460*2)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(12180//0x1D)+((460*3)//0x1D),AtLeast)}, {CD68Sh_2_1}, GunTrigGLoc, 214,1,{LMTable="MAX"})


G_CB_TSetSpawn({CD(GunTrigGCcode,(14060//0x1D),AtLeast)},{"Mojo (Scout)",84},CD68Sh_1_3,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",RepeatType = "Patrol_Center"})
G_CB_TSetSpawn({CD(GunTrigGCcode,(14530//0x1D),AtLeast)},{"Gantrithor (Carrier)",84},CD68Sh_1_2,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",RepeatType = "Patrol_Center"})
G_CB_TSetSpawn({CD(GunTrigGCcode,(15000//0x1D),AtLeast)},{"Norad II (Battlecruiser)",84},CD68Sh_1_1,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",RepeatType = "Patrol_Center"})
G_CB_TSetSpawn({CD(GunTrigGCcode,(15460//0x1D),AtLeast)},{"Hyperion (Battlecruiser)","Artanis (Scout)",30,84},CD68Sh_4,{P8,P8,P8,P6},GunTrigGLoc,1,{LMTable="MAX",RepeatType = "Patrol_Center"})

TriggerX(FP,{CD(GunTrigGCcode,(15460//0x1D),AtMost)},{Order("Hyperion (Battlecruiser)", Force2, "CD68-2", Move, "CD68")},{preserved})

CIfEnd()



ICD2 = CIf_GunTrig(P7, "Infested Command Center", "ICD2",1001,9);

ICD2Sh_1 = CS_FillPathHX2({12  ,{1792, 1280},{2048, 1152},{1952, 1088},{1728, 1184},{3232, 960},{2624, 672},{2624, 288},{2976, 288},{2976, 512},{3232, 672},{3232, 768},{3456, 896}} ,1,96,64,1,0,45,5)
ICD2Sh_2 = CS_FillPathHX2({6   ,{3296, 672},{3008, 480},{3008, 256},{3168, 320},{3200, 448},{3424, 576}},1,32,48,1,0,45,5)
ICD2Sh_3 = CS_FillPathHX2({10  ,{3264, 256},{3264, 448},{3424, 544},{3840, 544},{3840, 256},{3744, 288},{3648, 192},{3648, 32},{3328, 32},{3328, 224}} ,1,64,48,1,0,45,5)

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Edmund Duke (Siege Mode)"},ICD2Sh_1,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,250,AtLeast)},{"Edmund Duke (Siege Mode)"},ICD2Sh_2,P8,{0,0},1,{LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,500,AtLeast)},{"Edmund Duke (Siege Mode)"},ICD2Sh_3,P8,{0,0},1,{LMTable="MAX"})

TriggerX(FP,{CD(GunTrigGCcode,500,AtLeast),CD(GunTrigGCcode,1000,AtMost)},{CreateUnit(1, "Mojo (Scout)","ICD2",P6),Order("Mojo (Scout)", P6, "ICD2", Move, "ICD2")},{preserved})
TriggerX(FP,{CD(GunTrigGCcode,1001,AtLeast)},{GiveUnits(All, "Mojo (Scout)", P6, "ICD2", P8),SetCp(P8),RunAIScriptAt(JYD, "ICD2")},{preserved})


CIfEnd()


CD218Sh_1 = CS_OverlapX(
	CSMakeLine(1, 64, -30, 3, 0),
	CSMakeLine(1, 64, -15, 3, 0),
	CSMakeLine(1, 64, 0, 3, 0),
	CSMakeLine(1, 64, 15, 3, 0),
	CSMakeLine(1, 64, 30, 3, 0)
)
CD218Sh_2 = CSMakeCircle(6, 240, 0, 7, 1)
CD218Sh_T = {}
for i = 0, 15 do
	table.insert(CD218Sh_T, CS_RatioXY(CS_Rotate(CD218Sh_2,i*16),1-(0.06*i),1-(0.06*i)))

end
CD218Sh_2 = CS_OverlapX(table.unpack(CD218Sh_T))
function DDINGEff(Loc1,Loc2)
	G_CB_TScanEff({CD(GunTrigGCcode,(460//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 434,1,{LMTable="MAX",RotateTable = 45})
	G_CB_TScanEff({CD(GunTrigGCcode,(460//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 434,1,{LMTable="MAX",RotateTable = 45})
	
	G_CB_TScanEff({CD(GunTrigGCcode,(1400//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 433,1,{LMTable="MAX",RotateTable = 45+90})
	G_CB_TScanEff({CD(GunTrigGCcode,(1400//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 433,1,{LMTable="MAX",RotateTable = 45+90})
	
	G_CB_TScanEff({CD(GunTrigGCcode,(2340//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 432,1,{LMTable="MAX",RotateTable = 45+180})
	G_CB_TScanEff({CD(GunTrigGCcode,(2340//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 432,1,{LMTable="MAX",RotateTable = 45+180})
	
	G_CB_TScanEff({CD(GunTrigGCcode,(3280//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 431,1,{LMTable="MAX",RotateTable = 45+270})
	G_CB_TScanEff({CD(GunTrigGCcode,(3280//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 431,1,{LMTable="MAX",RotateTable = 45+270})
	
	G_CB_TScanEff({CD(GunTrigGCcode,(4210//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 430,1,{LMTable="MAX",RotateTable = 45+180})
	G_CB_TScanEff({CD(GunTrigGCcode,(4210//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 430,1,{LMTable="MAX",RotateTable = 45+180})
	
	G_CB_TScanEff({CD(GunTrigGCcode,(5150//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 430,1,{LMTable="MAX",RotateTable = 45+90})
	G_CB_TScanEff({CD(GunTrigGCcode,(5150//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 430,1,{LMTable="MAX",RotateTable = 45+90})
	
	G_CB_TScanEff({CD(GunTrigGCcode,(6090//0x1D),AtLeast)}, {CD218Sh_1}, Loc1, 430,1,{LMTable="MAX",RotateTable = 45+0})
	G_CB_TScanEff({CD(GunTrigGCcode,(6090//0x1D),AtLeast)}, {CD218Sh_1}, Loc2, 430,1,{LMTable="MAX",RotateTable = 45+0})
	
	end
function DDINGEff2(Time,Loc1,Loc2)
	
	
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D),AtLeast)}, {CD218Sh_2}, Loc1, 391,1,{LMTable=6},10)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time//0x1D),AtLeast)}, {CD218Sh_2}, Loc2, 391,1,{LMTable=6},10)
end
CD218Sh_3 = CSMakeStar(5,135,128,180,CS_Level("Star",5,2),0)
function DDINGSpanwnSet(Time,Loc1,Loc2,UnitTable)
	DDINGEff2(Time-940,Loc1,Loc2)
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time) // 0x1D,AtLeast)},{UnitTable[1]},CD218Sh_3,P8,Loc1,1,{LMTable="MAX",Order={Patrol,Loc2}})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time) // 0x1D,AtLeast)},{UnitTable[2]},CD218Sh_3,P8,Loc1,1,{LMTable="MAX",Order={Attack,Loc2}})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time) // 0x1D,AtLeast)},{UnitTable[3]},CD218Sh_3,P8,Loc2,1,{LMTable="MAX",Order={Patrol,Loc1}})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time) // 0x1D,AtLeast)},{UnitTable[4]},CD218Sh_3,P8,Loc2,1,{LMTable="MAX",Order={Attack,Loc1}})
end

CD218 = CIf_GunTrig(P8, "Power Generator", "CD218",(26250//0x1D)+1,11);

DDINGEff("CD218","CD217")

DDINGSpanwnSet(7500,"CD218","CD217",{"Fenix (Dragoon)","Mojo (Scout)","Tassadar (Templar)","Danimoth (Arbiter)"})
DDINGSpanwnSet(11250,"CD218","CD217",{"Zeratul (Dark Templar)","Gantrithor (Carrier)","Gui Montag (Firebat)","Hyperion (Battlecruiser)"})
DDINGSpanwnSet(15000,"CD218","CD217",{"Jim Raynor (Vulture)","Artanis (Scout)","Aldaris (Templar)","Raszagal (Dark Templar)"})
DDINGSpanwnSet(18750,"CD218","CD217",{"Fenix (Dragoon)","Mojo (Scout)","Tassadar (Templar)","Danimoth (Arbiter)"})
DDINGSpanwnSet(22500,"CD218","CD217",{"Zeratul (Dark Templar)","Gantrithor (Carrier)","Gui Montag (Firebat)","Hyperion (Battlecruiser)"})
DDINGSpanwnSet(26250,"CD218","CD217",{"Jim Raynor (Vulture)","Artanis (Scout)","Aldaris (Templar)","Raszagal (Dark Templar)"})





CIfEnd()
CD216 = CIf_GunTrig(P8, "Power Generator", "CD216",(26250//0x1D)+1,11);

DDINGEff("CD216","CD215")
DDINGSpanwnSet(7500,"CD216","CD215",{"Jim Raynor (Vulture)","Artanis (Scout)","Aldaris (Templar)","Raszagal (Dark Templar)"})
DDINGSpanwnSet(11250,"CD216","CD215",{"Fenix (Dragoon)","Mojo (Scout)","Tassadar (Templar)","Danimoth (Arbiter)"})
DDINGSpanwnSet(15000,"CD216","CD215",{"Zeratul (Dark Templar)","Gantrithor (Carrier)","Gui Montag (Firebat)","Hyperion (Battlecruiser)"})
DDINGSpanwnSet(18750,"CD216","CD215",{"Jim Raynor (Vulture)","Artanis (Scout)","Aldaris (Templar)","Raszagal (Dark Templar)"})
DDINGSpanwnSet(22500,"CD216","CD215",{"Fenix (Dragoon)","Mojo (Scout)","Tassadar (Templar)","Danimoth (Arbiter)"})
DDINGSpanwnSet(26250,"CD216","CD215",{"Zeratul (Dark Templar)","Gantrithor (Carrier)","Gui Montag (Firebat)","Hyperion (Battlecruiser)"})

CIfEnd()

CD205 = CIf_GunTrig(P8, "Psi Disrupter", "CD205",30000//0x1D,12);
Req_Rot = CreateVar(FP)

G_CB_TScanEff({CD(CD205,1,AtLeast),CD(CD205,14540//0x1D,AtMost)}, {CSMakeLine(4, 128, 0, 5, 1)}, "CD205", 391, nil,{LMTable="MAX",RotateTable=Req_Rot})
CAdd(FP,Req_Rot,3)

for i = 0,31 do
	TriggerX(FP,{CD(CD205,(10180//0x1D)+((i*130)//0x1D),AtLeast)},{SetMemory(0x657A9C,Subtract,1)})
	
end

Trigger2X(FP, {CD(CD205,(14360//0x1D),AtLeast)}, {RotatePlayer({CenterView("CD205")}, HumanPlayers, FP)})
TriggerX(FP,{CD(CD205,(14360//0x1D),AtLeast)},{SetMemory(0x657A9C,SetTo,31)})
TriggerX(FP,{CD(CD205,(14720//0x1D),AtLeast)},{SetMemory(0x657A9C,SetTo,15)})
TriggerX(FP,{CD(CD205,(15270//0x1D),AtLeast)},{SetMemory(0x657A9C,SetTo,31)})
Req_Eff = CSMakeCircle(6, 64, 0, PlotSizeCalc(6,5), 0)
G_CB_TScanEff({CD(GunTrigGCcode,(14360//0x1D),AtLeast)}, {Req_Eff}, GunTrigGLoc, 334,1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(14720//0x1D),AtLeast)}, {Req_Eff}, GunTrigGLoc, 215,1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(15270//0x1D),AtLeast)}, {Req_Eff}, GunTrigGLoc, 60,1,{LMTable="MAX"})




I1a = CS_OverlapX(CS_MoveXY(CSMakeLine(2,40,0,10,0),-10,0),CS_MoveXY(CSMakeLine(2,40,0,10,0),10,0))
I1b = CS_MoveXY(CSMakeLine(2,20,90,13,0),0,-220)
I1c = CS_MoveXY(CSMakeLine(2,20,90,13,0),0,200)

I2a = CS_OverlapX(CS_MoveXY(CSMakeLine(2,40,0,10,0),-50,0),CS_MoveXY(CSMakeLine(2,40,0,10,0),50,0))
I2b = CS_MoveXY(CSMakeLine(2,25,90,13,0),0,-220)
I2c = CS_MoveXY(CSMakeLine(2,25,90,13,0),0,200)

I3a = CS_OverlapX(CS_MoveXY(CSMakeLine(2,40,0,10,0),-90,0),CSMakeLine(2,40,0,10,0),CS_MoveXY(CSMakeLine(2,40,0,10,0),90,0))
I3b = CS_MoveXY(CSMakeLine(2,30,90,13,0),0,-220)
I3c = CS_MoveXY(CSMakeLine(2,30,90,13,0),0,200)

I4a = CS_MoveXY(CSMakeLine(2,40,0,10,0),0,0)
I4b = CS_MoveXY(CSMakeLine(2,20,90,7,0),0,-220)
I4c = CS_MoveXY(CSMakeLine(2,20,90,7,0),0,200)
I4 = CS_MoveXY(CS_OverlapX(I4a,I4b,I4c),-220,0)
I4A = CS_MoveXY(CS_OverlapX(CSMakeLine(1,30,15,15,1),CSMakeLine(1,30,-15,15,0)),50,200)




Req_RD = CS_CropXY(CSMakeCircle(6, 64, 0, PlotSizeCalc(6,5), 0), {0,2048}, {0,2048})--오른쪽아래
Req_LU = CS_CropXY(CSMakeCircle(6, 64, 0, PlotSizeCalc(6,5), 0), {-2048,0}, {-2048,0})--왼쪽위
Req_RU = CS_CropXY(CSMakeCircle(6, 64, 0, PlotSizeCalc(6,5), 0), {-2048,0}, {0,2048})--오른쪽위
Req_LD = CS_CropXY(CSMakeCircle(6, 64, 0, PlotSizeCalc(6,5), 0), {0,2048}, {-2048,0})--왼쪽아래
--CD201
--CD202
--CD203
--CD204
--오른쪽위
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*0))//0x1D),AtLeast)},{"Sarah Kerrigan (Ghost)",84},Req_RU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD203"}})
--왼쪽위
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*1))//0x1D),AtLeast)},{"Alan Schezar (Goliath)",84},Req_LU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD204"}})
--아래
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*2))//0x1D),AtLeast)},{"Tom Kazansky (Wraith)",84},Req_RD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD201"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*2))//0x1D),AtLeast)},{"Tom Kazansky (Wraith)",84},Req_LD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD202"}})
--위
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*3))//0x1D),AtLeast)},{"Hyperion (Battlecruiser)",84},Req_LU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD204"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*3))//0x1D),AtLeast)},{"Hyperion (Battlecruiser)",84},Req_RU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD203"}})
--오른
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*4))//0x1D),AtLeast)},{"Jim Raynor (Vulture)",84},Req_RU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD203"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*4))//0x1D),AtLeast)},{"Tom Kazansky (Wraith)",84},Req_RD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD201"}})
--왼
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*5))//0x1D),AtLeast)},{"Alan Schezar (Goliath)",84},Req_LD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD202"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*5))//0x1D),AtLeast)},{"Hyperion (Battlecruiser)",84},Req_LU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD204"}})
--오른
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*6))//0x1D),AtLeast)},{"Edmund Duke (Siege Tank)",84},Req_RU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD203"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*6))//0x1D),AtLeast)},{"Tom Kazansky (Wraith)",84},Req_RD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD201"}})
--위
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*7))//0x1D),AtLeast)},{"Sarah Kerrigan (Ghost)",84},Req_RU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD203"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*7))//0x1D),AtLeast)},{"Hyperion (Battlecruiser)",84},Req_LU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD204"}})

--1
CNA1 = CS_OverlapX(I1a,I1b,I1c) -- 1
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*8))//0x1D),AtLeast)},{"Kukulza (Mutalisk)",84},CNA1,{P8,P6},"CD201",1,{LMTable="MAX",Order={Attack,"CD205"}})

--2
CNA2 = CS_OverlapX(I2a,I2b,I2c) -- 2
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*9))//0x1D),AtLeast)},{"Kukulza (Mutalisk)",84},CNA2,{P8,P6},"CD202",1,{LMTable="MAX",Order={Attack,"CD205"}})

--3
CNA3 = CS_OverlapX(I3a,I3b,I3c) -- 3
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*10))//0x1D),AtLeast)},{"Kukulza (Mutalisk)",84},CNA3,{P8,P6},"CD203",1,{LMTable="MAX",Order={Attack,"CD205"}})

--4
CNA4 = CS_MoveXY(CS_OverlapX(I4A,I4),100,0) -- 4
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*11))//0x1D),AtLeast)},{"Kukulza (Mutalisk)",84},CNA4,{P8,P6},"CD204",1,{LMTable="MAX",Order={Attack,"CD205"}})

--ㅈㅅ
w_sh = {23  ,{1920, 3680},{1984, 3680},{2048, 3680},{2112, 3680},{2176, 3680},{2240, 3680},{2304, 3680},{2368, 3680},{2144, 3712},{2112, 3744},{2080, 3776},{2048, 3808},{2016, 3840},{1984, 3872},{1952, 3904},{1920, 3936},{2176, 3744},{2208, 3776},{2240, 3808},{2272, 3840},{2304, 3872},{2336, 3904},{2368, 3936}}
t_sh = {19  ,{2144, 3712},{2112, 3744},{2080, 3776},{2048, 3808},{2016, 3840},{1984, 3872},{1952, 3904},{1920, 3936},{1888, 3968},{1856, 4000},{2176, 3744},{2208, 3776},{2240, 3808},{2272, 3840},{2304, 3872},{2336, 3904},{2368, 3936},{2400, 3968},{2432, 4000}}
w_sh = CS_MoveXY(CS_RatioXY(CS_MoveXY(w_sh,-2160,-3856), 0.5, 1), -32*7, 0)
t_sh = CS_MoveXY(CS_RatioXY(CS_MoveXY(t_sh,-2160,-3856), 0.5, 1), 32*7, 0)
wt_sh = CS_SortX(CS_OverlapX(w_sh,t_sh), 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*12))//0x1D),AtLeast)},{"Kukulza (Guardian)"},w_sh,{P8},GunTrigGLoc,1,{Order={Attack,"CD203"},LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*12))//0x1D),AtLeast)},{84},w_sh,{P6},GunTrigGLoc,1,{Order={Attack,"CD203"},LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*14))//0x1D),AtLeast)},{"Kukulza (Guardian)"},t_sh,{P8},GunTrigGLoc,1,{Order={Attack,"CD203"},LMTable="MAX"})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*14))//0x1D),AtLeast)},{84},t_sh,{P6},GunTrigGLoc,1,{Order={Attack,"CD203"},LMTable="MAX"})

--오른쪽에서 왼쪽으로(2)
RL = CS_SortX(CSMakeStar(4, 180, 64, 0, PlotSizeCalc(4*2, 4),0), 1)
LR = CS_SortX(CSMakeStar(4, 180, 64, 0, PlotSizeCalc(4*2, 4),0), 0)
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*16))//0x1D),AtLeast)},{"Tom Kazansky (Wraith)"},RL,{P8},GunTrigGLoc,1,{Order={Attack,"CD205"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*16))//0x1D),AtLeast)},{84},RL,{P6},GunTrigGLoc,1,{Order={Attack,"CD205"}})
--왼쪽에서 오른쪽으로(2)
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*18))//0x1D),AtLeast)},{"Hyperion (Battlecruiser)"},LR,{P8},GunTrigGLoc,1,{Order={Attack,"CD205"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*18))//0x1D),AtLeast)},{84},LR,{P6},GunTrigGLoc,1,{Order={Attack,"CD205"}})
--오른쪽에서 왼쪽으로(2)
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*20))//0x1D),AtLeast)},{"Artanis (Scout)"},RL,{P8},GunTrigGLoc,1,{Order={Attack,"CD205"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*20))//0x1D),AtLeast)},{84},RL,{P6},GunTrigGLoc,1,{Order={Attack,"CD205"}})
--왼쪽에서 오른쪽으로(2)
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*22))//0x1D),AtLeast)},{"Mojo (Scout)"},LR,{P8},GunTrigGLoc,1,{Order={Attack,"CD205"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*22))//0x1D),AtLeast)},{84},LR,{P6},GunTrigGLoc,1,{Order={Attack,"CD205"}})
--위
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*24))//0x1D),AtLeast)},{"Raszagal (Dark Templar)",84},Req_RU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD203"}})
--G_CB_TSetSpawn({CD(GunTrigGCcode,(14060//0x1D),AtLeast)},{"Raszagal (Dark Templar)",84},Req_LU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Attack,"CD204"}})

--오른아래
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*26))//0x1D),AtLeast)},{"Aldaris (Templar)",84},Req_RD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD201"}})
--
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*28))//0x1D),AtLeast)},{"Zeratul (Dark Templar)",84},Req_LU,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD204"}})
--
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*30))//0x1D),AtLeast)},{"Edmund Duke (Siege Tank)",84},Req_LD,{P8,P6},GunTrigGLoc,1,{LMTable="MAX",Order={Patrol,"CD202"}})
--하트
HCCC = CSMakeGraphT({12,12},"HyperCycloidC",0,0,4.1,4.1,25) 
HCC0 = CS_Rotate(HCCC,180)
HCC = CS_RemoveStack(HCC0,15,0) -------하트
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*32))//0x1D),AtLeast)},{"Norad II (Battlecruiser)",84},HCC,{P8,P6},GunTrigGLoc,1,{SizeTable = 50,LMTable="MAX",Order={Attack,"CD205"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*33))//0x1D),AtLeast)},{"Norad II (Battlecruiser)",84},HCC,{P8,P6},GunTrigGLoc,1,{SizeTable = 100,LMTable="MAX",Order={Attack,"CD205"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,((16000+(362*34))//0x1D),AtLeast)},{"Norad II (Battlecruiser)",84},HCC,{P8,P6},GunTrigGLoc,1,{SizeTable = 150,LMTable="MAX",Order={Attack,"CD205"}})

CIfEnd()


CD63 = CIf_GunTrig(P8, "Xel'Naga Temple", "CD63",20000//0x1D,13);

CD63ShT = {}
for i = 1, 6 do
	CD63ShT[i] = CSMakeStar(4, 180, 64, 0, PlotSizeCalc(4*2, i),PlotSizeCalc(4*2, i-1))
	G_CB_TScanEff({CD(GunTrigGCcode,((0+(150*(i-1)))//0x1D),AtLeast)}, {CD63ShT[i]}, GunTrigGLoc, 4,1,{LMTable="MAX"})

end
CD63Sh_2 = CSMakeStar(4, 180, 64, 0, PlotSizeCalc(4*2, 6),0)
G_CB_TScanEff({CD(GunTrigGCcode,((0+(150*(7-1)))//0x1D),AtLeast)}, {CD63Sh_2}, GunTrigGLoc, 918,1,{LMTable="MAX"})
CD63Sh_3_1 = CSMakePolygon(4, 48, 0, PlotSizeCalc(4, 6), PlotSizeCalc(4, 5))
CD63Sh_3_2 = CSMakePolygon(5, 48, 0, PlotSizeCalc(5, 6), PlotSizeCalc(5, 5))
CD63Sh_3_3 = CSMakePolygon(6, 48, 0, PlotSizeCalc(6, 6), PlotSizeCalc(6, 5))
CD63Sh_3_4 = CSMakePolygon(7, 48, 0, PlotSizeCalc(7, 6), PlotSizeCalc(7, 5))
CD63Sh_4_1 = CSMakePolygon(4, 48, 0, PlotSizeCalc(4, 6-3), PlotSizeCalc(4, 5-3))
CD63Sh_4_2 = CSMakePolygon(5, 48, 0, PlotSizeCalc(5, 6-3), PlotSizeCalc(5, 5-3))
CD63Sh_4_3 = CSMakePolygon(6, 48, 0, PlotSizeCalc(6, 6-3), PlotSizeCalc(6, 5-3))
CD63Sh_4_4 = CSMakePolygon(7, 48, 0, PlotSizeCalc(7, 6-3), PlotSizeCalc(7, 5-3))
CD63LT = {
	"CD18","CD19","CD17","CD54"
}
for i = 0, 3 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1420+(950*i))//0x1D,AtLeast)},{84,"Kukulza (Mutalisk)"},CD63Sh_3_1,{P6,P8},GunTrigGLoc,1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(5230+(950*i))//0x1D,AtLeast)},{84,"Kukulza (Guardian)"},CD63Sh_3_2,{P6,P8},GunTrigGLoc,1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(9040+(950*i))//0x1D,AtLeast)},{84,"Kukulza (Mutalisk)"},CD63Sh_3_3,{P6,P8},GunTrigGLoc,1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(12850+(950*i))//0x1D,AtLeast)},{84,"Kukulza (Guardian)"},CD63Sh_3_4,{P6,P8},GunTrigGLoc,1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1900+(950*i))//0x1D,AtLeast)},{84,"Hyperion (Battlecruiser)"},CD63Sh_4_1,{P6,P8},CD63LT[i+1],1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(5710+(950*i))//0x1D,AtLeast)},{84,"Danimoth (Arbiter)"},CD63Sh_4_2,{P6,P8},CD63LT[i+1],1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(9520+(950*i))//0x1D,AtLeast)},{84,"Gantrithor (Carrier)"},CD63Sh_4_3,{P6,P8},CD63LT[i+1],1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(13330+(950*i))//0x1D,AtLeast)},{84,"Edmund Duke (Siege Mode)"},CD63Sh_4_4,{P6,P8},CD63LT[i+1],1,{LMTable="MAX"})
	
end
CIfEnd()

CD76 = CIf_GunTrig(P8, "Zerg Cerebrate", "CD76",35000//0x1D,14);

function Cos_FuncY(X) return math.sin(X) end
WaveShapeA = CSMakeGraphX({8,8},"Cos_FuncY",0,0,1,nil,15) -- y= math.cos(x)
CD76_Sh = CS_SortX(CS_RatioXY(CS_MoveXY(WaveShapeA, -47, 0), 3, 3),0)
--845
G_CB_TScanEff({CD(GunTrigGCcode,((420+(845*(1-1)))//0x1D),AtLeast)}, {CD76_Sh}, GunTrigGLoc, 58,1,{LMTable=1})
G_CB_TScanEff({CD(GunTrigGCcode,((420+(845*(2-1)))//0x1D),AtLeast)}, {CD76_Sh}, GunTrigGLoc, 60,1,{LMTable=1})
G_CB_TScanEff({CD(GunTrigGCcode,((420+(845*(3-1)))//0x1D),AtLeast)}, {CD76_Sh}, GunTrigGLoc, 332,1,{LMTable=1})
G_CB_TScanEff({CD(GunTrigGCcode,((420+(845*(4-1)))//0x1D),AtLeast)}, {CD76_Sh}, GunTrigGLoc, 318,1,{LMTable=1})

for i = 0, 3 do
	G_CB_TSetSpawn({CD(GunTrigGCcode,(3800+(845*i))//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Mutalisk)"},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(7180+(845*i))//0x1D,AtLeast)},{"Torrasque (Ultralisk)","Kukulza (Guardian)"},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(10560+(845*i))//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Mutalisk)"},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(13940+(845*i))//0x1D,AtLeast)},{"Torrasque (Ultralisk)","Kukulza (Guardian)"},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(17320+(845*i))//0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(20700+(845*i))//0x1D,AtLeast)},{30},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(24080+(845*i))//0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
	G_CB_TSetSpawn({CD(GunTrigGCcode,(27460+(845*i))//0x1D,AtLeast)},{30},CD76_Sh,P8,GunTrigGLoc,1,{LMTable=1})
end


CIfEnd()
ICDC = CIf_GunTrig(P8, "Ion Cannon", "ICD",(55380+5000)//0x1D,15);
ICDC_Sh1 = CSMakeCircle(99, 1024, 0, 100, 1)
ICDC_Sh2 = CSMakeCircle(49, 1024+512, 0, 50, 1)
ICDC_Sh3 = CSMakeCircle(5, 256, 0, 6, 1)
G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {ICDC_Sh1}, "HZ", 391,1)
G_CB_TSetSpawn({CD(GunTrigGCcode,1840//0x1D,AtLeast)},{"Kukulza (Guardian)"},ICDC_Sh1,P8,"HZ",1,{LMTable="MAX"})
for j,k in pairs({"CD43","CD44","CD45","CD46","CD47"}) do
	G_CB_TSetSpawn({CD(GunTrigGCcode,1840//0x1D,AtLeast)},{"Norad II (Battlecruiser)"},ICDC_Sh3,P8,k,1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,9230//0x1D,AtLeast)},{"Norad II (Battlecruiser)"},ICDC_Sh3,P8,k,1,{LMTable="MAX"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,18460//0x1D,AtLeast)},{"Norad II (Battlecruiser)"},ICDC_Sh3,P8,k,1,{LMTable="MAX"})
end

G_CB_TSetSpawn({CD(GunTrigGCcode,9230//0x1D,AtLeast)},{"Kukulza (Guardian)"},ICDC_Sh1,P8,"HZ",1,{LMTable="MAX"})

G_CB_TSetSpawn({CD(GunTrigGCcode,18460//0x1D,AtLeast)},{"Kukulza (Guardian)"},ICDC_Sh1,P8,"HZ",1,{LMTable="MAX"})


G_CB_TScanEff({CD(GunTrigGCcode,(24000//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},10)
G_CB_TSetSpawn({CD(GunTrigGCcode,25840//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD218Sh_2,P8,"ICDX2",1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(31380//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},15)
G_CB_TSetSpawn({CD(GunTrigGCcode,33230//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD218Sh_2,P8,"ICDX2",1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(38760//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},0)
G_CB_TSetSpawn({CD(GunTrigGCcode,40610//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD218Sh_2,P8,"ICDX2",1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(46150//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},13)
G_CB_TSetSpawn({CD(GunTrigGCcode,48000//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD218Sh_2,P8,"ICDX2",1,{LMTable="MAX"})
G_CB_TScanEff({CD(GunTrigGCcode,(51690//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},16)
G_CB_TScanEff({CD(GunTrigGCcode,(52610//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},16)
G_CB_TScanEff({CD(GunTrigGCcode,(53530//0x1D),AtLeast)}, {CD218Sh_2}, "ICDX2", 391,1,{LMTable=6},17)
G_CB_TSetSpawn({CD(GunTrigGCcode,55380//0x1D,AtLeast)},{30},CD218Sh_2,P8,"ICDX2",1,{LMTable="MAX"})
TriggerX(FP,{CD(GunTrigGCcode,0,AtLeast)},{RotatePlayer({RunAIScript("Turn ON Shared Vision for Player 8");}, Force1, FP)})
TriggerX(FP,{CD(GunTrigGCcode,25840//0x1D,AtLeast)},{RotatePlayer({RunAIScript("Turn OFF Shared Vision for Player 8");}, Force1, FP)})



CIfEnd()



CD207_Sh = CSMakeStar(4, 180, 64, 0, PlotSizeCalc(4*2, 2), 0)
function EnvGun(CrLoc,OrderLoc)
	G_CB_TScanEff({CD(GunTrigGCcode,140,AtLeast)}, {CD207_Sh}, CrLoc, 383,1,{LMTable="MAX"},0)
	G_CB_TSetSpawn({CD(GunTrigGCcode,200,AtLeast)},{"Edmund Duke (Siege Tank)"},CD207_Sh,P8,CrLoc,1,{LMTable="MAX",Order={Patrol,OrderLoc}}) 
	G_CB_TScanEff({CD(GunTrigGCcode,360,AtLeast)}, {CD207_Sh}, CrLoc, 383,1,{LMTable="MAX"},0)
	G_CB_TSetSpawn({CD(GunTrigGCcode,400,AtLeast)},{"Edmund Duke (Siege Mode)"},CD207_Sh,P8,CrLoc,1,{LMTable="MAX",Order={Patrol,OrderLoc}}) 
	G_CB_TScanEff({CD(GunTrigGCcode,560,AtLeast)}, {CD207_Sh}, CrLoc, 383,1,{LMTable="MAX"},0)
	G_CB_TSetSpawn({CD(GunTrigGCcode,600,AtLeast)},{"Edmund Duke (Siege Tank)"},CD207_Sh,P8,CrLoc,1,{LMTable="MAX",Order={Patrol,OrderLoc}}) 
	G_CB_TScanEff({CD(GunTrigGCcode,760,AtLeast)}, {CD207_Sh}, CrLoc, 383,1,{LMTable="MAX"},0)
	G_CB_TSetSpawn({CD(GunTrigGCcode,800,AtLeast)},{"Zerg Broodling","Tom Kazansky (Wraith)","Edmund Duke (Siege Mode)"},CD207_Sh,P8,CrLoc,1,{LMTable="MAX",Order={Patrol,OrderLoc}})
end
CD207 = CIf_GunTrig(P8, "Terran Engineering Bay", "CD207",850,26);
EnvGun("CD208","CD207")
EnvGun("CD209","CD207")

CIfEnd()
CD211 = CIf_GunTrig(P8, "Terran Engineering Bay", "CD211",850,26);
EnvGun("CD213","CD211")
EnvGun("CD212","CD211")
CIfEnd()

CD214 = CIf_GunTrig(P8, "Terran Armory", "CD214",45000//0x1D,23);
CD214_Sh1 = CS_SortR(CSMakeLine(2, 32, 0, 41, 0), 1)
CD214_Sh2 = CS_SortR(CSMakeLine(2, 72, 0, 15, 0), 1)
CD214_Sh3 = CS_SortR(CSMakeLine(2, 32, 0, 41, 0), 0)
CD214_Sh4 = CS_SortR(CSMakeLine(2, 72, 0, 15, 0), 0)
G_CB_TScanEff({CD(GunTrigGCcode,0,AtLeast)}, {CD214_Sh1}, "CD214", 333,1,{LMTable="MAX",DistanceXY={72,0}},13)
G_CB_TScanEff({CD(GunTrigGCcode,640//0x1D,AtLeast)}, {CD214_Sh1}, "CD214", 333,1,{LMTable="MAX",DistanceXY={36,0}},0)
G_CB_TScanEff({CD(GunTrigGCcode,1290//0x1D,AtLeast)}, {CD214_Sh1}, "CD214", 333,1,{LMTable="MAX",DistanceXY={0,0}},16)
G_CB_TScanEff({CD(GunTrigGCcode,1620//0x1D,AtLeast)}, {CD214_Sh1}, "CD214", 333,1,{LMTable="MAX",DistanceXY={-36,0}},17)
G_CB_TScanEff({CD(GunTrigGCcode,1940//0x1D,AtLeast)}, {CD214_Sh1}, "CD214", 333,1,{LMTable="MAX",DistanceXY={-72,0}},15)


function ArmCr(Time,Shape,CUT)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time)//0x1D,AtLeast)}, {Shape}, "CD214", 333,1,{LMTable=2,DistanceXY={72,0}},13)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+320)//0x1D,AtLeast)}, {Shape}, "CD214", 333,1,{LMTable=2,DistanceXY={36,0}},0)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+640)//0x1D,AtLeast)}, {Shape}, "CD214", 333,1,{LMTable=2,DistanceXY={0,0}},16)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+970)//0x1D,AtLeast)}, {Shape}, "CD214", 333,1,{LMTable=2,DistanceXY={-36,0}},17)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+1290)//0x1D,AtLeast)}, {Shape}, "CD214", 333,1,{LMTable=2,DistanceXY={-72,0}},15)
	
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1290+Time)//0x1D,AtLeast)},CUT,Shape,P8,"CD214",1,{LMTable=2,DistanceXY={72,0},Order={Patrol,"CD214"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1290+Time+320)//0x1D,AtLeast)},CUT,Shape,P8,"CD214",1,{LMTable=2,DistanceXY={36,0},Order={Patrol,"CD214"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1290+Time+640)//0x1D,AtLeast)},CUT,Shape,P8,"CD214",1,{LMTable=2,DistanceXY={0,0},Order={Patrol,"CD214"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1290+Time+970)//0x1D,AtLeast)},CUT,Shape,P8,"CD214",1,{LMTable=2,DistanceXY={-36,0},Order={Patrol,"CD214"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1290+Time+1290)//0x1D,AtLeast)},CUT,Shape,P8,"CD214",1,{LMTable=2,DistanceXY={-72,0},Order={Patrol,"CD214"}}) 
end

ArmCr(2590,CD214_Sh1,{"Sarah Kerrigan (Ghost)","Tom Kazansky (Wraith)"})
ArmCr(7780,CD214_Sh2,{"Edmund Duke (Siege Tank)","Edmund Duke (Siege Mode)"})
ArmCr(12970,CD214_Sh3,{"Alan Schezar (Goliath)"})
ArmCr(12970,CD214_Sh4,{"Norad II (Battlecruiser)"})
ArmCr(18160,CD214_Sh4,{"Edmund Duke (Siege Tank)","Edmund Duke (Siege Mode)"})




CIfEnd()

CD220 = CIf_GunTrig(P7, "Power Generator", "CD220",90000//0x1D,17);
--CreateUnit(40, "Tassadar/Zeratul (Archon)", "CD222", P8);
Shape9000 = {8   ,{1408, 448},{1408, 256},{1536, 160},{1536, 32},{2240, 32},{2240, 192},{2432, 320},{2432, 448}}

CD220Sh_1 = CS_MoveXY(CS_FillPathXY(Shape9000, 1, 42, 42, 0),-1888,-112)
CD220Sh_2 = CS_SortA(CD220Sh_1, 0)
CD220Sh_3 = CS_SortA(CD220Sh_1, 1)
CD220Sh_4 = CS_SortX(CD220Sh_1, 0)
CD220Sh_5 = CS_SortY(CD220Sh_1, 0)
G_CB_TScanEff({CD(GunTrigGCcode,0//0x1D,AtLeast)}, {CD220Sh_2}, "CD220", 333,1,{LMTable=1},16)
G_CB_TScanEff({CD(GunTrigGCcode,6620//0x1D,AtLeast)}, {CD220Sh_3}, "CD220", 333,1,{LMTable=1},17)
G_CB_TScanEff({CD(GunTrigGCcode,11670//0x1D,AtLeast)}, {CD220Sh_4}, "CD220", 333,1,{LMTable=10},16)
G_CB_TScanEff({CD(GunTrigGCcode,12540//0x1D,AtLeast)}, {CD220Sh_5}, "CD220", 333,1,{LMTable=10},17)
G_CB_TSetSpawn({CD(GunTrigGCcode,(13400)//0x1D,AtLeast)},{"Tassadar/Zeratul (Archon)"},CD220Sh_1,P8,"CD220",1,{LMTable="MAX",RepeatType="Nothing"}) 

--테제200마리


CIfEnd()
CD221 = CIf_GunTrig(P7, "Power Generator", "CD221",90000//0x1D,17);
Shape9000 = {13  ,{3200, 288},{3200, 448},{3392, 544},{3840, 544},{3840, 256},{3712, 256},{3584, 160},{3648, 96},{3648, 32},{3328, 32},{3328, 96},{3392, 160},{3200, 288}}

CD221Sh_1 = CS_MoveXY(CS_FillPathXY(Shape9000, 1, 42, 42, 0),-3488,-144)
CD221Sh_2 = CS_SortA(CD221Sh_1, 0)
CD221Sh_3 = CS_SortA(CD221Sh_1, 1)
CD221Sh_4 = CS_SortX(CD221Sh_1, 0)
CD221Sh_5 = CS_SortY(CD221Sh_1, 0)
--시즈탱크200마리

G_CB_TScanEff({CD(GunTrigGCcode,0//0x1D,AtLeast)}, {CD221Sh_2}, "CD221", 333,1,{LMTable=1},16)
G_CB_TScanEff({CD(GunTrigGCcode,6620//0x1D,AtLeast)}, {CD221Sh_3}, "CD221", 333,1,{LMTable=1},17)
G_CB_TScanEff({CD(GunTrigGCcode,11670//0x1D,AtLeast)}, {CD221Sh_4}, "CD221", 333,1,{LMTable=10},16)
G_CB_TScanEff({CD(GunTrigGCcode,12540//0x1D,AtLeast)}, {CD221Sh_5}, "CD221", 333,1,{LMTable=10},17)
G_CB_TSetSpawn({CD(GunTrigGCcode,(13400)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)",30},CD221Sh_1,P8,"CD221",1,{LMTable="MAX",RepeatType="Nothing"}) 



CIfEnd()

CD73 = CIf_GunTrig(P8, "Terran Command Center", "CD73",90000//0x1D,18);
CD73EffT = {}
CD73_Sh1=CSMakeStar(6,135,96,180,CS_Level("Star",6,2),0)
for i = 0, 7 do
	table.insert(CD73EffT,CSMakePolygon(3+i, 64, 0, PlotSizeCalc(3+i,2), PlotSizeCalc(3+i,1)))
	
end

G_CB_TScanEff({CD(GunTrigGCcode,600//0x1D,AtLeast)}, {CD73EffT[1]}, "CD73", 332,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,1800//0x1D,AtLeast)}, {CD73EffT[2]}, "CD73", 332,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,3000//0x1D,AtLeast)}, {CD73EffT[3]}, "CD73", 333,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,4200//0x1D,AtLeast)}, {CD73EffT[4]}, "CD73", 334,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,5400//0x1D,AtLeast)}, {CD73EffT[5]}, "CD73", 213,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,6600//0x1D,AtLeast)}, {CD73EffT[6]}, "CD73", 214,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,7800//0x1D,AtLeast)}, {CD73EffT[7]}, "CD73", 215,1,{LMTable=1},0)
G_CB_TScanEff({CD(GunTrigGCcode,9000//0x1D,AtLeast)}, {CD73EffT[8]}, "CD73", 318,1,{LMTable=1},16)

G_CB_TSetSpawn({CD(GunTrigGCcode,(9600)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73EffT[8],P8,"CD73",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(12000)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73EffT[8],P8,"CD74",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(14400)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73EffT[8],P8,"CD75",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(16800)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73EffT[8],P8,"CD73",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(16800)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73EffT[8],P8,"CD74",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(16800)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73EffT[8],P8,"CD75",1,{LMTable="MAX",RepeatType="Nothing"}) 

G_CB_TSetSpawn({CD(GunTrigGCcode,(9600)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73EffT[8],P8,"CD73",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(12000)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73EffT[8],P8,"CD74",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(14400)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73EffT[8],P8,"CD75",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(16800)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73EffT[8],P8,"CD73",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(16800)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73EffT[8],P8,"CD74",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(16800)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73EffT[8],P8,"CD75",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 



G_CB_TSetSpawn({CD(GunTrigGCcode,(19200)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73_Sh1,P8,"CD73",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(21600)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73_Sh1,P8,"CD74",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(24000)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73_Sh1,P8,"CD75",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(26400)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73_Sh1,P8,"CD73",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(26400)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73_Sh1,P8,"CD74",1,{LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(26400)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73_Sh1,P8,"CD75",1,{LMTable="MAX",RepeatType="Nothing"}) 

G_CB_TSetSpawn({CD(GunTrigGCcode,(19200)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73_Sh1,P8,"CD73",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(21600)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73_Sh1,P8,"CD74",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(24000)//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},CD73_Sh1,P8,"CD75",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(26400)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73_Sh1,P8,"CD73",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(26400)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73_Sh1,P8,"CD74",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,(26400)//0x1D,AtLeast)},{"Hyperion (Battlecruiser)",30},CD73_Sh1,P8,"CD75",1,{SizeTable=150,LMTable="MAX",RepeatType="Nothing"}) 



CIfEnd()
CD59 = CIf_GunTrig(P8, "Terran Factory", "CD59",500,19);

SH_R1HD = CSMakeStar(5,135,64,0,CS_Level("Star",5,4),CS_Level("Star",5,3)) 
SH_R1LN = CSMakeStar(6,135,64,0,CS_Level("Star",6,4),CS_Level("Star",6,3)) 
SH_R2HD = CSMakeLine(1,32,0,CS_Level("Line",1,12),0)
SH_RAHD = CS_MoveCenter(SH_R1HD,0,192)
SH_RALN = CS_MoveCenter(SH_R1LN,0,192)

SH_rhegbE = CSMakeStar(5,135,64,0,CS_Level("Star",5,4),CS_Level("Star",5,3)) 

SH_rhegbHD = CS_Merge(SH_R2HD,SH_RAHD) -- 하드

SH_rhegbLN = CS_Merge(SH_R2HD,SH_RALN) -- 루나틱


CD5960_Sh = CS_RatioXY(CS_Rotate(CS_MoveXY(SH_rhegbLN,0,-200),-45), 0.5, 0.5)
CD59_Sh = CSMakePolygon(6, 128, 0, 7, 1)

function GunPlot(GCTime,ShapeT,CrLoc,CUT,Eff,Color,OrderT)
	if Color == nil then Color = 0 end
	G_CB_TScanEff({CD(GunTrigGCcode,GCTime,AtLeast)}, {ShapeT}, CrLoc, Eff,1,{LMTable="MAX"},Color)
	G_CB_TSetSpawn({CD(GunTrigGCcode,GCTime+30,AtLeast)},CUT,ShapeT,P8,CrLoc,1,{LMTable="MAX",Order=OrderT}) 
end

GunPlot(40,CD5960_Sh,"CD59",{"Jim Raynor (Vulture)"},332,0,{Attack,"CD59"})
GunPlot(340,CD5960_Sh,"CD59",{"Edmund Duke (Siege Tank)"},333,0,{Attack,"CD59"})
GunPlot(640,CD5960_Sh,"CD59",{"Edmund Duke (Siege Tank)"},334,0,{Attack,"CD59"})
GunPlot(40,CD59_Sh,"CD59",{"Norad II (Battlecruiser)"},60,0,{Attack,"CD59"})
GunPlot(640,CD59_Sh,"CD59",{"Norad II (Battlecruiser)"},60,0,{Attack,"CD59"})


CIfEnd()

CD60 = CIf_GunTrig(P8, "Terran Barracks", "CD60",500,19);


GunPlot(40,CD5960_Sh,"CD60",{"Gui Montag (Firebat)",},213,0,{Attack,"CD60"})
GunPlot(340,CD5960_Sh,"CD60",{"Sarah Kerrigan (Ghost)"},214,0,{Attack,"CD60"})
GunPlot(640,CD5960_Sh,"CD60",{"Hyperion (Battlecruiser)"},215,0,{Attack,"CD60"})
GunPlot(40,CD59_Sh,"CD60",{"Norad II (Battlecruiser)"},60,0,{Attack,"CD60"})
GunPlot(640,CD59_Sh,"CD60",{"Norad II (Battlecruiser)"},60,0,{Attack,"CD60"})
CIfEnd()

CD56_Sh = CSMakeCircle(6, 240, 0, 7, 1)
CD56Sh_T = {}
for i = 0, 7 do
	table.insert(CD56Sh_T, CS_RatioXY(CS_Rotate(CD56_Sh,i*32),1-(0.12*i),1-(0.12*i)))

end
CD56_Sh_2 = CS_OverlapX(table.unpack(CD56Sh_T))
CD56_Sh_3 = CS_OverlapX(
	CS_Rotate(CD56_Sh,16),
	CS_RatioXY(CS_Rotate(CD56_Sh,16*2),1-(0.24),1-(0.24)),
	CS_RatioXY(CS_Rotate(CD56_Sh,16*3),1-(0.48),1-(0.48)),
	CS_RatioXY(CS_Rotate(CD56_Sh,16*4),1-(0.72),1-(0.72))
)


CD56 = CIf_GunTrig(P8, "Norad II (Crashed Battlecruiser)", "CD56",90000//0x1D,20);
CD56_Sh= CS_Reverse(CD218Sh_2)
G_CB_TScanEff({CD(GunTrigGCcode,(3840//0x1D),AtLeast)}, {CD56_Sh}, "CD56", 391,1,{LMTable=6},16)
G_CB_TSetSpawn({CD(GunTrigGCcode,7680//0x1D,AtLeast)},{"Devouring One (Zergling)","Kukulza (Mutalisk)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,15360//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Guardian)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,23040//0x1D,AtLeast)},{"Alan Schezar (Goliath)","Tom Kazansky (Wraith)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,30720//0x1D,AtLeast)},{"Sarah Kerrigan (Ghost)","Tom Kazansky (Wraith)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,38400//0x1D,AtLeast)},{"Fenix (Dragoon)","Mojo (Scout)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,46080//0x1D,AtLeast)},{"Fenix (Zealot)","Mojo (Scout)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,53760//0x1D,AtLeast)},{"Norad II (Battlecruiser)"},CD56_Sh_3,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,53760//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)","Danimoth (Arbiter)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,61440//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)","Hyperion (Battlecruiser)"},CD56_Sh,P8,"CD56",1,{LMTable="MAX",Order={Patrol,"CD56"}}) 

G_CB_TScanEff({CD(GunTrigGCcode,(38400//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},0)
G_CB_TScanEff({CD(GunTrigGCcode,(40320//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},13)
G_CB_TScanEff({CD(GunTrigGCcode,(42240//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},16)
G_CB_TScanEff({CD(GunTrigGCcode,(44160//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},15)
G_CB_TScanEff({CD(GunTrigGCcode,(46080//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},16)
G_CB_TScanEff({CD(GunTrigGCcode,(48000//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},13)
G_CB_TScanEff({CD(GunTrigGCcode,(49920//0x1D),AtLeast)}, {CD56_Sh_3}, "CD56", 318,1,{LMTable="MAX"},0)


CIfEnd()

CD36 = CIf_GunTrig(P8, "Stasis Cell/Prison", "CD36",90000//0x1D,22);

CD36_ShL1 = CS_SortR(CSMakeLine(2, 32, 90, 19, 0),0)
CD36_ShL2 = CS_SortR(CSMakeLine(2, 32, 90, 19, 0),1)
CD36_ShL3 = CS_SortR(CSMakeLine(2, 32, 90, 19, 0),0)
CD36_ShL4 = CS_SortR(CSMakeLine(2, 32, 90, 19, 0),1)
-- Y -32*3 ~ 32*5

function YSS_Cr(Time,Shape,CUT,Eff)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+0)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,-32*3}},13)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+410)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,-32*2}},0)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+830)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,-32*1}},16)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+1240)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,0}},10)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+1650)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,32*1}},15)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+2070)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,32*2}},10)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+2480)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,32*3}},16)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+2900)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,32*4}},0)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+3310)//0x1D,AtLeast)}, {Shape}, "CD36", Eff,1,{LMTable=2,DistanceXY={0,32*5}},13)
	
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+0+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,-32*3},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+410+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,-32*2},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+830+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,-32*1},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+1240+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,0},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+1650+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,32*1},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+2070+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,32*2},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+2480+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,32*3},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+2900+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,32*4},Order={Patrol,"CD36"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+3310+1650)//0x1D,AtLeast)},CUT,Shape,P8,"CD36",1,{LMTable=2,DistanceXY={0,32*5},Order={Patrol,"CD36"}}) 
end

YSS_Cr(0,CD36_ShL1,{"Kukulza (Mutalisk)"},59)
YSS_Cr(3310,CD36_ShL1,{"Kukulza (Mutalisk)"},59)
YSS_Cr(6630,CD36_ShL2,{"Tassadar/Zeratul (Archon)"},214)
YSS_Cr(9950,CD36_ShL2,{"Hyperion (Battlecruiser)"},333)
YSS_Cr(13270,CD36_ShL1,{"Mojo (Scout)"},10)
YSS_Cr(16590,CD36_ShL1,{"Tom Kazansky (Wraith)"},4)
YSS_Cr(19910,CD36_ShL2,{"Danimoth (Arbiter)"},60)
YSS_Cr(23220,CD36_ShL4,{"Gantrithor (Carrier)"},334)
YSS_Cr(26540,CD36_ShL2,{"Edmund Duke (Siege Mode)"},318)

CIfEnd()


CD224 = CIf_GunTrig(P8, "Protoss Nexus", "CD224",90000//0x1D,21);


ICD1T = CreateCcode()
function CreateHeart(Step)
	return CS_RemoveStack(CS_Rotate(CSMakeGraphT({12,12},"HyperCycloidC",0,0,Step,Step,256) ,180),15,0) -------하트
end
CD224_HCC1 = CreateHeart(2.7)
CD224_HCC2 = CreateHeart(4.2)

CD224HeartF = CS_FillPathXY(CD224_HCC1, 1, 32, 32, 0)

G_CB_TScanEff({CD(GunTrigGCcode,(0//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 928,1,{LMTable="MAX",SizeTable = 25+25},0)
G_CB_TScanEff({CD(GunTrigGCcode,(750//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 928,1,{LMTable="MAX",SizeTable = 50+25},13)
G_CB_TScanEff({CD(GunTrigGCcode,(1500//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 928,1,{LMTable="MAX",SizeTable = 75+25},16)
G_CB_TScanEff({CD(GunTrigGCcode,(2250//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 928,1,{LMTable="MAX",SizeTable = 100+25},17)


G_CB_TSetSpawn({CD(GunTrigGCcode,3000//0x1D,AtLeast)},{"Devouring One (Zergling)","Kukulza (Mutalisk)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 25+25}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,3750//0x1D,AtLeast)},{"Devouring One (Zergling)","Kukulza (Mutalisk)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 50+25}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,4500//0x1D,AtLeast)},{"Devouring One (Zergling)","Kukulza (Mutalisk)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75+25}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,5250//0x1D,AtLeast)},{"Devouring One (Zergling)","Kukulza (Mutalisk)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 100+25}) 


G_CB_TScanEff({CD(GunTrigGCcode,(6000//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 59,1,{LMTable="MAX",SizeTable = 2+255},0)
G_CB_TScanEff({CD(GunTrigGCcode,(6750//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 59,1,{LMTable="MAX",SizeTable = 50+25},13)
G_CB_TScanEff({CD(GunTrigGCcode,(7500//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 59,1,{LMTable="MAX",SizeTable = 75+25},16)
G_CB_TScanEff({CD(GunTrigGCcode,(8250//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 59,1,{LMTable="MAX",SizeTable = 100+25},17)


G_CB_TSetSpawn({CD(GunTrigGCcode,9000//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Guardian)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 25+25}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,9750//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Guardian)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 50+25}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,10500//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Guardian)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75+25}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,11250//0x1D,AtLeast)},{"Hunter Killer (Hydralisk)","Kukulza (Guardian)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 100+25}) 



G_CB_TSetSpawn({CD(GunTrigGCcode,12000//0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,12000//0x1D,AtLeast)},{"Sarah Kerrigan (Ghost)","Tom Kazansky (Wraith)"},CD224HeartF,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"}}) 


G_CB_TSetSpawn({CD(GunTrigGCcode,18000//0x1D,AtLeast)},{"Gantrithor (Carrier)"},CD224_HCC2,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,18000//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)","Mojo (Scout)"},CD224HeartF,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"}}) 



G_CB_TScanEff({CD(GunTrigGCcode,(22500//0x1D),AtLeast)}, {CD56_Sh}, "CD224", 391,1,{LMTable=3},10)
G_CB_TScanEff({CD(GunTrigGCcode,(23250//0x1D),AtLeast)}, {CS_Reverse(CD56_Sh)}, "CD224", 391,1,{LMTable=3},16)


G_CB_TSetSpawn({CD(GunTrigGCcode,24000//0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,24000//0x1D,AtLeast)},{"Jim Raynor (Vulture)","Tom Kazansky (Wraith)"},CD224HeartF,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"}}) 


G_CB_TSetSpawn({CD(GunTrigGCcode,30000//0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,30000//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)","Danimoth (Arbiter)"},CD224HeartF,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"}}) 

CD224_Heart_S = CreateHeart(6.6)

--PushErrorMsg(CD224_HCC2[1])
for i = 0, 10 do
	G_CB_TScanEff({CD(GunTrigGCcode,((36370+((750//4)*i))//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 4,1,{LMTable="MAX",SizeTable = 10+(i*10)},0)
end

G_CB_TScanEff({CD(GunTrigGCcode,(38430//0x1D),AtLeast)}, {CD224_HCC1}, "CD224", 318,1,{LMTable="MAX",SizeTable = 100},0)
G_CB_TSetSpawn({CD(GunTrigGCcode,39000//0x1D,AtLeast)},{"Norad II (Battlecruiser)"},CD224_HCC2,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 


G_CB_TSetSpawn({CD(GunTrigGCcode,42000//0x1D,AtLeast)},{"Hyperion (Battlecruiser)"},CD224_HCC1,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 
CD224_HCC3 = CreateHeart(7.7)
function NHWCr(Time,CUT,CUT2,Eff,Color)
	if Color == nil then Color = 0 end
	G_CB_TScanEff({CD(GunTrigGCcode,(0+Time)//0x1D,AtLeast)}, {CD224_HCC1}, "CD224", Eff,1,{LMTable="MAX",SizeTable = 150},Color)
	G_CB_TSetSpawn({CD(GunTrigGCcode,(560+Time)//0x1D,AtLeast)},CUT,CD224_HCC2,P8,"ECB",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(750+Time)//0x1D,AtLeast)},CUT,CD224_HCC2,P8,"CD225",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(930+Time)//0x1D,AtLeast)},CUT,CD224_HCC2,P8,"CD227",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1200+Time)//0x1D,AtLeast)},CUT,CD224_HCC2,P8,"CD228",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1310+Time)//0x1D,AtLeast)},CUT,CD224_HCC2,P8,"CD226",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 75}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1500+Time)//0x1D,AtLeast)},CUT2,CD224_HCC3,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 100}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(1870+Time)//0x1D,AtLeast)},CUT2,CD224_HCC3,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 150}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(2250+Time)//0x1D,AtLeast)},CUT2,CD224_HCC3,P8,"CD224",1,{LMTable="MAX",Order={Patrol,"CD224"},SizeTable = 200}) 
end
NHWCr(42000,{"Edmund Duke (Siege Tank)"},{"Hyperion (Battlecruiser)"},429,16)

NHWCr(48000,{"Tassadar/Zeratul (Archon)"},{"Gantrithor (Carrier)"},215,0)

NHWCr(54000,{"Warbringer (Reaver)"},{"Danimoth (Arbiter)"},60,0)
NHWCr(60000,{"Zerg Broodling",30},{"Norad II (Battlecruiser)"},318,0)
--
CIfEnd()
CD30 = CIf_GunTrig(P8, "Zerg Overmind", "CD30",90000//0x1D,25);

CD30_Sh1=CSMakeStar(4,135,96,180,CS_Level("Star",4,2),CS_Level("Star",4,1))
CD30_Sh2=CSMakeStar(4,135,96,180,CS_Level("Star",4,3),CS_Level("Star",4,2))
CD30_Sh3=CSMakeStar(4,135,96,180,CS_Level("Star",4,4),CS_Level("Star",4,3))
CD30_Sh4=CSMakeStar(4,135,96,180,CS_Level("Star",4,5),CS_Level("Star",4,4))
function OvmEff(Time,Eff)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+0)//0x1D,AtLeast)}, {CD30_Sh1}, "CD73", Eff,1,{LMTable="MAX"},0)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+450)//0x1D,AtLeast)}, {CD30_Sh2}, "CD73", Eff,1,{LMTable="MAX"},10)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+900)//0x1D,AtLeast)}, {CD30_Sh3}, "CD73", Eff,1,{LMTable="MAX"},16)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+1360)//0x1D,AtLeast)}, {CD30_Sh4}, "CD73", Eff,1,{LMTable="MAX"},13)
end
for j,k in pairs({1810,3630,5450,7270,9090,10900,12720}) do
	OvmEff(k,559)
end
for j,k in pairs({16360,18180,20000,21810,23630,25450,27270,29090,30900,32720,34540,36360,38180,40000,41810}) do
	OvmEff(k,545)
end


for j,k in pairs({45450,47270,49090,50900,52720,54540,56360}) do
	OvmEff(k,544)
end

for j,k in pairs({60000,61810,63630,65450,67270,69090,70900,72720}) do
	OvmEff(k,512)
end
for j,k in pairs({74540,76360,78180,80000,81810,83630,85450}) do
	OvmEff(k,981)
end
--CD5960_Sh ratio *2
--CS31 >> CS32 >> CS33
CD30_Sh5 = CS_MoveXY(SH_rhegbLN,0,-200)
CD30_Sh6 = CS_MoveXY(SH_rhegbHD,0,-200)
function OvmWHole(Time,Shape,CUT)
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+0)//0x1D,AtLeast)},CUT,Shape,P8,"CD31",1,{RotateTable = 225,LMTable="MAX",Order={Attack,"CD32"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+450)//0x1D,AtLeast)},CUT,Shape,P8,"CD32",1,{RotateTable = 135,LMTable="MAX",Order={Attack,"CD33"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+900)//0x1D,AtLeast)},CUT,Shape,P8,"CD33",1,{LMTable="MAX",Order={Attack,"CD31"}}) 
end
OvmWHole(450,CD30_Sh5,{"Devouring One (Zergling)","Kukulza (Mutalisk)"})
OvmWHole(7720,CD30_Sh5,{"Hunter Killer (Hydralisk)","Kukulza (Guardian)"})
OvmWHole(15000,CD30_Sh5,{"Gui Montag (Firebat)","Hyperion (Battlecruiser)"})
OvmWHole(29540,CD30_Sh5,{"Tassadar/Zeratul (Archon)"})
OvmWHole(29540,CD30_Sh6,{"Gantrithor (Carrier)"})
OvmWHole(44090,CD30_Sh5,{"Edmund Duke (Siege Mode)","Tom Kazansky (Wraith)"})

OvmWHole(58630,CD30_Sh5,{"Sarah Kerrigan (Ghost)","Mojo (Scout)"})
OvmWHole(73180,CD30_Sh5,{"Tassadar (Templar)","Danimoth (Arbiter)"})
CIfEnd()

--__MM.ogg

ICD = CIf_GunTrig(P7, "Terran Supply Depot", "ICD",200,nil);--서플 뚱이에서 묵찌빠로 변경

--해당지역에 아군유닛이 있을경우 아덴이, 없을경우 시즈탱크를 소환함.

CIfOnce(FP)
ICDArea1Chk = CreateCcode()--CD3 Chk
ICDArea2Chk = CreateCcode()--CD37 Chk
ICDArea3Chk = CreateCcode()--CD4 Chk
ICDArea4Chk = CreateCcode()--CD38 Chk
ICDArea5Chk = CreateCcode()--Hero Chk
TriggerX(FP,{Bring(Force1, AtLeast, 1, "Men", "CD3")},{SetCD(ICDArea1Chk,1)})
TriggerX(FP,{Bring(Force1, AtLeast, 1, "Men", "CD37")},{SetCD(ICDArea2Chk,1)})
TriggerX(FP,{Bring(Force1, AtLeast, 1, "Men", "CD4")},{SetCD(ICDArea3Chk,1)})
TriggerX(FP,{Bring(Force1, AtLeast, 1, "Men", "CD38")},{SetCD(ICDArea4Chk,1)})
TriggerX(FP,{Bring(Force1, AtLeast, 1, "Men", "Hero")},{SetCD(ICDArea5Chk,1)})
CIfEnd()

ICDStar = CSMakeStar(5,135,96,180,CS_Level("Star",5,3),0)
ICDStar2 = CSMakeStar(5,135,128,180,CS_Level("Star",5,2),0)

G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast),CD(ICDArea2Chk,0)},{"Edmund Duke (Siege Mode)"},ICDStar,P8,"CD37",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast),CD(ICDArea4Chk,0)},{"Edmund Duke (Siege Mode)"},ICDStar,P8,"CD38",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast),CD(ICDArea5Chk,0)},{"Edmund Duke (Siege Mode)"},ICDStar,P8,"Hero",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast),CD(ICDArea2Chk,1)},{30},ICDStar,P8,"CD37",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast),CD(ICDArea4Chk,1)},{30},ICDStar,P8,"CD38",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast),CD(ICDArea5Chk,1)},{30},ICDStar,P8,"Hero",1,{LMTable=1}) 


G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hyperion (Battlecruiser)"},ICDStar2,P8,"CD37",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hyperion (Battlecruiser)"},ICDStar2,P8,"CD38",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,0,AtLeast)},{"Hyperion (Battlecruiser)"},ICDStar2,P8,"Hero",1,{LMTable=1}) 


G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast),CD(ICDArea1Chk,0)},{"Edmund Duke (Siege Mode)"},ICDStar,P8,"CD3",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast),CD(ICDArea3Chk,0)},{"Edmund Duke (Siege Mode)"},ICDStar,P8,"CD4",1,{LMTable=1}) 

G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast),CD(ICDArea1Chk,1)},{30},ICDStar,P8,"CD3",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast),CD(ICDArea3Chk,1)},{30},ICDStar,P8,"CD4",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast)},{30},ICDStar,P8,"HZ",1,{LMTable="MAX"}) 

G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast)},{"Hyperion (Battlecruiser)"},ICDStar2,P8,"CD3",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast)},{"Hyperion (Battlecruiser)"},ICDStar2,P8,"CD4",1,{LMTable=1}) 
G_CB_TSetSpawn({CD(GunTrigGCcode,150,AtLeast)},{"Hyperion (Battlecruiser)"},ICDStar2,P8,"HZ",1,{LMTable=1}) 

Trigger2X(FP,{},{
	RotatePlayer({PlayWAVX("staredit\\wav\\__MM.ogg");PlayWAVX("staredit\\wav\\__MM.ogg");}, HumanPlayers, FP);
})
CIfEnd()



CD48 = CIf_GunTrig(P8, "Zerg Overmind (With Shell)", "CD48",90000//0x1D,16);

CD48Sh_1 = CS_FillPathXY({4   ,{1056, 928},{608, 1184},{192, 928},{608, 704}}, 1, 64, 32, 0)
CD48Sh_2 = CS_FillPathXY({4   ,{1056, 928},{608, 1184},{192, 928},{608, 704}}, 1, 96, 64, 0)
CD48Sh_Eff1 = CS_Reverse(CSMakeCircle(8, 96, 0, PlotSizeCalc(8, 12), 0))
G_CB_TScanEff({}, {CD48Sh_Eff1}, "CD48", 391,1,{LMTable=12},10,FP)

function BlingSEff(Time,EffID,AllOp,ColorReset)
	local CT = {
		13,
		0,
		16,
		17,
		15
	}
	local LT = {
		Time+0,
		Time+380,
		Time+760,
		Time+1050,
		Time+1330
	}
	if AllOp == 1 then
		LT = {
			Time,
			Time,
			Time,
			Time,
			Time
		}
	end
	if ColorReset == 1 then
		CT = {
			0,
			0,
			0,
			0,
			0
		}
	end
	G_CB_TScanEff({CD(GunTrigGCcode,(LT[1])//0x1D,AtLeast)}, {ICDC_Sh3}, "CD43", EffID,1,{LMTable="MAX",SizeTable=50},CT[1],FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(LT[2])//0x1D,AtLeast)}, {ICDC_Sh3}, "CD44", EffID,1,{LMTable="MAX",SizeTable=50},CT[2],FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(LT[3])//0x1D,AtLeast)}, {ICDC_Sh3}, "CD45", EffID,1,{LMTable="MAX",SizeTable=50},CT[3],FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(LT[4])//0x1D,AtLeast)}, {ICDC_Sh3}, "CD46", EffID,1,{LMTable="MAX",SizeTable=50},CT[4],FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(LT[5])//0x1D,AtLeast)}, {ICDC_Sh3}, "CD47", EffID,1,{LMTable="MAX",SizeTable=50},CT[5],FP)
end
function BlingSEff2(Time,EffID)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+0)//0x1D,AtLeast)}, {ICDC_Sh3}, "CD43", EffID,1,{LMTable="MAX",SizeTable=50},13,FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+380)//0x1D,AtLeast)}, {ICDC_Sh3}, "CD44", EffID,1,{LMTable="MAX",SizeTable=50},0,FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+760)//0x1D,AtLeast)}, {ICDC_Sh3}, "CD46", EffID,1,{LMTable="MAX",SizeTable=50},17,FP)
	G_CB_TScanEff({CD(GunTrigGCcode,(Time+760+380)//0x1D,AtLeast)}, {ICDC_Sh3}, "CD47", EffID,1,{LMTable="MAX",SizeTable=50},15,FP)
end


function BlingSUnit(Time,CUT,AllOp)
	local LT = {
		Time+0,
		Time+380,
		Time+760,
		Time+1050,
		Time+1330
	}
	if AllOp == 1 then
		LT = {
			Time,
			Time,
			Time,
			Time,
			Time
		}
	end
	G_CB_TSetSpawn({CD(GunTrigGCcode,(LT[1])//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD43",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(LT[2])//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD44",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(LT[3])//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD45",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(LT[4])//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD46",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(LT[5])//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD47",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
end
function BlingSUnit2(Time,CUT)
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+0)//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD43",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+380)//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD44",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+760)//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD46",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,(Time+760+380)//0x1D,AtLeast)},CUT,ICDC_Sh3,P8,"CD47",1,{SizeTable=50,LMTable="MAX",Order={Attack,"CD48"}}) 
end

for j,k in pairs({1520,3050,4580,6110,7640,9170,10700}) do
	BlingSEff(k,332)
	BlingSUnit(k,{"Mojo (Scout)"})
end
BlingSEff(12200,318,1,1)
BlingSUnit(12200,{"Norad II (Battlecruiser)"},1)
for j,k in pairs({13750,15280,16810,18340,19870,21400,22930,24450,25980,27510,29040,30570,32100,33630,35150,36680,38210,39740,41270,42800,44330,45860,47380}) do
	BlingSEff(k,333)
	BlingSUnit(k,{30})
end

BlingSEff(48910,4,1)
BlingSEff(49290,10,1)
BlingSEff(49680,318,1,1)
BlingSUnit(49680,{"Norad II (Battlecruiser)"},1)
for j,k in pairs({50440,51970,53500,55030,56560,58080,59610}) do
	BlingSEff2(k,334)
	BlingSUnit2(k,{"Hyperion (Battlecruiser)"})
end
BlingSEff(61140,318,1,1)
BlingSUnit(61140,{"Norad II (Battlecruiser)"},1)
BlingSUnit(61140,{30},1)

for j,k in pairs({62670,64200,65730,67260,68790,70310,71840,73370,74900,76430,77960,79490,81010,82540,84070,85600}) do
	BlingSEff(k,60)
	BlingSUnit(k,{"Mojo (Scout)"})
	BlingSUnit(k,{30})
	BlingSUnit(k,{"Hyperion (Battlecruiser)"})
end
TriggerX(FP,{CD(GunTrigGCcode,85600//0x1D,AtMost)},{ModifyUnitEnergy(All, "Tom Kazansky (Wraith)", P8, 64, 0)},{preserved})

--CD48 >> CD28 >> CD29
function BlingWHole(Time,Shape,CUT)
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD48",1,{LMTable="MAX",Order={Attack,"CD28"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD28",1,{LMTable="MAX",Order={Attack,"CD29"}}) 
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD29",1,{LMTable="MAX",Order={Attack,"CD48"}}) 
	
end
CD48_CD39Sh = CS_MoveXY(CD39Sh,-800,-1744)--28
CD48_CD40Sh = CS_MoveXY(CD40Sh,-1472,-1712)--23
BlingWHole(1520,CD48_CD39Sh,{"Fenix (Zealot)","Fenix (Dragoon)"})
BlingWHole(13750,CD48_CD40Sh,{"Gantrithor (Carrier)"})


BlingWHole(19870,CD48_CD39Sh,{"Edmund Duke (Siege Mode)","Mojo (Scout)"})
BlingWHole(21400,CD48_CD40Sh,{"Edmund Duke (Siege Mode)"})
BlingWHole(22930,CD48_CD39Sh,{"Alan Schezar (Goliath)","Tom Kazansky (Wraith)"})
BlingWHole(24450,CD48_CD40Sh,{"Alan Schezar (Goliath)"})


CD48_WSh1 = CS_Reverse(CSMakeCircle(6, 48, 0, PlotSizeCalc(6, 3), 0))

BlingWHole(25980,CD48_WSh1,{"Danimoth (Arbiter)"})
BlingWHole(32100,CD48_WSh1,{"Tassadar/Zeratul (Archon)"})
BlingWHole(38210,CD48_WSh1,{"Gui Montag (Firebat)"})
BlingWHole(44330,CD48_WSh1,{"Hyperion (Battlecruiser)"})
G_CB_TScanEff({CD(GunTrigGCcode,50060//0x1D,AtLeast)}, {CD48_WSh1}, "CD48", 391,1,{LMTable=1},16,FP)
G_CB_TScanEff({CD(GunTrigGCcode,50060//0x1D,AtLeast)}, {CD48_WSh1}, "CD28", 391,1,{LMTable=1},10,FP)
G_CB_TScanEff({CD(GunTrigGCcode,50060//0x1D,AtLeast)}, {CD48_WSh1}, "CD29", 391,1,{LMTable=1},17,FP)
CD48_CD12Sh = CS_Reverse(CD12Sh)
BlingWHole(50440,CD48_WSh1,{"Edmund Duke (Siege Tank)"})
BlingWHole(56560,CD48_WSh1,{"Zeratul (Dark Templar)"})
G_CB_TScanEff({CD(GunTrigGCcode,61140//0x1D,AtLeast)}, {CD48_CD12Sh}, "CD48", 318,1,{LMTable=1},16,FP)
G_CB_TScanEff({CD(GunTrigGCcode,61140//0x1D,AtLeast)}, {CD48_CD12Sh}, "CD28", 318,1,{LMTable=1},10,FP)
G_CB_TScanEff({CD(GunTrigGCcode,61140//0x1D,AtLeast)}, {CD48_CD12Sh}, "CD29", 318,1,{LMTable=1},13,FP)

CD48_WSh2 = CSMakePolygon(6, 32, 0, PlotSizeCalc(6,4), PlotSizeCalc(6,3))

BlingWHole(62670,CD48_WSh2,{"Zerg Broodling","Danimoth (Arbiter)"})

CD48_WSh3 = CSMakePolygon(6, 128, 0, PlotSizeCalc(6,1), 0)

BlingWHole(74900,CD48_WSh3,{"Infested Kerrigan (Infested Terran)"})
BlingWHole(74900,CD48_WSh2,{"Gantrithor (Carrier)"})




CIfEnd()


end
GBOSS = CIf_GunTrig(P8, "Protoss Temple", 64,300000//0x1D,24);
	DoActions(FP,{RemoveUnit(204,AllPlayers),})
	CallTrigger(FP,Call_CA_Effect,{SetV(CA_Create,0)})

	DoActionsX(FP,{
		AddV(CA_Eff_XY,1),
		AddV(CA_Eff_YZ,1)
	})
GB_Req_Rat = CreateVar(FP)
GB_Req_Rot = CreateVar(FP)

GBEffSh = CSMakeCircle(6, 480, 0, 7, 1)

GBEffSh_T = {}
for i = 0, 96 do
	table.insert(GBEffSh_T, CS_RatioXY(CS_Rotate(GBEffSh,i*16),0.01*i,0.01*i))

end
GBEffSh_T = CS_OverlapX(table.unpack(GBEffSh_T))

GBEffSh_T2 = {}
for i = 0, 31 do
	table.insert(GBEffSh_T2, CS_RatioXY(CS_Rotate(GBEffSh,i*16),0.02*i,0.02*i))

end
GBEffSh_T2 = CS_OverlapX(table.unpack(GBEffSh_T2))


GBEffSh_T3 = {}
for i = 0, 15 do
	table.insert(GBEffSh_T3, CS_RatioXY(CS_Rotate(GBEffSh,i*16),0.04*i,0.04*i))

end
GBEffSh_T3 = CS_OverlapX(table.unpack(GBEffSh_T3))



G_CB_TScanEff({CD(GunTrigGCcode,1,AtLeast)}, {GBEffSh_T}, "CD141", 391, 1,{LMTable=3})


--"SkillUnit"


DoActions(FP, {
	KillUnit("Terran Bunker", AllPlayers);
	KillUnit("Terran Missile Turret", AllPlayers);},1)
--기본적인 틀은 기존 노라드가 스킬유닛이었던걸 멩스크로 대체함(노라드를 공격유닛으로 변경)
--[[





]]
GBSh_1 = CS_OverlapX(
	CSMakeLine(2, 48, 0, 7, 0),
	CS_MoveXY(CSMakeLine(2, 48, 0, 7, 0),48,0),
	CS_MoveXY(CSMakeLine(2, 48, 0, 7, 0),-48,0),
	CS_MoveXY(CSMakeLine(2, 48, 0, 7, 0),96,0),
	CS_MoveXY(CSMakeLine(2, 48, 0, 7, 0),-96,0)
)
GBSh_2 = CS_OverlapX(
	CSMakeLine(2, 64, 0, 7, 0),
	CS_MoveXY(CSMakeLine(2, 64, 0, 7, 0),64,0),
	CS_MoveXY(CSMakeLine(2, 64, 0, 7, 0),-64,0)
)
GB_SkillSh = CSMakePolygon(4,128,45,PlotSizeCalc(4,2),1)

function GB_WhSpawn(Time,CUT,Shape)
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD231",1,{LMTable="MAX",RepeatType="Nothing"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD232",1,{LMTable="MAX",RepeatType="Nothing"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD233",1,{LMTable="MAX",RepeatType="Nothing"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD234",1,{LMTable="MAX",RepeatType="Nothing"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD235",1,{LMTable="MAX",RepeatType="Nothing"})
	G_CB_TSetSpawn({CD(GunTrigGCcode,Time//0x1D,AtLeast)},CUT,Shape,P8,"CD236",1,{LMTable="MAX",RepeatType="Nothing"})
end

TriggerX(FP,{CD(GunTrigGCcode,0,AtLeast)},{RotatePlayer({RunAIScript("Turn ON Shared Vision for Player 8");}, Force1, FP)})
local Beat = 444.444
GB_ScSiegeEffSh = {8   ,{2992, 3312},{3392, 3312},{3792, 3312},{2992, 3584},{2992, 3856},{3392, 3856},{3792, 3856},{3792, 3584}}
UT1= {"Mojo (Scout)","Edmund Duke (Siege Mode)"}
function BeatCUTrig(Left,Right,CUT,DivNum,EffNum,EffColor)
	if EffNum == nil then EffNum = 0 end
	if DivNum == nil then DivNum = 1 end
	local StartValue = Left
	while StartValue<=Right do
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},CUT,CA_EffShape,P8,{3392,3616},1,{NQOpTable = 1,LMTable="MAX",Order={Attack,"CD231"}})
		if EffNum ~= 0 then
			G_CB_TScanEff({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)}, {CA_EffShape}, {3392,3616}, EffNum, 1,{NQOpTable = 1,LMTable="MAX"},EffColor)
		else
			G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{84},CA_EffShape,P6,{3392,3616},1,{NQOpTable = 1,LMTable="MAX",RepeatType="Nothing"})
		end
		StartValue=StartValue + (Beat/DivNum)
	end
end 
function BeatCUSkill(Left,Right)
	local StartValue = Left
	while StartValue<=Right do
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{27},GB_SkillSh,P8,"CD231",1,{LMTable="MAX",Order={Attack,"CD141"},RepeatType="SkillUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{27},GB_SkillSh,P8,"CD232",1,{LMTable="MAX",Order={Attack,"CD141"},RepeatType="SkillUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{27},GB_SkillSh,P8,"CD233",1,{LMTable="MAX",Order={Attack,"CD141"},RepeatType="SkillUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{27},GB_SkillSh,P8,"CD234",1,{LMTable="MAX",Order={Attack,"CD141"},RepeatType="SkillUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{27},GB_SkillSh,P8,"CD235",1,{LMTable="MAX",Order={Attack,"CD141"},RepeatType="SkillUnit"})
		G_CB_TSetSpawn({CD(GunTrigGCcode,StartValue//0x1D,AtLeast)},{27},GB_SkillSh,P8,"CD236",1,{LMTable="MAX",Order={Attack,"CD141"},RepeatType="SkillUnit"})
		StartValue=StartValue + ((Beat*2))
	end
end
G_CB_TScanEff({CD(GunTrigGCcode,13330//0x1D,AtLeast)}, {CA_EffShape}, {3392,3616}, 318, 1,{LMTable="MAX"},0)

G_CB_TScanEff({CD(GunTrigGCcode,70660//0x1D,AtLeast)}, {CA_EffShape}, {3392,3616}, 318, 1,{LMTable="MAX"},0)
BeatCUSkill(7110,13110)
BeatCUTrig(7110,13110,UT1)
BeatCUTrig(14220,27330,UT1,nil,4)
BeatCUSkill(21330,27330)

BeatCUTrig(28440,41550,UT1,nil,10)
BeatCUSkill(35550,41550)
BeatCUSkill(49770,55770)


BeatCUTrig(42660,55770,UT1,nil,3)
BeatCUTrig(56880,67330,UT1,nil,58)
BeatCUTrig(67550,68330,UT1,2,332)
BeatCUTrig(68440,70620,UT1,4,333)
BeatCUSkill(64000,71000)
BeatCUTrig(71110,98440,UT1,nil,960)
BeatCUTrig(99550,126880,UT1,nil,928)
BeatCUSkill(85330,98440)

BeatCUSkill(113770,126880)
BeatCUSkill(128000,142000)
BeatCUSkill(149330,155330)

BeatCUSkill(163550,175770)
BeatCUSkill(179550,193660)

BeatCUSkill(208000,222000)
BeatCUSkill(240000,254220)
BeatCUSkill(275500,282440)
BeatCUTrig(128000,155330,UT1,nil,60)
BeatCUTrig(156440,170440,UT1,nil,215)

function BeatCUTrig2(Time,CUT,EffNum,EffColor)
	if EffNum == nil then EffNum = 0 end
		for j,k in pairs({0,((Beat/4)*3)*1,((Beat/4)*3)*2,((Beat/4)*3)*3,Beat*3,(Beat*3)+(Beat/2)}) do
			G_CB_TSetSpawn({CD(GunTrigGCcode,(k+Time)//0x1D,AtLeast)},CUT,CA_EffShape,P8,{3392,3616},1,{NQOpTable = 1,LMTable="MAX",Order={Attack,"CD231"}})
			if EffNum ~= 0 then
				G_CB_TScanEff({CD(GunTrigGCcode,(k+Time)//0x1D,AtLeast)}, {CA_EffShape}, {3392,3616}, EffNum, 1,{NQOpTable = 1,LMTable="MAX"},EffColor)
			else
				G_CB_TSetSpawn({CD(GunTrigGCcode,(k+Time)//0x1D,AtLeast)},{86},CA_EffShape,P6,{3392,3616},1,{NQOpTable = 1,LMTable="MAX",RepeatType="Nothing"})
			end
		end
end
BeatCUTrig2(170660,UT1,213)
BeatCUTrig2(172440,UT1,214)
BeatCUTrig2(174220,UT1,215)
G_CB_TSetSpawn({CD(GunTrigGCcode,176000//0x1D,AtLeast)},{"Edmund Duke (Siege Mode)"},GBEffSh_T2,P8,"CD141",1,{LMTable=2,Order={Attack,"CD141"}})
G_CB_TScanEff({CD(GunTrigGCcode,(176000)//0x1D,AtLeast)}, {GBEffSh_T}, "CD141", 391, 1,{LMTable=3})
BeatCUTrig(179550,218440,UT1,nil,58)
BeatCUTrig(218660,219440,UT1,2,332)
BeatCUTrig(219550,221730,UT1,4,333)
G_CB_TScanEff({CD(GunTrigGCcode,221770//0x1D,AtLeast)}, {CA_EffShape}, {3392,3616}, 318, 1,{NQOpTable = 1,LMTable="MAX"},0)

local GBScreen = CreateCcode()
TriggerX(FP,{CD(GunTrigGCcode,222220//0x1D,AtLeast),CD(GunTrigGCcode,225760//0x1D,AtMost)},{SetMemory(0x657A9C,SetTo,0)},{preserved})

TriggerX(FP,{CD(GunTrigGCcode,222220//0x1D,AtLeast),CD(GunTrigGCcode,225760//0x1D,AtMost),CD(GBScreen,0)},{SetMemory(0x657A9C,SetTo,31)},{preserved})
TriggerX(FP,{CD(GunTrigGCcode,222220//0x1D,AtLeast),CD(GunTrigGCcode,225760//0x1D,AtMost),CD(GBScreen,1)},{SetMemory(0x657A9C,SetTo,24)},{preserved})

DoActionsX(FP,{AddCD(GBScreen,1)})
TriggerX(FP,{CD(GunTrigGCcode,222220//0x1D,AtLeast),CD(GunTrigGCcode,223660//0x1D,AtMost),CD(GBScreen,2,AtLeast)},{SetCD(GBScreen,0)},{preserved})
TriggerX(FP,{CD(GunTrigGCcode,224000//0x1D,AtLeast),CD(GunTrigGCcode,224330//0x1D,AtMost),CD(GBScreen,2,AtLeast)},{SetCD(GBScreen,0)},{preserved})
TriggerX(FP,{CD(GunTrigGCcode,224440//0x1D,AtLeast),CD(GunTrigGCcode,224880//0x1D,AtMost),CD(GBScreen,2,AtLeast)},{SetCD(GBScreen,0)},{preserved})

TriggerX(FP,{CD(GunTrigGCcode,225030//0x1D,AtLeast),CD(GBScreen,2,AtLeast)},{SetCD(GBScreen,0)})
TriggerX(FP,{CD(GunTrigGCcode,225180//0x1D,AtLeast),CD(GBScreen,2,AtLeast)},{SetCD(GBScreen,0)})

for i = 0, 7 do
	TriggerX(FP,{CD(GunTrigGCcode,(225330+((111.111/2)*i))//0x1D,AtLeast),CD(GBScreen,2,AtLeast)},{SetCD(GBScreen,12)})
end


TriggerX(FP,{CD(GunTrigGCcode,225770//0x1D,AtLeast),CD(GunTrigGCcode,230000//0x1D,AtMost)},{SetMemory(0x657A9C,SetTo,20)},{preserved})

ICD2Star = CS_SortA(CSMakeStar(5,135,128,180,CS_Level("Star",5,13),CS_Level("Star",5,12)) , 0)
ICD2StarFill = CS_FillPathXY(ICD2Star, 1, 96, 96, 0)
ICD2StarFillX = CS_OverlapX(ICD2Star,ICD2StarFill)
   G_CB_TSetSpawn({CD(GunTrigGCcode,225770//0x1D,AtLeast)},{"Tom Kazansky (Wraith)"},CS_SortA(ICD2StarFillX, 1),P6,{2048,2048},1,{LMTable=3,RepeatType="Nothing"})

   TriggerX(FP,{CD(GunTrigGCcode,232880//0x1D,AtLeast)},{
	Order("Tom Kazansky (Wraith)",P6,64,Move,"CD141")

})
   TriggerX(FP,{CD(GunTrigGCcode,240000//0x1D,AtLeast)},{SetMemory(0x657A9C,SetTo,31),
	GiveUnits(All,"Tom Kazansky (Wraith)",P6,64,P8),
	GiveUnits(All,"Mojo (Scout)",P6,64,P8),
	Order("Tom Kazansky (Wraith)",P8,64,Attack,"CD141"),
	Order("Mojo (Scout)",P8,64,Attack,"CD141"),
	SetCp(P8),RunAIScriptAt(JYD, 64),SetCp(FP),
})


BeatCUTrig(240000,254110,UT1,nil,975)






BeatCUTrig(261330,267330,UT1)
BeatCUTrig(268440,282440,UT1,nil,981)


G_CB_TScanEff({CD(GunTrigGCcode,283550/0x1D,AtLeast)}, {GBEffSh_T}, "CD141", 391, 1,{LMTable=3})
G_CB_TSetSpawn({CD(GunTrigGCcode,283550//0x1D,AtLeast)},{30},GBEffSh_T2,P8,"CD141",1,{LMTable=2,Order={Attack,"CD141"}})
G_CB_TSetSpawn({CD(GunTrigGCcode,283550//0x1D,AtLeast)},{"Infested Kerrigan (Infested Terran)"},GBEffSh_T3,P8,"CD141",1,{LMTable=2,Order={Attack,"CD141"}})

TriggerX(FP,{CD(GunTrigGCcode,283550//0x1D,AtLeast)},{RotatePlayer({RunAIScript("Turn OFF Shared Vision for Player 8");Order("Men",P8,64,Attack,"CD141")}, Force1, FP)})


GB_WhSpawn(0,{"Hunter Killer (Hydralisk)","Kukulza (Mutalisk)"},GBSh_1)
GB_WhSpawn(14220,{"Torrasque (Ultralisk)","Kukulza (Guardian)"},GBSh_1)
GB_WhSpawn(28440,{"Alan Schezar (Goliath)"},GBSh_2)
GB_WhSpawn(28440,{"Tom Kazansky (Wraith)"},GBSh_1)
GB_WhSpawn(42660,{"Edmund Duke (Siege Mode)","Mojo (Scout)"},GBSh_1)
GB_WhSpawn(56880,{"Hyperion (Battlecruiser)"},GBSh_1)
GB_WhSpawn(64000,{"Edmund Duke (Siege Tank)"},GBSh_1)
GB_WhSpawn(71110,{"Hyperion (Battlecruiser)"},GBSh_1)
GB_WhSpawn(71110,{"Edmund Duke (Siege Tank)"},GBSh_2)
GB_WhSpawn(99550,{"Fenix (Zealot)","Mojo (Scout)"},GBSh_1)
GB_WhSpawn(128000,{"Warbringer (Reaver)"},GBSh_2)
GB_WhSpawn(142222,{"Fenix (Dragoon)"},GBSh_1)
GB_WhSpawn(142222,{"Danimoth (Arbiter)"},GBSh_2)
GB_WhSpawn(156440,{"Zeratul (Dark Templar)","Mojo (Scout)"},GBSh_1)
GB_WhSpawn(163550,{"Tassadar (Templar)"},GBSh_1)
GB_WhSpawn(179550,{"Tassadar/Zeratul (Archon)"},GBSh_1)
GB_WhSpawn(193770,{"Gantrithor (Carrier)"},GBSh_2)
GB_WhSpawn(200880,{"Danimoth (Arbiter)"},GBSh_2)
GB_WhSpawn(240000,{"Fenix (Dragoon)","Mojo (Scout)"},GBSh_1)
GB_WhSpawn(254220,{"Edmund Duke (Siege Mode)"},GBSh_1)
GB_WhSpawn(268000,{"Zerg Broodling"},GBSh_1)
GB_WhSpawn(268000,{"Norad II (Battlecruiser)"},GBSh_2)

GB_WhSpawn(254220,{"Hunter Killer (Hydralisk)","Kukulza (Mutalisk)"},GBSh_1)


--[[




--[[






Trigger { -- PTP
	players = {P8},
	conditions = {
		Bring(P8, Exactly, 0, "Protoss Temple", "CD231");
		Deaths(P6, AtLeast, 4300, "Zerg Greater Spire");
	},
	actions = {
		CreateUnit(15, "Zerg Broodling", "CD231", P8);
		CreateUnit(15, "Zerg Broodling", "CD232", P8);
		CreateUnit(15, "Zerg Broodling", "CD233", P8);
		CreateUnit(15, "Zerg Broodling", "CD234", P8);
		CreateUnit(15, "Zerg Broodling", "CD235", P8);
		CreateUnit(15, "Zerg Broodling", "CD236", P8);
		Comment("PTP");
	},
}


Trigger { -- PTP END
	players = {P8},
	conditions = {
		Bring(P8, Exactly, 0, "Protoss Temple", "CD231");
		Deaths(P6, AtLeast, 5500, "Zerg Greater Spire");
	},
	actions = {
		SetInvincibility(Disable, "Protoss Shield Battery", P7, "Anywhere");
		DisplayText("\x13\x1F Protoss Shield Battery invincible release", 4);
		Comment("PTP END");
	},
}
]]



Trigger2X(FP,{CD(GunTrigGCcode,283550//0x1D,AtLeast)},{
	SetInvincibility(Disable, "Zerg Ultralisk Cavern", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Defiler Mound", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Spawning Pool", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Greater Spire", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Nydus Canal", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Evolution Chamber", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Hydralisk Den", Force2, "Anywhere");
	SetInvincibility(Disable, "Zerg Queen's Nest", Force2, "Anywhere");
	SetInvincibility(Disable, "Protoss Shield Battery", P7, "Anywhere");
	RotatePlayer({DisplayTextX("\x13\x1F Protoss Shield Battery invincible release", 4)},Force1,FP)
	})

	--DoActions(FP,{MoveUnit(All, "Men", Force1, "HZ", "CD228")})
CIfEnd()



DoActions(FP,{KillUnit("Zerg Devourer", Force2),KillUnit("Zerg Devourer", P6),KillUnit(84, Force2),KillUnit(84, P6)})









function GunPoint(Player,GunID,Text,Point)
	TriggerX(FP,{Deaths(Player, AtLeast, 1, GunID);},{
		RotatePlayer({DisplayTextX(Text, 4)}, HumanPlayers, FP),SetScore(Force1, Add, Point, Kills),SetDeaths(Player,Subtract,1,GunID)},{preserved})
end

function HPoint(UnitID,Text,Point)
	TriggerX(FP,{Deaths(P7, AtLeast, 1, UnitID);},{
		RotatePlayer({DisplayTextX(Text, 4);PlayWAVX("staredit\\wav\\cut.ogg");PlayWAVX("staredit\\wav\\cut.ogg");}, HumanPlayers, FP);
		SetScore(Force1, Add, Point, Kills);
		SetDeaths(P7, Subtract, 1, UnitID)
	},{preserved})
end



GunPoint(P8,"Zerg Hatchery","\x13\x04 Hatchery \x0720000 \x04Point",20000)
GunPoint(P7, "Zerg Hatchery", "\x13\x04 Hatchery \x0720000 \x04Point", 20000)
GunPoint(P8, "Infested Command Center", "\x13\x04 Infested Command Center \x07100000 \x04Point", 100000)
GunPoint(P8, "Zerg Overmind (With Shell)", "\x13\x04 Zerg Overmind(With Shell) \x0780000 \x04Point", 80000)
GunPoint(P8, "Protoss Temple", "\x13\x04 Protoss Temple \x07200000 \x04Point", 200000)
GunPoint(P8, "Protoss Nexus", "\x13\x04 Protoss Nexus \x07150000 \x04Point", 150000)
GunPoint(P8, "Zerg Lair", "\x13\x04 Zerg Lair \x0730000 \x04Point", 30000)
GunPoint(P7, "Zerg Lair", "\x13\x04 Zerg Lair \x0730000 \x04Point", 30000)
GunPoint(P7, "Power Generator", "\x13\x04 Power Generator \x07100000 \x04Point", 100000)
GunPoint(P7, "Zerg Hive", "\x13\x04 Zerg Hive \x0750000 \x04Point", 50000)
GunPoint(P8, "Zerg Hive", "\x13\x04 Zerg Hive \x0750000 \x04Point", 50000)
GunPoint(P8, "Stasis Cell/Prison", "\x13\x04 Stasis Cell/Prison \x0770000 \x04Point", 70000)
GunPoint(P8, "Zerg Overmind", "\x13\x04 Zerg Overmind \x0760000 \x04Point", 60000)
GunPoint(P8, "Psi Disrupter", "\x13\x04 Psi Disrupter \x0780000 \x04Point", 80000)
GunPoint(P8, "Terran Armory", "\x13\x04 Terran Armory \x0760000 \x04Point", 60000)
GunPoint(P8, "Terran Engineering Bay", "\x13\x04 Terran Engineering Bay \x0750000 \x04Point", 50000)
GunPoint(P8, "Terran Command Center", "\x13\x04 Terran Command Center \x0740000 \x04Point", 40000)
GunPoint(P7, "Norad II (Crashed Battlecruiser)", "\x13\x04 Norad II \x0720000 \x04Point", 20000)
GunPoint(P7, "Ion Cannon", "\x13\x04 Ion Cannon \x0770000 \x04Point", 70000)
GunPoint(P8, "Zerg Cerebrate Daggoth", "\x13\x04 Zerg Cerebrate Daggoth \x0730000 \x04Point", 30000)
GunPoint(P8, "Warp Gate", "\x13\x04 Warp Gate \x07100000 \x04Point", 100000)
GunPoint(P8, "Protoss Stargate", "\x13\x04 Protoss Stargate \x07100000 \x04Point", 100000)
GunPoint(P7, "Terran Supply Depot", "\x13\x04 Terran Supply Depot \x0710000 \x04Point", 10000)
GunPoint(P8, "Norad II (Crashed Battlecruiser)", "\x13\x04 Norad II \x07100000 \x04Point", 100000)
GunPoint(P8, "Xel'Naga Temple", "\x13\x04 Xel'Naga Temple \x07150000 \x04Point", 150000)
GunPoint(P8, "Power Generator", "\x13\x04 Power Generator \x0780000 \x04Point", 80000)
GunPoint(P8, "Ion Cannon", "\x13\x04 Ion Cannon \x0770000 \x04Point", 70000)
GunPoint(P8, "Zerg Cerebrate", "\x13\x04 Zerg Cerebrate \x0740000 \x04Point", 40000)
GunPoint(P8, "Terran Factory", "\x13\x04 Terran Factory \x0740000 \x04Point", 40000)
GunPoint(P8, "Terran Barracks", "\x13\x04 Terran Barracks \x0740000 \x04Point", 40000)
GunPoint(P7, "Infested Command Center", "\x13\x04 Infested Command Center \x0770000 \x04Point", 70000)
HPoint("Gui Montag (Firebat)", "\x13\x1F Gui Montag \x0750000 \x04Point", 50000)
HPoint("Sarah Kerrigan (Ghost)", "\x13\x1F Sarah Kerrigan \x0730000 \x04Point", 30000)
HPoint("Alan Schezar (Goliath)", "\x13\x1F Alan Schezar \x0735000 \x04Point", 35000)
HPoint("Jim Raynor (Vulture)", "\x13\x1F Jim Raynor \x0740000 \x04Point", 40000)
HPoint("Tom Kazansky (Wraith)", "\x13\x1F Tom Kazansky \x0750000 \x04Point", 50000)
HPoint("Edmund Duke (Siege Tank)", "\x13\x1F Edmund Duke \x0740000 \x04Point", 40000)
HPoint("Edmund Duke (Siege Mode)", "\x13\x1F Edmund Duke \x0730000 \x04Point", 30000)
HPoint("Hyperion (Battlecruiser)", "\x13\x1F Hyperion \x0760000 \x04Point", 60000)
HPoint("Norad II (Battlecruiser)", "\x13\x1F Norad II \x07150000 \x04Point", 150000)
HPoint("Zeratul (Dark Templar)", "\x13\x1F Zeratul \x0745000 \x04Point", 45000)
HPoint("Tassadar (Templar)", "\x13\x1F Tassadar \x0750000 \x04Point", 50000)
HPoint("Tassadar/Zeratul (Archon)", "\x13\x1F Tassadar/Zeratul \x0765000 \x04Point", 65000)
HPoint("Fenix (Zealot)", "\x13\x1F Fenix \x0735000 \x04Point", 35000)
HPoint("Fenix (Dragoon)", "\x13\x1F Fenix \x0740000 \x04Point", 40000)
HPoint("Mojo (Scout)", "\x13\x1F Mojo \x0760000 \x04Point", 60000)
HPoint("Warbringer (Reaver)", "\x13\x1F Warbringer \x0750000 \x04Point", 50000)
HPoint("Gantrithor (Carrier)", "\x13\x1F Gantrithor \x0790000 \x04Point", 90000)
HPoint("Danimoth (Arbiter)", "\x13\x1F Danimoth \x0770000 \x04Point", 70000)


end
