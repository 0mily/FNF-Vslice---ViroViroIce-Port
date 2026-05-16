forkState = 'StoryMenuState'

function onCreatePost()
    setLevelPreview('weekend1', 'Darnell, Lit Up, 2hot')
    setLevelPreview('sserafim', 'SPAGHETTI, (feat. j-hope of BTS), (Clean ver.)')

    if hasBeatenWeek('weekend1') then
        setLevelPreview('weekend1', false)
    end
end