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
--      buttons.ccl - Define the unit-buttons of the teuton civilization.
--
--      (c) Copyright 2014-2015 by Andrettin
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

------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- General Commands -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-teuton-spatha",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-spatha"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-ritter", "unit-frank-horseman",
		"germanic-group", "teuton-group"
	}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-iron-shield",
	Action = "stop",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-iron-shield"},
	Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-spearman", "unit-frank-spearman", "unit-teuton-ritter", "unit-frank-horseman",
		"germanic-group", "teuton-group"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-bodkin-arrow",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-bodkin-arrow"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-archer"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-1",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-1"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-2"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult"
	}
} )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
	Action = "attack-ground",
	Key = "g", Hint = _("Attack ~!Ground"), Popup = "popup-commands",
	ForUnit = {"unit-teuton-catapult", "germanic-group", "teuton-group"}
})

-- Building Commands -----------------------------------------------

DefineButton( { Pos = 13, Level = 0, Icon = "icon-rally-point",
	Action = "rally-point",
	Key = "r", Hint = _("Set ~!Rally Point"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-teuton-barracks",
		"unit-teuton-watch-tower", "unit-teuton-guard-tower"
	}
} )

-- Simple Buildings Teuton -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-germanic-town-hall",
  Action = "build", Value = "unit-teuton-town-hall",
  Key = "h", Hint = _("Build Chieftain's ~!Hall"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 1, Level = 1, Icon = "icon-teuton-town-hall",
  Action = "build", Value = "unit-teuton-town-hall",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "h", Hint = _("Build Rat~!haus"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 2, Level = 1, Icon = "icon-germanic-farm",
  Action = "build", Value = "unit-teuton-farm",
  Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-germanic-barracks",
  Action = "build", Value = "unit-teuton-barracks",
  Key = "w", Hint = _("Build ~!War Lodge"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 3, Level = 1, Icon = "icon-teuton-barracks",
  Action = "build", Value = "unit-teuton-barracks",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "b", Hint = _("Build ~!Barracks"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 4, Level = 1, Icon = "icon-germanic-carpenters-shop",
  Action = "build", Value = "unit-teuton-lumber-mill",
  Key = "p", Hint = _("Build Car~!penter's Shop"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-teuton-lumber-mill",
  Action = "build", Value = "unit-teuton-lumber-mill",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "l", Hint = _("Build ~!Lumber Mill"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-germanic-smithy",
  Action = "build", Value = "unit-teuton-smithy",
  Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 5, Level = 1, Icon = "icon-teuton-smithy",
  Action = "build", Value = "unit-teuton-smithy",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 6, Level = 1, Icon = "icon-teuton-stables",
	Action = "build", Value = "unit-teuton-stables",
	Key = "e", Hint = _("Build Stabl~!es"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 7, Level = 1, Icon = "icon-teuton-watch-tower",
  Action = "build", Value = "unit-teuton-watch-tower",
  Key = "t", Hint = _("Build Watch ~!Tower"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 8, Level = 1, Icon = "icon-teuton-dock",
	Action = "build", Value = "unit-teuton-dock",
	Key = "d", Hint = _("Build ~!Dock"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-gold-mine",
	Action = "build", Value = "unit-gold-mine",
	Key = "g", Hint = _("Build ~!Gold Mine"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 10, Level = 1, Icon = "icon-silver-mine",
	Action = "build", Value = "unit-silver-mine",
	Key = "v", Hint = _("Build Si~!lver Mine"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 11, Level = 1, Icon = "icon-copper-mine",
	Action = "build", Value = "unit-copper-mine",
	Key = "c", Hint = _("Build ~!Copper Mine"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
} )

-- Building Commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-worker",
	Action = "train-unit", Value = "unit-teuton-worker",
	Key = "b", Hint = _("Train ~!Bura"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-swordsman",
	Action = "train-unit", Value = "unit-teuton-swordsman",
	Key = "k", Hint = _("Train ~!Krieger"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-suebi-swordsman",
	Action = "train-unit", Value = "unit-suebi-swordsman",
	Key = "k", Hint = _("Train ~!Krieger"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-swordsman",
	Action = "train-unit", Value = "unit-frank-swordsman",
	Key = "k", Hint = _("Train ~!Krieger"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-spearman",
	Action = "train-unit", Value = "unit-teuton-spearman",
	Key = "e", Hint = _("Train Sp~!eerkampfer"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-spearman",
	Action = "train-unit", Value = "unit-frank-spearman",
	Key = "e", Hint = _("Train Sp~!eerkampfer"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-archer",
	Action = "train-unit", Value = "unit-teuton-archer",
	Key = "s", Hint = _("Train ~!Skutan"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )
  
DefineButton( { Pos = 4, Level = 0, Icon = "icon-teuton-ritter",
	Action = "train-unit", Value = "unit-teuton-ritter",
	Key = "r", Hint = _("Train ~!Ritter"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-teuton-ritter",
	Action = "train-unit", Value = "unit-frank-horseman",
	Key = "r", Hint = _("Train ~!Ritter"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-teuton-catapult",
	Action = "train-unit", Value = "unit-teuton-catapult",
	Key = "c", Hint = _("Build ~!Catapult"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-kogge",
	Action = "train-unit", Value = "unit-teuton-kogge",
	Key = "k", Hint = _("Build ~!Kogge"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-dock"}
} )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-spatha",
	Action = "research", Value = "upgrade-teuton-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = _("Research S~!patha"), Popup = "popup-research",
	Description = "+2 Damage for Kriegers.",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-iron-shield",
	Action = "research", Value = "upgrade-teuton-iron-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Iron ~!Shield"), Popup = "popup-research",
	Description = "+2 Armor for Kriegers.",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-teuton-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Bodkin ~!Arrow"), Popup = "popup-research",
	Description = "+2 Damage for Skutans.",
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = _("Research Granite ~!Catapult Projectile"), Popup = "popup-research",
	Description = "+15 Damage for Catapults.",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = _("Research Metal ~!Catapult Projectile"), Popup = "popup-research",
	Description = "+15 Damage for Catapults.",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-iron-tipped-wood-plow",
	Action = "research", Value = "upgrade-teuton-iron-tipped-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Farms."),
	Key = "p", Hint = _("Research Iron-Tipped Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-teuton-masonry",
	Allowed = "check-single-research",
	Key = "m", Hint = _("Research ~!Masonry"), Popup = "popup-research",
	Description = "+20% Hit Points and +5 Armor for buildings, and allows Watch Towers to be upgraded to Guard Towers and Rathauses to Burgs.",
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-coinage",
	Action = "research", Value = "upgrade-teuton-coinage",
	Allowed = "check-single-research",
	Description = _("+10% Gold Processing."),
	Key = "c", Hint = _("Research ~!Coinage"), Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-teuton-writing",
	Allowed = "check-single-research",
	Description = _("+10% Time Efficiency for all buildings, changes faction from tribe to polity."),
	Key = "w", Hint = _("Research ~!Writing"), Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-teuton-alchemy",
	Allowed = "check-single-research",
	Description = _("+1 Fire Damage for Skutans, +5 Fire Damage for Catapults."),
	Key = "a", Hint = _("Research ~!Alchemy"), Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-guard-tower",
  Action = "upgrade-to", Value = "unit-teuton-guard-tower",
  Key = "g", Hint = _("Upgrade to ~!Guard Tower"), Popup = "popup-building",
  ForUnit = {"unit-teuton-watch-tower"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-stronghold",
  Action = "upgrade-to", Value = "unit-teuton-stronghold",
  Allowed = "check-upgrade-to",
  Key = "u", Hint = _("Upgrade to B~!urg"), Popup = "popup-building",
  ForUnit = {"unit-teuton-town-hall"} } )

--[[
DefineButton( { Pos = 2, Level = 1, Icon = "icon-teuton-ritter",
	Action = "experience-upgrade-to", Value = "unit-teuton-ritter",
	Key = "r", Hint = _("Upgrade to ~!Ritter"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman"}
} )
--]]
