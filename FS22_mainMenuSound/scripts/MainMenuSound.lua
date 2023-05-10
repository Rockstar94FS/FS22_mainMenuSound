local modName = g_currentInternalModName
local modDir = g_currentInternalModDirectory

MainMenuSound = {}

function MainMenuSound:loadMods()
	local loadStreamedSampleOld = loadStreamedSample

	loadStreamedSample = function(sampleId, bgmusicFilename)
		if bgmusicFilename == "data/music/menu.ogg" then
			bgmusicFilename = modDir .. "data/menu.ogg"
		end

		loadStreamedSampleOld(sampleId, bgmusicFilename)
	end
end

function MainMenuSound:loadGame()
end

function MainMenuSound:mouseEvent(posX, posY, isDown, isUp, button)
end

function MainMenuSound:keyEvent(unicode, sym, modifier, isDown)
end

function MainMenuSound:update(dt)
end

function MainMenuSound:draw()
end

addInternalModEventListener(MainMenuSound)