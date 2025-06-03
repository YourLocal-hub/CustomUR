# CustomUR

Rayfield-style Roblox UI Library

## ✨ Features
- Custom UI components (`Window`, `Tab`, `Button`, `Inputbox`)
- Components: `Toggle`, `Slider`, `Checkbox`
- Easy `Instance.new("Window")`-style API

## 🚀 Usage

```lua
local CustomUR = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourLocal-hub/CustomUR/main/CustomUR/init.lua"))()
local gui = CustomUR.CreateWindow({ Name = "My GUI" })

gui:Button({ Text = "Hello", Callback = function() print("Clicked") end })
