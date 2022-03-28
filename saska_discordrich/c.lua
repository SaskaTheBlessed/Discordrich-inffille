ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10000)
	end
end)

reiska12342 = 0 -- älä koske callback päivittää

CreateThread(function()
    while true do
        Wait(12000)
        ESX.TriggerServerCallback('123saskatheblessed', function(blessed)
            reiska12342 = blessed
            print("reiska12342: "..reiska12342)
            print("blessed: "..blessed)
        end)
    end
end)

CreateThread(function()
    while true do
        Wait(12000)
        SetDiscordAppId()
        SetRichPresence('Pelaajia: '..reiska12342)
        SetDiscordRichPresenceAsset('f')
        SetDiscordRichPresenceAssetText('discord.me/blessedgangrp')
        SetDiscordRichPresenceAssetSmall('')
        SetDiscordRichPresenceAssetSmallText('discord.me/blessedgangrp')
    end
end)