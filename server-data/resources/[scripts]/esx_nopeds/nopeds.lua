Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(0.00) -- removes people walking around
        SetPedDensityMultiplierThisFrame(0.01) -- remove vehicles driving
	end
end)