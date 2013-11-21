package components.WeightedOverlayRasterItemSlider
{
	public class OverlayReclass
	{
		public function OverlayReclass(defaultReclassValue:int=5)
		{
			this._reclassValue = defaultReclassValue;
		}
	
		public static const RECLASS_TYPENAME : String = "unknown";
		
		private var _reclassValue	: int = 5;

		private var _classEnabled	: Boolean = true;
		
		/** The reclass value for the slider.
		 *  Defaults to 5. **/
		[Inspectable(enumeration="1,2,3,4,5,6,7,8,9")]
		public function set reclassValue(value:int):void
		{
			_reclassValue = value;
		}
		[Bindable]
		public function get reclassValue():int
		{
			return _reclassValue;
		}

		/** How this class should appear as the label of a listitem or checkbox **/
		public function get label():String
		{
			return null;
		}

		/** JSON for the class range represented by this object.
		 *  Format should be "&lt;lower_val&gt;, &lt;upper_val&gt;"
		 **/
		public function get inputClassRange():Array {
			return null;
		}

		/** Whether to generate input range and value JSON for this range at all. 
		 * 	Default is true. **/
		[Bindable]
		public function get classEnabled():Boolean
		{
			return _classEnabled;
		}

		public function set classEnabled(value:Boolean):void
		{
			_classEnabled = value;
		}

	}
}