package  {
	
	import flash.display.MovieClip;
	
	
	public class Crate extends MovieClip 
	{
		private var color:String = "";
		private var crateGrav:Number = 0;
		private var crateGravConstant:Number = 0;
		private var crateHor:Number = -5;
		private var mass:Number = 2;
		
		
		public function Crate(c:String) 
		{
			color = c;
			this.x = 600;
			this.y = (Math.floor(Math.random() * (335 - 65 + 1)) + 65);
			
			switch(document.currentWorld)
			{
				case 1:
				crateGravConstant = .5;
				break;
				case 2:
				crateGravConstant = .2;
				break;
				case 3:
				crateGravConstant = .4;
				break;
			}
			
			if (document.perk5Unlock)
			{
				crateHor = -4.5;
			}
			else
			{
				crateHor = -5;
			}
		}
		
		public function update(barState:Number)
		{
			//GRAVITY
			{
				if (((color == "blue") && (barState == 1)) || ((color == "red") && (barState == -1)))
				{
					crateGrav += crateGravConstant;
				}
				else if (((color == "blue") && (barState == -1)) || ((color == "red") && (barState == 1)))
				{
					crateGrav -= crateGravConstant;
				}
				
				this.y += crateGrav;
				
				if (this.y >= 335)
				{
					this.y = 335;
					crateGrav = 0;
				}
				else if (this.y <= 65)
				{
					this.y = 65;
					crateGrav = 0;
				}
			}
			
			this.x += crateHor;
		}
		
		public function getColor():Number //RETURNS COLOR
		{
			var val:Number = 0;
			
			switch (color)
			{
				case "blue":
				val = 0x0000FF;
				break;
				case "red":
				val = 0xFF0000;
				break;
				case "white":
				val = 0xFFFFFF;
				break;
			}
			
			return val;
		}
		
		public function getVert():Number //RETURNS THE FORCE
		{
			return crateGrav;
		}
		
		public function setVert(g:Number):void //SETS THE GRAVITY
		{
			crateGrav = g;
		}
		
		public function getHor():Number
		{
			return crateHor;
		}
		
		public function setHor(h:Number):void
		{
			crateHor = h;
		}
		
		public function bump(barState:Number):void //BUMPS THE CRATE
		{
			if (((color == "blue") && (barState == 1)) || ((color == "red") && (barState == -1)))
			{
				crateGrav += (Math.random() * (.9 - .1 + 1)) + .1;
			}
			else if (((color == "blue") && (barState == -1)) || ((color == "red") && (barState == 1)))
			{
				crateGrav -= (Math.random() * (.9 - .1 + 1)) + .1;
			}
		}
		
		public function setY(y1:Number):void
		{
			y = y1;
		}
	}
}
