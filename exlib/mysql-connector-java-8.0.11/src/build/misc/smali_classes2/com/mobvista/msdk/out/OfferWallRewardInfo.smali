&nbsp;&nbsp;&nbsp;&nbsp;{<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this->load->model('Blog');<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$data['query'] = $this->Blog->get_last_ten_entries();<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this->load->view('blog', $data);<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
}</code>

<h2><a name="auto_load_model" id="auto_load_model"></a>Auto-loading Models</h2>
<p>If you find that you need a particular model globally throughout your  application, you can tell CodeIgniter to auto-load it during system  initialization.  This is done by opening the application/config/autoload.php file and adding the model to the autoload array.</p>


<h2><a name="conn"></a>Connecting to your Database</h2>

<p>When a model is loaded it does <strong>NOT</strong> connect automatically to your database.  The following options for connecting are available to you:</p>

<ul>
<li>You can connect using the standard database methods <a href="../database/connecting.html">described here</a>, either from within your Controller class or your Model class.</li>
<li>You can tell the model loading function to auto-connect by passing <kbd>TRUE</kbd> (boolean) via the third parameter,
and connectivity settings, as defined in your database config file will be used:

	<code>$this->load->model('<var>Model_name</var>', '', <kbd>TRUE</kbd>);</code>
