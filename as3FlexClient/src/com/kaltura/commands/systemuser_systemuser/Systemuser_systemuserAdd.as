package com.kaltura.commands.systemuser_systemuser
{
	import com.kaltura.vo.KalturaSystemUser;
	import com.kaltura.delegates.systemuser_systemuser.Systemuser_systemuserAddDelegate;
	import com.kaltura.net.KalturaCall;

	public class Systemuser_systemuserAdd extends KalturaCall
	{
		public var filterFields : String;
		public function Systemuser_systemuserAdd( systemUser : KalturaSystemUser )
		{
			service= 'systemuser_systemuser';
			action= 'add';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(systemUser,'systemUser');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Systemuser_systemuserAddDelegate( this , config );
		}
	}
}
