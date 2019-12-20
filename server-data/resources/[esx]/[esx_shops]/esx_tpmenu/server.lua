TriggerEvent('es:addGroupCommand', 'tpmenu', 'admin', function(source, args, user)
		TriggerClientEvent("tpmenu:open", source)
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficient Permissions.")
end, {help = "Open teleport menu for admins"})

TriggerEvent('es:addGroupCommand', 'tpwaypoint', 'admin', function(source, args, user)
	TriggerClientEvent('gpstools:tpwaypoint', source)

end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, 'SYSTEM', {255, 0, 0}, 'Insufficient Permissions.')
end, {help = 'TP to the way-point selected on GPS'})