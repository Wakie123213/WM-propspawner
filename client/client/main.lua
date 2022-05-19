--[[
=============================================================
               Made By: Wakie Modifications 
=============================================================
--]]

local Props = {}

CreateThread(function()
    for k,v in pairs(Config.Objects) do
        local object = CreateObject(Config.Objects[k].Hash, Config.Objects[k].Coords.x, Config.Objects[k].Coords.y, Config.Objects[k].Coords.z - 1, true, false, false)
        PlaceObjectOnGroundProperly(object)
        SetEntityHeading(object, Config.Objects[k].Coords.w)
        FreezeEntityPosition(object, Config.Objects[k].FreezeObj)
        Props[k] = {
            Obj = object
        }
    end
end)

AddEventHandler('onResourceStop', function()
    for k,v in pairs(Props) do
        NetworkRequestControlOfEntity(Props[k].Obj)
        DeleteObject(Props[k].Obj)
        Props[k] = nil
    end
end)