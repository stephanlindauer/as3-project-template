package de.punini.stephanlindauer.template.model.model
{
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author stephan lindauer
	 */
	public class TemplateModel extends Actor implements ITemplateModel
	{
		private var _array:Array;

		public function TemplateModel()
		{
			init();
		}

		private function init():void
		{
			_array = [];
		}
	}
}
