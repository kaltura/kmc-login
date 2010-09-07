package com.kaltura.commands.systemuser_systemuser
{
	import com.kaltura.delegates.systemuser_systemuser.Systemuser_systemuserSetNewPasswordDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systemuser_systemuserSetNewPassword extends KalturaCall
	{
		public var filterFields : String;
		public function Systemuser_systemuserSetNewPassword( userId : int,password : String )
		{
			service= 'systemuser_systemuser';
			action= 'setNewPassword';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'userId' );
			valueArr.push( userId );
			keyArr.push( 'password' );
			valueArr.push( password );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systemuser_systemuserSetNewPasswordDelegate( this , config );
		}
	}
}
