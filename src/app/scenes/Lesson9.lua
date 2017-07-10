require("app.scenes.Shape")
require("app.scenes.Square")
require("app.scenes.Rectangle")
require("app.scenes.Student")

local Lesson9 = class("Lesson9", function()
    return display.newScene("Lesson9")
end)

function Lesson9:ctor()

	-- 创建对象
	myshape = Shape:new(nil,10)
	myshape:printArea()

	-- 创建对象
	mysquare = Square:new(nil,20)
	mysquare:printArea()

	-- 创建对象
	myrectangle = Rectangle:new(nil,10,20)
	myrectangle:printArea()


	student = Student:new(nil,"chenjie",22)
	student:printInfo()


    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson9 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end


return Lesson9
