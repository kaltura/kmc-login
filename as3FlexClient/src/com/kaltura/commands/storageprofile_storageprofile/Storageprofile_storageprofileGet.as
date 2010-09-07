package com.kaltura.commands.storageprofile_storageprofile
{
	import com.kaltura.delegates.storageprofile_storageprofile.Storageprofile_storageprofileGetDelegate;
	import com.kaltura.net.KalturaCall;

	public class Storageprofile_storageprofileGet extends KalturaCall
	{
		public var filterFields : String;
		public function Storageprofile_storageprofileGet( storageProfileId : int )
		{
			service= 'storageprofile_storageprofile';
			action= 'get';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'storageProfileId' );
			valueArr.push( storageProfileId );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Storageprofile_storageprofileGetDelegate( this , config );
		}
	}
}
