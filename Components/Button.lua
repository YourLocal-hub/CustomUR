return function(parent, config)
    local Button = Instance.new("Button", parent)
    Button.Text = config.Text or "Button"
    Button.Position = config.Position or UDim2.new(0, 10, 0, 10)

    if config.Callback then
        Button.MouseButton1Click:Connect(config.Callback)
    end

    return Button
end
