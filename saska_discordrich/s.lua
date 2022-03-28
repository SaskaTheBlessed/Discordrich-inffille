ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('123saskatheblessed', function(source, cb)
    local pelaajats = GetNumPlayerIndices()
    cb(pelaajats)
end)