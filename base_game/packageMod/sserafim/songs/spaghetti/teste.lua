local bfTag = 'kazuha'


function onCreate()
    createInstance(bfTag, 'objects.Character', {0, 0, 'kazuha', true})
    addInstance(bfTag, true)
    setObjectCamera(bfTag, 'game')
    setProperty(bfTag .. '.flipX', false)
end

function onUpdate(elapsed)
    updateBFIdle(elapsed)
end

function handleBFInputs()
    if keyboardJustPressed('A') then
        playCharAnim('singLEFT', true)
        idleTimer = 0.45

    elseif keyboardJustPressed('S') then
        playCharAnim('singDOWN', true)
        idleTimer = 0.45

    elseif keyboardJustPressed('W') then
        playCharAnim('singUP', true)
        idleTimer = 0.45

    elseif keyboardJustPressed('D') then
        playCharAnim('singRIGHT', true)
        idleTimer = 0.45

    elseif keyboardJustPressed('SPACE') then
        playCharAnim('hey', true)
        idleTimer = 0.65
    end
end


function playCharAnim(anim, force)
    if force == nil then
        force = true
    end

    callMethod(bfTag .. '.playAnim', {anim, force})
    setProperty(bfTag .. '.specialAnim', true)
end

function updateBFIdle(elapsed)
    if idleTimer > 0 then
        idleTimer = idleTimer - elapsed

        if idleTimer <= 0 then
            setProperty(bfTag .. '.specialAnim', false)
            callMethod(bfTag .. '.dance', {})
        end
    end
end