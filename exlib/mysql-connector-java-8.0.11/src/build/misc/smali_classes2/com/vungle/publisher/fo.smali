<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */

// ------------------------------------------------------------------------

/**
 * SQLSRV Utility Class
 *
 * @category	Database
 * @author		ExpressionEngine Dev Team
 * @link		http://codeigniter.com/user_guide/database/
 */
class CI_DB_sqlsrv_utility extends CI_DB_utility {

	/**
	 * List databases
	 *
	 * @access	private
	 * @return	bool
	 */
	function _list_databases()
	{
		return "EXEC sp_helpdb"; // Can also be: EXEC sp_databases
	}

	// --------------------------------------------------------------------

	/**
	 * Optimize table query
	 *
	 * Generates a platform-specific query so that a table can be optimized
	 *
	 * @access	private
	 * @param	string	the table name
	 * @return	object
	 */
	function _optimize_table($table)
	{
		return FALSE; // Is this supported in MS SQL?
	}

	// --------------------------------------------------------------------

	/**
	 * Repair table query
	 *
	 * Generates a platform-specific query so that a table can be repaired
	 *
	 * @access	private
	 * @param	string	the table name
	 * @return	object
	 */
	function _repair_table($table)
	{
		return FALSE; // Is this supported in MS SQL?
	}

	// --------------------------------------------------------------------

	/**
	 * MSSQL Export
	 *
	 * @access	private
	 * @param	array	Preferences
	 * @return	mixed
	 */
	function _backup($params = array())
	{
		// Currently unsupported
		return $this->db->display_error('db_unsuported_feature');
	}

}

/* End of file mssql_utility.php */
/* Location: ./system/database/drivers/mssql/mssql_utility.php */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     package com.samarthsoft.prabandhak.webapp.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.samarthsoft.prabandhak.common.RequestCommon;
import com.samarthsoft.prabandhak.form.entities.ApplicationSession;

public class RequestInterceptor extends HandlerInterceptorAdapter {

    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object object) throws Exception {
    	ApplicationSession applicationSession = RequestCommon.getApplicationSession(request);
        
        if (applicationSession == null && !checkWhetherGivenRequest(request, "/login.htm")){
            response.sendRedirect("login.htm");
            return false;
        }
        
    	return true;
    }
    
    private boolean checkWhetherGivenRequest(HttpServletRequest request,String urlToCheck){
    	return request.getRequestURL().toString().endsWith(urlToCheck);
    }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/media/images/favicon.ico" />
		
		<title>DataTables example</title>
		<style type="text/css" title="currentStyle">
			@import "../../media/css/demo_page.css";
			@import "../../media/css/demo_table.css";
		</style>
		<script type="text/javascript" language="javascript" src="../../media/js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="../../media/js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable( {
					"bProcessing": true,
					"bServerSide": true,
					"sAjaxSource": "scripts/server_processing.php"
				} );
			} );
		</script>
	</head>
	<body id="dt_example">
		<div id="container">
			<div class="full_width big">
				DataTables server-side processing example
			</div>
			
			<h1>Preamble</h1>
			<p>There are many ways to get your data into DataTables, and if you are working with seriously large databases, you might want to consider using the server-side options that DataTables provides. Basically all of the paging, filtering, sorting etc that DataTables does can be handed off to a server (or any other data source - Google Gears or Adobe Air for example!) and DataTables is just an events and display module.</p>
			<p>The example here shows a very simple display of the CSS data (used in all my other examples), but in this instance coming from the server on each draw. Filtering, multi-column sorting etc all work as you would expect.</p>
			
			<h1>Live example</h1>
			<div id="dynamic">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
			<th width="20%">Rendering engine</th>
			<th width="25%">Browser</th>
			<th width="25%">Platform(s)</th>
			<th width="15%">Engine version</th>
			<th width="15%">CSS grade</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="5" class="dataTables_empty">Loading data from server</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</tfoot>
</table>
			</div>
			<div class="spacer"></div>
			
			
			<h1>Initialisation code</h1>
			<pre class="brush: js;">$(document).ready(function() {
	$('#example').dataTable( {
		"bProcessing": true,
		"bServerSide": true,
		"sAjaxSource": "scripts/server_processing.php"
	} );
} );</pre>
		<style type="text/css">
			@import "../examples_support/syntax/css/shCore.css";
		</style>
			<script type="text/javascript" language="javascript" src="../examples_support/syntax/js/shCore.js"></script>
			
			<h1>Server r