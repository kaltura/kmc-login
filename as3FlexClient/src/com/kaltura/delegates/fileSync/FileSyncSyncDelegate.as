package com.kaltura.delegates.fileSync
{
	import flash.utils.getDefinitionByName;
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;
	public class FileSyncSyncDelegate extends WebDelegateBase
	{
		public function FileSyncSyncDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

	}
}
