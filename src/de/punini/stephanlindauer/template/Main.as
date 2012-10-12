package de.punini.stephanlindauer.template
{
	import com.carlcalderon.arthropod.Debug;

	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IEventDispatcher;

	/**
	 * @author Leeke Bremer
	 */
	public class Main extends Sprite
	{
		private	var _context:MainContext;

		public function Main():void
		{
			Debug.log("Main Class entered");
			registerErrorListener();
			init();
		}

		private function registerErrorListener():void
		{
			if (loaderInfo.hasOwnProperty("uncaughtErrorEvents"))
				IEventDispatcher(loaderInfo["uncaughtErrorEvents"]).addEventListener("uncaughtError", handleErrorThrown);
		}

		private function handleErrorThrown(event:String):void
		{
		}

		private function init():void
		{
			_context = new MainContext(this);
		}

		public function create():void
		{
			stage.addEventListener(Event.RESIZE, resizeHandler);
			stage.dispatchEvent(new Event(Event.RESIZE));
		}

		public function resizeHandler(e:Event):void
		{
		}
	}
}