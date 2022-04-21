Citizen.CreateThread(function()
	while true do
		SetDiscordAppId() -- ID BOT

		SetDiscordRichPresenceAsset('') -- Big Logo
        SetDiscordRichPresenceAssetText('') -- Texte Exemple 1
       
        SetDiscordRichPresenceAssetSmall('') -- Smal Logo
        SetDiscordRichPresenceAssetSmallText('') -- Texte Exemple 2
        SetDiscordRichPresenceAction(0, "Discord", "") -- Button 1
        SetDiscordRichPresenceAction(1, "Website", "") -- Button 2

        players = {}
        for i = 0,255 do
            if NetworkIsPlayerActive ( i ) then
                table.insert (players, i )
            end
        end
        SetRichPresence(GetPlayerName(PlayerId()) .. " - " .. #players .. "/1024")		
        Citizen.Wait(60000)
	end
end)