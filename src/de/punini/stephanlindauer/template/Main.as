package de.punini.stephanlindauer.template
{
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * @author Leeke Bremer
	 */
	public class Main extends Sprite
	{
		private	var _context:MainContext;

		public function Main():void
		{
			init();
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
			//
		}
	}
}