local PlayerData                = {}
ESX                             = nil

local heist = false
local tags = false
local searched = 0
local location1 = false
local location2 = false
local location3 = false
local location4 = false
local location5 = false
local location6 = false
local location7 = false
local location8 = false
local location9 = false
local location10 = false

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
  end)  

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)


--Citizen.CreateThread(function() -- tags  
--    while true do
--        Citizen.Wait(1)
--
--        local ped = PlayerPedId()
--            local casino = AddBlipForCoord(-1876.416,2062.067,145.574)
--                SetBlipSprite(casino, 160)
--                BeginTextCommandSetBlipName("STRING")
--                AddTextComponentString(_U('blipname'))
--                SetBlipAsShortRange(casino, true)
--                EndTextCommandSetBlipName(casino)
--                return
--        end
--    end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
      local ped = PlayerPedId()
        if heist == false then
        if GetDistanceBetweenCoords(GetEntityCoords(ped), 983.93,61.66,78.50, true) < 50 then
            DrawMarker(29, 983.93,61.66,78.50, 0, 0, 0, 0, 0, 75.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 1, 0, 2, 0, 0, 0, 0)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), 983.93,61.66,78.50, true) < 1.5 then
                    ESX.ShowHelpNotification(_U('start_robbery'))
                        if IsControlJustReleased(1, 51) then
                            TriggerServerEvent("esx_casino:robbery")
                            PoliceRobberyAlert()
                        end
                    end
                end
            end
        end
    end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
            local ped = PlayerPedId()
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 983.93,61.66,78.50, true) > 100 then
                heist = false
                tags = false
            end
        end
    end)
        
RegisterNetEvent("esx_casino:start")
AddEventHandler("esx_casino:start", function()
  heist = true
  tags = true
  Citizen.CreateThread(function()
    while true do 
      Citizen.Wait(1)
        local ped = PlayerPedId()
        if location1 == false and tags == true then
            DrawMarker(20, 985.58, 60.17, 78.50, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 985.58, 60.17, 78.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location1 = true
                        searched = searched+1
                    end
                end
            end
        if location2 == false and tags == true then
            DrawMarker(20, 986.58, 68.77, 78.50, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 986.58, 68.77, 78.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location2 = true
                        searched = searched+1
                    end
                end
            end
        if location3 == false and tags == true then
            DrawMarker(20, 990.66, 64.02, 78.50, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 990.66, 64.02, 78.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location3 = true
                        searched = searched+1
                    end
                end
            end
        if location4 == false and tags == true then
            DrawMarker(20, 993.46, 67.44, 78.50, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 993.46, 67.44, 78.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location4 = true
                        searched = searched+1
                    end
                end
            end
        if location5 == false and tags == true then
            DrawMarker(20, 1014.65, 47.37, 73.50, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 1014.65, 47.37, 75.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location5 = true
                        searched = searched+1
                    end
                end
            end
        if location6 == false and tags == true then
            DrawMarker(20, 966.15, 32.47, 75.50, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 966.15, 32.47, 75.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location6 = true
                        searched = searched+1
                    end
                end
            end
        if location7 == false and tags == true then
            DrawMarker(20, 969.00, 32.87, 74.50, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 969.00, 32.87, 75.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location7 = true
                        searched = searched+1
                    end
                end
            end
        if location8 == false and tags == true then
            DrawMarker(20, 953.50, 55.47, 75.10, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 953.50, 55.47, 75.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location8 = true
                        searched = searched+1
                    end
                end
            end
        if location9 == false and tags == true then
            DrawMarker(20, 940.00, 29.17, 75.30, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 940.00, 29.17, 75.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location9 = true
                        searched = searched+1
                    end
                end
            end
        if location10 == false and tags == true then
            DrawMarker(20, 951.00, 26.55, 74.80, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 951.00, 26.55, 75.50, true) < 1.5 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location10 = true
                        searched = searched+1
                    end
                end
            end
        end
    end)
end)

Citizen.CreateThread(function()
    while searched < 10 do 
        Citizen.Wait(100)
            if searched == 5 then
                TriggerServerEvent("esx_casino:reward")
                heist = false
                tags = false
                Citizen.Wait(19000)
                ESX.ShowHelpNotification(_U('suitcase_found'))
            end
        end
    end)

function Animacja()
  local ped = PlayerPedId()
  Citizen.CreateThread(function()
    RequestAnimDict("mini@triathlon")
    Citizen.Wait(100)
    TaskPlayAnim((ped), 'mini@triathlon', 'rummage_bag', 2.0, 2.0, -1, 81, 0, 0, 0, 0)
    FreezeEntityPosition(PlayerPedId(), true)
    Citizen.Wait(20000)
    ClearPedTasks(ped)
    FreezeEntityPosition(PlayerPedId(), false)
  end)
end

RegisterNetEvent("esx_casino:notification")
AddEventHandler("esx_casino:notification", function(text)
    ESX.ShowHelpNotification(text)
end)

RegisterNetEvent("esx_casino:notify")
AddEventHandler("esx_casino:notify", function(text)
    ESX.ShowNotification(_U('notification'))
    PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)
end)

RegisterCommand("neq", function()
    TriggerEvent("esx_casino:lspd")
end)

function PoliceRobberyAlert()
    local playerPed = PlayerPedId()
    PedPosition	= GetEntityCoords(playerPed)
    robbery_alert = 'Casino is robbed'
    local PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z }
    TriggerServerEvent('esx_addons_gcphone:startCall', 'police', robbery_alert, PlayerCoords, {
    PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z },
    })
end