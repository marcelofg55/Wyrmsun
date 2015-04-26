--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      scripts.lua - The craft configuration language.
--
--      (c) Copyright 2005 by Jimmy Salmon
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

-- Set the unit type graphics to the correct tileset
table.foreach(UnitTypeFiles,
	function(k, v)
		if (v[wyrmsun.tileset] ~= nil) then
			DefineUnitType(k, {Image = {"file", v[wyrmsun.tileset]}})
		else
			DefineUnitType(k, {Image = {"file", v["conifer_forest_summer"]}}) -- use the conifer forest as default if the image is not defined for this tileset
		end
	end
)

-- different ferns depending on tileset (normal graphic-per-tileset setting was resulting in bugs with the fern)
if (wyrmsun.tileset == "swamp" or wyrmsun.tileset == "cave" or wyrmsun.tileset == "dungeon") then
	DefineUnitType("unit-fern", {
		Image = {"file", "tilesets/swamp/neutral/decorations/fern.png", "size", {48, 48}},
	} )
elseif (wyrmsun.tileset == "conifer_forest_summer" or wyrmsun.tileset == "conifer_forest_autumn" or wyrmsun.tileset == "fairlimbed_forest") then
	DefineUnitType("unit-fern", {
		Image = {"file", "tilesets/forest/neutral/decorations/fern.png", "size", {48, 48}},
	} )
end

-- Icon and construction graphics also depend on the tileset

Load("scripts/icons.lua")
Load("scripts/constructions.lua")

StopMusic()
MusicStopped()

if (wyrmsun.tileset == "cave") then -- ugly way to make sure the cave water appears properly
	ClearAllColorCyclingRange()
	AddColorCyclingRange(38, 46) -- water
else
	ClearAllColorCyclingRange()
	AddColorCyclingRange(38, 47) -- water
end
