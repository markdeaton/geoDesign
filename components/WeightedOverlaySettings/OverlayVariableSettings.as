package components.WeightedOverlaySettings
{
	import mx.collections.ArrayCollection;

	public class OverlayVariableSettings
	{
		public function OverlayVariableSettings(
			title:String=null, 
			startWeightPct:Number=NaN, 
			rasterId:Number=NaN,
			weightParamName:String=null,
			rasterIdParamName:String=null,
			inputRangesParamName:String=null, 
			outputValuesParamName:String=null,
			reclassInfos:ArrayCollection=null)
		{
			this.title = title;
			this.startWeightPct = startWeightPct;
			this.rasterId = rasterId;
			this.weightParamName = weightParamName;
			this.rasterIdParamName = rasterIdParamName;
			this.inputRangesParamName = inputRangesParamName;
			this.outputValuesParamName = outputValuesParamName;
			this.reclassInfos = reclassInfos;
		}
		
		private var _title				: String;
		private var _startWeightPct		: Number;
		private var _rasterId			: Number;
		private var _weightParamName	: String;
		private var _rasterIdParamName	: String;
		private var _inputRangesParamName: String;
		private var _outputValsParamName: String;
		private var _reclassInfos		: ArrayCollection;

		/** The title or visible description of the variable **/
		public function get title():String
		{
			return _title;
		}

		public function set title(value:String):void
		{
			_title = value;
		}

		/** The percent value initially associated with this variable **/
		public function get startWeightPct():Number
		{
			return _startWeightPct;
		}

		public function set startWeightPct(value:Number):void
		{
			_startWeightPct = value;
		}

		/** An array of OverlayReclass objects for the reclassification values for this variable **/
		public function get reclassInfos():ArrayCollection
		{
			return _reclassInfos;
		}

		public function set reclassInfos(value:ArrayCollection):void
		{
			_reclassInfos = value;
		}

		public function get inputRangesParamName():String
		{
			return _inputRangesParamName;
		}

		public function set inputRangesParamName(value:String):void
		{
			_inputRangesParamName = value;
		}

		public function get outputValuesParamName():String
		{
			return _outputValsParamName;
		}

		public function set outputValuesParamName(value:String):void
		{
			_outputValsParamName = value;
		}

		public function get rasterId():Number
		{
			return _rasterId;
		}

		public function set rasterId(value:Number):void
		{
			_rasterId = value;
		}

		public function get rasterIdParamName():String
		{
			return _rasterIdParamName;
		}

		public function set rasterIdParamName(value:String):void
		{
			_rasterIdParamName = value;
		}

		public function get weightParamName():String
		{
			return _weightParamName;
		}

		public function set weightParamName(value:String):void
		{
			_weightParamName = value;
		}


	}
}