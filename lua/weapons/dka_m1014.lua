
SWEP.Base					= "suburb"
SWEP.Spawnable				= true

--
-- Description
--
SWEP.PrintName				= "M1014 JCS"
SWEP.Category				= "Desk Kickers"
SWEP.Description			= [[Shotgun]]
SWEP.Trivia = {
	"Caliber:",
	"12 gauge",
	"Rate of Fire:",
	"User-dependent",
	"Mechanism:",
	"Gas-operated",
	"Country of origin:",
	"Italy",
	"Manufacturer:",
	"Benelli",
	"Year introduced:",
	"1999",
}
SWEP.Slot					= 3

--
-- Appearance
--
SWEP.ViewModel				= "models/weapons/dka/c_dka_shot_m1014.mdl"
SWEP.WorldModel				= "models/weapons/dka/c_dka_shot_m1014.mdl"
SWEP.VMWMClone				= { Pos = Vector(), Ang = Angle(), Size = Vector() }
SWEP.ViewModelFOV			= 72

SWEP.DefaultBodygroups = "0 0 0 0 0 0 0 0 1"

SWEP.ActivePose = {
	Pos = Vector( -0.6, -4, 0.25 ),
	Ang = Angle( 0, 0, 0 )
}
SWEP.CrouchPose = {
	Pos = Vector(-2.5, -2, -0.6),
	Ang = Angle(0, 0, -14),
	MidPos = Vector( -0.2, 0, -0.5 ),
	MidAng = Angle( 0, 0, 0 ),
}
SWEP.IronsightPose = {
	Pos = Vector( -3.677, -6, 2.2 ),
	Ang = Angle( -0.65, -0.0, 2.0 ),
	MidPos = Vector( -0.75, 1, 0 ),
	MidAng = Angle( -0.5, 0, -6 ),
	ViewModelFOV = 65,
	Magnification = 1.1,
}

SWEP.HoldTypeHip			= "ar2"
SWEP.HoldTypeSight			= "rpg"
SWEP.HoldTypeSprint			= "passive"

local p0 = ")arccw_uc/common/"
local p1 = ")weapons/shotgun/"
local tail = ")/arccw_uc/common/12ga/"
SWEP.Sound_Blast			= {
	{ s = p1.."shotgun_fire_01.wav" },
	{ s = p1.."shotgun_fire_02.wav" },
	{ s = p1.."shotgun_fire_03.wav" }
}
--SWEP.Sound_Mech				= {
	--{ s = p1.."mech-01.ogg" },
	--{ s = p1.."mech-02.ogg" },
	--{ s = p1.."mech-03.ogg" },
	--{ s = p1.."mech-04.ogg" },
	--{ s = p1.."mech-05.ogg" },
	--{ s = p1.."mech-06.ogg" },
--}
--SWEP.Sound_TailEXT				= {
	--{ s = tail.."fire-dist-12ga-pasg-ext-01.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-ext-02.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-ext-03.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-ext-04.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-ext-05.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-ext-06.ogg" },
--}
--SWEP.Sound_TailINT				= {
	--{ s = tail.."fire-dist-12ga-pasg-int-01.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-int-02.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-int-03.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-int-04.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-int-05.ogg" },
	--{ s = tail.."fire-dist-12ga-pasg-int-06.ogg" },
--}

SWEP.MuzzleEffect						= "muzzleflash_shotgun"
SWEP.QCA_Muzzle							= 1

SWEP.ShellModel							= "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellScale							= 0.5
SWEP.QCA_Case							= 2

SWEP.QCA_Camera							= 3
SWEP.CameraCorrection					= Angle( 0, -90, -90 )

--
-- Functionality
--
SWEP.Primary.Ammo			= "buckshot"
SWEP.Primary.ClipSize		= 7
SWEP.ChamberSize			= 1
SWEP.Delay					= ( 60 / 200 )

SWEP.ShotgunReloading		= true
SWEP.ManualAction			= 0

SWEP.Firemodes				= {
	{
		Mode = 1,
	},
}
SWEP.SwayCorrection = 0.56

SWEP.Accuracy				= 3

SWEP.Dispersion				= 5
SWEP.Dispersion_Air			= 2.4
SWEP.Dispersion_Move		= 2.4
SWEP.Dispersion_Crouch		= 0.75
SWEP.Dispersion_Sights		= 0

SWEP.SightTime				= 0.4
SWEP.SprintTime				= 0.4

--
-- Recoil
--
SWEP.RecoilUp				= 4
SWEP.RecoilSide				= 3
SWEP.RecoilPunch			= 0.5
SWEP.RecoilSwing			= 1
SWEP.RecoilDrift			= .8
SWEP.RecoilDecay			= 15

--
-- Damage
--
SWEP.DamageNear				= 10
SWEP.RangeNear				= 5
SWEP.DamageFar				= 2
SWEP.RangeFar				= 50
SWEP.Force					= 8
SWEP.Penetration			= 2
SWEP.Pellets				= 6

SWEP.UniversalAnimationInfo = {
	bone = "m16_parent",
	pos = Vector( 0, 0, 0 ),
	ang = Angle( 0, 0, 0 ),
}

--
-- Animation
--
local shellin = {
	p1 .. "shell-insert-01.ogg",
	p1 .. "shell-insert-02.ogg",
	p1 .. "shell-insert-03.ogg"
}
SWEP.Animations				= {
	["idle"]	= {
		Source = "idle",
	},
	["idle_empty"]	= {
		Source = "idle_empty",
	},
	["draw"]	= {
		Source = "draw",
		ReloadingTime = 0.3,
		StopSightTime = 0.1,
	},
	["draw_empty"]	= {
		Source = "draw_empty",
		ReloadingTime = 0.3,
		StopSightTime = 0.1,
	},
	["holster"]	= {
		Source = "holster",
		Time = 0.4,
		HolsterTime = 0.2,
	},
	["holster_empty"]	= {
		Source = "holster_empty",
		Time = 0.4,
		HolsterTime = 0.2,
	},
	--["cycle"]	= {
		--Source = "cycle",
		--Events = {
			--{s = Ssnd.rottle, t = 0},
			--{s = p1 .. "rack_1.ogg",  t = 0},
			--{s = p1 .. "eject.ogg",  t = 0.1},
			--{s = p1 .. "rack_2.ogg",  t = 0.11},
		--},
		--ShellEjectTime = 0.1,
		--CycleDelayTime = 0.3,
	--},
	["fire"]	= {
		Source = "fire",
		CycleDelayTime = 0.3,
	},
	["sgreload_start"] = {
		Source = "sgreload_start",
		Time = 25/40,
		Events = {
		},
		ShotgunReloadingTime = 24/40,
	},
	["sgreload_start_empty"] = {
		Source = "sgreload_start_empty",
		Time = 53/40,
		Events = {
			{s = Ssnd.rottle, 					t = 0},
			{s = p1 .. "breechload.ogg",		t = 0.05},
			{s = p1 .. "breechclose.ogg",		t = 0.75},
		},
		AmountToLoad = 1,
	},
	["sgreload_insert"] = {
		Source = "sgreload_insert",
		Time = 30/40,
		Events = {
			{s = Ssnd.rottle, t = 0},
			{s = shellin, t = 0.05},
		},
		LoadIn = 0.2,
		AmountToLoad = 1,
		ShotgunReloadingTime = 0.70,
	},
	["sgreload_finish"] = {
		Source = "sgreload_finish",
		Time = 35/40,
		Events = {
			{s = Ssnd.rottle, t = 0},
			{s = p0 .. "shoulder.ogg",  t = 0.27},
		},
		ReloadingTime = 0,
	},
}

SWEP.Attachments = {

}

SWEP.Elements = {}