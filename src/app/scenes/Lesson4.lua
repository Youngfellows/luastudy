
local Lesson4 = class("Lesson4", function()
    return display.newScene("Lesson4")
end)

function Lesson4:ctor()
	print("---------Lua 运算符 学习------")
	--Lua运算符
	arithmetic()

	print("-------Lua 关系运算符 ----------")
	--关系运算符
	relational()


	print("------Lua 逻辑运算符 -------")
	logical()

	print("------其他运算符------")
	other()

	print("-------运算符优先级---------")
	priority()


    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua 运算符 学习", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

--运算符优先级
function priority()
	a = 20
	b = 10
	c = 15
	d = 5

	e = (a+b)*c/d -- e = (30*15)/5
	print("e = "..e)

	f = ((a+b)*c)/d
	print("f = "..f)

	g = (a+b)*(c/d)
	print("g = "..g)

	h = a+(b*c)/d
	print("h = "..h)
end

-- 其他运算符
function other()
	address = "苏州思必弛信息科技有限公司"
	title = "AI企业"
	print(address .. title)
	print("address的长度"..#address)

end

--逻辑运算符
function logical()
	a = 2
	b = 10
	c = 33
	if (a >= b and a >= c)  then
		print("a大于等于b 且 a大于等于c")
	elseif (a >=b and a <= c) then
		print("哈哈")
	end


	if (a > b or a > c) then
		print("妹子不错哟")	
	else
		print("要多远滚多远")	
	end

	if not(a > b) then
		print("a不大于b")
	else
		print("a大于b")
	end


end


--关系运算符
function relational()
	a = 21
	b = 10

	if (a == b) then
		print("a 等于 b")
	else
		print("a 不等于 b")
	end


	if (a ~= b) then
		print("a 不等于 b")
	else
		print("a 等于 b")
	end

	if (a > b) then
	   print("a 大于 b")
	else
		print("a 小于于 b")
	end

	if (b < a) then
		print("b 小于 a")
	else
		print("b 大于 a")
	end

	a = 10
	b = 10
	if (a >= b) then
		 print("a 大于等于 b")
	else
		print("a 小于 b")
	end

	a = 10
	b = 20
	if (a <= b) then
		print("a 小于等于 b")
	else
		print("a 大于 b")
	end

end

-- 算数运算符
function arithmetic()
	a = 21
	b = 10
	c = a + b
	print("21 + 10 = "..c)

	d = a - b
	print("21 - 10 = "..d)

	e = a * b
	print("21 * 10 = "..e)

	f = a / b
	print("21 / 10 = "..f)

	g = a % b
	print("21 % 10 = "..g)

	h = a ^ b
	print("21 ^ 10 = "..h)

	i = -a
	print("-a = "..i)	

end

return Lesson4
