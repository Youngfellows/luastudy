
local Lesson7 = class("Lesson7", function()
    return display.newScene("Lesson7")
end)

local newProductor
function Lesson7:ctor()
	print("------协成学习1------")
	test1()

	print("------协成学习2------")
	test2()

	print("------生产者-消费者问题-----")
	test3()


    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson7 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

------------------生产者-消费者问题 start -----------------------------------
-- 生产者-消费者问题
function test3()
	-- 启动程序
	newProductor = coroutine.create(productor)
	consumer()
	
end

function productor()
     local i = 0
     while true do
          i = i + 1
          send(i)     -- 将生产的物品发送给消费者
     end
end

function consumer()
     while true do
          local i = receive()     -- 从生产者那里得到物品
          print(i)
     end
end

function receive()
     local status, value = coroutine.resume(newProductor)
     return value
end

function send(x)
     coroutine.yield(x)     -- x表示需要发送的值，值返回以后，就挂起该协同程序
end

--------------生产者-消费者问题 end----------------

function foo (a)
    print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回  2*a 的值
end

-- 协成学习
function test2()
	co = coroutine.create(function (a , b)
    print("第一次协同程序执行输出", a, b) -- co-body 1 10
    local r = foo(a + 1)
     
    print("第二次协同程序执行输出", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入
     
    print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
	end)
	        
	print("main", coroutine.resume(co, 1, 10)) -- true, 4
	print("--分割线----")
	print("main", coroutine.resume(co, "r")) -- true 11 -9
	print("---分割线---")
	print("main", coroutine.resume(co, "x", "y")) -- true 10 end
	print("---分割线---")
	print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
	print("---分割线---")
end

-- 协成学习
function test1()
	co = coroutine.create(
	    function(i)
	        print(i);
	    end
	)
	 
	coroutine.resume(co, 10086)   -- 1
	print(coroutine.status(co))  -- dead
	 
	print("----------")
	 
	co = coroutine.wrap(
	    function(i)
	        print(i);
	    end
	)
	 
	co(1024)
	 
	print("----------")
	 
	co2 = coroutine.create(
	    function()
	        for i=1,10 do
	            print(i)
	            if i == 3 then
	                print(coroutine.status(co2))  --running
	                print(coroutine.running()) --thread:XXXXXX
	            end
	            coroutine.yield()
	        end
	    end
	)
	 
	coroutine.resume(co2) --1
	coroutine.resume(co2) --2
	coroutine.resume(co2) --3
	 
	print(coroutine.status(co2))   -- suspended
	print(coroutine.running())   --nil
	 
	print("----------")
end

function Lesson7:onEnter()
end

function Lesson7:onExit()
end

return Lesson7
