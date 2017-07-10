
local Lesson2 = class("Lesson2", function()
    return display.newScene("Lesson2")
end)

-- 全局变量
a = 10086
local b = 1024

-- 局部变量
function fun2()
	c = 4
	local d = 8
end


function Lesson2:ctor()
	print("欢迎学习lua 入门哟")
	-- print(func1(10))
	print(a)
	print(b)
	print(c)
	print(d)
	print("------------")
	do
		-- 局部变量
		local e = 123
		-- 全局变量
		f = 78
		print(e,f)
	end

	print(e,f)



    cc.ui.UILabel.new({
            UILabelType = 2, text = "欢迎学习lua", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

--递归1*2*3*4*5...*100
function func1(n)
	-- body
	if n==0 then
		return 1
	else
		return n*func1(n - 1)
	end
end


return Lesson2
