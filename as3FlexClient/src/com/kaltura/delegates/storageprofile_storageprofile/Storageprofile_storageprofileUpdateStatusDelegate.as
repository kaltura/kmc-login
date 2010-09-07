package com.kaltura.delegates.storageprofile_storageprofile
{
	import flash.utils.getDefinitionByName;
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;
	public class Storageprofile_storageprofileUpdateStatusDelegate extends WebDelegateBase
	{
		public function Storageprofile_storageprofileUpdateStatusDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

		override public function parse( result : XML ) : *
		{
			return '';
		}

	}
}
