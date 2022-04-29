--[[
=============================================================
               Made By: Wakie Modifications 
=============================================================
--]]

CreateThread(function()
    for k,v in pairs(Config.Objects) do
        local object = CreateObject(Config.Objects[k].Hash, Config.Objects[k].Coords.x, Config.Objects[k].Coords.y, Config.Objects[k].Coords.z, true, false, false)
        PlaceObjectOnGroundProperly(object)
        SetEntityHeading(object, Config.Objects[k].Coords.w)
        FreezeEntityPosition(object, Config.Objects[k].FreezeObj)
    end
end)