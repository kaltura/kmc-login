package com.kaltura.commands.systemuser_systemuser
{
	import com.kaltura.delegates.systemuser_systemuser.Systemuser_systemuserDeleteDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systemuser_systemuserDelete extends KalturaCall
	{
		public var filterFields : String;
		public function Systemuser_systemuserDelete( userId : int )
		{
			service= 'systemuser_systemuser';
			action= 'delete';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'userId' );
			valueArr.push( userId );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systemuser_systemuserDeleteDelegate( this , config );
		}
	}
}
