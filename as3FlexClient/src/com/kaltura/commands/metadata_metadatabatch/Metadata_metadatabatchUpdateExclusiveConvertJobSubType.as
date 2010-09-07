package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchUpdateExclusiveConvertJobSubTypeDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchUpdateExclusiveConvertJobSubType extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchUpdateExclusiveConvertJobSubType( id : int,lockKey : KalturaExclusiveLockKey,subType : int )
		{
			service= 'metadata_metadatabatch';
			action= 'updateExclusiveConvertJobSubType';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'subType' );
			valueArr.push( subType );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchUpdateExclusiveConvertJobSubTypeDelegate( this , config );
		}
	}
}
