package com.kaltura.commands.systemuser_systemuser
{
	import com.kaltura.delegates.systemuser_systemuser.Systemuser_systemuserVerifyPasswordDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systemuser_systemuserVerifyPassword extends KalturaCall
	{
		public var filterFields : String;
		public function Systemuser_systemuserVerifyPassword( email : String,password : String )
		{
			service= 'systemuser_systemuser';
			action= 'verifyPassword';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'email' );
			valueArr.push( email );
			keyArr.push( 'password' );
			valueArr.push( password );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systemuser_systemuserVerifyPasswordDelegate( this , config );
		}
	}
}
