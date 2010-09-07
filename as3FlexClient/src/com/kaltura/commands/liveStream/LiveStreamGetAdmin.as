package com.kaltura.commands.liveStream
{
	import com.kaltura.delegates.liveStream.LiveStreamGetAdminDelegate;
	import com.kaltura.net.KalturaCall;

	public class LiveStreamGetAdmin extends KalturaCall
	{
		public var filterFields : String;
		public function LiveStreamGetAdmin( entryId : String,version : int=-1 )
		{
			service= 'liveStream';
			action= 'getAdmin';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'entryId' );
			valueArr.push( entryId );
			keyArr.push( 'version' );
			valueArr.push( version );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new LiveStreamGetAdminDelegate( this , config );
		}
	}
}
