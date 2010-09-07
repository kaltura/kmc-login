package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchLogConversionDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchLogConversion extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchLogConversion( flavorAssetId : String,data : String )
		{
			service= 'metadata_metadatabatch';
			action= 'logConversion';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'flavorAssetId' );
			valueArr.push( flavorAssetId );
			keyArr.push( 'data' );
			valueArr.push( data );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchLogConversionDelegate( this , config );
		}
	}
}
