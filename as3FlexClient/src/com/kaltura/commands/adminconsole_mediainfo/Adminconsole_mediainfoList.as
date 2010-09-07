package com.kaltura.commands.adminconsole_mediainfo
{
	import com.kaltura.vo.KalturaMediaInfoFilter;
	import com.kaltura.vo.KalturaFilterPager;
	import com.kaltura.delegates.adminconsole_mediainfo.Adminconsole_mediainfoListDelegate;
	import com.kaltura.net.KalturaCall;

	public class Adminconsole_mediainfoList extends KalturaCall
	{
		public var filterFields : String;
		public function Adminconsole_mediainfoList( filter : KalturaMediaInfoFilter=null,pager : KalturaFilterPager=null )
		{
			if(filter== null)filter= new KalturaMediaInfoFilter();
			if(pager== null)pager= new KalturaFilterPager();
			service= 'adminconsole_mediainfo';
			action= 'list';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(filter,'filter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
 			keyValArr = kalturaObject2Arrays(pager,'pager');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Adminconsole_mediainfoListDelegate( this , config );
		}
	}
}
