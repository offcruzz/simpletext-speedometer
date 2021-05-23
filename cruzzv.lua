function text(content)
    SetTextFont(2)
    SetTextProportional(0)
    SetTextDropShadow()
    SetTextOutline()
    SetTextScale(1.0, 1.0)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.885, 0.87)
end
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(1)
            local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6)
            if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
                text(math.floor(speed))
            end
        end
    end
)

function texto(content)
    SetTextFont(9)
    SetTextProportional(0)
    SetTextDropShadow()
    SetTextScale(0.2, 0.2)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.894, 0.92)
end
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(1)
            local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6)
            if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
                texto("KM/H")
            end
        end
    end
)
