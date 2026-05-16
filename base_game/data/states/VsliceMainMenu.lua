forkState = 'MainMenuState' -- used to fork states variables.

function onUpdatePost()
    if keyJustPressed('debug_2') then
        switchState('ModsMenuState')
    end
end

function onCreatePost()
    removeItemMenu('mods')
    removeItemMenu('achievements')
    removeItemMenu('credits')

    addItemMenu('merch', 'mainmenu/merch', 24, 'center')
    addItemMenu('credits', 'mainmenu/credits', 24, 'center')

    setItemOrder({
        'story_mode',
        'freeplay',
        'merch',
        'options',
        'credits'

    })

    changeMainMenuSelection(0, 'center')
end

function onSelected(itemName, index, column)
    if itemName == 'merch' then
        openMerchLink()
        return Function_Stop
    end

    return Function_Continue
end

function openMerchLink()
    runHaxeCode([[
        FlxG.openURL("https://needlejuicerecords.com/pages/friday-night-funkin");
    ]])
end