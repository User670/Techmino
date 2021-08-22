return{
	color=COLOR.lYellow,
	env={
		life=100,
		drop=100000000,lock=100000000,
		freshLimit=15,
		bufferLimit=1e99,
		bg='bg2',bgm='battle',
	},
	load=function()
		--PLY.newPlayer(1)
		PLY.newAIPlayer(1,AIBUILDER('CC',10,6,true,500000))
		PLY.newAIPlayer(2,AIBUILDER('CC',10,6,true,500000))
	end,
	score=function(P)return{P.stat.time}end,
	scoreDisp=function(D)return STRING.time(D[1])end,
	comp=function(a,b)return a[1]<b[1]end,
	getRank=function(P)
		if P.result=='win'then
			local T=P.stat.time
			return
			T<=80 and 5 or
			T<=110 and 4 or
			T<=150 and 3 or
			T<=240 and 2 or
			1
		end
	end,
}