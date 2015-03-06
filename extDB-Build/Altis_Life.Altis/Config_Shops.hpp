class WeaponShops {
    //Armory Shops
    class gun {
        name = "Ali's Outlet";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "";
        items[] = {		
			{ "hgun_P07_F", "", 5000 },
            { "hgun_Rook40_F", "", 6000 },
			{ "hgun_Pistol_heavy_01_F", "", 2500 },
            { "hgun_Pistol_heavy_02_F", "", 2500 },
            { "hgun_ACPC2_F", "", 6750 },
            { "hgun_PDW2000_F", "", 14000 },
			{ "SMG_01_F", "", 14000 },
			{ "SMG_02_F", "", 14000 },
			{ "srifle_GM6_SOS_F", "", 75000 },			
            { "optic_ACO_grn_smg", "", 2500 },
			{ "optic_LRPS", "", 2500 },
			{ "optic_Aco_smg", "", 2500 },			
            { "V_Rangemaster_belt", "", 2000 },
            { "16Rnd_9x21_Mag", "", 150 },
            { "30Rnd_9x21_Mag", "", 150 },			
            { "9Rnd_45ACP_Mag", "", 150 },
            { "11Rnd_45ACP_Mag", "", 150 },
            { "6Rnd_45ACP_Cylinder", "", 150 },
            { "30Rnd_45ACP_Mag_SMG_01", "", 150 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "", 150 },
            { "5Rnd_127x108_Mag", "", 150 }					
        };
    };
    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level = -1;
        msg = "";
        items[] = {
            { "arifle_TRG20_F", "", 25000 },
            { "arifle_Katiba_F", "", 30000 },
            { "srifle_DMR_01_F", "", 50000 },
            { "arifle_SDAR_F", "", 20000 },
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "acc_flashlight", "", 1000 },
            { "optic_Hamr", "", 7500 },
            { "30Rnd_9x21_Mag", "", 200 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "30Rnd_556x45_Stanag", "", 300 },
            { "10Rnd_762x51_Mag", "", 500 },
            { "30Rnd_65x39_caseless_green", "", 275 }
        };
    };
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {	
            { "hgun_Rook40_F", "", 8500 },
			{ "hgun_Rook40_snds_F", "", 8500 },
            { "hgun_Pistol_heavy_02_F", "", 2500 },
            { "hgun_ACPC2_F", "", 6750 },
            { "hgun_PDW2000_F", "", 14000 },			
			{ "arifle_SDAR_F", "", 55000 },
			{ "arifle_MXM_F", "", 55000 },
			{ "arifle_MX_SW_F", "", 55000 },
			{ "arifle_TRG21_GL_F", "", 55000 },
			{ "arifle_Mk20_F", "", 55000 },
			{ "srifle_LRR_LRPS_F", "", 55000 },			
			{ "muzzle_snds_H", "", 1500 },
			{ "muzzle_snds_M", "", 1500 },
			{ "muzzle_snds_L", "", 1500 },
			{ "optic_Hamr", "", 2500 },
			{ "optic_ACO_grn", "", 2500 },
			{ "optic_Holosight", "", 1200 },
			{ "acc_flashlight", "", 750 },
			{ "acc_pointer_IR", "", 1200 },					
			{ "FirstAidKit", "", 150 },
			{ "ToolKit", "", 250 },			
			{ "NVGoggles", "", 2000 },			
            { "optic_ACO_grn_smg", "", 950 },
            { "V_Rangemaster_belt", "", 1900 },
            { "16Rnd_9x21_Mag", "", 150 },
            { "30Rnd_9x21_Mag", "", 150 },
            { "9Rnd_45ACP_Mag", "", 150 },
            { "6Rnd_45ACP_Cylinder", "", 150 },
			{ "7Rnd_408_Mag", "", 150 },
			{ "20Rnd_556x45_UW_mag", "", 150 },
			{ "30Rnd_556x45_Stanag", "", 150 },
			{ "30Rnd_556x45_Stanag_Tracer_Red", "", 150 },
			{ "30Rnd_556x45_Stanag_Tracer_Green", "", 150 },
			{ "30Rnd_556x45_Stanag_Tracer_Yellow", "", 150 },
			{ "30Rnd_65x39_caseless_mag", "", 150 },
			{ "30Rnd_65x39_caseless_mag_Tracer", "", 150 }
        };
    };
    //Basic Shops
    class genstore {
        name = "Rema 1000 General Store";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
			{ "hgun_Pistol_heavy_02_F", "", 9000 },
			{ "Rangefinder", "", 1000 },
        	{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "NVGoggles", "", 2000 },
			{ "NVGoggles_OPFOR", "", 1000 },
			{ "Chemlight_red", "", 300 },
			{ "Chemlight_yellow", "", 300 },
			{ "Chemlight_green", "", 300 },
			{ "Chemlight_blue", "", 300 },
			{ "6Rnd_45ACP_Cylinder", "", 100 }
        };
    };
    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "arifle_sdar_F", "Taser Rifle", 20000 },
			{ "hgun_P07_snds_F", "Stun Pistol", 2000 },
			{ "hgun_P07_F", "", 7500 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 },
			{ "muzzle_snds_L", "", 650 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 1000 },
			{ "NVGoggles", "", 2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 125 }
        };
    };
    class cop_patrol {
        name = "Altis Patrol Officer Shop";
        side = "cop";
        license = "";
        level = 2;
        msg = "You must be a Patrol Officer Rank!";
        items[] = {
        	{ "arifle_MX_F", "", 35000 },
			{ "SMG_02_ACO_F", "", 30000 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "MineDetector", "", 1000 },
			{ "acc_flashlight", "", 750 },
			{ "optic_Holosight", "", 1200 },
			{ "optic_Arco", "", 2500 },
			{ "muzzle_snds_H", "", 2750 },
			{ "30Rnd_65x39_caseless_mag", "", 130 },
			{ "30Rnd_9x21_Mag", "", 250 }
        };
    };
    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level = 3;
        msg = "You must be a Sergeant Rank!";
        items[] = {
            { "SMG_02_ACO_F", "", 15000 },
			{ "hgun_ACPC2_F", "", 17500 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "arifle_MXC_F", "", 30000 },
			{ "optic_Arco", "", 2500 },
			{ "muzzle_snds_H", "", 2750 },
			{ "30Rnd_65x39_caseless_mag", "", 100 },
			{ "30Rnd_9x21_Mag", "", 60 },
			{ "9Rnd_45ACP_Mag", "", 200 }
        };
    };
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level = -1;
        items[] = {
            { "ItemGPS", "", 100 },
			{ "Binocular", "", 150 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 500 },
			{ "NVGoggles", "", 1200 },
			{ "B_FieldPack_ocamo", "", 3000 }
        };
    };
};
