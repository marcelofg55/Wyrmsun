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

DefineCharacter("Lóríkus", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Lóríkus", -- Duke of Thrudheim, married to Lórá (also called Glórá)
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000, -- beginning of the process of the Indo-European migrations to Scandinavia
	DeathYear = -3000 + 12 -- Trór becomes 12 years old and slays Lóríkus
})

DefineCharacter("Lórá", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Lórá", -- Lórá (also called Glórá) was Lóríkus' wife
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000,
	DeathYear = -3000 + 12 -- Trór becomes 12 years old and slays Lóríkus
})

DefineCharacter("Tróán", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Tróán", -- Trór's mother; in the euhemerized account Tróán is said to be a daughter of the Trojan king Priam; however, since she doesn't seem to appear in any other account about Troy, it makes more sense to place this character together with Trór's genealogy (which we've placed to match the time of the Indo-European migrations to Scandinavia) rather than with Priam, specially since she's part of the account of how Scandinavia came to be settled
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000,
	DeathYear = -3000 + 10
})

DefineCharacter("Trór", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Trór", -- euhemerized version of Thor
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Trait = "upgrade-mighty", -- described as goodly to look upon; very strong
	HairVariation = "blond-hair", -- his hair was fairer than gold
	Year = -3000, -- born
	DeathYear = -3000 + 12 + 10, -- 30 years is the default lifetime of a hero after having risen to prominence, but here we use 10 to make the genealogy fit from 3000 to 2800 BC, by when Scandinavia was settled by Indo-Europeans (in the Ynglinga Saga, with an euhemerized Odin leading the Asa there)
	Mother = "Tróán"
})

DefineCharacter("Lóridi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Lóridi", -- resembled his father, Trór
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 1),
	DeathYear = -3000 + 12 + (10 * 2),
	Father = "Trór"
})

DefineCharacter("Einridi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Einridi",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 2),
	DeathYear = -3000 + 12 + (10 * 3),
	Father = "Loridi"
})

DefineCharacter("Vingethor", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vingethor",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 3),
	DeathYear = -3000 + 12 + (10 * 4),
	Father = "Einridi"
})

DefineCharacter("Vingener", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vingener",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 4),
	DeathYear = -3000 + 12 + (10 * 5),
	Father = "Vingethor"
})

DefineCharacter("Móda", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Móda",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 5),
	DeathYear = -3000 + 12 + (10 * 6),
	Father = "Vingener"
})

DefineCharacter("Magi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Magi",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 6),
	DeathYear = -3000 + 12 + (10 * 7),
	Father = "Móda"
})

DefineCharacter("Seskef", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Seskef",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 7),
	DeathYear = -3000 + 12 + (10 * 8),
	Father = "Magi"
})

DefineCharacter("Bedvig", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Bedvig",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 8),
	DeathYear = -3000 + 12 + (10 * 9),
	Father = "Seskef"
})

DefineCharacter("Athra", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Athra",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 9),
	DeathYear = -3000 + 12 + (10 * 10),
	Father = "Bedvig"
})

DefineCharacter("Ítermann", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Ítermann",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 10),
	DeathYear = -3000 + 12 + (10 * 11),
	Father = "Athra"
})

DefineCharacter("Heremód", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Heremód",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 11),
	DeathYear = -3000 + 12 + (10 * 12),
	Father = "Ítermann"
})

DefineCharacter("Skjaldun", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Skjaldun",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 12),
	DeathYear = -3000 + 12 + (10 * 13),
	Father = "Heremód"
})

DefineCharacter("Bjáf", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Bjáf",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 13),
	DeathYear = -3000 + 12 + (10 * 14),
	Father = "Skjaldun"
})

DefineCharacter("Ját", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Ját",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 14),
	DeathYear = -3000 + 12 + (10 * 15),
	Father = "Bjáf"
})

DefineCharacter("Gudólfr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Gudólfr",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 15),
	DeathYear = -3000 + 12 + (10 * 16),
	Father = "Ját"
})

DefineCharacter("Finn", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Finn",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 16),
	DeathYear = -3000 + 12 + (10 * 17),
	Father = "Gudólfr"
})

DefineCharacter("Fríallaf", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Fríallaf",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 17),
	DeathYear = -3000 + 12 + (10 * 18),
	Father = "Finn"
})

DefineCharacter("Vóden", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vóden", -- euhemerized version of Odin; "far-famed for his wisdom and every accomplishment"; had "second sight"
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Trait = "upgrade-wise",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1), -- with Voden begins a new genealogy, and he can live the standard 30 years
	Father = "Fríallaf"
})

DefineCharacter("Frígídá", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Frígídá", -- wife of Vóden; euhemerized version of Frigg; had "second sight"
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Trait = "upgrade-wise",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1)
})

DefineCharacter("Yngve", { -- Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 221.
	Name = "Yngve", -- has to be defined first so that he becomes the first in line to succede Vóden in Sweden; also known as Yng or Yngvi; from him the Ynglings spring
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -2800,
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden", -- another account gives Yngve as the son of Halfdan the Old
	Mother = "Frígídá" -- presumably, since she was Vóden's wife
})

DefineCharacter("Vegdeg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vegdeg", -- in the Prose Edda, Vegdeg was Vóden's son who was set to rule over East Saxland; Vóden's first son (presumably)
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Trait = "upgrade-mighty", -- described as a "mighty king"
	Year = -2800,
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden",
	Mother = "Frígídá" -- presumably, since she was Vóden's wife
})

DefineCharacter("Vitgils", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vitgils",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland", -- his father was in the Prose Edda set to rule over East Saxland; but since that region wasn't settled by Germanic peoples yet, place Vegdeg's family in the region settled by Germanics which would later give rise to West Germanic culture (Jutland)
	Year = -2800 + (30 * 2),
	DeathYear = -2800 + (30 * 3),
	Father = "Vegdeg"
})

DefineCharacter("Vitta", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vitta",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 3),
	DeathYear = -2800 + (30 * 4),
	Father = "Vitgils"
})

DefineCharacter("Heingistr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Heingistr",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 4),
	DeathYear = -2800 + (30 * 5),
	Father = "Vitta"
})

DefineCharacter("Sigarr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Sigarr",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 3),
	DeathYear = -2800 + (30 * 4),
	Father = "Vitgils"
})

DefineCharacter("Svebdeg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Svebdeg", -- also known as Svipdagr
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 4),
	DeathYear = -2800 + (30 * 5),
	Father = "Sigarr"
})

DefineCharacter("Beldeg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, pp. 7-8.
	Name = "Beldeg", -- euhemerized version of Baldr; in the Prose Edda, was a son of Odin set to rule over Westphalia; Vóden's second son
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -2800,
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden",
	Mother = "Frígídá" -- presumably, since she was Vóden's wife
})

DefineCharacter("Brandr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Brandr",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland", -- his father was in the Prose Edda set to rule over Westphalia; but since that region wasn't settled by Germanic peoples yet, place Beldeg's family in the region settled by Germanics which would later give rise to West Germanic culture (Jutland)
	Year = -2800 + (30 * 2),
	DeathYear = -2800 + (30 * 3),
	Father = "Beldeg"
})

DefineCharacter("Frjódigar", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Frjódigar", -- also known as Fródi
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 3),
	DeathYear = -2800 + (30 * 4),
	Father = "Brandr"
})

DefineCharacter("Freóvin", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Freóvin",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 4),
	DeathYear = -2800 + (30 * 5),
	Father = "Frjódigar"
})

DefineCharacter("Uvigg", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Uvigg",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 5),
	DeathYear = -2800 + (30 * 6),
	Father = "Freóvin"
})

DefineCharacter("Gevis", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gevis", -- also known as Gave
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland",
	Year = -2800 + (30 * 6),
	DeathYear = -2800 + (30 * 7),
	Father = "Uvigg"
})

DefineCharacter("Sigi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Sigi", -- in the Prose Edda, was a son of Odin set to rule over Frankland; Vóden's third son
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -2800,
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden",
	Mother = "Frígídá" -- presumably, since she was Vóden's wife
})

DefineCharacter("Rerir", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Rerir", -- ancestor of the Völsungs
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Jutland", -- his father was in the Prose Edda set to rule over Frankland; but since that region wasn't settled by Germanic peoples yet, place Sigi's family in the region settled by Germanics which would later give rise to West Germanic culture (Jutland)
	Year = -2800 + (30 * 2),
	DeathYear = -2800 + (30 * 3),
	Father = "Sigi"
})

DefineCharacter("Skjöldr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 221.
	Name = "Skjöldr", -- ancestor of the Danish kings; from his springs the Skjoldungs
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -2800,
	DeathYear = -2800 + (30 * 2), -- 30 years is the default lifetime of a hero after having risen to prominence
	Father = "Vóden",
	Mother = "Frígídá" -- presumably, since she was Vóden's wife
})

DefineCharacter("Fridleif Skjoldung", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Fridleifr",
	Dynasty = "Skjoldung",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Zealand",
	Year = -2800 + (30 * 2),
	DeathYear = -2800 + (30 * 3),
	Father = "Skjöldr"
})

DefineCharacter("Sæmingr", { -- Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9.
	Name = "Sæmingr", -- Vóden's son set to rule over Norway
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Sweden",
	Year = -2800 + (30 * 1),
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden",
	Mother = "Frígídá" -- presumably, since she was Vóden's wife
})
