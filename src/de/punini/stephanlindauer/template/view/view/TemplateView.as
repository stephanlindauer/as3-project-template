package de.punini.stephanlindauer.template.view.view
{
	import flash.display.Sprite;
	/**
	 * @author stephan lindauer
	 */
	public class TemplateView extends Sprite
	{
		public function TemplateView (){
			graphics.beginFill(0xff0000, 1);
			graphics.drawRect(0, 0, 100, 100);
			graphics.endFill();
		}
	}
}
