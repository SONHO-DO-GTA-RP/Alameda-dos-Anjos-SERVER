--Truck
Config	=	{}

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 0



-- If true, ignore rest of file
Config.WeightSqlBased = false

-- I Prefer to edit weight on the config.lua and I have switched Config.WeightSqlBased to false:

Config.localWeight = {
	bread = 125,
	water = 330,
}

Config.VehicleLimit ={
    [9]=80000,
    [12]=80000,
    [16]=80000,
    [19]=80000,
    [21]=80000,
    [22]=80000,
    [23]=80000,
    [32]=80000,
    [38]=80000,
    [46]=80000,
    [49]=80000,
    [51]=80000,
    [58]=80000,
    [67]=80000
    --[14]=90000,
    --[15]=100000,
    --[16]=100000,
    --[17]=50000,
    --[18]=50000,
    --[19]=50000,
    --[20]=150000,

}
