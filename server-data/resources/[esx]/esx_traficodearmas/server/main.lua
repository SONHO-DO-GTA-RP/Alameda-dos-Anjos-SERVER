ESX             = nil
local ShopItems = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

MySQL.ready(function()
	MySQL.Async.fetchAll('SELECT * FROM traficodearmas LEFT JOIN items ON items.name = traficodearmas.item', {}, function(shopResult)
		for i=1, #shopResult, 1 do
			if shopResult[i].name then
				if ShopItems[shopResult[i].store] == nil then
					ShopItems[shopResult[i].store] = {}
				end

				table.insert(ShopItems[shopResult[i].store], {
					label = shopResult[i].label,
					item  = shopResult[i].item,
					price = shopResult[i].price,
				})
			else
				print(('esx_traficodearmas: invalid item "%s" found!'):format(shopResult[i].item))
			end
		end
	end)
end)

ESX.RegisterServerCallback('esx_traficodearmas:requestDBItems', function(source, cb)
	cb(ShopItems)
end)

RegisterServerEvent('esx_traficodearmas:buyItem')
AddEventHandler('esx_traficodearmas:buyItem', function(itemName, amount, zone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	amount = ESX.Math.Round(amount)

	-- is the player trying to exploit?
	if amount < 0 then
		print('esx_traficodearmas: ' .. xPlayer.identifier .. ' attempted to exploit the shop!')
		return
	end

	-- get price
	local price = 0
	local itemLabel = ''

	for i=1, #ShopItems[zone], 1 do
		if ShopItems[zone][i].item == itemName then
			price = ShopItems[zone][i].price
			itemLabel = ShopItems[zone][i].label
			break
		end
	end

	price = price * amount

	-- can the player afford this item?
	if xPlayer.getMoney() >= price then
		-- can the player carry the said amount of x item?
		if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(itemName, amount)
			xPlayer.showNotification(_U('bought', amount, itemLabel, ESX.Math.GroupDigits(price)))
		else
			xPlayer.showNotification(_U('player_cannot_hold'))
		end
	else
		local missingMoney = price - xPlayer.getMoney()
		xPlayer.showNotification(_U('not_enough', ESX.Math.GroupDigits(missingMoney)))
	end
end)


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