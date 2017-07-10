
local Lesson5 = class("Lesson5", function()
    return display.newScene("Lesson5")
end)

function Lesson5:ctor()
	print("------------- 字符串学习 -------------")
	method1()
	method2()

	print("---------字符串操作-----------")
	operString()


    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson5", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end
-- 字符串操作
function operString()
	-- 转换为大写
	name = "henryChen"
	print(string.upper(name))
end


--转义字符
function method2()
	str1 = "思必弛\"AI\"企业"
	print(str1)

	str2 = "\t山明水凈夜來霜，\n\t數樹深紅出淺黃．\n\t試上高樓清入骨，\n\t豈如春色嗾人狂．"
	print(str2)

end

function method1()
	str1 = "苏州思必弛信息科技有限公司"
	str2 = 'AI企业'
	str3 =  [[
				广东省深圳市南山区
				软件产业基地4A205
			]]
	print(str1)
	print(str2)
	print(str3)

end


return Lesson5
