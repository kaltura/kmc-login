package com.kaltura.commands.documents
{
	import com.kaltura.vo.File;
	import com.kaltura.delegates.documents.DocumentsUploadDelegate;
	import com.kaltura.net.KalturaCall;

	public class DocumentsUpload extends KalturaCall
	{
		public var filterFields : String;
		public function DocumentsUpload( fileData : file )
		{
			service= 'document_documents';
			action= 'upload';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(fileData,'fileData');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new DocumentsUploadDelegate( this , config );
		}
	}
}
