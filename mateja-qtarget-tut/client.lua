
-- SITE ZA UZIMANJE IKONICA : https://fontawesome.com/search?s=solid%2Cbrands

-- SITE ZA PEDOVE : https://docs.fivem.net/docs/game-references/ped-models/

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("test")
AddEventHandler("test", function()
    exports["okokNotify"]:Alert("MATEJA", "Cao ja sam Smrdoguzac Kosac", 2000, "info")
end) -- ovde napravite funkciju koju zelite mozete bilo sta ali sam ja izabrao notify

-- ZA PEDA 
-- Ovde imamo pocetnu vrstu mozda i najkorisniju a to je na pedove

local pedzakoristenje = {
    "a_m_m_fatlatin_01" -- ovde unesite kojeg peda zelite ja sam uzeo ovog
}

exports['qtarget']:AddTargetModel(pedzakoristenje, {
    options = {
        {
            event = "test", -- ovde upisujete ime funkcije koju ste upisali gore
            icon = "fas fa-gas-pump", -- ovde upisujete ikonicu sa sajta koji se nalazi na skroz gornji dio ove skripte za tutorial kao sto vidite promenila se ikonica
            label = "Mateja test", -- ovde napisete text koji zelite da bude 
        },
    },
    distance = 1.5 -- ovde pisete distancu na koju zelite sto je veca distanca to sa vece razdaljine mozete koristiti 3 oko tojest qtarget
}) -- i to je kraj za pocetan dio sada cu da ga prekinem da bih vam pokazao drugi

-- HASH

local hash = { -- ovde je vrlo jednostavno kao kod pedova samo sto ne trazite na fivem sajtu vec koristite skriptu id gun
    "prop_bollard_02a" -- ovo je kod za hash ali ima i drugi nacin koji je mozda laksi a to je da prepisete sa idgun skripte hash : //
} -- hash se moze zapisati i brojevima tojest kodom i moze ovako kao sto je na idgun

exports['qtarget']:AddTargetModel(hash, {
    options = {
        {
            event = "test",
            icon = "fas fa-piggy-bank",
            label = "Mateja test",
        },
    },
    distance = 1.5 -- ovde isto vazi kao i od gore 
})

-- OVO SLUZI ZA BOX ZONU
-- ovo je najslozenija ali i najbolja po meni vrsta za qtarget jer mozete da napravite zone i da vam ne uzima na svaki prop kao naprimer malo pre na hash

exports['qtarget']:AddBoxZone("test", vector3(297.2935, -588.815, 42.3272), 1.0, 1.0, { -- prvo dodajete kordinate
    name="test", -- nakon tofa imate ovo 1.0 to vam je duzina i sirina zone ja cu dodat po defoltu jer je najlakse
    debugPoly=false,
    heading=160.0,
    UseZ = true
    },{
    options = {
        {
            event = "test",
            icon = "fas fa-piggy-bank fa-lg",
            label = "Mateja Test",
        },
    },
    distance = 1.2
}) -- ovde takodje isto vazi kao za 1 i drugu varijantu nadam se da sam vam pomogao i da ce vam biti lakse i bolje objasnjeno za qtarget