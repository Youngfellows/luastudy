
local Lesson10 = class("Lesson10", function()
    return display.newScene("Lesson10")
end)

function Lesson10:ctor()
	print("---------Lua 学习笔记之一(初阶话题)----------")
	test1()
	tableTest()

	print("----------------一种简单的对象实现方式 ------------------")
	testObj()


    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson10 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

-- 测试
function testObj()
	local student = create("chenjie", 1024)
	for k,v in pairs(student) do
		print(k,"==>",v)
	end

	-- 设置属性
	print("姓名:",student:getName())
	print("序号:",student:getId())

	student:setName("henryChen")
	student:setId(10086)

	print("姓名:",student:getName())
	print("序号:",student:getId())
	
end
-- 一种简单的对象实现方式 
function create(name,id)
	local obj = {name = name,id = id}

	function obj:setName(name)
		self.name = name
	end
		
	function obj:getName()
		return self.name
	end

	function obj:setId(id)
		self.id = id
	end

	function obj:getId()
		return self.id
	end

	return obj
end




-- 表测试
function tableTest()
	local a = {}
	local b = {x = 1,["hello, "] = "world!"}
	a["astring"] = "ni hao!"
	a[1] = 100
	a["a table"] = b

	for k,v in pairs(a) do
		print(k,"==>",v)
	end

end

function test1()
	r1,r2 = foo(2,"124","aispeech.com")
	print(r1,r2)
end

--函数可以返回多个值
function foo(a,b,c,...)
	local sum = a + b
	return sum ,c 
end


return Lesson10
