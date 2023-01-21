
local display = false


ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
end)  


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(GetPlayerPed(-1), false)
        for k,v in pairs(Config.Location) do
        local dist = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, v.coords)
        DrawMarker(1, v.coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100, false, true, 2, true, false, false, false)
        if dist <= 2.5 then
         showHelpNotification("Press ~INPUT_CONTEXT~ to interact with the Job Selector!")
            if IsControlJustPressed(1, 38) then
                job()
                SetDisplay(true)
            end
        end
      end
    end
end)


function job()
    SendNUIMessage({
        type = "clearjob",
    })
        for k,v in pairs(Config.JobsList) do
            SendNUIMessage({
                type = 'add',
                title = v.title,
                img = v.img,
                lvl = v.lvl,
                players = v.players,
                time = v.time,
                jobdescription = v.jobdescription,
                titleimg1 = v.titleimg1,
                titleimg2 = v.titleimg2,
                jobconfirmtitle = v.jobconfirmtitle,
                jobconfirmtext = v.jobconfirmtext,
                jobname = v.jobname,
                jobselectortitle = v.jobselectortitle,
                jobselectortext = v.jobselectortext,
            }) 
    end
end

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        DisableControlAction(0, 1, display) 
        DisableControlAction(0, 2, display) 
        DisableControlAction(0, 142, display) 
        DisableControlAction(0, 18, display) 
        DisableControlAction(0, 322, display) 
        DisableControlAction(0, 106, display) 
    end
end)

RegisterNUICallback('getjob', function(data, cb)
    TriggerServerEvent("job-selector:setjob", data.jobname)
    SetDisplay(false)
end)

RegisterNUICallback('exit', function()
    SetDisplay(false)
end)

function showHelpNotification(message)
    AddTextEntry('HelpNotification', message)
    DisplayHelpTextThisFrame('HelpNotification', false)
end

Citizen.CreateThread(function()
	for k,v in pairs(Config.Location) do
		local blip = AddBlipForCoord(v.coords)

		SetBlipSprite (blip, v.blipsprite)
		SetBlipDisplay(blip, v.blipdisplay)
		SetBlipScale  (blip, v.blipscale)
		SetBlipColour (blip, v.blipcolor)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.blipname)
		EndTextCommandSetBlipName(blip)
	end
 end)



