package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaBulkUploadResult;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchAddBulkUploadResultDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchAddBulkUploadResult extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchAddBulkUploadResult( bulkUploadResult : KalturaBulkUploadResult )
		{
			service= 'metadata_metadatabatch';
			action= 'addBulkUploadResult';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(bulkUploadResult,'bulkUploadResult');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchAddBulkUploadResultDelegate( this , config );
		}
	}
}
