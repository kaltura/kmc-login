package com.kaltura.commands.systempartner_systempartner
{
	import com.kaltura.delegates.systempartner_systempartner.Systempartner_systempartnerGetConfigurationDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systempartner_systempartnerGetConfiguration extends KalturaCall
	{
		public var filterFields : String;
		public function Systempartner_systempartnerGetConfiguration( partnerId : int )
		{
			service= 'systempartner_systempartner';
			action= 'getConfiguration';

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
			delegate = new Systempartner_systempartnerGetConfigurationDelegate( this , config );
		}
	}
}
