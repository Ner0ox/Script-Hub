local GamesList = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Ner0ox/Script-Hub/main/Loader/games.json",true))

local Utils = {IsLoaded = nil,GAMENAME = nil}

function Utils.Setup()
    local GotScript = nil
    
    return {
        CheckforGame = function(self)
            for i,v in pairs(GamesList) do 
                if tonumber(v.gameId) and tostring(v.script) and v.Status == true then 
                    if v.gameId == game.PlaceId then 
                        GotScript = v.script
                        Utils.IsLoaded = false
			Utils.GAMENAME = v		
                        return;
                    end
                end
            end
        end,
        
        LOAD_SCRIPT = function(self)
            if (not Utils.IsLoaded) and GotScript ~= nil then 
                loadstring(game:HttpGet(GotScript))()
                Utils.IsLoaded = true;
                return;
            else
                return false
            end
        end
    }
end

local Sexy = Instance.new("ScreenGui")
local Loader = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local execute_Btn = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Labels = Instance.new("Folder")
local ScriptStatus = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UIGradient = Instance.new("UIGradient")
local Status_Text = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local Title = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local Splitter = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")


Sexy.Name = "Sexy"
Sexy.Parent = game:GetService("CoreGui")
Sexy.ResetOnSpawn = false

Loader.Name = "Loader"
Loader.Parent = Sexy
Loader.AnchorPoint = Vector2.new(0.5, 0.5)
Loader.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Loader.BorderSizePixel = 0
Loader.Position = UDim2.new(0.5, 0, 0.5, 0)
Loader.Size = UDim2.new(0, 280, 0, 92)
Loader.ZIndex = 2

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Loader

execute_Btn.Name = "execute_Btn"
execute_Btn.Parent = Loader
execute_Btn.AnchorPoint = Vector2.new(0.5, 0)
execute_Btn.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
execute_Btn.Position = UDim2.new(0.5, 0, 0.640462875, 0)
execute_Btn.Size = UDim2.new(0, 267, 0, 26)
execute_Btn.ZIndex = 2
execute_Btn.AutoButtonColor = false
execute_Btn.Font = Enum.Font.SourceSans
execute_Btn.Text = "Continue | Load"
execute_Btn.TextColor3 = Color3.fromRGB(111, 111, 111)
execute_Btn.TextSize = 18.000
execute_Btn.TextStrokeColor3 = Color3.fromRGB(26, 26, 26)
execute_Btn.TextStrokeTransparency = 0.500

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = execute_Btn

Labels.Name = "Labels"
Labels.Parent = Loader

ScriptStatus.Name = "ScriptStatus"
ScriptStatus.Parent = Labels
ScriptStatus.AnchorPoint = Vector2.new(0.5, 0)
ScriptStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptStatus.BackgroundTransparency = 1.000
ScriptStatus.BorderSizePixel = 0
ScriptStatus.Position = UDim2.new(0.5, 0, -0.00100000005, 0)
ScriptStatus.Size = UDim2.new(1, 0, 0, 22)
ScriptStatus.ZIndex = 2
ScriptStatus.Font = Enum.Font.Roboto
ScriptStatus.Text = "Script Status: Working"
ScriptStatus.TextColor3 = Color3.fromRGB(149, 149, 149)
ScriptStatus.TextSize = 12.000
ScriptStatus.TextXAlignment = Enum.TextXAlignment.Right

UIPadding.Parent = ScriptStatus
UIPadding.PaddingRight = UDim.new(0, 14)
UIPadding.PaddingTop = UDim.new(0, 2)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(59, 255, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 255, 0))}
UIGradient.Parent = ScriptStatus

Status_Text.Name = "Status_Text"
Status_Text.Parent = Labels
Status_Text.AnchorPoint = Vector2.new(0.5, 0)
Status_Text.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Status_Text.BackgroundTransparency = 1.000
Status_Text.BorderSizePixel = 0
Status_Text.Position = UDim2.new(0.5, 0, 0.303347707, 0)
Status_Text.Size = UDim2.new(0.867857158, 0, 0, 22)
Status_Text.ZIndex = 2
Status_Text.Font = Enum.Font.SourceSans
Status_Text.Text = "None"
Status_Text.TextColor3 = Color3.fromRGB(144, 144, 144)
Status_Text.TextSize = 18.000

UIPadding_2.Parent = Status_Text
UIPadding_2.PaddingLeft = UDim.new(0, 4)
UIPadding_2.PaddingRight = UDim.new(0, 4)

Title.Name = "Title"
Title.Parent = Labels
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, -0.00100000005, 0)
Title.Size = UDim2.new(1, 0, 0, 22)
Title.ZIndex = 2
Title.Font = Enum.Font.SourceSans
Title.Text = "Nerox Hub - Waiting.."
Title.TextColor3 = Color3.fromRGB(182, 182, 182)
Title.TextSize = 18.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = Title
UIPadding_3.PaddingLeft = UDim.new(0, 4)
UIPadding_3.PaddingRight = UDim.new(0, 4)

Splitter.Name = "Splitter"
Splitter.Parent = Loader
Splitter.AnchorPoint = Vector2.new(0.5, 0)
Splitter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Splitter.BackgroundTransparency = 0.500
Splitter.BorderSizePixel = 0
Splitter.Position = UDim2.new(0.5, 0, 0.540000021, 0)
Splitter.Size = UDim2.new(0, 267, 0, 4)
Splitter.ZIndex = 2

UICorner_3.CornerRadius = UDim.new(0, 10000)
UICorner_3.Parent = Splitter


local Labels = Labels;
local execBtn = execute_Btn;
local splitterLine = Splitter;
	
local main = Loader;
	
function createTween(Object,properties,delayTime)
	local infoTween = TweenInfo.new(tonumber(delayTime),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0);
	
	local Anim = game:GetService('TweenService'):Create(Object,infoTween,properties);
	Anim:Play();
	return Anim;
end;
	
function action()
	main.Size = UDim2.new(0, 0,0, 0)
		
	for i,v in next, Labels:GetChildren() do
		if v:IsA('TextLabel') then
			coroutine.resume(coroutine.create(function()
				createTween(v,{TextTransparency = 1},.2)
			end))
		end
	end
	
	
	for i,v in pairs(main:GetChildren()) do 
		if (not v:IsA("UICorner") and not v:IsA("Folder")) then 
			if v:IsA("TextButton") then
				coroutine.resume(coroutine.create(function()
					v.TextTransparency = 1
					v.BackgroundTransparency = 1
				end))
			elseif v:IsA("Frame") then
				coroutine.resume(coroutine.create(function()
					v.BackgroundTransparency = 1
					v.Size = UDim2.new(0,0,0,3)
				end))
			end
		end
	end
		
	return {
		CLOSE = function(self)
			main.Parent:Destroy()
		end	
	};
end
	
local load_UI = function()
	local tween1 = createTween(main,{Size = UDim2.new(0, 280,0, 92)},.22)
	
	tween1.Completed:Connect(function()
		wait(.15)
		for i,v in next, Labels:GetChildren() do
			if v:IsA('TextLabel') then
				coroutine.resume(coroutine.create(function()
					createTween(v,{TextTransparency = 0},.2)
				end))
			end
		end
	
	
		for i,v in pairs(main:GetChildren()) do 
			if (not v:IsA("UICorner") and not v:IsA("Folder")) then 
				if v:IsA("TextButton") then
					coroutine.resume(coroutine.create(function()
						createTween(v,{TextTransparency = 0},.2)
						createTween(v,{BackgroundTransparency = 0},.2)
					end))
				elseif v:IsA("Frame") then
					coroutine.resume(coroutine.create(function()
						createTween(v,{BackgroundTransparency = 0},.2)
						spawn(function()
							wait(.4)
							createTween(v,{Size = UDim2.new(0,266,0,3)},.3)
						end)
					end))
				end
			end
		end
	end)
	repeat wait(.1) until tween1.Completed;
end
	
action()
coroutine.resume(coroutine.create(function()
	load_UI()
	local SetupGames = Utils.Setup()
	SetupGames:CheckforGame()
	wait(.5)
	if execute_Btn and execute_Btn.BackgroundTransparency ~= 0 then 
		Title.Text = "Nerox Hub - " .. tostring(Utils.GAMENAME)
		execute_Btn.MouseButton1Click:Connect(function()
			repeat wait() 
				SetupGames:LOAD_SCRIPT()
			until not SetupGames:LOAD_SCRIPT()
			action()
		end)
				
		repeat wait(1) until execute_Btn.BackgroundTransparency == 1
		action():CLOSE()
	end
end))
