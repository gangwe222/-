local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "밤바리노",
   LoadingTitle = "재밌노 이기야",
   LoadingSubtitle = "by nosamo",
   Theme = "Default",
   ToggleUIKeybind = "K",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "hun bam"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
})

local MainTab = Window:CreateTab("돈 얻기", nil)
local MainSection = MainTab:CreateSection("돈 얻기")

Rayfield:Notify({
   Title = "실행 성공",
   Content = "재밌냐?",
   Duration = 0.5,
})


MainTab:CreateButton({
   Name = "inf 돈 얻기",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gangwe222/-/refs/heads/main/%22%EB%B0%A4%EB%B0%94%EB%A6%AC%20%EB%AC%B4%ED%95%9C%20%EB%8F%88%20%EC%96%BB%EA%B8%B0%22"))()
   end,
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
loadstring(game:HttpGet('https://raw.githubusercontent.com/gangwe222/-/refs/heads/main/%EB%AA%A8%EB%93%A0%EC%B0%A8%20%EC%96%BB%EA%B8%B0%201'))()
   end,
})
