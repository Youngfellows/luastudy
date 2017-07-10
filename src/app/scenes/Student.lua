-- Meta class
Student = {name = nil,age = 0}

-- 基础类方法 new
function Student:new (o,name,age)
  o = o or {}
  setmetatable(o,self)
  self.__index = self
  name = name or nil
  age = age or 0
  self.name = name;
  self.age = age;
  return o
end

-- 基础类方法 printArea
function Student:printInfo()
  print("姓名: ",self.name)
  print("年龄: ",self.age)
end