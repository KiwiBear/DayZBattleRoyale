class CfgVehicles {
	class All;
	class HouseBase;
	class Ruins: HouseBase {};
    
	class AllVehicles;
	class Air : AllVehicles 
	{
		class NewTurret;
		class ViewPilot;
		class AnimationSources;
	};
	class Helicopter : Air 
	{
		class HitPoints; 
		class Turrets
        {
            class MainTurret: NewTurret
            {
                class Turrets;
				class ViewOptics;
            };
        };
	};

	
	//External Class
	class SkodaBase;
	class ATV_Base_EP1;
	class RubberBoat;
	class UAZ_Unarmed_Base;
	class HMMWV_Base;
	class AH6_Base_EP1;
	class An2_Base_EP1;
	class TT650_Base;
	class V3S_Base;
	class SUV_Base_EP1;
	class Ship;
	//class Bag_Base_EP1;
	//class Bag_Base_BAF;
	class House {
		class DestructionEffects;
	};
	class SpawnableWreck : House {};
	class Strategic;
	class NonStrategic;
	class Land_Fire;
	class Animal;
	class Pastor;
	class Fin;

	class ModularItems: NonStrategic{
		placement = "vertical";
	
		class DestructionEffects {
			class Sound {
				simulation = "sound";
				type = "DestrHouse";
				position = "destructionEffect1";
				intensity = 1;
				interval = 1;
				lifeTime = 0.05;
			};

			class DestroyPhase1 {
				simulation = "destroy";
				type = "DelayedDestruction";
				lifeTime = 2.5;
				position = "";
				intensity = 1;
				interval = 1;
			};

			class DamageAround1 {
				simulation = "damageAround";
				type = "DamageAroundHouse";
				position = "";
				intensity = 0.1;
				interval = 1;
				lifeTime = 1;
			};
		};
	};
		
	#include "CfgVehicles\DZE\Modular.hpp"
	#include "CfgVehicles\DZE\Doors.hpp"

	#include "CfgVehicles\RepairParts.hpp"    //names for all reapir parts. Needs moving to hitpoints
	//ZEDS
    #include "CfgVehicles\Zeds\DUZedBase.hpp" //Santized Root Man Class
	#include "CfgVehicles\Zeds\Zeds.hpp"      //old type zeds
	#include "CfgVehicles\Zeds\NewZeds.hpp"   //new type zeds
	#include "CfgVehicles\Zeds\Pastor.hpp"    //Pastor Zed
	//PLAYER ZEDS
	#include "CfgVehicles\DZE\PlayerZeds.hpp" //old type player zeds TODO: update to new
	//Survivor Skins	
    #include "CfgVehicles\Survivors\Originals.hpp"
	#include "CfgVehicles\Survivors\Survivors.hpp"
    #include "CfgVehicles\Survivors\SurvivorsW.hpp"
    #include "CfgVehicles\Survivors\aiSurvivors.hpp"
    #include "CfgVehicles\Survivors\Devs.hpp"     //Dev Survivors
	//Bags
	#include "CfgVehicles\Bags.hpp"
	//DZAnimal and DZ_Fin
	#include "CfgVehicles\Animal.hpp"
	#include "CfgVehicles\Dog.hpp"
	
	//Includes all DayZ Vehilces
	//Car's
	#include "CfgVehicles\Car\HMMWV.hpp"
	#include "CfgVehicles\Car\CAR_HATCHBACK.hpp"
	#include "CfgVehicles\Car\UAZ_CDF.hpp"
	#include "CfgVehicles\Car\CAR_SEDAN.hpp"
	#include "CfgVehicles\Car\V3S_Civ.hpp"
	#include "CfgVehicles\Car\SUV_DZ.hpp"
	//Helicopter's
	//#include "CfgVehicles\Helicopter\MI17.hpp"
	//#include "CfgVehicles\Helicopter\UH1H.hpp"
	//#include "CfgVehicles\Helicopter\UH1H2.hpp"
	//#include "CfgVehicles\Helicopter\AH6X.hpp"
	//#include "CfgVehicles\Helicopter\MH6J_DZ.hpp"
	//Wreck's
	#include "CfgVehicles\Helicopter\MI8Wreck.hpp"
	#include "CfgVehicles\Helicopter\UH1Wreck.hpp"
	#include "CfgVehicles\Helicopter\UH60Wreck.hpp"
	//Plane's
	//#include "CfgVehicles\Plane\AN2_DZ.hpp"
	#include "CfgVehicles\Plane\MV22_DZ.hpp"
	//Bikes
	#include "CfgVehicles\Bikes\ATV_US_EP1.hpp"
	#include "CfgVehicles\Bikes\ATV_CZ_EP1.hpp"
	#include "CfgVehicles\Bikes\TT650_Ins.hpp"
	//Boat
	#include "CfgVehicles\Boat\PBX.hpp"
	#include "CfgVehicles\Boat\Fishing_Boat.hpp"
	
	//Includes all Building Stuff
	// This parent class is made to make referring to these objects easier later with allMissionObjects	
	#include "CfgVehicles\Buildings\HouseDZ.hpp"
	//Fire
	#include "CfgVehicles\Buildings\Land_Fire.hpp"
	//Buildings
	#include "CfgVehicles\Buildings\Land_Budova4_in.hpp"
	#include "CfgVehicles\Buildings\Land_dum_istan3_pumpa.hpp"
	#include "CfgVehicles\Buildings\Land_dum_olez_istan2_maly2.hpp"
	#include "CfgVehicles\Buildings\Land_A_Crane_02b.hpp"
	#include "CfgVehicles\Buildings\Land_A_FuelStation_Feed.hpp"
	#include "CfgVehicles\Buildings\Land_A_TVTower_Mid.hpp"
	#include "CfgVehicles\Buildings\Land_A_TVTower_Top.hpp"
	#include "CfgVehicles\Buildings\Land_Farm_WTower.hpp"
	#include "CfgVehicles\Buildings\Land_HouseB_Tenement.hpp"
	#include "CfgVehicles\Buildings\Land_Ind_MalyKomin.hpp"
	#include "CfgVehicles\Buildings\Land_komin.hpp"
	#include "CfgVehicles\Buildings\Land_majak.hpp"
	#include "CfgVehicles\Buildings\Land_Mil_ControlTower.hpp"
	#include "CfgVehicles\Buildings\Land_NAV_Lighthouse.hpp"
	#include "CfgVehicles\Buildings\Land_NavigLight.hpp"
	#include "CfgVehicles\Buildings\Land_Rail_Semafor.hpp"
	#include "CfgVehicles\Buildings\Land_Rail_Zavora.hpp"
	#include "CfgVehicles\Buildings\Land_runway_edgelight.hpp"
	#include "CfgVehicles\Buildings\Land_Stoplight.hpp"
	#include "CfgVehicles\Buildings\Land_telek1.hpp"
	#include "CfgVehicles\Buildings\Land_VASICore.hpp"
	#include "CfgVehicles\Buildings\Land_Vysilac_FM.hpp"
	//WeaponHolder
	#include "CfgVehicles\WeaponHolder.hpp"	
	
	//Tents,storage
	#include "CfgVehicles\Storage.hpp"
	#include "CfgVehicles\DZE\VaultStorage.hpp"
	#include "CfgVehicles\DZE\WeaponHolder.hpp"
	
	// Buildables
	#include "CfgVehicles\DZE\BuiltItems.hpp"
	#include "CfgVehicles\DZE\MoreBuiltItems.hpp"
    
    //Misc
    #include "CfgVehicles\Misc.hpp"
	
	
	// CLAY Dogs
	/*class Pastor;
	class CLAY_Dog: Pastor
	{
		scope = protected;
		icon = "\z\addons\br_assets\scripts\CLAY_Dogs\i_dog.paa";
		mapSize = 3;
		runDistanceMax = 100;
		minIdleTime = 30;
		maxIdleTime = 60;
		fsmDanger = "";
		class EventHandlers {};
	};
	class CLAY_Dog2: CLAY_Dog
	{
		model = "\ca\animals2\Dogs\Fin\Fin";
		displayName = $STR_DN_DOG_FIN;
	};
	*/
	
};
class CfgNonAIVehicles {
	#include "CfgVehicles\StreetLamps.hpp"
};
