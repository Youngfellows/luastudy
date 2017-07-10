require("app.scenes.Robot")
require("app.scenes.FootballRobot")

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	print("------------Lua 学习笔记之二(进阶话题)---------------")
	test1()

	print("----------------------------")
	--test2()
	test3()


	print("-----------------------------")
	test4()


    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson11 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

-- 基于原型的继承
function test4()
	robot = Robot:New()
    print("姓名:", robot:GetName()) 
    print("编号:", robot:GetId()) 

    robot:SetName("aispeech")
    robot:SetId(1024)
    print("姓名:", robot:GetName()) 
    print("编号:", robot:GetId()) 

    print("-----------------")

    fr = FootballRobot:New()
    print("城市:", fr:GetPosition()) 
    print("姓名:", fr:GetName()) 
    print("编号:", fr:GetId()) 
    print("-----------------")

    fr:SetName("Bob")
   	fr:SetId(10086)
   	fr:SetPosition("深圳")
    print("父类姓名:", robot:GetName())
    print("子类姓名:", fr:GetName()) 
    print("城市:", fr:GetPosition()) 
    print("编号:", fr:GetId()) 

end




function test3()
	--setmetatable返回被设置的表
    t1 = setmetatable({1,2,3},{__add = add})
    t2 = setmetatable({10,20,30},{__add = add})

    for k,v in  pairs(t1) do
        print(k,"=>",v)
    end

    for k,v in  pairs(t2) do
        print(k,"=>",v)
    end

    print("---------两元表相加--------------")
    t1 = t1 + t2
    for i = 1 ,#t1 do
        print(t1[i])
    end	
end

function add(t1,t2)
	--‘#’运算符取表长度
	assert(#t1 == #t2)
	local length = #t1

	for i=1,length do
		t1[i] = t1[i] + t2[i]
	end

	return t1
end


-- 元表
function test2()
	local table1 = {}
	local table2 = {a = "apple",b = "orange",c = "banana"}

	--表{ __index=bable2 }作为表table1的元表
	setmetatable(tatle1, {__index = table2})

	-- 遍历
	--[[
	for k,v in pairs(table1) do
		print("有值吗？")
		print(k,v)
	end
	--]]

	print("-------------")
    print(table1.b, table1.a, table1.c)

end


function test1()
	student = Student("henrychen", 1024)

	print("姓名:",student:GetName())
	print("序号:",student:GetId())
end



function Student(name ,id )
        local data = {name = name ,id = id}  --data为obj.SetName,obj.GetName,obj.SetId,obj.GetId的Upvalue
        local obj = {}  --把需要隐藏的成员放在一张表里,把该表作为成员函数的upvalue。

        function obj.SetName(name)
            data.name = name 
        end

        function obj.GetName() 
            return data.name
        end

        function obj.SetId(id)
            data.id = id 
        end

        function obj.GetId() 
            return data.id
        end

        return obj
    end

return MainScene
