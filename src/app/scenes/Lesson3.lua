
local Lesson3 = class("Lesson3", function()
    return display.newScene("Lesson3")
end)

function Lesson3:ctor()
	--[[
	a = "hello " .. "world"
	print(a)

	x = 3
	b,c = 10,2*x
	print(b)
	print(c)
	--]]

	-- 交换变量的值
	x = 5
	y = 6
	x,y = y,x
	print(x,y)

    cc.ui.UILabel.new({
            UILabelType = 2, text = "欢迎学习lua3", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

function Lesson3:onEnter()
end

function Lesson3:onExit()
end

return Lesson3
