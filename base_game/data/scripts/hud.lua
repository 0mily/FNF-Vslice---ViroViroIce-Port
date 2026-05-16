-- ==========================
-- Vslice HUD
-- ==========================

function onCreate()
    runHaxeCode([[
        import flixel.util.FlxStringUtil;

        function formatMoney(txt:String) {
            return FlxStringUtil.formatMoney(txt, false, true);
        }
    ]])
    setTextString('scoreTxt', 'Score: 0')
end

function onCreatePost()
    setHealthBarColors('FF0000', '66FF33') -- idk, Vslice vibes
    setProperty('botplayTxt.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBar.bg.visible', false)
    setProperty('scoreTxt.fieldWidth', 0)
    setProperty('scoreTxt.x', getProperty('healthBar.x') + getProperty('healthBar.width') - 190)
    setProperty('scoreTxt.y', getProperty('healthBar.y') + 30)
    setTextFont('scoreTxt', 'vcr.ttf')
    setTextSize('scoreTxt', 16)
    setTextAlignment('scoreTxt', 'right')
    setTextBorder('scoreTxt', 1, '000000')
end

function onUpdateScore()
    if botPlay then
        setTextString('scoreTxt', 'Bot Play Enabled')
    else
        setTextString('scoreTxt', 'Score: ' .. runHaxeFunction('formatMoney', {score}))
    end
end

function onEvent(event, value1, value2, strumTime)
    if event == 'Change Character' then
        setHealthBarColors('FF0000', '66FF33')
    end
end