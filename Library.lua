local library = {}

local Main = Instance.new("ScreenGui")
function library:Window(Name)
    local TopBar = Instance.new("Frame")
    local close = Instance.new("ImageButton")
    local Title = Instance.new("TextLabel")
    local Base = Instance.new("Frame")
    local Container = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    Main.Name = "Main"
    Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end
    TopBar.Name = "TopBar"
    TopBar.Parent = Main
    TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
    TopBar.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(0.5, 0, 0.340000004, 0)
    TopBar.Size = UDim2.new(0, 598, 0, 27)
    TopBar.ZIndex = 2
    dragify(TopBar)
    
    close.Name = "close"
    close.Parent = TopBar
    close.BackgroundTransparency = 1
    close.Position = UDim2.new(0.957672536, 0, 0.0662935525, 0)
    close.Size = UDim2.new(0, 25, 0, 25)
    close.ZIndex = 2
    close.Image = "rbxassetid://3926307971"
    close.ImageRectOffset = Vector2.new(324, 364)
    close.ImageRectSize = Vector2.new(36, 36)

    local CloseOpen = true;
    close.MouseButton1Click:Connect(function()
        CloseOpen = not CloseOpen;
        local rotation = CloseOpen and 0 or 45
        Base.Visible = CloseOpen;
        close.Rotation = rotation;
    end)
    
    Title.Name = "Title"
    Title.Parent = TopBar
    Title.BackgroundColor3 = Color3.new(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0.018394649, 0, 0, 0)
    Title.Size = UDim2.new(0, 561, 0, 27)
    Title.ZIndex = 2
    Title.Font = Enum.Font.Gotham
    Title.Text = Name
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Base.Name = "Base"
    Base.Parent = TopBar
    Base.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
    Base.BorderSizePixel = 0
    Base.Position = UDim2.new(0, 0, 0.962962985, 0)
    Base.Size = UDim2.new(0, 598, 0, 278)
    
    Container.Name = "Container"
    Container.Parent = Base
    Container.Active = true
    Container.BackgroundColor3 = Color3.new(1, 1, 1)
    Container.BackgroundTransparency = 1
    Container.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    Container.Position = UDim2.new(0.018394649, 0, 0.0359712243, 0)
    Container.Size = UDim2.new(0, 579, 0, 252)
    Container.ScrollBarThickness = 6
    
    UIListLayout.Parent = Container
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 3)

    local Properties = {}

function Properties:Button(Name, description, callback)
    local ButtonFrame = Instance.new("ImageLabel")
    local ButtonText = Instance.new("TextLabel")
    local Button = Instance.new("TextButton")
    local ButtonCircle = Instance.new("ImageLabel")
    local ClickSymbol = Instance.new("ImageButton")
    local DescText = Instance.new("TextLabel")

    ButtonFrame.Name = "ButtonFrame"
    ButtonFrame.Parent = Container
    ButtonFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    ButtonFrame.BackgroundTransparency = 1
    ButtonFrame.Position = UDim2.new(0.107081175, 0, 0.149280578, 0)
    ButtonFrame.Size = UDim2.new(0, 561, 0, 46)
    ButtonFrame.Image = "rbxassetid://3570695787"
    ButtonFrame.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    ButtonFrame.ScaleType = Enum.ScaleType.Slice
    ButtonFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    
    ButtonText.Name = "ButtonText"
    ButtonText.Parent = ButtonFrame
    ButtonText.BackgroundColor3 = Color3.new(1, 1, 1)
    ButtonText.BackgroundTransparency = 1
    ButtonText.BorderSizePixel = 0
    ButtonText.Position = UDim2.new(0.033868093, 0, 0.195652172, 0)
    ButtonText.Size = UDim2.new(0, 192, 0, 27)
    ButtonText.Font = Enum.Font.SourceSans
    ButtonText.Text = Name
    ButtonText.TextColor3 = Color3.new(1, 1, 1)
    ButtonText.TextSize = 14
    ButtonText.TextXAlignment = Enum.TextXAlignment.Left
    
    Button.Name = "Button"
    Button.Parent = ButtonFrame
    Button.BackgroundColor3 = Color3.new(1, 1, 1)
    Button.BackgroundTransparency = 1
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0.905525863, 0, 0.195652172, 0)
    Button.Size = UDim2.new(0, 37, 0, 27)
    Button.ZIndex = 2
    Button.Font = Enum.Font.SourceSans
    Button.Text = ""
    Button.TextColor3 = Color3.new(0, 0, 0)
    Button.TextSize = 14
    
    ButtonCircle.Name = "ButtonCircle"
    ButtonCircle.Parent = Button
    ButtonCircle.Active = true
    ButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
    ButtonCircle.BackgroundColor3 = Color3.new(1, 1, 1)
    ButtonCircle.BackgroundTransparency = 1
    ButtonCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
    ButtonCircle.Selectable = true
    ButtonCircle.Size = UDim2.new(1, 0, 1, 0)
    ButtonCircle.Image = "rbxassetid://3570695787"
    ButtonCircle.ImageColor3 = Color3.new(0.168627, 0.168627, 0.168627)
    ButtonCircle.ScaleType = Enum.ScaleType.Slice
    ButtonCircle.SliceCenter = Rect.new(100, 100, 100, 100)
    
    ClickSymbol.Name = "ClickSymbol"
    ClickSymbol.Parent = ButtonCircle
    ClickSymbol.BackgroundTransparency = 1
    ClickSymbol.Position = UDim2.new(0.222808167, 0, 0.111111112, 0)
    ClickSymbol.Size = UDim2.new(0, 20, 0, 20)
    ClickSymbol.ZIndex = 1
    ClickSymbol.Image = "rbxassetid://3926305904"
    ClickSymbol.ImageRectOffset = Vector2.new(84, 204)
    ClickSymbol.ImageRectSize = Vector2.new(36, 36)
    
    DescText.Name = "DescText"
    DescText.Parent = ButtonFrame
    DescText.BackgroundColor3 = Color3.new(1, 1, 1)
    DescText.BackgroundTransparency = 1
    DescText.BorderSizePixel = 0
    DescText.Position = UDim2.new(0.424242437, 0, 0.195652172, 0)
    DescText.Size = UDim2.new(0, 192, 0, 27)
    DescText.Font = Enum.Font.SourceSans
    DescText.Text = description
    DescText.TextColor3 = Color3.new(0.596078, 0.596078, 0.596078)
    DescText.TextSize = 14

    Button.MouseButton1Click:Connect(function()
        callback()
    end)

end
return Properties;
end

local a = library:Window("BITCH HI");

a:Button("BEST BTN", "This is a button!", function()
    print("Helli!")
end)
a:Button("DV4 GAMER", "dv4 gamer", function()
    print("dv4 gamer")
end)
a:Button("ATORIFY GAMER", "atorify gamer", function()
    print("atorify gamer")
end)
a:Button("hiko bad", "hiko gay", function()
    print("hiko lesbian")
end)