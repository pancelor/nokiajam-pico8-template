pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- mycoolgame
-- by mycoolname

-- based on pancelor's template:
-- https://github.com/pancelor/nokiajam-pico8-template


-- player
plx = 42
ply = 24
plr = 3

function _update()
	-- read input
	local dx = tonum(btn(1))-tonum(btn(0))
	local dy = tonum(btn(3))-tonum(btn(2))
	-- move
	plx += dx*2
	ply += dy*2
	-- stay inside boundaries
	plx = mid(plr,83-plr, plx)
	ply = mid(plr,47-plr, ply)

	-- grow/shrink
	if btnp(4) then plr+=1 end
	if btnp(5) then plr-=1 end
end

function _draw()
	-- use colors 1 and 7
	-- draw between 0,0 and 83,47 (inclusive)
	-- if you use camera() you'll need to look into the last tab
	cls(1)
	circfill(plx,ply,plr,7)
end

-->8
-- this must be in the last tab

--_real_frame=nil
__draw,_draw=_draw,function()
	-- suppress pause menu -- black is visible
	if btn(6) then poke(0x5f30,1) end

	-- skip every other frame (15fps)
	_real_frame=not _real_frame
	if _real_frame then
		camera(-22,-40) --align to pause menu
		__draw()
	end

	-- dev boundary
	-- purple region will not be visible
	camera(-22,-40)
	rect(-1,-1,84,48,2)
	fillp(▒)
	rect(-2,-2,85,49,2)
	rect(-3,-3,86,50,2)
	fillp()
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111111111f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f11111111111111111111
11111111111111111111f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1111111111111111111
1111111111111111111f1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111777111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111117777711111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111177777771111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111177777771111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111177777771111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111117777711111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111777111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111ff111111111111111111111111111111111111111111111111111111111111111111111111111111111111f1f1111111111111111111
1111111111111111111f1f111111111111111111111111111111111111111111111111111111111111111111111111111111111111ff11111111111111111111
11111111111111111111fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1f1111111111111111111
1111111111111111111f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f11111111111111111111
11111111111111111111f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
