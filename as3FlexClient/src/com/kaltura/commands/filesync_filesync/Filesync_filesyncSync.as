package com.kaltura.commands.filesync_filesync
{
	import com.kaltura.vo.File;
	import com.kaltura.delegates.filesync_filesync.Filesync_filesyncSyncDelegate;
	import com.kaltura.net.KalturaCall;

	public class Filesync_filesyncSync extends KalturaCall
	{
		public var filterFields : String;
		public function Filesync_filesyncSync( fileSyncId : int,fileData : file )
		{
			service= 'filesync_filesync';
			action= 'sync';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'fileSyncId' );
			valueArr.push( fileSyncId );
 			keyValArr = kalturaObject2Arrays(fileData,'fileData');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Filesync_filesyncSyncDelegate( this , config );
		}
	}
}
