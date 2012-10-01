package de.punini.stephanlindauer.template.controller.event
{
	import de.punini.stephanlindauer.template.model.valueobject.TemplateVO;

	import flash.events.Event;

	/**
	 * @author stephan lindauer
	 */
	public class TemplateEvent extends Event
	{
		public static const TYPE_OF_EVENT:String = "TYPE_OF_EVENT";
		private var _itemVO:TemplateVO;

		public function TemplateEvent(type:String, itemVO:TemplateVO = null)
		{
			super(type);
			_itemVO = itemVO;
		}

		public function get itemVO():TemplateVO
		{
			return _itemVO;
		}

		override public function clone():Event
		{
			return new TemplateEvent(type, _itemVO);
		}
	}
}
