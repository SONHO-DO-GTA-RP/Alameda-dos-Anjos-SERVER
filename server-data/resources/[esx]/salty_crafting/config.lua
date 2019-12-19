Config = {}

-- Ammo given by default to crafted weapons
Config.WeaponAmmo = 120

Config.Recipes = {
	-- Can be a normal ESX item
	-- ["lockpick"] = { 
	-- 	{item = "bobbypin", quantity = 4 }, 
	-- 	{item = "rubberband", quantity = 1 },
	-- },
	
	-- Can be a weapon, must follow this format
	["PISTOL"] = { 
		{item = "pistolbarrel", quantity = 1, remove = true}, 
		{item = "pistolbody", quantity = 1, remove = true},
		{item = "pistolclip", quantity = 1, remove = true}
	},
	["AK"] = { 
		{item = "akbarrel", quantity = 1, remove = true}, 
		{item = "akbody", quantity = 1, remove = true},
		{item = "akclip", quantity = 1, remove = true}
	},
	["SMG"] = { 
		{item = "smgbarrel", quantity = 1, remove = true}, 
		{item = "smgbody", quantity = 1, remove = true},
		{item = "smgclip", quantity = 1, remove = true}
	},
	["SHOTGUN"] = { 
		{item = "shotgunbarrel", quantity = 1, remove = true}, 
		{item = "shotgunbody", quantity = 1, remove = true},
		{item = "shotgunclip", quantity = 1, remove = true}
	}
}

-- Enable a shop to access the crafting menu
Config.Shop = {
	if PlayerData.job.name == 'mafia' and 'yakuza' then
	useShop = true
	else print ('Você não pertence a Máfia ou a Yakuza! De o fora daqui!')
	useShop = false
	end

	shopCoordinates = { x=962.5, y=-1585.5, z=29.6 },
	shopName = "Fabrica de Armas",
	shopBlipID = 556,
	zoneSize = { x = 2.5, y = 2.5, z = 1.5 },
	zoneColor = { r = 255, g = 0, b = 0, a = 100 }
}

-- Enable crafting menu through a keyboard shortcut
Config.Keyboard = {
	useKeyboard = false,
	keyCode = 303
}
