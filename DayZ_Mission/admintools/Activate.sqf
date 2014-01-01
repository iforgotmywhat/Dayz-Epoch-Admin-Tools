waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in AllAdminList) then { // All Admins
	sleep 5;
	player addaction [("<t color=""#585858"">" + ("Admin Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};