package com.kaltura.commands.systempartner_systempartner
{
	import com.kaltura.vo.KalturaSystemPartnerConfiguration;
	import com.kaltura.delegates.systempartner_systempartner.Systempartner_systempartnerUpdateConfigurationDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systempartner_systempartnerUpdateConfiguration extends KalturaCall
	{
		public var filterFields : String;
		public function Systempartner_systempartnerUpdateConfiguration( partnerId : int,configuration : KalturaSystemPartnerConfiguration )
		{
			service= 'systempartner_systempartner';
			action= 'updateConfiguration';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'partnerId' );
			valueArr.push( partnerId );
 			keyValArr = kalturaObject2Arrays(configuration,'configuration');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systempartner_systempartnerUpdateConfigurationDelegate( this , config );
		}
	}
}
