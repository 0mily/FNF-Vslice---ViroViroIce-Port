-- ==========================
-- Icon change script or smth
-- ==========================

local soRetroIcon = false

function onUpdate(elapsed)
    if keyboardJustPressed('NINE') then
        soRetroIcon = not soRetroIcon

        if soRetroIcon then
            callMethod('iconP1.changeIcon', {'bf-old'}) -- soon will be changed to "changeIcon" btw.
        else
            callMethod('iconP1.changeIcon', {'bf'})
        end
    end
end