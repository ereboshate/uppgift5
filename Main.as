package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Carl
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
			t.width = 400;
			t.height = 700;
			t.border = true;
			
			var bob:int = 100;
			var monster:int = 100;
			
			for (var i:int = 1; i < 6; i++) 
			{
				bob = bob - (Math.random() * 19) + 1;
				monster = monster - (Math.random() * 19) + 1;
				
				t.appendText("Round " + i + ":\n");
				t.appendText("Bob har " + bob + " Healthpoints \n");
				t.appendText("Monster har " + monster + " Healthpoints");
				t.appendText("\n\n");

			}
		}
		
	}
	
}