package com.kaltura.vo
{
	import com.kaltura.vo.KalturaBaseEntryFilter;

	[Bindable]
	public dynamic class KalturaPlaylistFilter extends KalturaBaseEntryFilter
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}
