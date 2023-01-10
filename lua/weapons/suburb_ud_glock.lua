
SWEP.Base					= "suburb"
SWEP.Spawnable				= true

--
-- Description
--
SWEP.PrintName				= "Glock 17"
SWEP.Category				= "Urban Coalition"
SWEP.Description			= [[Iconic 9x19mm pistol.]]
SWEP.Slot					= 1

--
-- Appearance
--
SWEP.ViewModel				= "models/weapons/arccw/c_ud_glock.mdl"
SWEP.WorldModel				= "models/weapons/arccw/c_ud_glock.mdl"
SWEP.VMWMClone				= { Pos = Vector(), Ang = Angle(), Size = Vector() }
SWEP.ViewModelFOV			= 65

SWEP.ActivePose = {
	Pos = Vector( 0, -3, 1 ),
	Ang = Angle( 0, 0, -3 )
}
SWEP.IronsightPose = {
	Pos = Vector( -2.3, -4, 2.52 ),
	Ang = Angle( 0.3, 0, 0 ),
	MidPos = Vector( -0.3, 0, -0.5 ),
	MidAng = Angle( 0, 0, 0 ),
	ViewModelFOV = 65,
	Magnification = 1.1,
}

SWEP.HoldTypeHip			= "pistol"
SWEP.HoldTypeSight			= "revolver"
SWEP.HoldTypeSprint			= "normal"

local p0 = ")arccw_uc/common/"
local p1 = ")weapons/arccw_ud/glock/"
SWEP.Sound_Blast			= {
	{ s = p1.."fire-01.ogg" },
	{ s = p1.."fire-02.ogg" },
	{ s = p1.."fire-03.ogg" },
	{ s = p1.."fire-04.ogg" },
	{ s = p1.."fire-05.ogg" },
	{ s = p1.."fire-06.ogg" },
}
SWEP.Sound_Mech				= {
	{ s = p1.."mech-01.ogg" },
	{ s = p1.."mech-02.ogg" },
	{ s = p1.."mech-03.ogg" },
	{ s = p1.."mech-04.ogg" },
	{ s = p1.."mech-05.ogg" },
	{ s = p1.."mech-06.ogg" },
}
SWEP.Sound_TailEXT				= {
	{ s = p1.."fire-dist-01.ogg" },
	{ s = p1.."fire-dist-02.ogg" },
	{ s = p1.."fire-dist-03.ogg" },
	{ s = p1.."fire-dist-04.ogg" },
	{ s = p1.."fire-dist-05.ogg" },
	{ s = p1.."fire-dist-06.ogg" },
}
SWEP.Sound_TailINT				= {
	{ s = p0.."fire-dist-int-pistol-01.ogg" },
	{ s = p0.."fire-dist-int-pistol-02.ogg" },
	{ s = p0.."fire-dist-int-pistol-03.ogg" },
	{ s = p0.."fire-dist-int-pistol-04.ogg" },
	{ s = p0.."fire-dist-int-pistol-05.ogg" },
	{ s = p0.."fire-dist-int-pistol-06.ogg" },
}

--
-- Functionality
--
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.ClipSize		= 17
SWEP.Delay					= ( 60 / 450 )

SWEP.Firemodes				= {
	{
		Mode = 1,
	}
}

SWEP.SightTime				= 0.3
SWEP.SprintTime				= 0.3

--
-- Sexyness
--
local rattel = {
	p0.."pistol_rattle_1.ogg",
	p0.."pistol_rattle_2.ogg",
	p0.."pistol_rattle_3.ogg",
}
local rottle = {
	p0.."cloth_2.ogg",
	p0.."cloth_3.ogg",
	p0.."cloth_4.ogg",
	p0.."cloth_6.ogg",
	p0.."rattle.ogg",
}

SWEP.Animations				= {
	["draw"]	= {
		Source = "draw",
	},
	["draw_empty"]	= {
		Source = "draw_empty",
	},
	["holster"]	= {
		Source = "holster",
	},
	["holster_empty"]	= {
		Source = "holster_empty",
	},
	["fire"]	= {
		Source = "fire",
	},
	["fire_empty"] = {
		Source = "fire_empty",
	},
	["reload"]	= {
		Source = "reload",
		Time = 1.8,
		Events = {
			{ t = 0.1,			s = p0.."magpouch_pull_small.ogg" },
			{ t = 0.3,			s = p1.."magout_partial.ogg" },
			{ t = 0.4,			s = p1.."magin_new.ogg" },

			{ t = 0,			s = rottle },
			{ t = 0.3,			s = rattel },
			{ t = 0.35,			s = rattel },
			{ t = 0.5,			s = rottle },
		},
		ReloadingTime = 1.6,
		LoadIn = 1,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		Time = 2.2,
		Events = {
			{ t = 0.1,			s = p1.."magout_empty.ogg" },
			{ t = 0.2,			s = p0.."magpouch_pull_small.ogg" },
			{ t = 0.5,			s = p1.."magin_new.ogg" },
			{ t = 1.37,			s = p1.."chamber.ogg" },

			{ t = 0,			s = rattel },
			{ t = 0.5,			s = rattel },
			{ t = 1.15,			s = rottle },
		},
		ReloadingTime = 1.7,
		LoadIn = 1.45,
	},
}