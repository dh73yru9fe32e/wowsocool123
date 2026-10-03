-- obfuscated by LuaObfuscator Web
do
local __K=91 local function __D(s)local r={}for i=1,#s do r[i]=string.char((string.byte(s,i)-__K)%256)end return table.concat(r)end
local _Iljunk604707=((function()local t={}for i=1,3 do t[i]=i*(i+9)end return#t end)()==3)if _Iljunk604707 then else do end end
local _lI1lI=game:GetService((__D("\171\199\188\212")..__D("\192\205\206")))local _1I1lI=game:GetService((__D("\173\208\201\174")..__D("\192\205\209\196")..__D("\190\192")))local _Il1lI=game:GetService((__D("\176\206\192\205")..__D("\164\201\203\208")..__D("\207\174\192\205")..__D("\209\196\190\192")))local _ll1lI=game:GetService((__D("\177\196\205\207")..__D("\208\188\199\164")..__D("\201\203\208\207")..__D("\168\188\201\188")..__D("\194\192\205")))local _1l1lI=game:GetService((__D("\175\210\192\192")..__D("\201\174\192\205")..__D("\209\196\190\192")))local _I11lI=_lI1lI.LocalPlayer
local _l11lI=workspace.CurrentCamera
local _111lI=_I11lI.Character or _I11lI.CharacterAdded:Wait()local _IIIllI=_111lI:WaitForChild((__D("\163\208\200\188")..__D("\201\202\196\191")))local _lIIllI=_111lI:WaitForChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))local _1IIllI
local _IlIllI=nil
local _llIllI=0.10
local _1lIllI=false
local _I1IllI=nil
local _l1IllI=Color3.fromRGB((0x149-74),(0x32-50),(0x1E4-484))local _11IllI=Color3.fromRGB((0x10A-11),(0x240-321),(0x180-129))local _IIlllI=0.5
local _lIlllI=(0x45-69)getgenv().Aimbot=true
getgenv().Smoothness=0.4
local _1IlllI=false
local _IllllI=false
_G.EnableSpeed=false
_G.SpeedPower=(0x10C-264)local _lllllI=false
local _1llllI=false
local _I1lllI=false
local _l1lllI
local _11lllI=false
local _II1llI=false
local _lI1llI=false
local _1I1llI=(0x10E-170)_I11lI.CharacterAdded:Connect(function(_I111lI)_111lI=_I111lI
_IIIllI=_I111lI:WaitForChild((__D("\163\208\200\188")..__D("\201\202\196\191")))_lIIllI=_I111lI:WaitForChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))end)local _Il1llI=Instance.new((__D("\174\190\205\192")..__D("\192\201\162\208")..__D("\196")))_Il1llI.Name=(__D("\166\142\201\213")..__D("\202\173\196\209")..__D("\188\199\206\162")..__D("\208\196"))_Il1llI.ResetOnSpawn=false
_Il1llI.DisplayOrder=(0x470-137)_Il1llI.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
_Il1llI.Parent=_I11lI:WaitForChild((__D("\171\199\188\212")..__D("\192\205\162\208")..__D("\196")))local _ll1llI=Instance.new((__D("\175\192\211\207")..__D("\167\188\189\192")..__D("\199")))_ll1llI.ZIndex=(0x151-327)_ll1llI.BackgroundTransparency=(0x7-7)_ll1llI.Active=true
_ll1llI.BackgroundColor3=Color3.fromRGB((0x11B-253),(0x1CD-431),(0x9D-127))_ll1llI.Size=UDim2.new((0x3E-62),(0xCD-205),(0x1DA-474),(0x81-129))_ll1llI.AutomaticSize=Enum.AutomaticSize.XY
_ll1llI.Position=UDim2.new((0x38-56),(0xF3-233),(0x112-274),(0x153-329))_ll1llI.BorderSizePixel=(0x43-67)_ll1llI.TextColor3=Color3.new((0xAA-169),(0x10E-269),(0xF8-247))_ll1llI.TextStrokeTransparency=(0x15C-348)_ll1llI.Font=Enum.Font.GothamBold
_ll1llI.TextSize=(0x13B-299)_ll1llI.TextXAlignment=Enum.TextXAlignment.Left
_ll1llI.TextYAlignment=Enum.TextYAlignment.Top
_ll1llI.Parent=_Il1llI
local _1l1llI=Instance.new((__D("\176\164\158\202")..__D("\205\201\192\205")))_1l1llI.CornerRadius=UDim.new((0x129-297),(0x1CE-457))_1l1llI.Parent=_ll1llI
local _I11llI=Instance.new((__D("\176\164\174\207")..__D("\205\202\198\192")))_I11llI.Color=Color3.fromRGB((0x188-137),(0x1D0-209),(0x271-370))_I11llI.Thickness=(0x72-112)_I11llI.Transparency=0.3
_I11llI.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
_I11llI.Parent=_ll1llI
local _l11llI=Instance.new((__D("\176\164\171\188")..__D("\191\191\196\201")..__D("\194")))_l11llI.PaddingLeft=UDim.new((0x1BB-443),(0x167-352))_l11llI.PaddingRight=UDim.new((0x128-296),(0x122-283))_l11llI.PaddingTop=UDim.new((0x82-130),(0x189-386))_l11llI.PaddingBottom=UDim.new((0x1A4-420),(0x22-27))_l11llI.Parent=_ll1llI
local _111llI=_ll1llI.Size
local _III1lI=UDim2.new(_111llI.X.Scale,_111llI.X.Offset+(0x4F-69),_111llI.Y.Scale,_111llI.Y.Offset+(0x149-324))_ll1llI.MouseEnter:Connect(function()_1l1lI:Create(_ll1llI,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB((0x106-212),(0xF8-198),(0x12D-251)),Size=_III1lI}):Play()end)_ll1llI.MouseLeave:Connect(function()_1l1lI:Create(_ll1llI,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB((0xA1-136),(0x1E-5),(0x20A-497)),Size=_111llI}):Play()end)local function _1llI()_ll1llI.RichText=true
_ll1llI.Text=(__D("\151\193\202\201")..__D("\207\123\190\202")..__D("\199\202\205\152")..__D("\130\205\194\189")..__D("\131\140\139\143")..__D("\135\123\148\144")..__D("\135\123\141\142")..__D("\142\132\130\153")..__D("\166\142\201\213")..__D("\202\130\206\123")..__D("\173\196\209\188")..__D("\199\206\151\138")..__D("\193\202\201\207")..__D("\153"))..(__D("\101\174\196\199")..__D("\192\201\207\123")..__D("\156\196\200\123")..__D("\131\179\132\149")..__D("\123"))..(_lllllI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\156\196\200")..__D("\199\202\190\198")..__D("\123\131\181\132")..__D("\149\123"))..(not _1IlllI and(__D("\75\250\239\15")..__D("\123\170\161\161"))or _IllllI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\250\252")..__D("\123\173\160\156")..__D("\159\180")))..(__D("\101\156\208\207")..__D("\202\123\174\195")..__D("\202\202\207\123")..__D("\131\160\132\149")..__D("\123"))..(_1llllI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\161\199\212")..__D("\123\131\172\132")..__D("\149\123"))..(_I1lllI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\169\202\190")..__D("\199\196\203\123")..__D("\131\166\132\149")..__D("\123"))..(_11lllI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\175\171\123")..__D("\134\123\156\208")..__D("\207\202\123\131")..__D("\175\132\149\123"))..(_l1lllI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\178\188\199")..__D("\198\174\203\192")..__D("\192\191\123\131")..__D("\163\132\149\123"))..(_G.EnableSpeed and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\160\174\171")..__D("\123\131\157\132")..__D("\149\123"))..(_II1llI and(__D("\75\250\250\253")..__D("\123\170\169"))or(__D("\75\250\239\15")..__D("\123\170\161\161")))..(__D("\101\175\188\205")..__D("\194\192\207\196")..__D("\201\194\123\131")..__D("\170\132\149\123"))..(_lI1llI and(__D("\75\250\250\253")..__D("\123\170\169\136")..__D("\174\158\173\160")..__D("\160\169"))or(__D("\75\250\239\16")..__D("\123\170\161\161")..__D("\136\174\158\173")..__D("\160\160\169")))..(__D("\101\151\193\202")..__D("\201\207\123\190")..__D("\202\199\202\205")..__D("\152\130\205\194")..__D("\189\131\141\144")..__D("\144\135\139\135")..__D("\139\132\130\153")..__D("\131\175\202\194")..__D("\194\199\192\123")..__D("\174\196\199\192")..__D("\201\207\123\156")..__D("\196\200\123\189")..__D("\192\193\202\205")..__D("\192"))..(__D("\101\207\202\194")..__D("\194\199\196\201")..__D("\194\123\156\208")..__D("\207\202\123\174")..__D("\195\202\202\207")..__D("\123\61\245\251")..__D("\74\19\234\132")..__D("\151\138\193\202")..__D("\201\207\153"))end
_1llI()local function _I1lI()local _lII1lI=_I11lI.PlayerGui:FindFirstChild((__D("\168\188\196\201")..__D("\162\208\196")))if _lII1lI and _lII1lI:FindFirstChild((__D("\168\188\196\201")..__D("\161\205\188\200")..__D("\192")))then
local _1II1lI=_lII1lI.MainFrame:FindFirstChild(__D("\167\202\189\189\212"))if _1II1lI and _1II1lI:FindFirstChild((__D("\158\208\205\205")..__D("\192\201\190\212")))then
return _1II1lI.Currency.Visible
end
end
return false
end
local function _l1lI()local _IlI1lI=nil
local _llI1lI=math.huge
local _1lI1lI=_Il1lI:GetMouseLocation()for _l1IIllI,_11IIllI in ipairs(_lI1lI:GetPlayers())do
if _11IIllI~=_I11lI
and _11IIllI.Character
and _11IIllI.Character:FindFirstChild(__D("\163\192\188\191"))then
local _I1I1lI=_11IIllI.Character.Head
local _l1I1lI,_11I1lI=_l11lI:WorldToViewportPoint(_I1I1lI.Position)if _11I1lI then
local _IIl1lI=Vector2.new(_l1I1lI.X,_l1I1lI.Y)local _lIl1lI=(_IIl1lI-_1lI1lI).Magnitude
if _lIl1lI<_llI1lI then
_IlI1lI=_11IIllI
_llI1lI=_lIl1lI
end
end
end
end
return _IlI1lI
end
local function _11lI()local _IlI1lI=nil
local _llI1lI=math.huge
if not _lIIllI then return nil end
local _1Il1lI=_lIIllI.Position
for _l1IIllI,_11IIllI in ipairs(_lI1lI:GetPlayers())do
if _11IIllI~=_I11lI and _11IIllI.Character then
local _Ill1lI=_11IIllI.Character:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))if _Ill1lI then
local _lIl1lI=(_Ill1lI.Position-_1Il1lI).Magnitude
if _lIl1lI<_llI1lI then
_llI1lI=_lIl1lI
_IlI1lI=_11IIllI
end
end
end
end
return _IlI1lI
end
local function _IIllI()if _IlIllI and _IlIllI.Character and _IlIllI.Character:FindFirstChild(__D("\163\192\188\191"))then
local _I1I1lI=_IlIllI.Character.Head
_l11lI.CFrame=CFrame.new(_l11lI.CFrame.Position,_I1I1lI.Position)end
end
local function _lIllI()local _lll1lI=nil
local _1ll1lI=(0x7F6-38)local _I1l1lI=_I11lI.Character
if not _I1l1lI then return nil end
local _l1l1lI=_I1l1lI:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))if not _l1l1lI then return nil end
for _l1IIllI,_IIlIllI in ipairs(_lI1lI:GetPlayers())do
if _IIlIllI~=_I11lI and _IIlIllI.Character then
local _11l1lI=_IIlIllI.Character:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")))local _II11lI=_IIlIllI.Character:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))if _11l1lI and _11l1lI.Health>(0x61-97)and _II11lI then
local _lIl1lI=(_II11lI.Position-_l1l1lI.Position).Magnitude
if _lIl1lI<_1ll1lI then
local _lI11lI=_IIlIllI.Character:FindFirstChild(__D("\163\192\188\191\163\157"))or _IIlIllI.Character:FindFirstChild(__D("\163\192\188\191"))or _IIlIllI.Character:FindFirstChild((__D("\176\203\203\192")..__D("\205\175\202\205")..__D("\206\202")))if _lI11lI then
_1ll1lI=_lIl1lI
_lll1lI=_lI11lI
end
end
end
end
end
return _lll1lI
end
_1I1lI.RenderStepped:Connect(function()if _1IlllI and _IllllI and getgenv().Aimbot then
local _lll1lI=_lIllI()if _lll1lI and _lll1lI.Parent then
local _1I11lI,_11I1lI=_l11lI:WorldToViewportPoint(_lll1lI.Position)if _11I1lI then
local _Il11lI=_Il1lI:GetMouseLocation()local _ll11lI=(_1I11lI.X-_Il11lI.X)*getgenv().Smoothness
local _1l11lI=(_1I11lI.Y-_Il11lI.Y)*getgenv().Smoothness
if mousemoverel then
mousemoverel(_ll11lI,_1l11lI)end
end
end
end
end)_1I1lI.RenderStepped:Connect(function()if not _G.EnableSpeed then return end
local _I111lI=_I11lI.Character
if not _I111lI then return end
local _l111lI=_I111lI:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")))local _II11lI=_I111lI:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))if _l111lI and _II11lI and _l111lI.MoveDirection.Magnitude>(0x18F-399)then
_II11lI.CFrame+=_l111lI.MoveDirection*(_G.SpeedPower/(0x2F-37))end
end)local function _1IllI(_lIlIllI)local _I111lI=_I11lI.Character
if not _I111lI then return end
for _l1IIllI,_lI11lI in ipairs(_I111lI:GetDescendants())do
if _lI11lI:IsA((__D("\157\188\206\192")..__D("\171\188\205\207")))then
_lI11lI.CanCollide=not _lIlIllI
end
end
end
_1I1lI.Stepped:Connect(function()if _11lllI then
_1IllI(true)end
end)local function _IlllI()for _l1IIllI,_11IIllI in ipairs(_lI1lI:GetPlayers())do
if _11IIllI.Character then
local _1111lI=_11IIllI.Character:FindFirstChild((__D("\171\199\188\212")..__D("\192\205\163\196")..__D("\194\195\199\196")..__D("\194\195\207")))if _1111lI then _1111lI:Destroy()end
end
end
end
local function _llllI(_I111lI)if not _I111lI then return end
if _I111lI:FindFirstChild((__D("\171\199\188\212")..__D("\192\205\163\196")..__D("\194\195\199\196")..__D("\194\195\207")))then return end
local _1111lI=Instance.new((__D("\163\196\194\195")..__D("\199\196\194\195")..__D("\207")))_1111lI.Name=(__D("\171\199\188\212")..__D("\192\205\163\196")..__D("\194\195\199\196")..__D("\194\195\207"))_1111lI.FillColor=_l1IllI
_1111lI.OutlineColor=_11IllI
_1111lI.FillTransparency=_IIlllI
_1111lI.OutlineTransparency=_lIlllI
_1111lI.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
_1111lI.Parent=_I111lI
end
local function _1lllI()_IlllI()if not _II1llI then return end
for _l1IIllI,_11IIllI in ipairs(_lI1lI:GetPlayers())do
if _11IIllI~=_I11lI and _11IIllI.Character then
_llllI(_11IIllI.Character)end
end
end
local function _I1llI()if _I1IllI then
_I1IllI:Disconnect()end
_I1IllI=_1I1lI.Heartbeat:Connect(function()if not _lllllI then
_I1IllI:Disconnect()_I1IllI=nil
return
end
if _1lIllI or _1llllI then
if not _I1lI()then
mouse1click()end
else
_I1IllI:Disconnect()_I1IllI=nil
end
end)end
local function _l1llI()pcall(function()local _lll1lI=nil
local _IIIIllI=math.huge
for _l1IIllI,_IIlIllI in pairs(_lI1lI:GetPlayers())do
if _IIlIllI~=_I11lI
and _IIlIllI.Character
and _IIlIllI.Character:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))then
local _lIl1lI=(_IIlIllI.Character.HumanoidRootPart.Position-_I11lI.Character.HumanoidRootPart.Position).Magnitude
if _lIl1lI<_IIIIllI then
_IIIIllI=_lIl1lI
_lll1lI=_IIlIllI
end
end
end
if _lll1lI and _I11lI.Character then
local _I111lI=_I11lI.Character
local _Ill1lI=_I111lI:FindFirstChild((__D("\163\208\200\188")..__D("\201\202\196\191")..__D("\173\202\202\207")..__D("\171\188\205\207")))if _Ill1lI then
local _lIIIllI=_Ill1lI.CFrame
local _1IIIllI=_lll1lI.Character.HumanoidRootPart
local _IlIIllI=_lll1lI.Character:FindFirstChild(__D("\163\192\188\191"))local _llIIllI=_1IIIllI.CFrame*CFrame.new((0x8F-143),(0x89-137),(0xED-231))_I111lI:PivotTo(_llIIllI)if _IlIIllI then
_l11lI.CFrame=CFrame.new(_l11lI.CFrame.Position,_IlIIllI.Position)end
task.wait(0.05)_ll1lI:SendMouseButtonEvent((0x105-261),(0x133-307),(0x17A-378),true,game,(0xE-14))task.wait(0.02)_ll1lI:SendMouseButtonEvent((0xFC-252),(0xBE-190),(0x43-67),false,game,(0x111-273))task.wait(0.02)_I111lI:PivotTo(_lIIIllI)end
end
end)end
local function _11llI()if _I1lllI then return end
_I1lllI=true
_1IIllI=Instance.new((__D("\157\202\191\212")..__D("\177\192\199\202")..__D("\190\196\207\212")))_1IIllI.MaxForce=Vector3.new(math.huge,math.huge,math.huge)_1IIllI.Velocity=Vector3.zero
_1IIllI.Parent=_lIIllI
_IIIllI.PlatformStand=false
_1I1lI:BindToRenderStep((__D("\161\199\212\168")..__D("\202\209\192\200")..__D("\192\201\207")),Enum.RenderPriority.Character.Value+(0x26-37),function()if not _I1lllI then return end
local _1lIIllI=Vector3.zero
if _Il1lI:IsKeyDown(Enum.KeyCode.W)then
_1lIIllI+=_l11lI.CFrame.LookVector
end
if _Il1lI:IsKeyDown(Enum.KeyCode.S)then
_1lIIllI-=_l11lI.CFrame.LookVector
end
if _Il1lI:IsKeyDown(Enum.KeyCode.A)then
_1lIIllI-=_l11lI.CFrame.RightVector
end
if _Il1lI:IsKeyDown(Enum.KeyCode.D)then
_1lIIllI+=_l11lI.CFrame.RightVector
end
if _Il1lI:IsKeyDown(Enum.KeyCode.Space)then
_1lIIllI+=Vector3.new((0x31-49),(0x74-115),(0x12D-301))end
if _Il1lI:IsKeyDown(Enum.KeyCode.LeftShift)then
_1lIIllI-=Vector3.new((0x72-114),(0x173-370),(0x19D-413))end
if _1lIIllI.Magnitude>(0x14F-335)then
_1IIllI.Velocity=_1lIIllI.Unit*_1I1llI
else
_1IIllI.Velocity=Vector3.zero
end
end)end
local function _II1lI()if not _I1lllI then return end
_I1lllI=false
_1I1lI:UnbindFromRenderStep((__D("\161\199\212\168")..__D("\202\209\192\200")..__D("\192\201\207")))if _1IIllI then
_1IIllI:Destroy()_1IIllI=nil
end
end
_lI1lI.PlayerAdded:Connect(function(_11IIllI)_11IIllI.CharacterAdded:Connect(function(_I111lI)if _II1llI then
task.wait(0.1)_llllI(_I111lI)end
end)end)for _l1IIllI,_11IIllI in ipairs(_lI1lI:GetPlayers())do
if _11IIllI~=_I11lI then
_11IIllI.CharacterAdded:Connect(function(_I111lI)if _II1llI then
task.wait(0.1)_llllI(_I111lI)end
end)end
end
_Il1lI.InputBegan:Connect(function(_1IlIllI,_IllIllI)if _IllIllI then return end
if _1IlIllI.UserInputType==Enum.UserInputType.MouseButton2 then
if _1IlllI then
_IllllI=true
_1llI()end
return
end
if _1IlIllI.KeyCode==Enum.KeyCode.X then
_lllllI=not _lllllI
if not _lllllI then
_IlIllI=nil
_1lIllI=false
_1llllI=false
if _I1IllI then
_I1IllI:Disconnect()_I1IllI=nil
end
end
_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.Z then
_1IlllI=not _1IlllI
_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.E then
if not _lllllI then return end
_1llllI=not _1llllI
if _1llllI and not _I1IllI then
_I1llI()end
_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.Q then
if _I1lllI then _II1lI()else _11llI()end
_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.K then
_11lllI=not _11lllI
_1IllI(_11lllI)_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.T then
_l1llI()_l1lllI=true
_1llI()task.wait(0.09)_l1lllI=false
_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.H then
_G.EnableSpeed=not _G.EnableSpeed
_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.B then
_II1llI=not _II1llI
_1lllI()_1llI()return
end
if _1IlIllI.KeyCode==Enum.KeyCode.O then
_lI1llI=not _lI1llI
_1llI()return
end
if not _lllllI then return end
if _1IlIllI.UserInputType==Enum.UserInputType.MouseButton1 then
if not _1lIllI then
_1lIllI=true
_I1llI()end
end
end)_Il1lI.InputEnded:Connect(function(_1IlIllI,_IllIllI)if _IllIllI then return end
if _1IlIllI.UserInputType==Enum.UserInputType.MouseButton1 then
_1lIllI=false
end
if _1IlIllI.UserInputType==Enum.UserInputType.MouseButton2 then
_IllllI=false
_1llI()end
end)_1I1lI.Heartbeat:Connect(function()if not _lllllI then return end
local _I1IIllI=_lI1llI
and _l1lI()or _11lI()if not _I1lI()then
_IlIllI=_I1IIllI
if _IlIllI then
_IIllI()end
end
end)end
