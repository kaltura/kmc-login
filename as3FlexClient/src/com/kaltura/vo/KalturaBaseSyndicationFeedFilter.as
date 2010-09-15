package com.kaltura.vo
{
	import com.kaltura.vo.KalturaFilter;

	[Bindable]
	public dynamic class KalturaBaseSyndicationFeedFilter extends KalturaFilter
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}
