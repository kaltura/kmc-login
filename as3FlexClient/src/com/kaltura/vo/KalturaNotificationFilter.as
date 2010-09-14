package com.kaltura.vo
{
	import com.kaltura.vo.KalturaBaseJobFilter;

	[Bindable]
	public dynamic class KalturaNotificationFilter extends KalturaBaseJobFilter
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}
