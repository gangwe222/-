local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "강서구 망겜🤣",
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

-- ▼ 버튼 기능
MainTab:CreateButton({
   Name = "💣 무작위 플레이어에게 돈 테러",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/c1650c7a4234ffed3ae8ea624da2c83bcf4dcbc8/%ED%85%8C%EB%9F%AC"))()
   end,
})

MainTab:CreateButton({
   Name = "💥 모두에게 돈 테러",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/50636e8405b6e527e99ec84183ef29a440ed876d/%ED%85%8C%EB%9F%AC%202%20%EC%88%98%EC%A0%95"))()
   end,
})

MainTab:CreateButton({
   Name = "🎁 모두에게 돈 주기",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/d032734ae1f519eebb8d28c324cd3c2603f38bda/%ED%85%8C%EB%9F%AC%203%20%EB%8F%88%EC%A3%BC%EA%B8%B0"))()
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "💀모두에게 무한반복으로 돈 테러",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/refs/heads/main/%ED%85%8C%EB%9F%AC%202%20%EB%B0%98%EB%B3%B5"))()
   end,
})

-- ▼ 내부 기능: 드롭다운 + 입력 + 돈 주기 버튼
local selectedPlayerName = nil
local selectedAmount = 0

local function getPlayerNames()
   local names = {}
   for _, player in ipairs(game.Players:GetPlayers()) do
      table.insert(names, player.Name)
   end
   return names
end

-- 드롭다운 만들기 함수 (갱신 시 재생성)
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

      local args = { selectedPlayerName, selectedAmount }
      game:GetService("ReplicatedStorage"):WaitForChild("ASISU1"):FireServer(unpack(args))

      Rayfield:Notify({
         Title = "✅ 완료",
         Content = selectedPlayerName .. "에게 " .. tostring(selectedAmount) .. "원 줌",
         Duration = 3
      })
   end
})

-- ▼ 채팅 명령어 (!ㅌㄹ) 연결
game.Players.LocalPlayer.Chatted:Connect(function(msg)
   if msg == "!ㅌㄹ" then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/50636e8405b6e527e99ec84183ef29a440ed876d/%ED%85%8C%EB%9F%AC%202%20%EC%88%98%EC%A0%95"))()
      Rayfield:Notify({
         Title = "💥 돈 테러 실행됨",
         Content = "!ㅌㄹ 명령어 감지",
         Duration = 3
      })
   end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
   if msg == "!ㄱㅂ" then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/d032734ae1f519eebb8d28c324cd3c2603f38bda/%ED%85%8C%EB%9F%AC%203%20%EB%8F%88%EC%A3%BC%EA%B8%B0"))()
      Rayfield:Notify({
         Title = "💵 돈 주기 실행됨",
         Content = "!ㄱㅂ 명령어 감지",
         Duration = 2.5
      })
   end
end)

local MiscTab = Window:CreateTab("다른기능", nil)
local MiscSection = MiscTab:CreateSection("1")

local Button = MiscTab:CreateButton({
   Name = "자동차 속도핵",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Documantation12/Universal-Vehicle-Script/main/Main.lua'))()
   end,
})
