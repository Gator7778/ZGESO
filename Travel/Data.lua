-----------------------------------------
-- LOCALIZED GLOBAL VARIABLES
-----------------------------------------

local ZGV = _G.ZGV
local Data = {}
local Travel

-----------------------------------------
-- SAVED REFERENCES
-----------------------------------------

Travel = ZGV.Travel
Travel.Data = Data

-----------------------------------------
-- MAP DATA
-----------------------------------------

--[[
	\s*(\[.*\]) = ([0-9]*),\n  	->	\t\1 = \2,\n
	\t(\[.*\]) = ([0-9]*)		->	\t\2##\1 = \2
	\t[0-9]*##			->	\t
--]]


Data.MapIdsByName = {
    -- Aldmeri Dominion
    --Khenarthi's Roost    
    ["Khenarthi's Roost"]                   =   1,
    ["Temple of the Mourning Springs"]      =   2,
    ["Hazak's Lair"]                        =   3,
    ["Shattered Shoals"]                    =   4,
    ["The Mangroves"]                       =   5,
    ["Mistral"]                             =   6,
    ["Cat's Eye Quay"]                      =   7,

    -- Auridon
    ["Vulkhel Guard"]                       =   8,
    ["Vulkhel Guard Outlaws Refuge"]        =   9,
    ["Auridon"]                             =  10,
    ["Del's Claim"]                         =  11,
    ["Ondil"]                               =  12,
    ["Phaer Catacombs"]                     =  13,
    ["Inner Tanzelwil"]                     =  14,
    ["Tower of the Vale - Temple"]          =  15,
    ["Tower of the Vale - Rage"]            =  16,
    ["Merion's Bliss - Lower"]              =  17,
    ["Merion's Bliss - Upper"]              =  18,
    ["Tower of the Vale - Despair"]         =  19,
    ["Sanessalmo's Lair"]                   =  20,
    ["Entila's Folly"]                      =  21,
    ["Smuggler's Tunnel"]                   =  22,
    ["Skywatch"]                            =  23,
    ["The Veiled Keep"]                     =  24,
    ["Ezduiin Undercroft"]                  =  25,
    ["Wansalen"]                            =  26,
    ["Quendeluum South Ruins"]              =  27,
    ["Abadoned Mine"]                       =  28,
    ["Bewan"]                               =  29,
    ["Saltspray Cave"]                      =  30,
    ["Torinaan Central Shrine"]             =  31,
    ["Torinaan Shrines"]                    =  32,
    ["Mehrunes' Spite"]                     =  33,
    ["The Vault of Exile"]                  =  34,
    ["Firsthold"]                           =  35,
    ["The Refuge of Dredd"]                 =  36,

    -- Grahtwood
    ["Grahtwood"]                           =  37,
    ["Haven"]                               =  38,
    ["The Aquifer"]                         =  39,
    ["Sacred Leap Grotto"]                  =  40,
    ["The Scuttle Pit"]                     =  41,
    ["Brackenleaf"]                         =  42,
    ["Elden Root"]                          =  43,
    ["Elden Root Outlaws Refuge"]           =  44,
    ["Cave of Broken Sails"]                =  45,
    ["Gray Mire"]                           =  46,
    ["Barrowbough"]                         =  47,
    ["Cathedral of the Golden Path"]        =  48,
    ["Ne Salas"]                            =  49,
    ["Mobar Mine"]                          =  50,
    ["The Middens"]                         =  51,
    ["Vinedeath Cave"]                      =  52,
    ["Ossuary of Telacar"]                  =  53,
    ["Laeloria Ruins"]                      =  54,
    ["Karthdar"]                            =  55,
    ["Cormount Prison"]                     =  56,
    ["Reliquary Ruins"]                     =  57,
    ["Reliquary Vault"]                     =  58,
    ["Ancient Cave"]                        =  59,
    ["Faltonia's Mine"]                     =  60,
    ["Barkbite Cave"]                       =  61,
    ["Barkbite Mine"]                       =  62,
    ["Refur Trading Post"]                  =  63,
    ["Tomb of Anahbi"]                      =  64,
    ["Burroot Kwama Mine"]                  =  65,
    ["Gil-Var-Delle Abandoned Cave"]        =  66,
    ["Nairume's Prison"]                    =  67,
    ["The Orrery"]                          =  68,
    ["Wormroot Depths"]                     =  69,

    -- Greenshade
    ["Marbruk"]                             =  70,
    ["Marbruk Outlaws Refuge"]              =  71,
    ["Greenshade"]                          =  72,
    ["Guzrag's Mine"]                       =  73,
    ["Camp Gushnukbur"]                     =  74,
    ["Shrouded Hollow"]                     =  75,
    ["Fading Tree"]                         =  76,
    ["Carac Dena"]                          =  77,
    ["Silatar"]                             =  78,
    ["Hollow Den"]                          =  79,
    ["Shademist Enclave"]                   =  80,
    ["Naril Nagaia"]                        =  81,
    ["Woodhearth"]                          =  82,
    ["Imperial Underground"]                =  83,
    ["Ilmyris"]                             =  84,
    ["Serpent's Grotto"]                    =  85,
    ["The Underroot"]                       =  86,
    ["Abecean Sea"]                         =  87,
    ["Old Merchant Caves"]                  =  88,
    ["Harridan's Lair"]                     =  89,
    ["Nereid Temple Cave"]                  =  90,
    ["Falinesti Cave"]                      =  91,
    ["Hectahame Grotto"]                    =  92,
    ["Isles of Torment"]                    =  93,
    ["Barrow Trench"]                       =  94,

    --Malabal Torinaan
    ["Malabal Tor"]                         =  95,
    ["Velyn Harbor"]                        =  96,
    ["Velyn Harbor Outlaws Refuge"]         =  97,
    ["Stormwarden Undercroft"]              =  98,
    ["Dead Man's Drop"]                     =  99,
    ["Tomb of the Apostates"]               = 100,
    ["Hoarvor Pit"]                         = 101,
    ["Vulkwasten"]                          = 102,
    ["Ogrim's Yawn"]                        = 103,
    ["Abamath Ruins"]                       = 104,
    ["Shrine of Mauloch"]                   = 105,
    ["Shael Ruins"]                         = 106,
    ["Belarata"]                            = 107,
    ["Roots of Silvenar"]                   = 108,
    ["Ouze"]                                = 109,
    ["Baandari Trading Post"]               = 110,
    ["Roots of Treehenge"]                  = 111,
    ["Black Vine Ruins"]                    = 112,
    ["The Hunting Grounds"]                 = 113,
    ["Silvenar Throne Room"]                = 114,

    --Reapers March
    ["Reapers March"]                       = 115,
    ["Vinedusk Village Corridor"]           = 116,
    ["Vinedusk Village"]                    = 117,
    ["Khaj Rawlith"]                        = 118,
    ["Senalana"]                            = 119,
    ["Arenthia"]                            = 120,
    ["Greenhill Catacombs"]                 = 121,
    ["Thibaut's Cairn"]                     = 122,
    ["Halls of Ichor"]                      = 123,
    ["Rawl'kha"]                            = 124,
    ["Rawl'kha Outlaws Refuge"]             = 125,
    ["Rawl'kha Temple"]                     = 126,
    ["Weeping Wind Cave"]                   = 127,
    ["Moonmont Temple"]                     = 128,
    ["Do'Krin Temple"]                      = 129,
    ["The Five Finger Dance"]               = 130,
    ["Claw's Strike"]                       = 131,
    ["Old S'ren-ja Cave"]                   = 132,
    ["Rainshadow Cave"]                     = 133,
    ["Cleft Rock Cave"]                     = 134,
    ["Jode's Light"]                        = 135,
    ["Kuna's Delve"]                        = 136,
    ["Ren-dro Caverns"]                     = 137,
    ["Fort Sphinxmoth"]                     = 138,
    ["Fardir's Folly"]                      = 139,
    ["Dune"]                                = 140,
    ["Temple of the Dance"]                 = 141,
    ["The Demi-Plane of Jode"]              = 142,
    ["The Wild Hunt"]                       = 143,
    ["Urcelmo's Betryal"]                   = 144,
    ["Den of Lorkhaj"]                      = 145,

    -- Daggerfall Covenant
    -- Stros M'Kai
    ["Port Hunding"]                        = 146,
    ["The Grave"]                           = 147,
    ["Stros M'Kai"]                         = 148,
    ["Goblin Mines"]                        = 149,
    ["Bthzark"]                             = 150,

    -- Betnikh
    ["Stonetooth Fortress"]                 = 151,
    ["Betnikh"]                             = 152,
    ["Bloodthorn Lair"]                     = 153,
    ["Ancient Carzog's Demise"]             = 154,
    ["Moriseli"]                            = 155,
    ["Carzog's Demise"]                     = 156,

    -- Glenumbra
    ["Daggerfall"]                          = 157,
    ["Glenumbra"]                           = 158,
    ["Daggerfall Outlaws Refuge"]           = 159,
    ["Ilessan Tower"]                       = 160,
    ["East Hut Portal Cave"]                = 161,
    ["South Hut Portal Cave"]               = 162,
    ["West Hut Portal Cave"]                = 163,
    ["North Hut Portal Cave"]               = 164,
    ["Silumm"]                              = 165,
    ["Enduum"]                              = 166,
    ["Dresan Keep"]                         = 167,
    ["Aldcroft"]                            = 168,
    ["Mines of Khuras"]                     = 169,
    ["Glenumbra"]                           = 170,
    ["Desolation's End"]                    = 171,
    ["Ebon Crypt"]                          = 172,
    ["Cath Bedraud"]                        = 173,
    ["Angof's Sanctum"]                     = 174,
    ["Tomb of Lost Kings"]                  = 175,
    ["Cryptwatch Fort"]                     = 176,
    ["Crosswych"]                           = 177,
    ["Crosswych Mine"]                      = 178,

    -- Stormhaven
    ["Stormhaven"]                          = 179,
    ["Koeglin Village"]                     = 180,
    ["Alcaire Castle"]                      = 181,
    ["Windridge Cave"]                      = 182,
    ["Portdun Watch"]                       = 183,
    ["Koeglin Mine"]                        = 184,
    ["Pariah Catacombs"]                    = 185,
    ["Wayrest"]                             = 186,
    ["Wayrest Outlaws Refuge"]              = 187,
    ["Farangel's Delve"]                    = 188,
    ["Bearclaw Mine"]                       = 189,
    ["Godrun's Dream"]                      = 190,
    ["Norvulk Ruins"]                       = 191,
    ["Aphren's Tomb"]                       = 192,
    ["Emeric's Dream"]                      = 193,

    -- Rivenspire
    ["Rivenspire"]                          = 194,
    ["Shornhelm"]                           = 195,
    ["Shornhelm Outlaws Refuge"]            = 196,
    ["Fevered Mews"]                        = 197,
    ["Crestshade Mine"]                     = 198,
    ["Doomcrag Shrouded Pass"]              = 199,
    ["Shadowfate Cavern"]                   = 200,
    ["Hoarfrost Downs"]                     = 201,
    ["Tribulation Crypt"]                   = 202,
    ["Lorkrata Ruins"]                      = 203,
    ["Edrald Undercroft"]                   = 204,
    ["Flyleaf Catacombs"]                   = 205,
    ["Northpoint"]                          = 206,
    ["Breagha-Fin"]                         = 207,
    ["Orc's Finger Ruins"]                  = 208,
    ["Hildune's Secret Refuge"]             = 209,
    ["Erokii Ruins"]                        = 210,
    ["Shrouded Pass"]                       = 211,
    ["Doomcrag"]                            = 212,

    -- Alik'r Desert
    ["Sentinel"]                            = 213,
    ["Sentinel Outlaws Refuge"]             = 214,
    ["Alik'r Desert"]                       = 215,
    ["Shore Cave"]                          = 216,
    ["Impervious Vault"]                    = 217,
    ["Santaki"]                             = 218,
    ["Salas En"]                            = 219,
    ["The Portal Chamber"]                  = 220,
    ["Ash'abah Pass"]                       = 221,
    ["Yokudan Palace"]                      = 222,
    ["Divad's Chagrin Mine"]                = 223,
    ["Bergama"]                             = 224,
    ["Magistrate's Basement"]               = 225,
    ["Aldunz"]                              = 226,
    ["The Master's Crypt"]                  = 227,
    ["Kulati Mines"]                        = 228,
    ["Coldrock Diggings"]                   = 229,
    ["Sandblown Mine"]                      = 230,
    ["Yldzuun"]                             = 231,
    ["Kozanset"]                            = 232,
    ["Smuggler King's Tunnel"]              = 233,
    ["Suturah's Crypt"]                     = 234,

    -- Bangkorai
    ["Evermore"]                            = 235,
    ["Evermore Outlaws Refuge"]             = 236,
    ["Bangkorai"]                           = 237,
    ["Bisnensel"]                           = 238,
    ["Torog's Spite"]                       = 239,
    ["Crypt of the Exiles"]                 = 240,
    ["Troll's Toothpick"]                   = 241,
    ["Nchu Duabthar Threshold"]             = 242,
    ["Viridian Watch"]                      = 243,
    ["Bangkorai Garrison"]                  = 244,
    ["Sunken Road"]                         = 245,
    ["Klathzgar"]                           = 246,
    ["Rubble Butte"]                        = 247,
    ["Nilata Ruins"]                        = 248,
    ["Anexiel's Lair"]                      = 249,
    ["Hallin's Stand"]                      = 250,
    ["Onsi's Breath Mine"]                  = 251,
    ["Hall of Heroes"]                      = 252,
    ["The Far Shores"]                      = 253,

    -- Ebonheart Pact
    -- Bleakrock Isle
    ["Bleakrock Village"]                   = 254,
    ["Bleakrock Isle"]                      = 255,
    ["Skyshroud Barrow"]                    = 256,
    ["Hozzin's Folly"]                      = 257,
    ["Orkey's Hollow"]                      = 258,
    ["Last Rest"]                           = 259,

    -- Stonefalls
    ["Bal Foyen"]                           = 260,
    ["Dhalmora"]                            = 261,
    ["Smuggler's Tunnel"]                   = 262,
    ["Stonefalls"]                          = 263,
    ["Davon's Watch"]                       = 264,
    ["House Indoril Crypt"]                 = 265,
    ["Davon's Watch Outlaws Refuge"]        = 266,
    ["Charred Ridge"]                       = 267,
    ["Ash Mountain"]                        = 268,
    ["Inner Sea Armature"]                  = 269,
    ["Emberflint Mine"]                     = 270,
    ["Mephala's Nest"]                      = 271,
    ["Fort Arand Dungeons"]                 = 272,
    ["Ebonheart"]                           = 273,
    ["Coral Heart Chamber"]                 = 274,
    ["Hightide Hollow"]                     = 275,
    ["Heimlyn Keep Reliquary"]              = 276,
    ["Fort Virak Ruin"]                     = 277,
    ["Iliath Temple Mines"]                 = 278,
    ["Sheogorath's Tongue"]                 = 279,
    ["Kragenmoor"]                          = 280,
    ["House Dres Crypts"]                   = 281,
    ["Softloam Cavern"]                     = 282,
    ["Tormented Spire"]                     = 283,

    -- Deshaan
    ["Deshaan"]                             = 284,
    ["Quarantine Serk Catacombs"]           = 285,
    ["Narsis"]                              = 286,
    ["Narsis Ruins"]                        = 287,
    ["Lady Llarel's Shelter"]               = 288,
    ["Obisdian Gorge"]                      = 289,
    ["Apothacarium"]                        = 290,
    ["Mzithumz"]                            = 291,
    ["Mournhold"]                           = 292,
    ["Mournhold Outlaws Refuge"]            = 293,
    ["Mournhold Sewers"]                    = 294,
    ["The Triple Circle Mine"]              = 295,
    ["Tribunal Temple"]                     = 296,
    ["Bthanual"]                            = 297,
    ["Lower Bthanual"]                      = 298,
    ["Deepcrag Den"]                        = 299,
    ["Shad Astula Underhalls"]              = 300,
    ["Taleon's Crag"]                       = 301,
    ["Vale of the Ghost Snake"]             = 302,
    ["Tal'Deic Crypts"]                     = 303,
    ["The Shrine of St. Veloth"]            = 304,
    ["The Corpse Garden"]                   = 305,
    ["Knife Ear Grotto"]                    = 306,
    ["Eidolon's Hollow"]                    = 307,
    ["Reservoir of Souls"]                  = 308,

    -- Shadowfen
    ["Shadowfen"]                           = 309,
    ["Stormhold"]                           = 310,
    ["Stormhold Guild Hall"]                = 311,
    ["Stormhold Mortuary"]                  = 312,
    ["Silyanorn Ruins"]                     = 313,
    ["Stormhold Outlaws Refuge"]            = 314,
    ["Shrine of the Black Maw"]             = 315,
    ["Odious Chapel"]                       = 316,
    ["Mud Tree Mine"]                       = 317,
    ["Mudshallow Cave"]                     = 318,
    ["Ruins of Ten-Maur-Wolk"]              = 319,
    ["Lair of the Skin Stealer"]            = 320,
    ["Alten Corimont"]                      = 321,
    ["Tsanji's Hideout"]                    = 322,
    ["Atanaz Ruins"]                        = 323,
    ["Broken Tusk"]                         = 324,
    ["Onkobra Kwama Mine"]                  = 325,
    ["Percolating Mire"]                    = 326,
    ["Sunscale Ruins"]                      = 327,
    ["Grandranen Ruins"]                    = 328,
    ["Hissmir Ruins"]                       = 329,
    ["Temple of Sul"]                       = 330,
    ["White Rose Prison Dungeon"]           = 331,
    ["Child-Moska Ruins"]                   = 332,
    ["Loriasel"]                            = 333,
    ["Vision of the Hist"]                  = 334,

    -- Eastmarch
    ["Windhelm"]                            = 335,
    ["Windhelm Outlaws Refuge"]             = 336,
    ["Eastmarch"]                           = 337,
    ["The Chill Hollow"]                    = 338,
    ["Hall of Trials"]                      = 339,
    ["Icehammer's Vault"]                   = 340,
    ["Fort Morvunskar"]                     = 341,
    ["Giant's Run"]                         = 342,
    ["Fort Amol"]                           = 343,
    ["Lost Knife Cave"]                     = 344,
    ["The Frigid Grotto"]                   = 345,
    ["Bonestrewn Crest"]                    = 346,
    ["Wittestadr Crypts"]                   = 347,
    ["Mistwatch Crevasse"]                  = 348,
    ["Old Sord's Cave"]                     = 349,
    ["Stormcrag Crypt"]                     = 350,
    ["The Bastard's Tomb"]                  = 351,
    ["Mzulft"]                              = 352,
    ["Cragwallow"]                          = 353,

    -- The Rift
    ["Shor's Stone"]                        = 354,
    ["The Rift"]                            = 355,
    ["Shor's Stone Mine"]                   = 356,
    ["Fallowstone Vault"]                   = 357,
    ["Northwind Mine"]                      = 358,
    ["Vaults of Vernim"]                    = 359,
    ["Snapleg Cave"]                        = 360,
    ["Nimalten"]                            = 361,
    ["Nimalten Barrow"]                     = 362,
    ["Shroud Hearth Barrow"]                = 363,
    ["Pinepeak Caverns"]                    = 364,
    ["Taarengrav"]                          = 365,
    ["Arcwind Point"]                       = 366,
    ["Avanchnzel"]                          = 367,
    ["Riften"]                              = 368,
    ["Riften Outlaws Refuge"]               = 369,
    ["Fort Greenwall"]                      = 370,
    ["Faldar's Tooth"]                      = 371,
    ["Lost Prospect"]                       = 372,
    ["Broken Helm Hollow"]                  = 373,
    ["Dragon Cult Temple"]                  = 374,
    ["Trolhetta Cave"]                      = 375,
    ["Trolhetta Summit"]                    = 376,

    -- Coldharbour
    ["Stirk"]                               = 377,
    ["Coldharbour"]                         = 378,
    ["The Hollow City"]                     = 379,
    ["Tower of Lies"]                       = 380,
    ["The Grotto of Depravity"]             = 381,
    ["Haj Uxith"]                           = 382,
    ["Library of Dusk"]                     = 383,
    ["Lightless Oubliette"]                 = 384,
    ["Lightless Cell"]                      = 385,
    ["Aba-Loria"]                           = 386,
    ["The Vile Laboratory"]                 = 387,
    ["Holding Cells"]                       = 388,
    ["The Cave of Trophies"]                = 389,
    ["The Vault of Haman Forgefire"]        = 390,
    ["Thane's Lair"]                        = 391,
    ["The Black Forge"]                     = 392,
    ["The Great Shackle"]                   = 393,
    ["The Mooring"]                         = 394,
    ["Grunda's Gatehouse"]                  = 395,
    ["Mal Sorra's Tomb"]                    = 396,
    ["The Manor of Revelry"]                = 397,
    ["The Manor of Revelry Cave"]           = 398,
    ["The Wailing Maw"]                     = 399,
    ["The Lost Fleet"]                      = 400,
    ["Reaver Citadel Pyramid"]              = 401,
    ["The Endless Stair"]                   = 402,

    -- Five Companions
    ["The Wailing Prison"]                  = 403,
    ["The Harborage"]                       = 404,
    ["Vision of the Companions"]            = 405,
    ["The Foundry of Woe"]                  = 406,
    ["The Worm's Retreat"]                  = 407,
    ["Castle of the Worm"]                  = 408,
    ["The Halls of Torment"]                = 409,
    ["The Valley of Blades"]                = 410,
    ["Sancre Tor"]                          = 411,
    ["Heart's Grief"]                       = 412,
    ["The Colored Rooms"]                   = 413,

    -- Fighters Guild
    ["Buraniim"]                            = 414,
    ["Dourstone Vault"]                     = 415,
    ["Stonefang Cavern"]                    = 416,
    ["Mzeneldt"]                            = 417,
    ["Abagarlas"]                           = 418,
    ["The Earth Forge"]                     = 419,
    ["Ragnthar"]                            = 420,
    ["Halls of Submission"]                 = 421,

    -- Mages Guild
    ["Cheesemonger's Hollow"]               = 422,
    ["Shivering Isles"]                     = 423,
    ["Vuldngrav"]                           = 424,
    ["Asakala"]                             = 425,
    ["Circus of Cheerful Slaughter"]        = 426,
    ["Chateau of the Ravenous Rodent"]      = 427,
    ["Chateau Master Bedroom"]              = 428,
    ["Eyevea"]                              = 429,

    -- Cyrodiil
    ["Western Elsweyr Gate"]                = 430,
    ["Eastern Elsweyr Gate"]                = 431,
    ["Southern High Rock Gate"]             = 432,
    ["Northern High Rock Gate"]             = 433,
    ["Northern Morrowind Gate"]             = 434,
    ["Southern Morrowind Gate"]             = 435,
    ["Cyrodiil"]                            = 436,

    -- Imperial City
    ["Irrigation Tunnels"]                  = 437,
    ["Lambent Passage"]                     = 438,
    ["Harena Hypogeum"]                     = 439,
    ["Imperial City"]                       = 440,
    ["Dragonfire Cathedral"]                = 441,

    -- Craglorn
    ["Belkarth"]                            = 442,
    ["Belkarth Outlaws Refuge"]             = 443,
    ["Craglorn"]                            = 444,
    ["Buried Sands"]                        = 445,
    ["Tombs of the Na'Totambu"]             = 446,
    ["Haddock's Market"]                    = 447,
    ["Frost Monarch Lair"]                  = 448,
    ["Storm Lair"]                          = 449,
    ["Molavar"]                             = 450,
    ["Balamath"]                            = 451,
    ["Balamath Library"]                    = 452,
    ["Balamath Hall"]                       = 453,
    ["Reinhold's Retreat"]                  = 454,
    ["Dragonstar"]                          = 455,
    ["Fearfangs Caverns"]                   = 456,
    ["Sunken Lair"]                         = 457,
    ["Serpent's Nest"]                      = 458,
    ["Ilthag's Undertower"]                 = 459,
    ["Exarch's Stronghold"]                 = 460,
    ["The Howling Sepulchers"]              = 461,
    ["Loth'Na Caverns"]                     = 462,
    ["Skyreach Temple"]                     = 463,
    ["Apex Stone Room"]                     = 464,
    ["Rkundzelft"]                          = 465,
    ["Hircine's Haunt"]                     = 466,
    ["Elinhir Sewerworks"]                  = 467,
    ["Mtharnaz"]                            = 468,
    ["Ruins of Kardala"]                    = 469,
    ["Chiselshriek Mine"]                   = 470,
    ["Rkhardahrk"]                          = 471,
    ["Zalgaz's Den"]                        = 472,

    -- Orsinium
    ["Wrothgar"]                            = 473,
    ["Nikolvara's Kennel"]                  = 474,
    ["Orsinium"]                            = 475,
    ["Orsinium Outlaws Refuge"]             = 476,
    ["Frostbreak Fortress"]                 = 477,
    ["Ice-Heart's Lair"]                    = 478,
    ["Scarp Keep"]                          = 479,
    ["Throne Room"]                         = 480,
    ["Temple of Ire"]                       = 481,
    ["Temple of Ire Rectory"]               = 482,
    ["Graystone Quarry Depths"]             = 483,
    ["Honor's Rest"]                        = 484,
    ["Arakaul's Memory"]                    = 485,
    ["Tamahl's Memory"]                     = 486,
    ["Reliana's Memory"]                    = 487,
    ["Bloody Knoll"]                        = 488,
    ["Coldperch Cavern"]                    = 489,
    ["Bonerock Caverns"]                    = 490,
    ["Morkul Stronghold"]                   = 491,
    ["Morkul Descent"]                      = 492,
    ["Morkuldin"]                           = 493,
    ["Exile's Barrow"]                      = 494,
    ["Zthenganaz"]                          = 495,
    ["Fharun Prison"]                       = 496,
    ["Fharun Stronghold"]                   = 497,
    ["Path of the Faithful"]                = 498,
    ["Sanctuary of Malacath"]               = 499,
    ["Sorrow"]                              = 500,
    ["Argent Mine"]                         = 501,
    ["Thukhozod's Sanctum"]                 = 502,
    ["Watcher's Hold"]                      = 503,
    ["Paragon's Remembrance"]               = 504,
    ["Chambers Of Loyalty"]                 = 505,
    ["Path to the Moot Library"]            = 506,
    ["Path to the Moot"]                    = 507,

    -- Thieves Guild
    ["Fulstrom Homestead"]                  = 508,
    ["Fulstrom Catacombs"]                  = 509,
    ["Abah's Landing"]                      = 510,
    ["Maw of Lorkhaj"]                      = 511,
    ["Thieves Den"]                         = 512,
    ["Hew's Bane"]                          = 513,
    ["Sulima Mansion"]                      = 514,
    ["Bahraha's Gloom"]                     = 515,
    ["Iron Wheel Headquarters"]             = 516,
    ["al-Danobia"]                          = 517,
    ["al-Danobia Tomb"]                     = 518,
    ["Shark's Teeth Grotto"]                = 519,
    ["Hubalajad Palace"]                    = 520,

    -- Dark Brotherhood
    ["Anvil"]                               = 521,
    ["Anvil Outlaws Refuge"]                = 522,
    ["Gold Coast"]                          = 523,
    ["Jarol Estate Wine Cellar"]            = 524,
    ["Jarol Estate Smuggling Tunnels"]      = 525,
    ["Hrota Cave"]                          = 526,
    ["Garlas Agea"]                         = 527,
    ["Dark Brotherhood Sanctuary"]          = 528,
    ["Kvatch"]                              = 529,
    ["At-Himah Estate"]                     = 530,
    ["At-Himah Estate Caves"]               = 531,
    ["Jerall Mountains"]                    = 532,
    ["Anvil Castle"]                        = 533,
    ["Castle Kvatch"]                       = 534,
    ["Castle Kvatch Vaults"]                = 535,
    ["Castle Kvatch Passage"]               = 536,
    ["Enclave of the Hourglass"]            = 537,
    ["Blackwood Borderlands"]               = 538,
    ["Knightsgrave"]                        = 539,
    ["Cathedral of Akatosh"]                = 540,
}

-----------------------------------------
-- HELPER FUNCTIONS
-----------------------------------------

function Data:CollectMapIds()
	local sv = ZGV.sv.profile
	sv.mapids = {}

	for i = 0,1000 do
		local loczone, _ = _G.GetZoneInfo(i)
		sv.mapids[loczone] = i
	end
end
