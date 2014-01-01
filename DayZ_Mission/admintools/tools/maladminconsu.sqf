_className = "USOrdnanceBox";
_mypos = getposATL player;
_dir = getdir player;
_mypos = [(_mypos select 0)+2*sin(_dir),(_mypos select 1)+2*cos(_dir), (_mypos select 2)];
_magicbox = createVehicle [_className, _mypos, [], 0, "CAN_COLLIDE"];
_magicbox setDir _dir;
_magicbox setposATL _mypos;

 _dayz_wep =["Binocular","Binocular_Vector","ItemCompass","ItemEtool","ItemFlashlight","ItemFlashlightRed","ItemGPS","ItemKnife","ItemMap","ItemMatchbox","ItemRadio","ItemWatch","Laserdesignator","NVGoggles"]; 
 
 _dayz_mag =["FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodSteakCooked","FoodSteakRaw","HandChemBlue","HandChemGreen","HandChemRed","HandRoadFlare","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemJerrycan","ItemMorphine","ItemPainkiller","ItemSandbag","ItemSodaCoke","ItemSodaEmpty","ItemSodaMdew","ItemSodaPepsi","ItemTankTrap","ItemTent","ItemWire","ItemWaterbottle","PartEngine","PartFueltank","PartGeneric","PartGlass","PartWheel","PartWoodPile","PartVRotor","TrapBear","TrashTinCan","TrashJackDaniels"];

clearWeaponCargoGlobal _magicbox;
clearMagazineCargoGlobal _magicbox;
clearBackpackCargoGlobal _magicbox;
 
{_magicbox addWeaponCargoGlobal [_x,10];} forEach _dayz_wep;  
{_magicbox addMagazineCargoGlobal [_x,10];} forEach _dayz_mag; 

"MeleeHatchet" call dayz_meleeMagazineCheck;
"MeleeCrowbar" call dayz_meleeMagazineCheck;

hint "Admin Consumables Crate Spawned";