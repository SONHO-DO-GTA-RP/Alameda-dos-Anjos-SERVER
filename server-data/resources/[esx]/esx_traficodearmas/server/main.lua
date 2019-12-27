ESX             = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('PISTOL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('PISTOL', 1)
	xPlayer.addWeapon ('WEAPON_PISTOL', 42)

	cb(true)

	TriggerClientEvent('esx:showNotification', source, _U('used_weapbox'))
end)

ESX.RegisterUsableItem('SMG', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('SMG', 1)
	xPlayer.addWeapon ('WEAPON_SMG', 120)

	cb(true)

	TriggerClientEvent('esx:showNotification', source, _U('used_weapbox'))
end)

ESX.RegisterUsableItem('SHOTGUN', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('SHOTGUN', 1)
	xPlayer.addWeapon ('WEAPON_SHOTGUN', 48)

	cb(true)

	TriggerClientEvent('esx:showNotification', source, _U('used_weapbox'))
end)

ESX.RegisterUsableItem('AK', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('AK', 1)
	xPlayer.addWeapon ('WEAPON_ASSAULTRIFLE', 200)

	cb(true)

	TriggerClientEvent('esx:showNotification', source, _U('used_weapbox'))
end)