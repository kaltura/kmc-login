package com.kaltura.commands.storageprofile_storageprofile
{
	import com.kaltura.vo.KalturaStorageProfile;
	import com.kaltura.delegates.storageprofile_storageprofile.Storageprofile_storageprofileAddDelegate;
	import com.kaltura.net.KalturaCall;

	public class Storageprofile_storageprofileAdd extends KalturaCall
	{
		public var filterFields : String;
		public function Storageprofile_storageprofileAdd( storageProfile : KalturaStorageProfile )
		{
			service= 'storageprofile_storageprofile';
			action= 'add';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(storageProfile,'storageProfile');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Storageprofile_storageprofileAddDelegate( this , config );
		}
	}
}
