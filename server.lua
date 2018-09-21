ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_phone3:registerNumber', 'darknet', "Dark Net", true, false, true, true)

RegisterServerEvent('esx_phone3:reload')
AddEventHandler('esx_phone3:reload', function(phoneNumber)

	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local darkPhone = xPlayer.getInventoryItem('black_chip')

	if darkPhone.count > 0 then
		if xPlayer.job.name ~= 'fib' then
			TriggerEvent('esx_phone:addSource', 'darknet', _source)
		end
	end
end)

