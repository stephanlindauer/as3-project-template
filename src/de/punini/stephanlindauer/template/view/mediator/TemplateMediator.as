package de.punini.stephanlindauer.template.view.mediator
{
	import de.punini.stephanlindauer.template.controller.event.TemplateEvent;
	import de.punini.stephanlindauer.template.view.view.TemplateView;

	import org.robotlegs.mvcs.Mediator;

	import flash.events.MouseEvent;

	/**
	 * @author stephan lindauer
	 */
	public class TemplateMediator extends Mediator
	{
		[Inject]
		public var view:TemplateView;

		override public function onRegister():void
		{
			eventMap.mapListener(view, MouseEvent.CLICK, onClick);
		}

		protected function onClick(event:MouseEvent):void
		{
			dispatch(new TemplateEvent(TemplateEvent.TYPE_OF_EVENT));
		}
	}
}
