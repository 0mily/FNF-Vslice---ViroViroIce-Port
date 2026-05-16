function goodNoteHit(id, dir, n, sus)
    local bct = n
    if bct == nil or bct == "" or bct == "Alt Animation" then
        bct = "BF"
    end
    bct = string.gsub(bct, "^sserafim%-", "")
    local irado = "Normal"
    if string.find(string.lower(bct), "alt") then
        irado = "Alt"
    end
    
    debugPrint("[Personagem: " .. bct .. " | " .. irado .. "]")
end