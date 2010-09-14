package com.kaltura.vo
{
	import com.kaltura.vo.KalturaFilter;

	[Bindable]
	public dynamic class KalturaConversionProfileFilter extends KalturaFilter
	{
		public var idEqual : int = int.MIN_VALUE;

		public var idIn : String;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('idEqual');
			arr.push('idIn');
			return arr;
		}
	}
}
