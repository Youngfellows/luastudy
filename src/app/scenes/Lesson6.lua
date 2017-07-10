
local Lesson6 = class("Lesson6", function()
    return display.newScene("Lesson6")
end)

function Lesson6:ctor()

	print("----------Lua 元表--------------")
	metatableTest()

	print("------测试2-----------")
	test2()

	print("------newindex 使用--------")
	test3()

    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson6 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end


function test3()
	mymetatable = {}
	mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

	print(mytable.key1)

	mytable.newkey = "新值2"
	print(mytable.newkey,mymetatable.newkey)

	mytable.key1 = "新值1"
	print(mytable.key1,mymetatable.newkey1)
end

function test2()

	other = { foo = 3}
	t = setmetatable({}, { __index = other})
	print(t.foo)
	print(t.bar)

	print("----------------")
	mytable = setmetatable({key1 = "value1"}, {
	 __index = function(mytable, key)
	   if key == "key2" then
	      return "metatablevalue"
	    else
	      return nil
	    end
	  end
	})

	print("--------------")
	mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
	print(mytable.key1,mytable.key2)

	print(mytable.key1,mytable.key2)
end

-- 元表测试
function metatableTest()
	tab1 = {"apple","orange","mango","pear","banana"}
	metatable1 = {}
	setmetatable(tab1, metatable1)

	getmetatable(metatable1)
	print(metatable1)

	for k,v in pairs(tab1) do
		print(k,v)
	end
end


return Lesson6
