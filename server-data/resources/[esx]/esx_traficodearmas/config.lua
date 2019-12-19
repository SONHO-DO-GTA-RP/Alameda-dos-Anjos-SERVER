Config               = {}

Config.DrawDistance  = 100
Config.Size          = { x = 1.5, y = 1.5, z = 0.5 }
Config.Color         = { r = 0, g = 128, b = 255 }
Config.Type          = 1

Config.Locale        = 'br'

Config.LicenseEnable = false -- only turn this on if you are using esx_license
Config.LicensePrice  = 50000

Config.Zones = {

	Fabricante_de_Canos = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-680.114, -923.978, 23.077)
		--npc (-679.1017, -923.4839, 23.077, 30.6870)
		}
	},

	Fabricante_de_Armas = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-1129.1320, 2692.2124, 18.800)
		--npc (-1127.85, 2692.988, 18.800, angulo: 91,9688)
		}
	},

	Fabricante_de_Carregadores = {
		Legal = true,
		Items = {},
		Locations = {
			vector3(-245.7621, -16.7986, 73.7698)
		--npc (247.0939, -17.0465, 73.7618, 27.0335)
		}
	}
}
