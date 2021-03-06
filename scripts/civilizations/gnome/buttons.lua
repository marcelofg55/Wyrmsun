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
--      buttons.ccl - Define the unit-buttons of the gnomish civilization.
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

-- general commands -------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-boots",
	Action = "move",
	Key = "m", Hint = _("~!Move"), Popup = "popup-commands",
	ForUnit = {
		"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms",
		"unit-gnomish-herbalist", "unit-gnomish-caravan",
		"gnome-group"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-gnomish-thrusting-sword-1",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"gnome-group"
	}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-gnomish-patrol-land",
	Action = "patrol",
	Key = "p", Hint = _("~!Patrol"), Popup = "popup-commands",
	ForUnit = {
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", 
		"gnome-group"
	}
} )

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = _("~!Repair"), Popup = "popup-commands",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Key = "h", Hint = _("~!Harvest Resource"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-worker"}
} )

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-herbal-cure",
	Action = "cast-spell", Value = "spell-herbal-cure",
	Key = "h", Hint = _("~!Herbal Cure (per 1 HP)"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-herbalist"}
})

DefineButton( { Pos = 1, Level = 1, Icon = "icon-portent",
	Action = "learn-ability", Value = "upgrade-portent",
	Key = "p", Hint = _("Learn ~!Portent"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-herbalist"}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-portent",
	Action = "cast-spell", Value = "spell-portent",
	Key = "p", Hint = _("~!Portent"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-herbalist"}
})

-- Building Commands -----------------------------------------------

DefineButton( { Pos = 13, Level = 0, Icon = "icon-rally-point",
	Action = "rally-point",
	Key = "r", Hint = _("Set ~!Rally Point"), Popup = "popup-commands",
	ForUnit = {
		"unit-gnomish-town-hall",
		"unit-gnomish-barracks"
	}
} )

-- simple buildings gnome -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-town-hall",
  Action = "build", Value = "unit-gnomish-town-hall",
  Key = "h", Hint = _("Build Town ~!Hall"), Popup = "popup-building",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-gnomish-farm",
  Action = "build", Value = "unit-gnomish-farm",
  Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-gnomish-barracks",
  Action = "build", Value = "unit-gnomish-barracks",
  Key = "b", Hint = _("Build ~!Barracks"), Popup = "popup-building",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-gold-mine",
	Action = "build", Value = "unit-gold-mine",
	Key = "g", Hint = _("Build ~!Gold Mine"), Popup = "popup-building",
	ForUnit = {"unit-gnomish-worker"}
} )

DefineButton( { Pos = 10, Level = 1, Icon = "icon-silver-mine",
	Action = "build", Value = "unit-silver-mine",
	Key = "v", Hint = _("Build Si~!lver Mine"), Popup = "popup-building",
	ForUnit = {"unit-gnomish-worker"}
} )

DefineButton( { Pos = 11, Level = 1, Icon = "icon-copper-mine",
	Action = "build", Value = "unit-copper-mine",
	Key = "c", Hint = _("Build ~!Copper Mine"), Popup = "popup-building",
	ForUnit = {"unit-gnomish-worker"}
} )

DefineButton( { Pos = 16, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = _("Cancel (~<Esc~>)"), Popup = "popup-commands",
  ForUnit = {"unit-gnomish-worker"} } )

-- buildings commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-worker",
  Action = "train-unit", Value = "unit-gnomish-worker",
  Key = "s", Hint = _("Train ~!Scavenger"), Popup = "popup-unit",
  ForUnit = {"unit-gnomish-town-hall"} } )

--DefineButton( { Pos = 2, Level = 0, Icon = "icon-gnomish-caravan",
--  Action = "train-unit", Value = "unit-gnomish-caravan",
--  Key = "c", Hint = _("Build ~!Caravan"), Popup = "popup-unit",
--  ForUnit = {"unit-gnomish-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-recruit",
  Action = "train-unit", Value = "unit-gnomish-recruit",
  Key = "r", Hint = _("Train ~!Recruit"), Popup = "popup-unit",
  ForUnit = {"unit-gnomish-barracks"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-gnomish-herbalist",
  Action = "train-unit", Value = "unit-gnomish-herbalist",
  Key = "h", Hint = _("Train ~!Herbalist"), Popup = "popup-unit",
  ForUnit = {"unit-gnomish-barracks"} } )
  
-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist",
	Action = "experience-upgrade-to", Value = "unit-gnomish-duelist",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-gnomish-duelist",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist",
	Action = "experience-upgrade-to", Value = "unit-gnomish-duelist",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-gnomish-duelist",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms",
	Action = "experience-upgrade-to", Value = "unit-gnomish-master-at-arms",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-gnomish-master-at-arms",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms",
	Action = "experience-upgrade-to", Value = "unit-gnomish-master-at-arms",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-gnomish-master-at-arms",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-duelist"}
} )
