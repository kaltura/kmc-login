package com.kaltura.commands.storageprofile_storageprofile
{
	import com.kaltura.vo.KalturaStorageProfile;
	import com.kaltura.delegates.storageprofile_storageprofile.Storageprofile_storageprofileUpdateDelegate;
	import com.kaltura.net.KalturaCall;

	public class Storageprofile_storageprofileUpdate extends KalturaCall
	{
		public var filterFields : String;
		public function Storageprofile_storageprofileUpdate( storageProfileId : int,storageProfile : KalturaStorageProfile )
		{
			service= 'storageprofile_storageprofile';
			action= 'update';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'storageProfileId' );
			valueArr.push( storageProfileId );
 			keyValArr = kalturaObject2Arrays(storageProfile,'storageProfile');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Storageprofile_storageprofileUpdateDelegate( this , config );
		}
	}
}
