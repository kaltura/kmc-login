package com.kaltura.commands.storageprofile_storageprofile
{
	import com.kaltura.delegates.storageprofile_storageprofile.Storageprofile_storageprofileUpdateStatusDelegate;
	import com.kaltura.net.KalturaCall;

	public class Storageprofile_storageprofileUpdateStatus extends KalturaCall
	{
		public var filterFields : String;
		public function Storageprofile_storageprofileUpdateStatus( storageId : int,status : int )
		{
			service= 'storageprofile_storageprofile';
			action= 'updateStatus';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'storageId' );
			valueArr.push( storageId );
			keyArr.push( 'status' );
			valueArr.push( status );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Storageprofile_storageprofileUpdateStatusDelegate( this , config );
		}
	}
}
