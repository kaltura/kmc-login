package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchFreeExclusiveConvertProfileJobDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchFreeExclusiveConvertProfileJob extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchFreeExclusiveConvertProfileJob( id : int,lockKey : KalturaExclusiveLockKey,resetExecutionAttempts : Boolean=false )
		{
			service= 'metadata_metadatabatch';
			action= 'freeExclusiveConvertProfileJob';

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
			delegate = new Metadata_metadatabatchFreeExclusiveConvertProfileJobDelegate( this , config );
		}
	}
}
