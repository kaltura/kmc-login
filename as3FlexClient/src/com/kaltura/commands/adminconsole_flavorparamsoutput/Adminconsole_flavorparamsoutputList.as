package com.kaltura.commands.adminconsole_flavorparamsoutput
{
	import com.kaltura.vo.KalturaFlavorParamsOutputFilter;
	import com.kaltura.vo.KalturaFilterPager;
	import com.kaltura.delegates.adminconsole_flavorparamsoutput.Adminconsole_flavorparamsoutputListDelegate;
	import com.kaltura.net.KalturaCall;

	public class Adminconsole_flavorparamsoutputList extends KalturaCall
	{
		public var filterFields : String;
		public function Adminconsole_flavorparamsoutputList( filter : KalturaFlavorParamsOutputFilter=null,pager : KalturaFilterPager=null )
		{
			if(filter== null)filter= new KalturaFlavorParamsOutputFilter();
			if(pager== null)pager= new KalturaFilterPager();
			service= 'adminconsole_flavorparamsoutput';
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
			delegate = new Adminconsole_flavorparamsoutputListDelegate( this , config );
		}
	}
}
