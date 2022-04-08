RegisterNetEvent('Notification')
AddEventHandler('Notification', function()
    print("Works") --To verify if the script works
    exports['mythic_notify']:DoHudText('inform', 'Auch! You got a small accident!'})
end)

RegisterNetEvent('Notification2')
AddEventHandler('Notification2', function()
    print("Works") --To verify if the script works
    exports['mythic_notify']:DoHudText('inform', 'Auch! You got a medium accident!'})
end)

RegisterNetEvent('Notification3')
AddEventHandler('Notification3', function()
    print("Works") --To verify if the script works
    exports['mythic_notify']:DoHudText('inform', 'Auch! You got a big accident!'})
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if DoesEntityExist(vehicle) then
           AddEventHandler("SabAccidents:OnAccident", 1)
             TriggerEvent("Notification")
           end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if DoesEntityExist(vehicle) then
           AddEventHandler("SabAccidents:OnAccident", 2)
             TriggerEvent("Notification2")
           end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if DoesEntityExist(vehicle) then
           AddEventHandler("SabAccidents:OnAccident", 3)
             TriggerEvent("Notification3")
           end
        end
    end
end)
