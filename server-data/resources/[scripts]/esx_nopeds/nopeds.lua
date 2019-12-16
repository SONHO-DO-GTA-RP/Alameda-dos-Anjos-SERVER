Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(0.1) -- removes people walking around
        SetPedDensityMultiplierThisFrame(0.1) -- remove vehicles driving
	end
end)