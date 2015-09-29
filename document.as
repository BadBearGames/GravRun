package  {
	
	import flash.display.MovieClip;
	import flash.net.SharedObject;
	import flash.events.Event;
	import flash.media.SoundMixer;
	
	public class document extends MovieClip 
	{
		public var saveData:SharedObject;
		public var init:Boolean = true;
		
		public static var totalScore:Number = 0;
		public static var highScore:Number = 0;
		public static var playerSkin:String = "";
		public static var scoreBonus:Number = 1;
		public static var currentWorld:Number = 1;
		public static var playerSize:Number = 0;
		public static var mute:Boolean = false;
		
		//SKINS
		{
			public static var skin1Unlock:Boolean = false;
			public static var skin2Unlock:Boolean = false;
			public static var skin3Unlock:Boolean = false;
			public static var skin4Unlock:Boolean = false;
			public static var skin5Unlock:Boolean = false;
			public static var skin6Unlock:Boolean = false;
			public static var skin7Unlock:Boolean = false;
			public static var skin8Unlock:Boolean = false;
			public static var skin9Unlock:Boolean = false;
			public static var skin10Unlock:Boolean = false;
			public static var skin11Unlock:Boolean = false;
			public static var skin12Unlock:Boolean = false;
			public static var skin13Unlock:Boolean = false;
			public static var skin14Unlock:Boolean = false;
			public static var skin15Unlock:Boolean = false;
			public static var skin16Unlock:Boolean = false;
			public static var skin17Unlock:Boolean = false;
			public static var skin18Unlock:Boolean = false;
			public static var skin19Unlock:Boolean = false;
			public static var skin20Unlock:Boolean = false;
		}
		
		//UPGRADES
		{
			public static var perk1Unlock:Boolean = false;
			public static var perk2Unlock:Boolean = false;
			public static var perk3Unlock:Boolean = false;
			public static var perk4Unlock:Boolean = false;
			public static var perk5Unlock:Boolean = false;
		}
		
		public static var stage2Unlock:Boolean = false;
		public static var stage3Unlock:Boolean = false;
		
		
		public function document()
		{
			//HANDLE SAVE DATA
			saveData = SharedObject.getLocal("GravRunSaveData");
			
			if (saveData.data.score == null)
			{
				saveData.data.score = 0;
				saveData.data.topScore = 0;
				saveData.data.currentSkin = "gravBoy";
				saveData.data.bonusMult = 1;
				saveData.data.sizeRate = .20;
				
				//SKINS
				{
					saveData.data.skin1 = true;
					saveData.data.skin2 = true;
					saveData.data.skin3 = false;
					saveData.data.skin4 = false;
					saveData.data.skin5 = false;
					saveData.data.skin6 = false;
					saveData.data.skin7 = false;
					saveData.data.skin8 = false;
					saveData.data.skin9 = false;
					saveData.data.skin10 = false;
					saveData.data.skin11 = false;
					saveData.data.skin12 = false;
					saveData.data.skin13 = false;
					saveData.data.skin14 = false;
					saveData.data.skin15 = false;
					saveData.data.skin16 = false;
					saveData.data.skin17 = false;
					saveData.data.skin18 = false;
					saveData.data.skin19 = false;
					saveData.data.skin20 = false;
				}
				
				//UPGRADES
				{
					saveData.data.perk1 = false;
					saveData.data.perk2 = false;
					saveData.data.perk3 = false;
					saveData.data.perk4 = false;
					saveData.data.perk5 = false;
				}
				
				saveData.data.stage2 = false;
				saveData.data.stage3 = false;
			}
			saveData.flush();
			
			//SET VARIABLES
			totalScore = saveData.data.score;
			highScore = saveData.data.topScore;
			playerSkin = saveData.data.currentSkin;
			scoreBonus = saveData.data.bonusMult;
			playerSize = saveData.data.sizeRate;
			
			//SKINS
			{
				skin1Unlock = saveData.data.skin1;
				skin2Unlock = saveData.data.skin2;
				skin3Unlock = saveData.data.skin3;
				skin4Unlock = saveData.data.skin4;
				skin5Unlock = saveData.data.skin5;
				skin6Unlock = saveData.data.skin6;
				skin7Unlock = saveData.data.skin7;
				skin8Unlock = saveData.data.skin8;
				skin9Unlock = saveData.data.skin9;
				skin10Unlock = saveData.data.skin10;
				skin11Unlock = saveData.data.skin11;
				skin12Unlock = saveData.data.skin12;
				skin13Unlock = saveData.data.skin13;
				skin14Unlock = saveData.data.skin14;
				skin15Unlock = saveData.data.skin15;
				skin16Unlock = saveData.data.skin16;
				skin17Unlock = saveData.data.skin17;
				skin18Unlock = saveData.data.skin18;
				skin19Unlock = saveData.data.skin19;
				skin20Unlock = saveData.data.skin20;
			}
			
			//UPGRADES
			{
				perk1Unlock = saveData.data.perk1;
				perk2Unlock = saveData.data.perk2;
				perk3Unlock = saveData.data.perk3;
				perk4Unlock = saveData.data.perk4;
				perk5Unlock = saveData.data.perk5;
			}
			
			stage2Unlock = saveData.data.stage2;
			stage3Unlock = saveData.data.stage3;
			
			
		}
		
		public function saveGame():void //SAVES THE GAME
		{
			saveData.data.score = totalScore;
			saveData.data.topScore = highScore;
			saveData.data.currentSkin = playerSkin;
			saveData.data.bonusMult = scoreBonus;
			saveData.data.sizeRate = playerSize;
			
			//SKINS
			{
				saveData.data.skin1 = skin1Unlock;
				saveData.data.skin2 = skin2Unlock;
				saveData.data.skin3 = skin3Unlock;
				saveData.data.skin4 = skin4Unlock;
				saveData.data.skin5 = skin5Unlock;
				saveData.data.skin6 = skin6Unlock;
				saveData.data.skin7 = skin7Unlock;
				saveData.data.skin8 = skin8Unlock;
				saveData.data.skin9 = skin9Unlock;
				saveData.data.skin10 = skin10Unlock;
				saveData.data.skin11 = skin11Unlock;
				saveData.data.skin12 = skin12Unlock;
				saveData.data.skin13 = skin13Unlock;
				saveData.data.skin14 = skin14Unlock;
				saveData.data.skin15 = skin15Unlock;
				saveData.data.skin16 = skin16Unlock;
				saveData.data.skin17 = skin17Unlock;
				saveData.data.skin18 = skin18Unlock;
				saveData.data.skin19 = skin19Unlock;
				saveData.data.skin20 = skin20Unlock;
			}
			
			//UPGRADES
			{
				saveData.data.perk1 = perk1Unlock;
				saveData.data.perk2 = perk2Unlock;
				saveData.data.perk3 = perk3Unlock;
				saveData.data.perk4 = perk4Unlock;
				saveData.data.perk5 = perk5Unlock;
			}
			
			saveData.data.stage2 = stage2Unlock;
			saveData.data.stage3 = stage3Unlock;
			
			saveData.flush();
		}
		
		
	}
	
}
