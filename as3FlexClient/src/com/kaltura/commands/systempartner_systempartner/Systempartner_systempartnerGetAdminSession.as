package com.kaltura.commands.systempartner_systempartner
{
	import com.kaltura.delegates.systempartner_systempartner.Systempartner_systempartnerGetAdminSessionDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systempartner_systempartnerGetAdminSession extends KalturaCall
	{
		public var filterFields : String;
		public function Systempartner_systempartnerGetAdminSession( partnerId : int )
		{
			service= 'systempartner_systempartner';
			action= 'getAdminSession';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'partnerId' );
			valueArr.push( partnerId );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systempartner_systempartnerGetAdminSessionDelegate( this , config );
		}
	}
}
