package com.kaltura.delegates.filesyncImportBatch
{
	import flash.utils.getDefinitionByName;
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;
	public class FilesyncImportBatchAddMediaInfoDelegate extends WebDelegateBase
	{
		public function FilesyncImportBatchAddMediaInfoDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

	}
}