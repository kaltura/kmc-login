package com.kaltura.commands.systemuser_systemuser
{
	import com.kaltura.delegates.systemuser_systemuser.Systemuser_systemuserGenerateNewPasswordDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systemuser_systemuserGenerateNewPassword extends KalturaCall
	{
		public var filterFields : String;
		public function Systemuser_systemuserGenerateNewPassword(  )
		{
			service= 'systemuser_systemuser';
			action= 'generateNewPassword';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systemuser_systemuserGenerateNewPasswordDelegate( this , config );
		}
	}
}
