package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchFreeExclusiveRemoteConvertJobDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchFreeExclusiveRemoteConvertJob extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchFreeExclusiveRemoteConvertJob( id : int,lockKey : KalturaExclusiveLockKey,resetExecutionAttempts : Boolean=false )
		{
			service= 'metadata_metadatabatch';
			action= 'freeExclusiveRemoteConvertJob';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'resetExecutionAttempts' );
			valueArr.push( resetExecutionAttempts );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchFreeExclusiveRemoteConvertJobDelegate( this , config );
		}
	}
}
