package components.Slider
{
	import flash.events.MouseEvent;
	
	import spark.components.HSlider;
	
	public class HSlider_noMouseWheel extends HSlider
	{
		public function HSlider_noMouseWheel()
		{
			super();
		}
		override protected function system_mouseWheelHandler(event:MouseEvent):void
		{
		}
	}
}