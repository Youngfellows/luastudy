
require("app.scenes.Robot")
FootballRobot = Robot:New({position = "广州"})
function FootballRobot:SetPosition(p) 
    self.position = p
end

function FootballRobot:GetPosition()
   return self.position 
end