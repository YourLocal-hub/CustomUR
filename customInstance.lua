local originalNew = Instance.new

local classMap = {
    Window = "ScreenGui",
    Tab = "Frame",
    Button = "TextButton",
    Inputbox = "TextBox",
    Toggle = "TextButton",
    Slider = "Frame",
    Checkbox = "TextButton"
}

Instance.new = function(className, parent)
    local realClass = classMap[className] or className
    local obj = originalNew(realClass)

    -- Style customization
    if className == "Window" then
        obj.Name = "CustomUR_Window"
        obj.ResetOnSpawn = false
    elseif className == "Tab" then
        obj.Size = UDim2.new(0, 400, 0, 300)
        obj.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    elseif className == "Button" then
        obj.Size = UDim2.new(0, 120, 0, 30)
        obj.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    elseif className == "Inputbox" then
        obj.Size = UDim2.new(0, 200, 0, 30)
        obj.PlaceholderText = "Enter text..."
    end

    if parent then
        obj.Parent = parent
    end

    return obj
end
