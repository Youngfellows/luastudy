Robot = { name = "henryChen", id = 10010 }
function Robot:New(extension)
   local t = setmetatable(extension or { }, self) 
   self.__index = self
   return t
end

function Robot:SetName(name)
    self.name = name 
end

function Robot:GetName() 
     return self.name
 end

function Robot:SetId(id)
    self.id = id 
end

function Robot:GetId() 
      return self.id
end