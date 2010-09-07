package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaMediaInfo;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchAddMediaInfoDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchAddMediaInfo extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchAddMediaInfo( mediaInfo : KalturaMediaInfo )
		{
			service= 'metadata_metadatabatch';
			action= 'addMediaInfo';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(mediaInfo,'mediaInfo');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchAddMediaInfoDelegate( this , config );
		}
	}
}
