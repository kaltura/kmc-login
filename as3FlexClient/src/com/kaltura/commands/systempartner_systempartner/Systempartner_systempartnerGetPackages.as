package com.kaltura.commands.systempartner_systempartner
{
	import com.kaltura.delegates.systempartner_systempartner.Systempartner_systempartnerGetPackagesDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systempartner_systempartnerGetPackages extends KalturaCall
	{
		public var filterFields : String;
		public function Systempartner_systempartnerGetPackages(  )
		{
			service= 'systempartner_systempartner';
			action= 'getPackages';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systempartner_systempartnerGetPackagesDelegate( this , config );
		}
	}
}
