package com.kaltura.delegates.metadata
{
	import flash.utils.getDefinitionByName;
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;
	public class MetadataAddFromFileDelegate extends WebDelegateBase
	{
		public function MetadataAddFromFileDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

	}
}
