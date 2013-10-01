package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Emil Söderberg
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var t:TextField = new TextField();
			
			addChild(t);
			t.height = 1000
			t.width = 600;
			t.border = true;
			
			var wolf:String = "Wolf";
			var wolfHp:int = 100;
			var wolfDmg:int = 50;
			var wolfTotalDmg:int;
			var troll:String = "Troll";
			var trollHp:int = 130;
			var trollDmg:int = 40;
			var trollTotalDmg:int;
			
			

			
			
			for (var i:int = 1; i <= 5; i++) 
			{
				trollTotalDmg = trollDmg * Math.random() + 2;
				wolfTotalDmg = wolfDmg * Math.random() + 2;
				wolfHp = wolfHp - trollTotalDmg;
				trollHp = trollHp - wolfTotalDmg;
				
				
				
				t.appendText("Round: " + String(i) + "\n");
				t.appendText(wolf + " bites " + troll + " and deals " + wolfTotalDmg + " damage to " + troll + ", Troll now has " + trollHp + " health points left" + "\n");
				t.appendText(troll + " hits " + wolf + " and deals " + trollTotalDmg + " damage to " + wolf + ", Wolf now has " + wolfHp + " health points left" + "\n");
				
				/*if (trollHp > wolfHp)
				{
					t.appendText("Troll Defeated Wolf!")
				}
				
				if (wolfHp > trollHp)
				{
					t.appendText("Wolf Defeated Troll!")
				}*/
			}
			
		}
		
	}
	
}