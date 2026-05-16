local singAnims = {
    [0] = "singLEFT",
    [1] = "singDOWN",
    [2] = "singUP",
    [3] = "singRIGHT"
}

local noBfAnimNoteTypes = {
    ["sserafim-chaewon"] = true,
    ["sserafim-eunchae"] = true,
    ["sserafim-kazuha"] = true,
    ["sserafim-yunjin"] = true,
    ["sserafim-gf"] = true
}

function onCreatePost()
    for i = 0, getProperty("unspawnNotes.length") - 1 do
        local mustPress = getPropertyFromGroup("unspawnNotes", i, "mustPress")
        local noteType = getPropertyFromGroup("unspawnNotes", i, "noteType")

        if mustPress then
            if noteType == "sserafim-sakura"
            or noteType == "sserafim-all"
            or noteType == "Alt Animation"
            or noBfAnimNoteTypes[noteType] then
                setPropertyFromGroup("unspawnNotes", i, "noAnimation", true)
            end
        end
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    local baseAnim = singAnims[direction]
    if noteType == "sserafim-gf" then
        playAnim("gf", baseAnim .. "-gf", true)
        setProperty("gf.specialAnim", true)
        return
    end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
    local baseAnim = singAnims[direction]

    if baseAnim == nil then
        return
    end

    if noteType == nil or noteType == "" then
        return
    end

    -- Sakura
    if noteType == "sserafim-sakura" then
        playAnim("boyfriend", baseAnim .. "-saku", true)
        setProperty("boyfriend.specialAnim", true)
        return
    end

    if noteType == "sserafim-all" then
        playAnim("boyfriend", baseAnim .. "-all", true)
        setProperty("boyfriend.specialAnim", true)

        playAnim("gf", baseAnim .. "-all", true)
        setProperty("gf.specialAnim", true)

        return
    end

    -- Alt Animation: toca as animações -alt
    if noteType == "Alt Animation" then
        playAnim("boyfriend", baseAnim .. "-alt", true)
        setProperty("boyfriend.specialAnim", true)
        return
    end

    -- Outras integrantes:
    -- não fazem o BF tocar animação nenhuma
    if noBfAnimNoteTypes[noteType] then
        return
    end
end