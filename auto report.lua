--[[
	This property is protected.
	You are not allowed to claim this as your own.
	Removal of advertisements of https://www.discord.gg/outliershub is prohibited.
	Removal of initial credits to the authors is prohibited. 
]]

setfflag("AbuseReportScreenshotPercentage", 0)
setfflag("DFFlagAbuseReportScreenshot", "False")
if (getgenv()).library == nil then
	(getgenv()).library = (loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source")))();
end;
if not (getgenv()).autoreport then
	(getgenv()).autoreport = {
		Advertise = false,
		Safe = false,
		Webhook = "https://discord.com/api/webhooks/993382494365814856/t7jUgatMTkxiaLqUst1aCnaK--e36ogLk0PVaWaBp0cYtRe-3cNf4OnE-u7sno15D4hF"
	};
end;

local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local offensive_message;
local messages = {
	hack = {
		"Scamming",
		"he's advertising hacks (viruses)"
	},
	cheat = {
		"Scamming",
		"he's advertising hacks (viruses)"
	},
	exploit = {
		"Scamming",
		"he's advertising hacks (viruses)"
	},
	script = {
		"Scamming",
		"he's advertising hacks (viruses)"
	},
	fatherless = {
		"Bullying",
		"saying bad things about my parents"
	},
	motherless = {
		"Bullying",
		"saying bad things about my parents"
	},
	retard = {
		"Bullying",
		"saying bad things about me"
	},
	parents = {
		"Bullying",
		"saying bad things about my parents"
	},
	ez = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	cancer = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	kid = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	bad = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	["get a life"] = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	noob = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	hacker = {
		"Bullying",
		"saying rude things to me, i can't take it anymore, i've had a really bad year"
	},
	gay = {
		"Bullying",
		"saying bad things about other people, bullying them"
	},
	gvae = {
		"Bullying",
		"saying bad things about other people, bullying them"
	},
	gae = {
		"Bullying",
		"saying bad things about other people, bullying them"
	},
	lgbt = {
		"Bullying",
		"saying bad things about other people, bullying them"
	},
	furry = {
		"Bullying",
		"saying bad things about other people, bullying them"
	},
	homo = {
		"Bullying",
		"saying bad things about other people, bullying them"
	},
	dumb = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	stupid = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	fat = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	ugly = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	kms = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	trash = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	suck = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	mad = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	cringe = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	retard = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	cry = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	ratio = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	clown = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	["skill issue"] = {
		"Bullying",
		"this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"
	},
	white = {
		"Bullying",
		"He's racist!"
	},
	black = {
		"Bullying",
		"He's racist!"
	},
	asia = {
		"Bullying",
		"He's racist!"
	},
	negr = {
		"Bullying",
		"He's racist!"
	},
	love = {
		"Dating",
		"he's dating in roblox"
	},
	gulp = {
		"Dating",
		"he's dating in roblox"
	},
	["like you"] = {
		"Dating",
		"he's dating in roblox"
	},
	russia = {
		"Bullying",
		"he talking about russia ukraine war"
	},
	ukraine = {
		"Bullying",
		"he talking about russia ukraine war"
	},
	war = {
		"Bullying",
		"he talking about russia ukraine war"
	},
	mommy = {
		"Dating",
		"he's dating in roblox"
	},
	uwu = {
		"Dating",
		"he's dating in roblox"
	},
	woman = {
		"Bullying",
		"saying bad things and being sexist"
	},
	mother = {
		"Bullying",
		"saying bad things about my parents"
	},
};
print("ar: loading functions");
local lib = {};
local success, error = pcall(function()
	function lib:notify(title, text)
		(getgenv()).library:MakeNotification({
			Name = title,
			Content = text,
			Time = 3
		});
	end;
	function lib:report(player, thing, reason, offensive)

		if (getgenv()).autoreport.Webhook == "" or (getgenv()).autoreport.Webhook == nil then
			lib:notify("Report", "Reported " .. player.Name .. " because of \"" .. (getgenv()).autoreport.Message .. "\"");
		else
			--[[ 
				gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
				player = game.Players.LocalPlayer
				getgenv().autoreport = {Webhook = "", Message = "test message 123 this doesnt contain the offensive part"}
				offensive = "war"
			]]
				local data = 
				{
					["embeds"] = {{
						["title"] = "**" .. gameName .. "**",
						["description"] = "Auto-reported a player",
						["type"] = "rich",
						["color"] = tonumber(0x00aff4),
						["url"] = "https://www.roblox.com/games/" .. game.PlaceId,
						["fields"] = {
							{
								["name"] = "Name",
								["value"] = "[" .. player.Name .. "](https://www.roblox.com/users/" .. player.UserId .. ")",
								["inline"] = true
							},
							{
								["name"] = "Message",
								["value"] = getgenv().autoreport.Message,
								["inline"] = true
							},
							{
								["name"] = "Offensive part",
								["value"] = offensive,
								["inline"] = true
							}
						},
						["footer"] = {
							["text"] = "\nIf you think this is a mistake, contact snnwer#1349 or .gg#1780"
						},
						["author"] = {
							["name"] = "Auto Report"
						}
					}}
				}
			local newdata = (game:GetService("HttpService")):JSONEncode(data);
			local headers = {
				["content-type"] = "application/json"
			};
			request = http_request or request or HttpPost or syn.request;
			local abcdef = {
				Url = (getgenv()).autoreport.Webhook,
				Body = newdata,
				Method = "POST",
				Headers = headers
			};
			request(abcdef);
		end;

		if not (string.match((getgenv()).autoreport.Message, "war%a") and not string.match((getgenv()).autoreport.Message, "jeez")) and not (string.match((getgenv()).autoreport.Message, "made")) then
			if (getgenv()).autoreport.Safe == false then
				for i = 1, math.random(5, 12) do
					wait(math.random(1, 15) / 10);
					game.Players:ReportAbuse(player, thing, reason);
				end;
			else
				for i = 1, math.random(1, 2) do
					wait(math.random(1, 15) / 10);
					game.Players:ReportAbuse(player, thing, reason);
				end;
			end;
			print("ar: reported " .. player.Name);
		end;
	end;
	function handler(player, msg)
		local thing, reason;
		msg = string.lower(msg);
		for i, v in next, messages do
			if string.match(msg, i) then
				thing, reason, offensive = v[1], v[2], i;
				if (getgenv()).autoreport.Advertise == true then
					local args = {
						[1] = ".",
						[2] = "."
					};
					(game:GetService("ReplicatedStorage")).DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args));
				end;
			end;
		end;
		if thing and reason and offensive then
			lib:report(player, thing, reason, offensive);
		end;
	end;
end);
if success then
	print("ar: loaded functions successfully, handling players now");
else
	print("ar: got error, " .. error);
end;
for i, plr in pairs(game.Players:GetPlayers()) do
	if plr ~= game.Players.LocalPlayer then
		plr.Chatted:Connect(function(msg)
			(getgenv()).autoreport.Message = msg;
			handler(plr, msg);
		end);
	end;
end;
game.Players.PlayerAdded:Connect(function(plr)
	if plr ~= game.Players.LocalPlayer then
		plr.Chatted:Connect(function(msg)
			(getgenv()).autoreport.Message = msg;
			handler(plr, msg);
		end);
	end;
end);

(getgenv()).library:MakeNotification({
	Name = "Loaded!",
	Content = "Script was made by .gg#1780 and snnwer#1349",
	Time = 2
});

(getgenv()).library:MakeNotification({
	Name = "Be sure to join our discord",
	Content = "discord.gg/outliershub",
	Time = 2
});
