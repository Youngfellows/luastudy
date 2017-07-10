
local Lesson8 = class("Lesson8", function()
    return display.newScene("Lesson8")
end)

function Lesson8:ctor()

	print("---------Lua 错误处理--------------")
	testError()
	--openFile()

    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson8 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end


-- 
function testError()
	for a= 1,10 do
		 print(a)
	end

	add(10)
end

function add(a,b)
   assert(type(a) == "number", "a 不是一个数字")
   assert(type(b) == "number", "b 不是一个数字")
   return a+b
end

-- 文件操作
function openFile()
	--"app/scenes/Lesson8.lua"
	file = io.open("app/scenes/le.lua", "r")

	-- 设置默认输入文件为 test.lua
	io.input(file)

	-- 输出文件第一行
	print(io.read())

	-- 关闭打开的文件
	--io.close(file)
end



return Lesson8
