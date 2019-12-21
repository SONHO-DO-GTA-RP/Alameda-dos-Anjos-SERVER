ESX = nil
local shopItems = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

MySQL.ready(function()

	MySQL.Async.fetchAll('SELECT * FROM weadealer', {}, function(result)
		for i=1, #result, 1 do
			if shopItems[result[i].zone] == nil then
				shopItems[result[i].zone] = {}
			end

			table.insert(shopItems[result[i].zone], {
				item  = result[i].item,
				price = result[i].price,
				label = ESX.GetWeaponLabel(result[i].item)
			})
		end

		TriggerClientEvent('esx_traficodearmas:sendShop', -1, shopItems)
	end)

end)

ESX.RegisterServerCallback('esx_traficodearmas:getShop', function(source, cb)
	cb(shopItems)
end)

ESX.RegisterServerCallback('esx_traficodearmas:buyLicense', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= Config.LicensePrice then
		xPlayer.removeMoney(Config.LicensePrice)

		TriggerEvent('esx_license:addLicense', source, 'weapon', function()
			cb(true)
		end)
	else
		xPlayer.showNotification(_U('not_enough'))
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_traficodearmas:buyWeapon', function(source, cb, weaponName, zone)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = GetPrice(weaponName, zone)

	if price == 0 then 
		print(('esx_traficodearmas:%s attempted to buy a unknown weapon!'):format(xPlayer.identifier))
		cb(false)
	else
		if xPlayer.hasWeapon(weaponName) then
			xPlayer.showNotification(_U('already_owned'))
			cb(false)
		else
			if zone == 'BlackWeashop' then
				if xPlayer.getAccount('black_money').money >= price then
					xPlayer.removeAccountMoney('black_money', price)
					xPlayer.addWeapon(weaponName, 42)
	
					cb(true)
				else
					xPlayer.showNotification(_U('not_enough_black'))
					cb(false)
				end
			else
				if xPlayer.getMoney() >= price then
					xPlayer.removeMoney(price)
					xPlayer.addWeapon(weaponName, 42)
	
					cb(true)
				else
					xPlayer.showNotification(_U('not_enough'))
					cb(false)
				end
			end
		end
	end
end)

function GetPrice(weaponName, zone)
	local price = MySQL.Sync.fetchScalar('SELECT price FROM weadealer WHERE zone = @zone AND item = @item', {
		['@zone'] = zone,
		['@item'] = weaponName
	})

	if price then
		return price
	else
		return 0
	end
end

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