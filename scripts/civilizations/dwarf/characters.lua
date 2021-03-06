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
--      (c) Copyright 2015 by Andrettin
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

-- Dwarven heroes

DefineCharacter("Modsognir", { -- one of the earliest dwarven leaders; in Norse mythology Modsognir was the mightiest and first of dwarves
	Name = "Modsognir",
	Gender = "male",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "Brising Clan",
	Description = _("The leader of one of the first dwarven tribes, Modsognir is a mighty warrior."),
	Background = _("In Norse mythology, Modsognir appears in the ~<Voluspo~> as the first and mightiest of the dwarves."),
	Icon = "icon-modsognir",
	HairVariation = "brown-hair",
	Trait = "upgrade-mighty",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30, -- estimated
	Persistent = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("Durin", { -- deputy of Modsognir
	Name = "Durin",
	Gender = "male",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "Brising Clan",
	Description = _("Durin is a valiant dwarven warrior and loyal vassal of chieftain Modsognir."),
	Background = _("In Norse mythology, Durin appears in the ~<Voluspo~> as one of the first dwarves."),
	Icon = "icon-durin",
	HairVariation = "brown-hair",
	Trait = "upgrade-dextrous",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30, -- estimated
	Persistent = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("Thjodrorir", { -- dwarven sage of Modsognir's clan; in Norse mythology, a dwarf who knew a charm of power to the gods
	Name = "Thjodrorir",
	Type = "unit-dwarven-steelclad", -- should be a priest
	Civilization = "dwarf",
	Faction = "Brising Clan",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineCharacter("Ivaldi", { -- his sons were skilled craftsmen; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
	Name = "Ivaldi",
	Type = "unit-dwarven-steelclad", -- should be a runesmith?
	Civilization = "dwarf",
	Trait = "upgrade-mighty", -- described as mighty
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000 - (30 * 1),
	DeathYear = -3000
})

DefineCharacter("Thursagan", {
	Name = "Thursagan",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "Norlund Clan",
	Description = _("Thursagan is an extremely skilled runemaster who has retired to live as a hermit in the Northern Wastelands. Due to his talents, he was contacted by Rugnur to craft of the Scepter of Fire. His hammer is considered legendary, and dwarves have sought to find it for centuries after his death."),
	Quote = _("\"Ye mean the insane dwarf who lives in the far north?!\" - Baglur, Retired Norlund Warrior"),
	Background = "~<The Sceptre of Fire~> poem about the crafting of that artifact mentions Thursagan (as \"a runesmith\") as the maker of the scepter.",
	Trait = "upgrade-strong",
	Icon = "icon-thursagan",
	HairVariation = "gray-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10, -- died in 40 AD of a violent death, but was already rather old; +10 years
	Persistent = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Items = {
		{
			"unique", "The Hammer of Thursagan",
			"bound", true
		},
	}
})

DefineCharacter("Baglur", {
	Name = "Baglur",
	Gender = "male",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "Norlund Clan",
	Description = _("Baglur is an old and well-experienced warrior. He came back from retirement to help Rugnur defend their homeland against an attack from the Shinsplitter Clan."),
	Quote = _("\"Argh! I'm a retired warrior... it looks like I'll ha' to come out and help ye, else we'll be overrun by these damn raiders...\" - Baglur"),
 	Icon = "icon-baglur",
	Trait = "upgrade-resilient",
	HairVariation = "gray-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10, -- died in 40 AD of a violent death, but was already rather old; +10 years
	Persistent = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("Durstorn", {
	Name = "Durstorn",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "Norlund Clan",
	Description = _("Durstorn is the chief of the Norlund Clan. Despite being greedy and unpleasant to be around, he makes a passable leader. When under pressure, however, he tends to become hasty and crass, impoverishing his capability to make good decisions."),
	Icon = "icon-durstorn",
	Trait = "upgrade-strong",
	HairVariation = "brown-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 35 + 15, -- died in 35 AD of a violent death, but was already somewhat old; +15 years
	Persistent = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("Glonoin", {
	Name = "Glonoin",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "Shorbear Clan",
	ProvinceOfOrigin = "Shorbear Hills",
	Year = -1,
	DeathYear = 29 + 15 -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan
})

DefineCharacter("Rugnur", {
	Name = "Rugnur",
	Gender = "male",
	Type = "unit-dwarven-axefighter",
	Civilization = "dwarf",
	Faction = "Norlund Clan",
	Description = _("Rugnur is a relatively young dwarven warrior. He belongs to the lower strata of his tribe's notables, not being of high enough rank to have a leading position in the clan, but important enough to be granted control of an outpost in the Chaincolt Foothills. Despite being neither ambitious nor adventurous, Rugnur nevertheless ended up being embroiled in the quest to craft the Scepter of Fire for a gnomish monarch."),
	Icon = "icon-rugnur",
	HeroicIcon = "icon-rugnur-older",
	Trait = "upgrade-keen", -- not the best fit for this character, should be replaced with something else perhaps?
	HairVariation = "brown-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = 25,
	DeathYear = 40 + 30, -- died in 40 AD of a violent death, and wasn't old; +30 years
	Persistent = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("Oin", {
	Name = "Oin",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = 437 - (30 * 3),
	DeathYear = 437 - (30 * 2)
})

DefineCharacter("Andvari", { -- dwarf who possessed a lot of gold, including a golden ring (Andvaranaut); was possibly one of the settlers of Joruvellir; son of Oin
	Name = "Andvari",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1), -- Gunnar died in 437 AD; Andvari comes from one generation before him
	Father = "Oin"
})

DefineCharacter("Regin", { -- skilled smith
	Name = "Regin",
	Type = "unit-dwarven-steelclad", -- should be a runesmith
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1) -- Gunnar died in 437 AD; Regin comes from one generation before him
	-- in the Norse myths Regin was the son of Hreidmar; but whereas Regin has been identified as a dwarf, to my knowledge Hreidmar hasn't
})

DefineCharacter("Dain", { -- dwarven mastersmith; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
	Name = "Dain",
	Type = "unit-dwarven-steelclad", -- should be a runesmith
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
--	Year = ?, -- contemporary of Ottar, who lived after Siegfried
--	DeathYear = ?
})

DefineCharacter("Nabbi", { -- dwarven mastersmith; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
	Name = "Nabbi",
	Type = "unit-dwarven-steelclad", -- should be a runesmith
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
--	Year = ?, -- contemporary of Ottar, who lived after Siegfried
--	DeathYear = ?
})
