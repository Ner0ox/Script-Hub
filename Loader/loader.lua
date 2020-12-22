local NeroLoader = Instance.new("ScreenGui")
local Loader = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Labels = Instance.new("Folder")
local ScriptStatus = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UIGradient = Instance.new("UIGradient")
local Status = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local Title = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local Splitter = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UISizeConstraint = Instance.new("UISizeConstraint")

NeroLoader.Name = "NeroLoader"
NeroLoader.Parent = game:GetService("CoreGui")
NeroLoader.ResetOnSpawn = false

Loader.Name = "Loader"
Loader.Parent = NeroLoader
Loader.AnchorPoint = Vector2.new(0.5, 0.5)
Loader.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Loader.BorderSizePixel = 0
Loader.Position = UDim2.new(0.5, 0, 0.499340385, 0)
Loader.Size = UDim2.new(0, 280, 0, 64)
Loader.ZIndex = 2

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Loader

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
UIPadding.PaddingRight = UDim.new(0, 9)
UIPadding.PaddingTop = UDim.new(0, 2)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.81, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.81, Color3.fromRGB(59, 255, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 255, 0))}
UIGradient.Parent = ScriptStatus

Status.Name = "Status"
Status.Parent = Labels
Status.AnchorPoint = Vector2.new(0.5, 0)
Status.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Status.BackgroundTransparency = 1.000
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.5, 0, 0.449999988, -4)
Status.Size = UDim2.new(1, -20, 0, 22)
Status.ZIndex = 2
Status.Font = Enum.Font.SourceSans
Status.Text = "Hello, user!"
Status.TextColor3 = Color3.fromRGB(144, 144, 144)
Status.TextSize = 18.000

UIPadding_2.Parent = Status
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
Title.Text = "Nero Hub - Loader"
Title.TextColor3 = Color3.fromRGB(182, 182, 182)
Title.TextSize = 18.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = Title
UIPadding_3.PaddingLeft = UDim.new(0, 4)
UIPadding_3.PaddingRight = UDim.new(0, 4)

Splitter.Name = "Splitter"
Splitter.Parent = Loader
Splitter.AnchorPoint = Vector2.new(0.5, 0.540000021)
Splitter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Splitter.BackgroundTransparency = 0.500
Splitter.BorderSizePixel = 0
Splitter.Position = UDim2.new(0.5, 0, 0.842857122, 0)
Splitter.Size = UDim2.new(1, -28, 0, 4)
Splitter.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0, 10000)
UICorner_2.Parent = Splitter

UISizeConstraint.Parent = Loader
UISizeConstraint.MaxSize = Vector2.new(300, 72)

local function CCXG_fake_script()
	local script = Instance.new('LocalScript', NeroLoader)

	function createTween(Object,properties,delayTime)
		local infoTween = TweenInfo.new(tonumber(delayTime),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0);
	
		local Anim = game:GetService('TweenService'):Create(Object,infoTween,properties);
		Anim:Play();
		return Anim;
	end;
	
	local GUI = script.Parent;
	local Loader = GUI.Loader or GUI:WaitForChild("Loader");
	local Labels = Loader.Labels or Loader:WaitForChild("Labels");
	local Splitter = Loader.Splitter or Loader:WaitForChild("Splitter");
	local ready = false
	
	spawn(function()
		Loader.Size = UDim2.new(0,0,0,0)
		for i,v in next, Labels:GetChildren() do
			if v:IsA('TextLabel') then
				coroutine.resume(coroutine.create(function()
					v.TextTransparency = 1
				end))
			end
		end
	
		for i,v in pairs(Loader:GetChildren()) do 
			if (not v:IsA("UICorner") and not v:IsA("Folder")) then 
				if v:IsA("Frame") then
					coroutine.resume(coroutine.create(function()
						v.BackgroundTransparency = 1
						v.Size = UDim2.new(0,0,0,3)
					end))
				end
			end
		end
	end)
	
	wait(2.5)
	
	local tween1 = createTween(Loader,{Size = UDim2.new(0, 280,0, 64)},.22)
	
	tween1.Completed:Connect(function()
		wait(.15)
		for i,v in next, Labels:GetChildren() do
			if v:IsA('TextLabel') then
				coroutine.resume(coroutine.create(function()
					createTween(v,{TextTransparency = 0},.2)
				end))
			end
		end
	
	
		for i,v in pairs(Loader:GetChildren()) do 
			if (not v:IsA("UICorner") and not v:IsA("Folder")) then 
				if v:IsA("Frame") then
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
		
		repeat wait(.5)
			local g1 = false
			local g2 = false
			for i,v in pairs(Loader:GetChildren()) do 
				if v:IsA("Frame") then 
					if v.BackgroundTransparency == 0 then 
						g1 = true
					else
						g1 = false
					end
				end
			end
			
			for i,v in pairs(Labels:GetChildren()) do 
				if v:IsA("TextLabel") then 
					if v.TextTransparency == 0 then 
						g2 = true
					else
						g2 = false
					end
				end
			end
			
			repeat wait(1) until (g1 == true and g2 == true)
			ready = true;
		until (ready == true)
	end)
	
	function changemsg(str)
		for i = 0,1,.1 do 
			Labels.Status.TextTransparency = i
			wait(.02)
		end
		Labels.Status.Text = str
		wait(.05)
		for i = 1,0,-.1 do 
			Labels.Status.TextTransparency = i
			wait(.02)
		end
	end
	
	changemsg("Hello, ".. game.Players.LocalPlayer.Name .. "!")
	
	local GamesList = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Ner0ox/Script-Hub/main/Loader/games.json",true))
	
	local Utils = {IsLoaded = nil}
	
	function Utils.Setup()
		local GotScript = nil
	
		return {
			CheckforGame = function(self)
				for i,v in pairs(GamesList) do 
					if v.gameId == game.PlaceId and tonumber(v.gameId) and tostring(v.script) and v.Status == true then 
						GotScript = v.script
						Utils.IsLoaded = false
						changemsg("Game Detected: ".. tostring(i))
						return;
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
	
	while wait(1) do 
		if (ready) then 
			wait(.15)
			for i,v in next, Labels:GetChildren() do
				if v:IsA('TextLabel') then
					coroutine.resume(coroutine.create(function()
						createTween(v,{TextTransparency = 0},.2)
					end))
				end
			end
	
	
			for i,v in pairs(Loader:GetChildren()) do 
				if (not v:IsA("UICorner") and not v:IsA("Folder")) then 
					if v:IsA("Frame") then
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
			
			if ready then 
				local SetupGames = Utils.Setup()
				SetupGames:CheckforGame()
				repeat wait() 
					SetupGames:LOAD_SCRIPT()
				until not SetupGames:LOAD_SCRIPT()	
				
				coroutine.resume(coroutine.create(function()
					wait(.15)
					for i,v in next, Labels:GetChildren() do
						if v:IsA('TextLabel') then
							coroutine.resume(coroutine.create(function()
								createTween(v,{TextTransparency = 1},.2)
							end))
						end
					end
	
	
					for i,v in pairs(Loader:GetChildren()) do 
						if (not v:IsA("UICorner") and not v:IsA("Folder")) then 
							if v:IsA("Frame") then
								coroutine.resume(coroutine.create(function()
									createTween(v,{BackgroundTransparency = 1},.2)
									spawn(function()
										wait(.4)
										createTween(v,{Size = UDim2.new(0,0,0,3)},.3)
									end)
								end))
							end
						end
					end
					wait(.5)
					local tweenX = createTween(Loader,{Size = UDim2.new(0,0,0,0)},.3)
					
					tweenX.Completed:Connect(function()
						Loader.Parent:Destroy()
					end)
				end))
			end
			break;
		end
	end
end
coroutine.wrap(CCXG_fake_script)()
