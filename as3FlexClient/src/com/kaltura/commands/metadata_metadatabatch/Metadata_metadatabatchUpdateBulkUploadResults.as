package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchUpdateBulkUploadResultsDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchUpdateBulkUploadResults extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchUpdateBulkUploadResults( bulkUploadJobId : int )
		{
			service= 'metadata_metadatabatch';
			action= 'updateBulkUploadResults';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'bulkUploadJobId' );
			valueArr.push( bulkUploadJobId );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchUpdateBulkUploadResultsDelegate( this , config );
		}
	}
}
