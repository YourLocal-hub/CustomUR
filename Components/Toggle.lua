return function(parent, config)
    local Toggle = Instance.new("Toggle", parent)
    Toggle.Text = config.Text or "Toggle"
    Toggle.Position = config.Position or UDim2.new(0, 10, 0, 50)

    local state = false
    Toggle.MouseButton1Click:Connect(function()
        state = not state
        Toggle.Text = config.Text .. ": " .. (state and "ON" or "OFF")
        if config.Callback then
            config.Callback(state)
        end
    end)

    return Toggle
end
