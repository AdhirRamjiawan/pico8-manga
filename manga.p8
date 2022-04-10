pico-8 cartridge // http://www.pico-8.com
version 35
__lua__

local cur_scene = 1

function _init()
end

function _update()

	if btnp(5, 0) then
		cur_scene += 1
	end
	
	if cur_scene > 3 then
		cur_scene = 1
	end

end

function _draw()
	cls()
	print("manga")
	
	if cur_scene == 1 then
		draw_scene1()
	elseif cur_scene == 2 then
		draw_scene2()
	elseif cur_scene == 3 then
		draw_scene3()
	end
end

function draw_border()
	rect(10, 10, 118, 118, 0)
	rectfill(11, 11, 117, 117, 7)
end

function draw_right_main()
	line(63, 10, 63, 118, 0)
	line(10, 50, 63, 50, 0)
	line(10, 90, 63, 90, 0)
end

function draw_left_main()
	line(63, 10, 63, 118, 0)
	line(63, 50, 117, 50, 0)
	line(63, 90, 117, 90, 0)
end

function draw_hor_split()
	line(10, 63, 117, 63, 0)
end

function exclam(x, y, c)
	line(x, y, x + 10, y + 2, c)
	line(x, y, x + 1, y + 20, c)
	line(x+10, y+2, x+4, y+20, c)
	line(x+1, y+20, x+4, y+20, c)
	
	rect(x, y+22, x+4, y+26, c)
end

function star(x, y, c)
	line(x+5, y-4, x-2, y+6, c)
	line(x+5, y-4, x+5, y+6, c)
	line(x+5, y+6, x, y-3, c)
	line(x, y-3, x+8, y+2, c)
	line(x+8, y+2, x, y+5, c)
end

function orb(x, y, r, c)
	circ(x, y, r, c)
	circfill(x, y, r-2, c+1)
	circfill(x, y, r-3, c+2)
end

function draw_scene1()
	cls(7)
	draw_border()

	draw_right_main()	
	
	print("the tale of", 66, 15)
	print("the pinchin", 66, 22)
	spr(1, 66, 30)
	spr(2, 74, 30)
	spr(17, 66, 38)
	spr(18, 74, 38)
	spr(33, 66, 46)
	spr(34, 74, 46)
	
	circ(80, 88, 10, 6)
	circ(80, 88, 7, 6)
	circ(80, 88, 4, 6)
	
	rectfill(80, 60, 110, 90, 7)
	
	exclam(100, 38, 0)
	exclam(80, 50, 13)
	
	spr(49, 66, 90)
	spr(50, 74, 90)
	spr(51, 82, 90)
	spr(52, 90, 90)
	spr(53, 98, 90)
	spr(36, 90, 82)
	spr(37, 98, 82)
	
	print("whoosh!!", 70, 100, 5)
	
	exclam(20, 20, 6)
	exclam(40, 22, 6)
	exclam(50, 18, 6)
	
	print("young ones, ", 12, 12, 0)
	print("learn what", 12, 18, 0) 
	print("our elders", 12, 24, 0)
	print("gave us!", 12, 30, 0)
	
	star(20, 60, 6)
	star(50, 70, 6)
	star(30, 78, 6)
	
	spr(3, 12, 60)
 spr(3, 32, 70)
	spr(3, 22, 80)
	spr(3, 42, 66)
	
	print("ahhh..", 12, 54, 0)
	
	star(20, 110, 6)
	star(50, 100, 6)
	star(30, 98, 6)
	
	orb(35, 105, 10, 8)
end

function draw_scene2()
	cls(15)
	draw_border()
	
	draw_left_main()
	
 lby = 12
	
	print("there are", 12, 12, 0)
	print("pinchin of", 12, 18, 0)
	print("many kinds..", 12, 24, 0)
	
	print("we speak", 12, 50, 0)
	print("many", 12, 56, 0)
	print("tongues..", 12, 62, 0)
	
	print("fight with", 12, 92, 0)
	print("styles owned", 12, 98, 0)
	print("by each..", 12, 104, 0)
	
	print("b u t", 72, 20, 0)
	exclam(100, 10, 0)
	
	orb(85, 70, 10, 8)
	star(100, 65, 6)
	
	spr(3, 60 + 12, 28 + 65)
 spr(3, 60 + 32, 28 + 70)
	spr(3, 60 + 22, 28 + 80)
	spr(3, 60 + 42, 28 + 66)
end

function draw_scene3()
	cls(5)
	draw_border()
	
	draw_hor_split()
	
	print("to go forward", 60, 15, 0)
	print("diversity is key", 50, 21, 0)
	
	print("in where we find strength", 12, 50, 0)
	
	exclam(20, 20, 6)
	
	orb(64, 90, 20, 8)

	spr(3, 60 + 12, 28 + 65)
 spr(3, 60 + 32, 28 + 70)
	spr(3, 60 + 22, 28 + 80)
	spr(3, 60 + 42, 28 + 66)

	spr(1, 66 - 50, 50 + 30)
	spr(2, 74 - 50, 50 + 30)
	spr(17, 66 - 50, 50 + 38)
	spr(18, 74 - 50, 50 + 38)
	spr(33, 66 - 50, 50 + 46)
	spr(34, 74 - 50, 50 + 46)


end
__gfx__
00000000000000000000000001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000011111111111111001666610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700015555556666661001166510000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000015555556666661001666610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000015555556666661001611610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700015555556666661001666610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015111156111161000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555556666661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555111166661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000015555551166661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000011555556166610000000000000000000011110000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000001555556666110000000000000000001111011100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000001155556666100000000000000000011100001100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115556661000000000000000000111100000100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000011556110000000000000000000111000000100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000001151100000000000000000001111000000100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000111000000000000000000011111000000100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000555555555555555555555555511116161161100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000005555555555555555555555555551111616116100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000055555555555555555555555555555111611616100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000556666666666666666666666666665111611616100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000556666666666666666666666666665111611616100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000055666666666666666666666666665111611616100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000005566666666666666666666666651111611616100000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000555555555555555555555555511116116161100000000000000000000000000000000000000000000000000000000000000000000000000000000
