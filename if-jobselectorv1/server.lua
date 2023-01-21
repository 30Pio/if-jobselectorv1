if Config.ESX then

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('job-selector:setjob')
AddEventHandler('job-selector:setjob', function(jobname)
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.setJob(jobname, 0)
   

 end)
end

if Config.QBCore then 

local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('job-selector:setjob')
AddEventHandler('job-selector:setjob', function(jobname)
	local _source = source	
	local xPlayer = QBCore.Functions.GetPlayer(_source)

    xPlayer.Functions.SetJob(jobname, 0)

 end)

end