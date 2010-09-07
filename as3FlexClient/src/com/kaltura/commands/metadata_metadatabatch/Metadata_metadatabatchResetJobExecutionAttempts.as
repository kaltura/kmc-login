package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchResetJobExecutionAttemptsDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchResetJobExecutionAttempts extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchResetJobExecutionAttempts( id : int,lockKey : KalturaExclusiveLockKey,jobType : int )
		{
			service= 'metadata_metadatabatch';
			action= 'resetJobExecutionAttempts';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'jobType' );
			valueArr.push( jobType );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchResetJobExecutionAttemptsDelegate( this , config );
		}
	}
}
