// You need to add this to your init.sqf in your mission.pbo or whatever format you use for your server.
// AllAdminList is ALL of your admins 
// Which will mean that if someone is a super admin for ex. they will need to be in the all admins and super admin lists.
// Take note that the last 999999999 in each list does not have a , after it


// Malory's Admin Tools
AllAdminList = [
"999999999", // Admin's Name (In-Game Name)
"999999999", // Admin's Name (In-Game Name)
"999999999", // Admin's Name (In-Game Name)
"999999999", // Admin's Name (In-Game Name)
"999999999", // Admin's Name (In-Game Name)
"999999999" // Admin's Name (In-Game Name)
];

SuperAdminList = [
"999999999", // Admin's Name (In-Game Name)
"999999999", // Admin's Name (In-Game Name)
"999999999", // Admin's Name (In-Game Name)
"999999999" // Admin's Name (In-Game Name)
];

AdminList3 = [ 
"999999999", // Admin's Name (In-Game Name)
"999999999" // Admin's Name (In-Game Name)
];

AdminList2 = [
"999999999" // Admin's Name (In-Game Name)
];

AdminList1 = [
"999999999" // Admin's Name (In-Game Name)
];

[] execVM "admintools\Activate.sqf";
