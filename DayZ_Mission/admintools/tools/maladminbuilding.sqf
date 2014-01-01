_className = "USOrdnanceBox";
_mypos = getposATL player;
_dir = getdir player;
_mypos = [(_mypos select 0)+2*sin(_dir),(_mypos select 1)+2*cos(_dir), (_mypos select 2)];
_magicbox = createVehicle [_className, _mypos, [], 0, "CAN_COLLIDE"];
_magicbox setDir _dir;
_magicbox setposATL _mypos;

 _dayz_wep =["MeleeHatchet","MeleeCrowbar","ItemEtool","ItemHatchet","ItemCrowbar","ItemMatchbox","ItemToolbox"];   
   
 _dayz_mag =["PipeBomb","ItemTent","ItemWire","PartEngine","PartFueltank","PartGeneric","PartGlass","PartWheel","PartWoodPile","PartVRotor","ItemBriefcase100oz","ItemComboLock","ItemCorrugated","bulk_ItemSandbag","bulk_ItemWire","bulk_ItemWireHalf","bulk_PartGeneric","bulk_PartGenericHalf","metal_floor_kit","cinder_wall_kit","cinder_garage_kit","cinder_door_kit","workbench_kit","wood_ramp_kit","metal_panel_kit","deer_stand_kit","desert_large_net_kit","desert_net_kit","forest_large_net_kit","forest_net_kit","fuel_pump_kit","light_pole_kit","stick_fence_kit","wooden_shed_kit","storage_shed_kit","wood_shack_kit","m240_nest_kit","sun_shade_kit","park_bench_kit","rusty_gate_kit","sandbag_nest_kit","outhouse_kit","ItemGenerator","ItemFuelPump","ItemVault","ItemLockbox","ItemWoodFloor","ItemWoodFloorHalf","ItemWoodFloorQuarter","ItemWoodStairs","ItemWoodStairsSupport","ItemWoodLadder","ItemWoodWall","ItemWoodWallThird","ItemWoodWallDoor","ItemWoodWallWithDoor","ItemWoodWallWithDoorLocked","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallGarageDoorLocked","ItemWoodWallDoorLg","ItemWoodWallWithDoorLgLocked","ItemWoodWallWindowLg","PartWoodPile","PartPlankPack","PartPlywoodPack","CinderBlocks","MortarBucket","PartWoodLumber","PartWoodPlywood","ItemKiloHemp","ItemHotwireKit"];
   
clearWeaponCargoGlobal _magicbox;
clearMagazineCargoGlobal _magicbox;
clearBackpackCargoGlobal _magicbox;
 
{_magicbox addWeaponCargoGlobal [_x,10];} forEach _dayz_wep;  
{_magicbox addMagazineCargoGlobal [_x,10];} forEach _dayz_mag; 

"MeleeHatchet" call dayz_meleeMagazineCheck;
"MeleeCrowbar" call dayz_meleeMagazineCheck;

hint "Admin Building Crate Spawned";