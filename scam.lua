-- Tạo menu giao dịch
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    -- Đợi cho PlayerGui của người chơi tải
    local playerGui = player:WaitForChild("PlayerGui")

    -- Tạo ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TradeMenu"
    screenGui.Parent = playerGui

    -- Tạo khung menu
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.4, 0, 0.4, 0)
    frame.Position = UDim2.new(0.3, 0, 0.3, 0)
    frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    frame.Parent = screenGui

    -- Thêm nút "Freeze Trade"
    local freezeButton = Instance.new("TextButton")
    freezeButton.Text = "Freeze Trade"
    freezeButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    freezeButton.Position = UDim2.new(0.1, 0, 0.2, 0)
    freezeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    freezeButton.Parent = frame

    -- Thêm nút "Accept Trade"
    local acceptButton = Instance.new("TextButton")
    acceptButton.Text = "Accept Trade"
    acceptButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    acceptButton.Position = UDim2.new(0.1, 0, 0.6, 0)
    acceptButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
    acceptButton.Parent = frame

    -- Chức năng khi nhấn "Freeze Trade"
    freezeButton.MouseButton1Click:Connect(function()
        print(player.Name .. " đã nhấn Freeze Trade")
        -- Thêm logic tạm dừng giao dịch ở đây
    end)

    -- Chức năng khi nhấn "Accept Trade"
    acceptButton.MouseButton1Click:Connect(function()
        print(player.Name .. " đã nhấn Accept Trade")
        -- Thêm logic xác nhận giao dịch ở đây
    end)
end)