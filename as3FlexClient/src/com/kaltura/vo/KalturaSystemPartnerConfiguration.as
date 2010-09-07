package com.kaltura.vo
{
	import com.kaltura.vo.BaseFlexVo;
	[Bindable]
	public dynamic class KalturaSystemPartnerConfiguration extends BaseFlexVo
	{
		public var host : String;
		public var cdnHost : String;
		public var maxBulkSize : int = int.MIN_VALUE;
		public var partnerPackage : int = int.MIN_VALUE;
		public var liveStreamEnabled : Boolean;
		public var moderateContent : Boolean;
		override protected function setupPropertyList():void
		{
			super.setupPropertyList();
			propertyList.push('host');
			propertyList.push('cdnHost');
			propertyList.push('maxBulkSize');
			propertyList.push('partnerPackage');
			propertyList.push('liveStreamEnabled');
			propertyList.push('moderateContent');
		}
		public function getParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('host');
			arr.push('cdnHost');
			arr.push('maxBulkSize');
			arr.push('partnerPackage');
			arr.push('liveStreamEnabled');
			arr.push('moderateContent');
			return arr;
		}

		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('host');
			arr.push('cdnHost');
			arr.push('maxBulkSize');
			arr.push('partnerPackage');
			arr.push('liveStreamEnabled');
			arr.push('moderateContent');
			return arr;
		}

	}
}
