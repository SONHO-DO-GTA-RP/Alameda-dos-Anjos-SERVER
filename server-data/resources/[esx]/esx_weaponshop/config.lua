Config               = {}

Config.DrawDistance  = 100
Config.Size          = { x = 1.5, y = 1.5, z = 0.5 }
Config.Color         = { r = 0, g = 128, b = 255 }
Config.Type          = 1

Config.Locale        = 'br'

Config.LicenseEnable = false -- only turn this on if you are using esx_license
Config.LicensePrice  = 50000

Config.Zones = {

	GunShop = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-662.1, -935.3, 20.8),
			vector3(810.2, -2157.3, 28.6),
			vector3(1693.4, 3759.5, 33.7),
			vector3(-330.2, 6083.8, 30.4),
			vector3(252.3, -50.0, 68.9),
			vector3(22.0, -1107.2, 28.8),
			vector3(2567.6, 294.3, 107.7),
			vector3(-1117.5, 2698.6, 17.5),
			vector3(842.4, -1033.4, 27.1)
		}
	},

	BlackWeashop = {
		Legal = false,
		Items = {},
		Locations = {
			-- vector3(-1306.2, -394.0, 35.6)
		}
	},

	FabricanteDeCanos = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-680.114, -923.978, 23.077)
		--npc (-679.1017, -923.4839, 23.077, 30.6870)
		}
	},

	FabricanteDeArmas = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-1129.1320, 2692.2124, 18.800)
		--npc (-1127.85, 2692.988, 18.800, angulo: 91,9688)
		}
	},

	FabricanteDeCarregadores = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-245.7621, -16.7986, 73.7698)
		--npc (247.0939, -17.0465, 73.7618, 27.0335)
		}
	}

}
