package components.WeightedOverlayRasterItemSlider
{
	public class OverlayReclassRange extends OverlayReclass
	{
		public static const RECLASS_TYPENAME : String = "range";
		
		private var _startValue	: Number;
		private var _endValue	: Number;
		private var _startLabel	: String;
		private var _endLabel	: String;
		
		public function OverlayReclassRange(startLabel:String=null, endLabel:String=null, startValue:Number=NaN, endValue:Number=NaN, defaultReclassValue:int=5)
		{
			super(defaultReclassValue);
			this.startLabel = startLabel;
			this.endLabel = endLabel;
			this.startValue = startValue;
			this.endValue = endValue;
		}
		
		public function set endLabel(value:String):void
		{
			_endLabel = value;
		}

		public function set startLabel(value:String):void
		{
			_startLabel = value;
		}

		public override function get label():String
		{
			var sStart:String = (_startLabel == null) ? _startValue.toString() : _startLabel;
			var sEnd:String   = (_endLabel == null )  ? _endValue.toString()   : _endLabel;
			return sStart + " - " + sEnd;
		}
		
		
		/** Start value in the input value remap range. **/
		public function get startValue():Number
		{
			return _startValue;
		}

		public function set startValue(value:Number):void
		{
			_startValue = value;
		}

		/** End value in the input value remap range. **/
		public function get endValue():Number
		{
			return _endValue;
		}

		public function set endValue(value:Number):void
		{
			_endValue = value;
		}
		
		override public function get inputClassRange():Array
		{
			return new Array(startValue, endValue);
		}
		

	}
}