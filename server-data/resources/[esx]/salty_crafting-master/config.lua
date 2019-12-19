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
		{item = "pistolbarrel", quantity = 1}, 
		{item = "pistolbody", quantity = 1},
		{item = "pistolclip", quantity = 1}
	},
	["AK"] = { 
		{item = "akbarrel", quantity = 1}, 
		{item = "akbody", quantity = 1},
		{item = "akclip", quantity = 1}
	},
	["SMG"] = { 
		{item = "smgbarrel", quantity = 1}, 
		{item = "smgbody", quantity = 1},
		{item = "smgclip", quantity = 1}
	},
	["SHOTGUN"] = { 
		{item = "shotgunbarrel", quantity = 1}, 
		{item = "shotgunbody", quantity = 1},
		{item = "shotgunclip", quantity = 1}
	}
}

-- Enable a shop to access the crafting menu
Config.Shop = {
	useShop = false,
	shopCoordinates = { x=962.5, y=-1585.5, z=29.6 },
	shopName = "Fabrica de Armas",
	shopBlipID = 556,
	zoneSize = { x = 2.5, y = 2.5, z = 1.5 },
	zoneColor = { r = 255, g = 0, b = 0, a = 100 }
}

-- Enable crafting menu through a keyboard shortcut
Config.Keyboard = {
	useKeyboard = true,
	keyCode = 303
}
