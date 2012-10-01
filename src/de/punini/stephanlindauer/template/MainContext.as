package de.punini.stephanlindauer.template
{
	import de.punini.stephanlindauer.template.controller.command.StartupCommand;
	import de.punini.stephanlindauer.template.model.model.ITemplateModel;
	import de.punini.stephanlindauer.template.model.model.TemplateModel;
	import de.punini.stephanlindauer.template.view.mediator.TemplateMediator;
	import de.punini.stephanlindauer.template.view.view.TemplateView;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.core.IContext;
	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author stephan lindauer
	 */
	public class MainContext extends Context implements IContext
	{
		public function MainContext(contextView:DisplayObjectContainer)
		{
			super(contextView);
		}

		override public function startup():void
		{
			commandMap.mapEvent(ContextEvent.STARTUP, StartupCommand, ContextEvent, true);

			injector.mapSingleton(TemplateModel);
			injector.mapSingletonOf(ITemplateModel, TemplateModel);

			mediatorMap.mapView(TemplateView, TemplateMediator);

			super.startup();

			dispatchEvent(new ContextEvent(ContextEvent.STARTUP));
		}
	}
}