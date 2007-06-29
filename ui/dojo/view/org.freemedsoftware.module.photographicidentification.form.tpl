<!--{* Smarty *}-->
<!--{*
 // $Id$
 //
 // Authors:
 //      Jeff Buchbinder <jeff@freemedsoftware.org>
 //
 // Copyright (C) 1999-2007 FreeMED Software Foundation
 //
 // This program is free software; you can redistribute it and/or modify
 // it under the terms of the GNU General Public License as published by
 // the Free Software Foundation; either version 2 of the License, or
 // (at your option) any later version.
 //
 // This program is distributed in the hope that it will be useful,
 // but WITHOUT ANY WARRANTY; without even the implied warranty of
 // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 // GNU General Public License for more details.
 //
 // You should have received a copy of the GNU General Public License
 // along with this program; if not, write to the Free Software
 // Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*}-->

<script type="text/javascript">
	dojo.require( 'dojo.event.*' );

	var m = {
		handleResponse: function ( data ) {
			if (data) {
				freemedMessage( "<!--{t}-->Added m.<!--{/t}-->", "INFO" );
				freemedPatientContentLoad( 'org.freemedsoftware.ui.patient.overview.default?patient=<!--{$patient}-->' );
			} else {
				dojo.widget.byId('ModuleFormCommitChangesButton').enable();
			}
		}
	};

</script>

<h3><!--{t}-->Photographic Identification<!--{/t}--></h3>

<!--{include file='org.freemedsoftware.widget.uploadfiles.tpl' varname='file' completedCode="freemedPatientContentLoad('org.freemedsoftware.ui.patient.overview.default?patient=$patient');" relayPoint="$relay/org.freemedsoftware.module.photographicidentification.UploadPhotoID?param0=$patient" DEBUG="1"}-->

<div align="center">
        <table border="0" style="width:200px;">
        <tr><td align="center">
	        <button dojoType="Button" id="ModuleFormCommitChangesButton" widgetId="ModuleFormCommitChangesButton">
	                <div><!--{t}-->Commit Changes<!--{/t}--></div>
	        </button>
        </td><td align="left">
        	<button dojoType="Button" id="ModuleFormCancelButton" widgetId="ModuleFormCancelButton" onClick="freemedPatientContentLoad('org.freemedsoftware.ui.patient.overview.default?patient=<!--{$patient}-->');">
        	        <div><!--{t}-->Cancel<!--{/t}--></div>
        	</button>
        </td></tr></table>
</div>

