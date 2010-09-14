package com.kaltura.vo
{
	import com.kaltura.vo.BaseFlexVo;
	[Bindable]
	public dynamic class KalturaFileSync extends BaseFlexVo
	{
		public var id : int = int.MIN_VALUE;

		public var partnerId : int = int.MIN_VALUE;

		public var objectType : int = int.MIN_VALUE;

		public var objectId : String;

		public var version : String;

		public var objectSubType : int = int.MIN_VALUE;

		public var dc : String;

		public var original : int = int.MIN_VALUE;

		public var createdAt : int = int.MIN_VALUE;

		public var updatedAt : int = int.MIN_VALUE;

		public var readyAt : int = int.MIN_VALUE;

		public var syncTime : int = int.MIN_VALUE;

		public var status : int = int.MIN_VALUE;

		public var fileType : int = int.MIN_VALUE;

		public var linkedId : int = int.MIN_VALUE;

		public var linkCount : int = int.MIN_VALUE;

		public var fileRoot : String;

		public var filePath : String;

		public var fileSize : int = int.MIN_VALUE;

		public var fileUrl : String;

		public var fileContent : String;

		public var fileDiscSize : int = int.MIN_VALUE;

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}
	}
}
