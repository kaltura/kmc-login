package com.kaltura.commands.systemuser_systemuser
{
	import com.kaltura.delegates.systemuser_systemuser.Systemuser_systemuserGetByEmailDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systemuser_systemuserGetByEmail extends KalturaCall
	{
		public var filterFields : String;
		public function Systemuser_systemuserGetByEmail( email : String )
		{
			service= 'systemuser_systemuser';
			action= 'getByEmail';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'email' );
			valueArr.push( email );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systemuser_systemuserGetByEmailDelegate( this , config );
		}
	}
}
