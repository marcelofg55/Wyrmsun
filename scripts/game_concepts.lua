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
--      game_concepts.lua - Defines the game concepts.
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

GameConcepts = {
	Abilities = {
		Name = _("~!Abilities"),
		Description = _("Many units can learn new abilities when leveling up. These provide them with some form of benefit, such as increasing damage.")
	},
	AccuracyEvasion = {
		Name = _("Accuracy/Evasion"),
		Description = _("A unit's chance to hit another unit is determined by its accuracy relative to the target's evasion.")
	},
	AdministrativeEfficiency = {
		Name = _("Admi~!nistrative Efficiency"),
		Description = _("In Grand Strategy mode, administrative efficiency affected provinces' productivity and research output. Administrative efficiency is 100% by default, but is decreased if the province has a different culture than its owner.")
	},
	Backstab = {
		Name = _("~!Backstab"),
		Description = _("Thief units cause extra damage when attacking an organic unit from the back. Thieves attacking from the right or left rear sides will cause +50% damage, and +100% damage if attacking directly from behind.")
	},
	--[[
	Claims = {
		Name = _("Claims"),
		Description = _("In Grand Strategy mode, claims are provinces considered to be an integral part of a country.")
	},
	--]]
	Experience = {
		Name = _("~!Experience"),
		Description = _("Organic units gain experience as enemy units are killed, eventually allowing them to level up. Leveling up allows the unit to upgrade to a better unit type, or to learn one new ability.")
	},
	Flanking = {
		Name = _("Flan~!king"),
		Description = _("Units who are flanked in combat get a malus to evasion. Flanking happens when the unit is attacked from behind or from the side.")
	},
	Food = {
		Name = _("~!Food"),
		Description = _("Food is produced by farms in RTS mode, and determines the maximum amount of units a player can have. In Grand Strategy mode, food is produced by a province's workers employed in food-producing tiles, generating population growth and being consumed by the province's population.")
	},
	GameType = {
		Name = _("Game T~!ype"),
		Description = _("In the Single Player Setup screen different game types can be chosen. A Melee game means that the player will stand against all AI players, while in Free for All players are hostile against every other player. Choosing Top vs Bottom or Left vs Right will create two teams, with players being assigned to them according to map position.")
	},
	Garrisoning = {
		Name = _("~!Garrisoning"),
		Description = _("Certain buildings can be garrisoned by organic units, and some of them (like towers) even allow ranged units with to attack from within them.")
	},
	Harvesting = {
		Name = _("Har~!vesting"),
		Description = _("Resources can be harvested by worker units. Gold is mined by assigning workers to gold rocks or gold mines (built on gold deposits), or to their copper and silver equivalents - which when delivered will be converted to gold. Lumber is gathered by harvesting trees or wood piles, while stone is harvested from rocks. Coal mines are used in a similar manner to gold mines, but they appear only in specific scenarios. In Grand Strategy mode, resources are harvested by the province's population, if there are enough laborers available.")
	},
	Heroes = {
		Name = _("~!Heroes"),
		Description = _("Heroes belong to one of the normal unit types, but unlike regular units, a hero's experience level and learned abilities are saved across scenarios. Besides the story heroes, players can also create custom heroes to use in quests and (single-player) custom games.")
	},
	Items = {
		Name = _("Ite~!ms"),
		Description = _("Items can be picked up by units with an inventory (persistent heroes as well as Stonelords and Gryphon Riders). Items come in four types: weapons, shields, boots, rings and potions. Units can equip weapons of a particular class (i.e. Axefighters can equip axes), and non-ranged units may equip shields as well. Any unit can wear boots or drink potions; the latter can be used as a power-up by units who don't have an inventory. Equipping an item will replace the bonuses from weapon technologies with those of the item.\n\nItems are generally dropped by AI-controlled units and buildings, and possess a chance of having a magic affix. Such prefixes and suffixes affect the item's stats, changing its damage, armor and other values. Additionally, unique items also have a chance of dropping. Unique items are often better than magic items, but not necessarily. Items that are neither magic nor unique will disappear five minutes after being dropped.\n\nBesides items, units can also pick up power-ups. These are not restricted to units with inventories, and will perform effects such as restoring HP, causing a status effect or providing resources.")
	},
	Labor = {
		Name = _("~!Labor"),
		Description = _("Workers in a province produce Labor (100 for each worker), which is then used to produce resources in the province.")
	},
	Mercenaries = {
		Name = _("Mer~!cenaries"),
		Description = _("Groups of mercenaries can be hired at mercenary camps, providing the player with a few experienced warriors, no time needing to be spent in training them. Mercenaries do cost quite a bit of gold, however. Besides mercenary squads, players can also hire a maximum of 6 thieves in mercenary camps. Like mercenary groups, thieves are hired instantly.")
	},
	Prestige = {
		Name = _("Pre~!stige"),
		Description = _("Prestige is a Grand Strategy mode only resource. A faction's prestige determines its trade priority, and influences the likelihood of certain positive events. Factions with negative prestige cannot declare war. The results of battles will affect a faction's prestige.")
	},
	Quests = {
		Name = _("~!Quests"),
		Description = _("Completing RTS quests will provide the player with technology points (which can be used to acquire further technologies for the RTS mode), along with new maps.")
	},
	Research = {
		Name = _("~!Research"),
		Description = _("Research is a Grand Strategy mode only resource, which is used to acquire technologies. A faction gains research depending on the ~<proportion~> of its provinces that has town halls, lumber mills and smithies.")
	},
	Revolts = {
		Name = _("Rev~!olts"),
		Description = _("In Grand Strategy mode, provinces have a chance to revolt against their owner's rule. There is a risk of revolt occurring in recently conquered provinces, as well as ones of a culture different than their owner's.")
	},
	TechTreeScreen = {
		Name = _("~!Tech Tree Screen"),
		Description = _("The tech tree screen allows players to spend technology points to acquire new technologies, making them available for the RTS mode.")
	},
	Trade = {
		Name = _("Tra~!de"),
		Description = _("In Grand Strategy mode factions can trade commodities with one another. Trade priority depends on the faction's prestige, and the price of each commodity will vary depending on demand and supply. Trade is also conducted with provinces, with preference being given to the province's owner. Each province demands a bit of certain commodities every turn, demanding more if the price is currently low, or less if the price is too high.")
	},
	Traits = {
		Name = _("Tra~!its"),
		Description = _("Each organic unit has an individual personality or physical trait assigned to it, which affects its stats.\n\nClumsy: -1 Accuracy, -1 Evasion\nDextrous: +1 Accuracy, +1 Evasion\nKeen: +1 Accuracy, +1 Sight\nLimping: -2 Speed\nMighty: +2 Damage\nNear-Sighted: -1 Accuracy, -1 Sight\nOld: -1 Sight, -1 Speed\nQuick: +1 Speed\nReckless: -1 Evasion\nResilient: +5 HP\nSlow: -1 Speed\nStrong: +1 Damage \nVicious: +2 Damage\nWeak: -1 Damage")
	},
	Upkeep = {
		Name = _("~!Upkeep"),
		Description = _("In Grand Strategy mode, each military unit costs some upkeep in gold. If the upkeep is not paid, the unit will be disbanded.")
	},
}
