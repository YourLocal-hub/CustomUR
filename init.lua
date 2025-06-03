-- FIXED: CustomUR/init.lua

require(script:WaitForChild("CustomInstance")) -- Override Instance.new before anything else local Core = require(script:WaitForChild("Core"))

return { CreateWindow = Core.CreateWindow }
