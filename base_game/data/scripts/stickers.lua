function onCreate()
    local weekStickers = { -- weeks for story mode
        tutorial = {'stickers-set-1', 'tutorial'},
        week1 = {'stickers-set-1', 'week1'},
        week3 = {'stickers-set-1', 'week3'},
        week4 = {'stickers-set-1', 'week4'},
        week5 = {'stickers-set-1', 'parents'},
        weekend1 = {'stickers-set-2', 'all'}
    }

    local songStickers = { -- songs por freeplay
        -- Tutorial
        tutorial = {'stickers-set-1', 'tutorial'},
        bopeebo = {'stickers-set-1', 'week1'},
        fresh = {'stickers-set-1', 'week1'},
        dad_battle = {'stickers-set-1', 'week1'},        -- Week 2
        spookeez = {'stickers-set-1', 'all'},
        south = {'stickers-set-1', 'all'},
        monster = {'stickers-set-1', 'monster'},
        pico = {'stickers-set-1', 'week3'},
        philly = {'stickers-set-1', 'week3'},
        blammed = {'stickers-set-1', 'week3'},
        satin_panties = {'stickers-set-1', 'week4'},
        high = {'stickers-set-1', 'week4'},
        milf = {'stickers-set-1', 'week4'},
        cocoa = {'stickers-set-1', 'parents'},
        eggnog = {'stickers-set-1', 'parents'},
        winter_horrorland = {'stickers-set-1', 'monster'},
        darnell = {'stickers-set-2', 'all'},
        lit_up = {'stickers-set-2', 'all'},
        ["2hot"] = {'stickers-set-2', 'all'},
        blazin = {'stickers-set-2', 'all'}
    } -- I THINK there's a better way to do that shit

    -- ===============================================================================

    local curSong = string.lower(songName)-- space bc i'm just bored.
    curSong = string.gsub(curSong, " ", "_")
    curSong = string.gsub(curSong, "-", "_")

    -- ===============================================================================

    local data = nil

    if curWeek ~= nil then
        data = weekStickers[curWeek]
    end

    if data == nil then
        data = songStickers[curSong]
    end

    if data == nil then
        data = {'stickers-set-1', 'all'}
    end

    changeTransStickers(data[1], data[2])
end