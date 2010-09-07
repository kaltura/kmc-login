package com.kaltura.commands.adminconsole_entryadmin
{
	import com.kaltura.delegates.adminconsole_entryadmin.Adminconsole_entryadminGetDelegate;
	import com.kaltura.net.KalturaCall;

	public class Adminconsole_entryadminGet extends KalturaCall
	{
		public var filterFields : String;
		public function Adminconsole_entryadminGet( entryId : String,version : int=-1 )
		{
			service= 'adminconsole_entryadmin';
			action= 'get';

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
			delegate = new Adminconsole_entryadminGetDelegate( this , config );
		}
	}
}
