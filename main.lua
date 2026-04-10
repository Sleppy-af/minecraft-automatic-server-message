local Licznik = 0

function Initialize(Plugin)
    -- Rejestrujemy "tyknięcie" świata (wywołuje się 20 razy na sekunde)
    cPluginManager:AddHook(cPluginManager.HOOK_WORLD_TICK, OnWorldTick)
    LOG(">>> Plugin zaladowany <<<")
    return true
end

function OnWorldTick(World)
    Licznik = Licznik + 1
    
    -- 1200 tików = 60 sekund
    if (Licznik >= 6000) then
        Licznik = 0
        World:BroadcastChat(cChatColor.Green .. "[Info] " .. cChatColor.White .. "YOUR MESSAGE")
    end
end
