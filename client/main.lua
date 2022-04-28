CreateThread(function()
    for k,v in pairs(Objects) do
        local object = CreateObject(Objects[k].Hash, Objects[k].Coords.x, Objects[k].Coords.y, Objects[k].Coords.z, true, false, false)
        PlaceObjectOnGroundProperly(object)
        SetEntityHeading(object, Objects[k].Coords.w)
        FreezeEntityPosition(object, Objects[k].FreezeObj)
    end
end)