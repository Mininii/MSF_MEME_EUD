function Call_Effect()
	Call_CA_Effect = SetCallForward()
	CCA_ShNm=CreateVar2(FP, nil, nil, 1)
	CA_Eff_Rat = CreateVar2(FP,nil,nil,25000)
	CA_Eff_XY,CA_Eff_YZ,CA_Eff_ZX,CA_Create,CA_Create2 = CreateVars(4,FP)
	CA_EffSWArr = CreateCcodes(8)
	function CA_Eff()
		local CA = CAPlotDataArr
		local CB = CAPlotCreateArr
		local PlayerID = CAPlotPlayerID
		CA_RatioXY(CA_Eff_Rat,186000,CA_Eff_Rat,186000)
		CA_Rotate3D(CA_Eff_XY,CA_Eff_YZ,CA_Eff_ZX)
		CMov(FP,CPosX,_Add(V(CA[8]),3392))
		CMov(FP,CPosY,_Add(V(CA[9]),3616))
		Simple_SetLocX(FP,"nilloc",CPosX,CPosY,CPosX,CPosY,Simple_CalcLoc(0,-32,-32,32,32))
		
		CIf(FP,{CV(CA_Create,0)},{
			SetMemoryW(0x666462, SetTo, 936),
			SetMemory(0x66EC48+(4*936), SetTo, 131),
	})
		


		function CreateEffUnitA(Condition,Height,Color)
			TriggerX(FP,{Condition},{
				SetMemoryB(0x66321C, SetTo, Height); -- 높이
				SetMemoryB(0x669E28+936, SetTo, Color); -- 색상
				CreateUnitWithProperties(1,204,1,FP,{energy = 100})},{preserved})
		end
		
	CreateEffUnitA({CD(CA_EffSWArr[1],0),CVar("X",CA[6],Exactly,1);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[1],0),CVar("X",CA[6],Exactly,1);},20,17)


	CreateEffUnitA({CD(CA_EffSWArr[2],0),CVar("X",CA[6],Exactly,2);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[2],0),CVar("X",CA[6],Exactly,2);},18,13)

	CreateEffUnitA({CD(CA_EffSWArr[3],0),CVar("X",CA[6],Exactly,3);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[3],0),CVar("X",CA[6],Exactly,3);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[3],0),CVar("X",CA[6],Exactly,3);},18,13)

	CreateEffUnitA({CD(CA_EffSWArr[4],0),CVar("X",CA[6],Exactly,4);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[4],0),CVar("X",CA[6],Exactly,4);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[4],0),CVar("X",CA[6],Exactly,4);},18,13)

	CreateEffUnitA({CD(CA_EffSWArr[5],0),CVar("X",CA[6],Exactly,5);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[5],0),CVar("X",CA[6],Exactly,5);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[5],0),CVar("X",CA[6],Exactly,5);},17,17)
	CreateEffUnitA({CD(CA_EffSWArr[5],0),CVar("X",CA[6],Exactly,5);},18,13)

	CreateEffUnitA({CD(CA_EffSWArr[6],0),CVar("X",CA[6],Exactly,6);},18,17)
	CreateEffUnitA({CD(CA_EffSWArr[6],0),CVar("X",CA[6],Exactly,6);},17,13)
	CreateEffUnitA({CD(CA_EffSWArr[6],0),CVar("X",CA[6],Exactly,6);},19,6)
	CreateEffUnitA({CD(CA_EffSWArr[6],0),CVar("X",CA[6],Exactly,6);},19,6)

	CreateEffUnitA({CD(CA_EffSWArr[7],0),CVar("X",CA[6],Exactly,7);},17,6)
	CreateEffUnitA({CD(CA_EffSWArr[7],0),CVar("X",CA[6],Exactly,7);},19,17)
	CreateEffUnitA({CD(CA_EffSWArr[7],0),CVar("X",CA[6],Exactly,7);},18,13)

	CreateEffUnitA({CD(CA_EffSWArr[8],0),CVar("X",CA[6],Exactly,8);},19,17)
	CreateEffUnitA({CD(CA_EffSWArr[8],0),CVar("X",CA[6],Exactly,8);},20,17)
	CreateEffUnitA({CD(CA_EffSWArr[8],0),CVar("X",CA[6],Exactly,8);},18,13)

		CIfEnd({SetMemory(0x66EC48+(4*936), SetTo, 409),SetMemoryB(0x669E28+936, SetTo, 9);})
	--커스텀 도형 건작 유닛 생성구간0~227
		--CMov(FP,TRepeatX,CPosX)
		--CMov(FP,TRepeatY,CPosY)
		f_TempRepeatX({CV(CA_Create,1,AtLeast),CV(CA_Create,227,AtMost)}, CA_Create, 1, 193, FP)
		f_TempRepeatX({CV(CA_Create2,1,AtLeast),CV(CA_Create2,227,AtMost)}, CA_Create2, 1, 193, FP)
	CIfEnd()
	end
	SetCall(FP)
		local CA = CAPlotForward()
		CMov(FP,V(CA[1]),CCA_ShNm)
		CA_EffShape = CSMakePolygon(8,256,0,9,1)
		CAPlot(CA_EffShape,FP,nilunit,0,{3392,3616},1,16,{1,0,0,0,9999,1},"CA_Eff",FP,nil,nil,1)
	SetCallEnd()

end