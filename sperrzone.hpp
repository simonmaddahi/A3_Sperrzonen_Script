class NL_sperrzone
{
	idd = 2900;
	name= "NL_sperrzone";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	
	class controlsBackground 
	{
		class Background: life_RscPicture
		{
			idc = -1;
			text = "core\textures\menu_background\bg_cop_sperrzone.paa";
			x = 0.257656 * safezoneW + safezoneX;
			y = 0.00500001 * safezoneH + safezoneY;
			w = 0.489844 * safezoneW;
			h = 0.968 * safezoneH;
		};
	};
	
	class controls 
	{		
		class DurchmesserEdit : life_RscEdit 
		{
			idc = 2902;
			text = "5";
			font = "PuristaLight";
			shadow = 0;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,1};
			color2[] = {0,0,0,1};
			colorText[] = {0,0,0,0.8};
			colorDisabled[] = {0,0,0,0.4};
			sizeEx = 0.030;
			x = 0.421093 * safezoneW + safezoneX;
			y = 0.498148 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class nameEdit : life_RscEdit 
		{
			idc = 2903;
			text = "Sperrzone:";
			font = "PuristaLight";
			shadow = 0;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,1};
			color2[] = {0,0,0,1};
			colorText[] = {0,0,0,0.8};
			colorDisabled[] = {0,0,0,0.4};
			sizeEx = 0.030;
			x = 0.421614 * safezoneW + safezoneX;
			y = 0.565518 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class erstellen : life_RscButtonMenu
		{
			idc = 2904;
			text = "";
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,1};
			color2[] = {0,0,0,1};
			colorText[] = {0,0,0,0.8};
			colorDisabled[] = {0,0,0,0.4};
			onButtonDown = "0 spawn life_fnc_sz_create";
			x = 0.446354 * safezoneW + safezoneX;
			y = 0.603704 * safezoneH + safezoneY;
			w = 0.108333 * safezoneW;
			h = 0.0247778 * safezoneH;
		};
		
		class entfernen : life_RscButtonMenu
		{
			idc = 2905;
			text = "";
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,1};
			color2[] = {0,0,0,1};
			colorText[] = {0,0,0,0.8};
			colorDisabled[] = {0,0,0,0.4};
			onButtonDown = "0 spawn life_fnc_sz_delete";
			x = 0.529166 * safezoneW + safezoneX;
			y = 0.644231 * safezoneH + safezoneY;
			w = 0.0546875 * safezoneW;
			h = 0.0258462 * safezoneH;
		};
		
		class sperrzonen : life_RscCombo
		{
			idc = 2906;
			sizeEx = 0.035;
			onLBSelChanged = "";
			colorBackground[] = {0,0,0,0};
			colorSelectBackground[] = {0.8,0.8,0.8,0.5};
			colorSelectBackground2[] = {1,1,1,0};
			color[] = {1,1,1,1};
			color2[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			colorSelect[] = {1,1,1,1};
			colorSelect2[] = {1,1,1,1};
			colorDisabled[] = {0,0,0,0.4};
			x = 0.419062 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.103594 * safezoneW;
			h = 0.0275556 * safezoneH;
		};

		class close: life_RscPictureButton
		{
			idc = -1;
			text = "core\textures\menu_icons\icon_close.paa";
			onButtonDown = "closeDialog 0;";
			x = 0.610937 * safezoneW + safezoneX;
			y = 0.279807 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};
};