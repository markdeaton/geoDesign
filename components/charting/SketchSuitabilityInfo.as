package components.charting
{
	public class SketchSuitabilityInfo
	{
		private var _label	: String;
		public var pixelCount: uint;
		public var area: Number;
		
		private var _sketchClassColor	: uint;
		
		public function SketchSuitabilityInfo(label:String, sketchClassColor:uint, sketchClassPixelCount:uint=0, area:Number=0.0)
		{
			this._label = label;
			this.pixelCount = sketchClassPixelCount;
			this.area = area;
			this._sketchClassColor = sketchClassColor;
		}

		public function get label():String
		{
			return _label;
		}

		public function get sketchClassColor():uint
		{
			return _sketchClassColor;
		}


	}
}