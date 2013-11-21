package components.WeightedOverlayRasterItemSlider
{
	public class OverlayReclassDiscrete extends OverlayReclass
	{
		public static const RECLASS_TYPENAME	: String = "discrete";
		
		private var _value	: Number;
		private var _label	: String;
		
		public function OverlayReclassDiscrete(label:String=null, value:Number=NaN, defaultReclassValue:int=5)
		{
			super(defaultReclassValue);
			this.label = label;
			this.value = value;
		}
				
		public override function get label():String
		{
			return (_label == null) ? _value.toString() : _label;
		}
		public function set label(value:String):void {
			_label = value;
		}
		
		// For a discrete value, we still treat it as a zero-length range
		override public function get inputClassRange():Array
		{
			return new Array(_value, _value);
		}
		
		
		/** The value for this remap class. **/
		public function get value():Number
		{
			return _value;
		}

		public function set value(value:Number):void
		{
			_value = value;
		}

	}
}