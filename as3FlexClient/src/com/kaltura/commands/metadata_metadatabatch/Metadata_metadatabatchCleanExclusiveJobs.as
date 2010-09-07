package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchCleanExclusiveJobsDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchCleanExclusiveJobs extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchCleanExclusiveJobs(  )
		{
			service= 'metadata_metadatabatch';
			action= 'cleanExclusiveJobs';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchCleanExclusiveJobsDelegate( this , config );
		}
	}
}
