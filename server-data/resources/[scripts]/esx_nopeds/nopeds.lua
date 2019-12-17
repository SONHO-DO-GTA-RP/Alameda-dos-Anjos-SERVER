Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(0.05) -- removes people walking around
        SetPedDensityMultiplierThisFrame(0.05) -- remove vehicles driving
	end
end)