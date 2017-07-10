Girl = {money = 200}
function Girl.goToMarket(girl,someMoney)
	self.money = self.money - someMoney
end

function Girl.New(extension)
   local t = setmetatable(extension or { }, self) 
   self.__index = self
   return t
end

