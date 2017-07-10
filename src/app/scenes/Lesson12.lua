
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	print("-------Lua 学习笔记之三(高阶话题)---------")
	print("-----------迭代实例-----------")
	test1()

	print("----------协程实例-----------------")
	test2()



    cc.ui.UILabel.new({
            UILabelType = 2, text = "Lua Lesson12 Study", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
end

function test2()
	consumer(producer())
end

-- 线程 生产者 消费者
function producer()
	return coroutine.create(
		function(salt)
			local t = {1,2,3,4,5}

			for i=1,#t do
				salt = coroutine.yield(t[i] + salt)				
			end
		end)
end

function consumer(prod)
	local salt = 10
	while true do
		    local running ,product = coroutine.resume(prod, salt)
            salt = salt*salt
            if running then
                print(product or "END!")
            else
                break
            end
	end
end



function test1()
	foreach({1,2,3,4,5}, print)		
end

--迭代
function enum(array)
	local index = 1
	return function()
		local ret = array[index]
		index = index + 1
		return ret
	end
end

function foreach(array,action)
	for element in enum(array) do
		action(element)
	end
end


return MainScene
