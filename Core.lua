local Components = {
    Button = require(script.Components.Button),
    Toggle = require(script.Components.Toggle),
    Slider = require(script.Components.Slider),
    Checkbox = require(script.Components.Checkbox)
}

local CustomUR = {}

function CustomUR.CreateWindow(options)
    local Window = Instance.new("Window")
    Window.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local Tab = Instance.new("Tab", Window)
    Tab.Position = UDim2.new(0.5, -200, 0.5, -150)

    local self = {
        Window = Window,
        Tab = Tab
    }

    for name, module in pairs(Components) do
        self[name] = function(_, config)
            return module(Tab, config)
        end
    end

    return self
end

return CustomUR
