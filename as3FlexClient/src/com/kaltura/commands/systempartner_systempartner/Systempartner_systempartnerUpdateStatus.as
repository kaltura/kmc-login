package com.kaltura.commands.systempartner_systempartner
{
	import com.kaltura.delegates.systempartner_systempartner.Systempartner_systempartnerUpdateStatusDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systempartner_systempartnerUpdateStatus extends KalturaCall
	{
		public var filterFields : String;
		public function Systempartner_systempartnerUpdateStatus( partnerId : int,status : int )
		{
			service= 'systempartner_systempartner';
			action= 'updateStatus';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'partnerId' );
			valueArr.push( partnerId );
			keyArr.push( 'status' );
			valueArr.push( status );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systempartner_systempartnerUpdateStatusDelegate( this , config );
		}
	}
}
