package de.punini.stephanlindauer.template.controller.command
{
	import de.punini.stephanlindauer.template.controller.event.TemplateEvent;
	import de.punini.stephanlindauer.template.model.model.TemplateModel;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author stephan lindauer
	 */
	public class StartupCommand extends Command
	{
		[Inject]
		public var event:TemplateEvent;
		
		[Inject]
		public var model:TemplateModel;

		override public function execute():void
		{
			//model.changeStuff
		}
	}
}
