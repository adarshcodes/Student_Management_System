<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Troubleshooting : CodeIgniter User Guide</title>

<style type='text/css' media='all'>@import url('../userguide.css');</style>
<link rel='stylesheet' type='text/css' media='all' href='../userguide.css' />

<script type="text/javascript" src="../nav/nav.js"></script>
<script type="text/javascript" src="../nav/prototype.lite.js"></script>
<script type="text/javascript" src="../nav/moo.fx.js"></script>
<script type="text/javascript" src="../nav/user_guide_menu.js"></script>

<meta http-equiv='expires' content='-1' />
<meta http-equiv= 'pragma' content='no-cache' />
<meta name='robots' content='all' />
<meta name='author' content='ExpressionEngine Dev Team' />
<meta name='description' content='CodeIgniter User Guide' />

</head>
<body>

<!-- START NAVIGATION -->
<div id="nav"><div id="nav_inner"><script type="text/javascript">create_menu('../');</script></div></div>
<div id="nav2"><a name="top"></a><a href="javascript:void(0);" onclick="myHeight.toggle();"><img src="../images/nav_toggle_darker.jpg" width="154" height="43" border="0" title="Toggle Table of Contents" alt="Toggle Table of Contents" /></a></div>
<div id="masthead">
<table cellpadding="0" cellspacing="0" border="0" style="width:100%">
<tr>
<td><h1>CodeIgniter User Guide Version 2.2.0</h1></td>
<td id="breadcrumb_right"><a href="../toc.html">Table of Contents Page</a></td>
</tr>
</table>
</div>
<!-- END NAVIGATION -->


<!-- START BREADCRUMB -->
<table cellpadding="0" cellspacing="0" border="0" style="width:100%">
<tr>
<td id="breadcrumb">
<a href="http://codeigniter.com/">CodeIgniter Home</a> &nbsp;&#8250;&nbsp;
<a href="../index.html">User Guide Home</a> &nbsp;&#8250;&nbsp;
Trouble Shooting
</td>
<td id="searchbox"><form method="get" action="http://www.google.com/search"><input type="hidden" name="as_sitesearch" id="as_sitesearch" value="ellislab.com/codeigniter/user-guide/" />Search User Guide&nbsp; <input type="text" class="input" style="width:200px;" name="q" id="q" size="31" maxlength="255" value="" />&nbsp;<input type="submit" class="submit" name="sa" value="Go" /></form></td>
</tr>
</table>
<!-- END BREADCRUMB -->

<br clear="all" />


<!-- START CONTENT -->
<div id="content">

<h1>Troubleshooting</h1>

<p>If you find that no matter what you put in your URL only your default page is loading, it might be that your server
does not support the PATH_INFO variable needed to serve search-engine friendly URLs.

As a first step, open your <dfn>application/config/config.php</dfn> file and look for the <kbd>URI Protocol</kbd>
information. It will recommend that you try a couple alternate settings.  If it still doesn't work after you've tried this you'll need
to force CodeIgniter to add a question mark to your URLs.  To do this open your <kbd>application/config/config.php</kbd> file and change this:</p>

<code>$config['index_page'] = "index.php";</code>

<p>To this:</p>

<code>$config['index_page'] = "index.php?";</code>


</div>
<!-- END CONTENT -->


<div id="footer">
<p>
Previous Topic:&nbsp;&nbsp;<a href="upgrading.html">Upgrading from a Previous Version</a>
&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;
<a href="#top">Top of Page</a>&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;
<a href="../index.html">User Guide Home</a>&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;
Next Topic:&nbsp;&nbsp;<a href="../overview/at_a_glance.html">CodeIgniter at a Glance</a>
</p>
<p><a href="http://codeigniter.com">CodeIgniter</a> &nbsp;&middot;&nbsp; Copyright &#169; 2006 - 2014 &nbsp;&middot;&nbsp; <a href="http://ellislab.com/">EllisLab, Inc.</a></p>
</div>

</body>
</html>                                                                                                                                                                                                                                                                         package com.samarthsoft.prabandhak.webapp.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.samarthsoft.prabandhak.entities.LoginInformation;
import com.samarthsoft.prabandhak.utilities.LoginControllerUtility;

public class UserDetailsAuthenticationService implements UserDetailsService {

	@Autowired
	private LoginControllerUtility loginControllerUtility;
	
	public CustomUserDetails loadUserByUsername(String userName) throws UsernameNotFoundException, DataAccessException {
		LoginInformation loginInformation = loginControllerUtility.getLoginInformationByUserName(userName);
		if(loginInformation!=null)
			return new CustomUserDetails(loginInformation);
		return new CustomUserDetails(new LoginInformation());
	}
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               // DATA_TEMPLATE: dom_data
oTest.fnStart( "oLanguage.sInfo" );

$(document).ready( function () {
	/* Check the default */
	var oTable = $('#example').dataTable();
	var oSettings = oTable.fnSettings();
	
	oTest.fnTest( 
		"Info language is 'Showing _START_ to _END_ of _TOTAL_ entries' by default",
		null,
		function () { return oSettings.oLanguage.sInfo == "Showing _START_ to _END_ of _TOTAL_ entries"; }
	);
	
	oTest.fnTest( 
		"Info language default is in the DOM",
		null,
		function () { return document.getElementById('example_info').innerHTML = "Showing 1 to 10 of 57 entries"; }
	);
	
	
	oTest.fnTest( 
		"Info language can be defined - without any macros",
		function () {
			oSession.fnRestore();
			oTable = $('#example').dataTable( {
				"oLanguage": {
					"sInfo": "unit test"
				}
			} );
			oSettings = oTable.fnSettings();
		},
		function () { return oSettings.oLanguage.sInfo == "unit test"; }
	);
	
	oTest.fnTest( 
		"Info language definition is in the DOM",
		null,
		function () { return document.getElementById('example_info').innerHTML = "unit test"; }
	);
	
	oTest.fnTest( 
		"Info language can be defined - with macro _START_ only",
		function () {
			oSession.fnRestore();
			$('#example').dataTable( {
				"oLanguage": {
					"sInfo": "unit _START_ test"
				}
			} );
		},
		function () { return document.getElementById('example_info').innerHTML = "unit 1 test"; }
	);
	
	oTest.fnTest( 
		"Info language can be defined - with macro _END_ only",
		function () {
			oSession.fnRestore();
			$('#example').dataTable( {
				"oLanguage": {
					"sInfo": "unit _END_ test"
				}
			} );
		},
		function () { return document.getElementById('example_info').innerHTML = "unit 10 test"; }
	);
	
	oTest.fnTest( 
		"Info language can be defined - with macro _TOTAL_ only",
		function () {
			oSession.fnRestore();
			$('#example').dataTable( {
				"oLanguage": {
					"sInfo": "unit _END_ test"
				}
			} );
		},
		function () { return document.getElementById('example_info').innerHTML = "unit 57 test"; }
	);
	
	oTest.fnTest( 
		"Info language can be defined - with macros _START_ and _END_",
		function () {
			oSession.fnRestore();
			$('#example').dataTable( {
				"oLanguage": {
					"sInfo": "unit _START_ _END_ test"
				}
			} );
		},
		function () { return document.getElementById('example_info').innerHTML = "unit 1 10 test"; }
	);
	
	oTest.fnTest( 
		"Info language can be defined - with macros _START_, _END_ and _TOTAL_",
		function () {
			oSession.fnRestore();
			$('#example').dataTable( {
				"oLanguage": {
					"sInfo": "unit _START_ _END_ _TOTAL_ test"
				}
			} );
		},
		function () { return document.getElementById('example_info').innerHTML = "unit 1 10 57 test"; }
	);
	
	
	oTest.fnComplete();
} );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ?PNG

   IHDR  !      3?9d   tEXtSoftware Adobe ImageReadyq?e<  	bIDATx??]??%5?*?<??b?
i????	$"2