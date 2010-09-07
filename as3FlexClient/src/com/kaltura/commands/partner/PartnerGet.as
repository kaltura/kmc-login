package com.kaltura.commands.partner
{
	import com.kaltura.delegates.partner.PartnerGetDelegate;
	import com.kaltura.net.KalturaCall;

	public class PartnerGet extends KalturaCall
	{
		public var filterFields : String;
		public function PartnerGet( partnerId : int )
		{
			service= 'partner';
			action= 'get';

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
			delegate = new PartnerGetDelegate( this , config );
		}
	}
}
