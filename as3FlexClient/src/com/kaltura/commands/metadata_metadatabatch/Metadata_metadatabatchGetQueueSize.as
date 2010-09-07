package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaWorkerQueueFilter;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchGetQueueSizeDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchGetQueueSize extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchGetQueueSize( workerQueueFilter : KalturaWorkerQueueFilter )
		{
			service= 'metadata_metadatabatch';
			action= 'getQueueSize';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(workerQueueFilter,'workerQueueFilter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchGetQueueSizeDelegate( this , config );
		}
	}
}
