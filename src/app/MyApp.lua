
require("config")
require("cocos.init")
require("framework.init")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    --self:enterScene("MainScene")
    -- self:enterScene("Lesson2")
    -- self:enterScene("Lesson3")
    -- self:enterScene("Lesson4")
    -- self:enterScene("Lesson5")
    --self:enterScene("Lesson6")
    -- self:enterScene("Lesson7")
    -- self:enterScene("Lesson8")
    -- self:enterScene("Lesson9")
    --self:enterScene("Lesson10")
    --self:enterScene("Lesson11")
   self:enterScene("Lesson12")
end

return MyApp
