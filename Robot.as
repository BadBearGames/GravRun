package  {
	
	import flash.display.MovieClip;
	
	
	public class Robot extends MovieClip 
	{
		var robotHor:Number = 5;
		
		public function Robot()
		{
			this.x = 600;
			this.y = (Math.floor(Math.random() * (350 - 70 + 1)) + 70);
			
			if (document.perk5Unlock)
			{
				robotHor = 4.5;
			}
			else
			{
				robotHor = 5;
			}
		}
		
		public function update(r:Number, b:Boolean)
		{
			if (b)
			{
				this.x -= robotHor;
			}
			else
			{
				if (document.perk4Unlock)
				{
					x = (x + Math.cos(r/180*Math.PI)* 2);
					y = (y + Math.sin(r/180*Math.PI)* 2);
				}
				else
				{
					x = (x + Math.cos(r/180*Math.PI)* 4);
					y = (y + Math.sin(r/180*Math.PI)* 4);

				}
			}
		}
	}
	
}
