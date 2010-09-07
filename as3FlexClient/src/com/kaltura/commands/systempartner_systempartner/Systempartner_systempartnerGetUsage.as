package com.kaltura.commands.systempartner_systempartner
{
	import com.kaltura.vo.KalturaPartnerFilter;
	import com.kaltura.vo.KalturaSystemPartnerUsageFilter;
	import com.kaltura.vo.KalturaFilterPager;
	import com.kaltura.delegates.systempartner_systempartner.Systempartner_systempartnerGetUsageDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systempartner_systempartnerGetUsage extends KalturaCall
	{
		public var filterFields : String;
		public function Systempartner_systempartnerGetUsage( partnerFilter : KalturaPartnerFilter=null,usageFilter : KalturaSystemPartnerUsageFilter=null,pager : KalturaFilterPager=null )
		{
			if(partnerFilter== null)partnerFilter= new KalturaPartnerFilter();
			if(usageFilter== null)usageFilter= new KalturaSystemPartnerUsageFilter();
			if(pager== null)pager= new KalturaFilterPager();
			service= 'systempartner_systempartner';
			action= 'getUsage';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(partnerFilter,'partnerFilter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
 			keyValArr = kalturaObject2Arrays(usageFilter,'usageFilter');
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
			delegate = new Systempartner_systempartnerGetUsageDelegate( this , config );
		}
	}
}
