package components.charting
{
	/** Holds info on classes of sketch polygons for charting **/
	[Bindable]
	public class SketchClassAreaInfo
	{
		/** Value in the subtype field for this category **/
		public var categoryValue	: int;
		public var label			: String;
		public var area				: Number;
		public var color			: uint;
		public var features			: Array;
		
		/** Creates a new sketch class info record.
		 * @param categoryValue The geodatabase subtype ID for this sketch feature
		 * @param label How this category will be labeled in pie and column charts
		 * @param color How this category will be colored in pie and column charts
		 * @param area The area (in map units) covered by all polygons in this sketch category/subtype
		 * @param features An array of graphics for the features in this sketch class (used when drilling down
		 *        by clicking on a category on a pie or column chart)
		 **/
		public function SketchClassAreaInfo(categoryValue:int=-1, label:String="", color:uint=0x000000, area:Number=0, features:Array=null)
		{
			this.categoryValue = categoryValue;
			this.label = label;
			this.area = area;
			this.color = color;
			this.features = features ? features : new Array();
		}
	}
}