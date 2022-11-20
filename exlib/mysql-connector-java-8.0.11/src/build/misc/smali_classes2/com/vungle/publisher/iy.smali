re instead used.</p>

<p>You can match literal values or you can use two wildcard types:</p>

<p><strong>(:num)</strong> will match a segment containing only numbers.<br />
<strong>(:any)</strong> will match a segment containing any character.
</p>

<p class="important"><strong>Note:</strong> Routes will run in the order they are defined.
Higher routes will always take precedence over lower ones.</p>

<h2>Examples</h2>

<p>Here are a few routing examples:</p>

<code>$route['journals'] = "blogs";</code>
<p>A URL containing the word "journals" in the first segment will be remapped to the "blogs" class.</p>

<code>$route['blog/joe'] = "blogs/users/34";</code>
<p>A URL containing the segments blog/joe will be remapped to the "blogs" class and the "users" method.  The ID will be set to "34".</p>

<code>$route['product/(:any)'] = "catalog/product_lookup";</code>
<p>A URL with "product" as the first segment, and anything in the second will be remapped to the "catalog" class and the  "product_lookup" method.</p>

<code>$route['product/(:num)'] = "catalog/product_lookup_by_id/$1";</code>
<p>A URL with "product" as the first segment, and a number in the second will be remapped to the "catalog" class and the "product_lookup_by_id" method passing in the match as a variable to the function.</p>

<p class="important"><strong>Important:</strong> Do not use leading/trailing slashes.</p>

<h2>Regular Expressions</h2>

<p>If you prefer you can use regular expressions to define your routing rules.  Any valid regular expression is allowed, as are back-references.</p>

<p class="important"><strong>Note:</strong>&nbsp; If you use back-references you must use the dollar syntax rather than the double backslash syntax.</p>

<p>A typical RegEx route might look something like this:</p>

<code>$route['products/([a-z]+)/(\d+)'] = "$1/id_$2";</code>

<p>In the above example, a URI similar to <dfn>products/shirts/123</dfn> would instead call the <dfn>shirts</dfn> controller class and the <dfn>id_123</dfn> function.</p>

<p>You can also mix and match wildcards with regular expressions.</p>

<h2>Reserved Routes</h2>

<p>There are two reserved routes:</p>

<code>$route['default_controller'] = 'welcome';</code>

<p>This route indicates which controller class should be loaded if the URI contains no data, which will be the case
when people load your root URL. In the above example, the "welcome" class would be loaded.  You
are encouraged to always have a default route otherwise a 404 page will appear by default.</p>

<code>$route['404_override'] = '';</code>

<p>This route indicates which controller class should be loaded if the requested controller is not found. It will override the default 404
error page. It won't affect to the <samp>show_404()</samp> function, which will continue loading the default <dfn>error_404.php</dfn> file at <var>application/errors/error_404.php</var>.</p>

<p class="important"><strong>Important:</strong>&nbsp; The reserved routes must come before any wildcard or regular expression routes.</p>

</div>
<!-- END CONTENT -->


<div id="footer">
<p>
Previous Topic:&nbsp;&nbsp;<a href="common_functions.html">Common Functions</a>
&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;
<a href="#top">Top of Page</a>&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;
<a href="../index.html">User Guide Home</a>&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;
Next Topic:&nbsp;&nbsp;<a href="errors.html">Error Handling</a>
</p>
<p><a href="http://codeigniter.com">CodeIgniter</a> &nbsp;&middot;&nbsp; Copyright &#169; 2006 - 2014 &nbsp;&middot;&nbsp; <a href="http://ellislab.com/">EllisLab, Inc.</a></p>
</div>

</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  1�ھg��
�&g�5�*�nFD__ͥ��0W|�=�ek�E��`?bl,%���&i��w���W�63E�&�v�	����}���L (Ql�rS`�{��e������Q�jC/x��0԰�ve{Y�jH�}���c�|9��:���\[��W�6�jY������iO$4x�S��ܢcH�����݂A��nW����9�b�g�۵o��fXc{eDs]�Xƥ9�d&g�4bJ��`w���u��F0�6��2m"m}93s;t�X�Y��x�����s~^cX��>��.9K��^����&��\��F�~ϑ7ll[R��Ia���۝o��:����6�6��䌗��ȝ�k���#cl#Lp�8���n�Bȗ0��ۄ*�@Կ�9�u�t���X��Ɲ�7	[X�VTbT�~�N�p�]�qZ�C��4�eZ��yK-+��)�asx�w��/��7nS��}���Լ�mZ*yS/t�P���zX��X�?�
�,6U��}R�K��u��`�4��b?ݥ��n��,���:8'8)���.NR�n3�y/5�t����{�gYa�s?�3�$L�A��綾))!�	a;(�Q&�"f)Q�s8��Q��)��%�1���\����	�ӕ�b��!N?�ǝ��,�ׯ\�3�Α$|.��1<0Myb7x��S��sd>S��R�L�	A^�KA����+%��2�*x,�{���� Vk	u,6J�eb�d>%-ͭ�����p'8���q9�ZkM�qn�U<�M_��� �,����H�Ӧ�����L��~}J-7��k��o��+�xQ�r-s��.�%�����*d���-�{)1��~*'nn�{��6N{γ<��)\gj&�������t���vU��$���uR�N��G����VS��\(I��q�R��`�{�����C�ب�FvS�>=�&�^&.�� ��g\����m�B
Q��<ڠ�ɯu�t�͂���P�ߑ�>�g*R4 �l���*�ǧ�D�,H�&��G�sfh�>��zY�䬸ֺX6�fZ�O/��b�Q��L���	����s�rڤpރp���u�J[��^���ZkP/�X�8��f?ӹ]ɹNj^���>Ң좔d^ʬ>+�}�m�j�'��D����k��P>ŕ�7uu�\��ĩ\d�g�bXp����^��S�'�5u��09���0�`�� `O%���'�*�YY���qD�z��&Y`]a	c��/�5N6����+�'&�%u���~�H�or�9θ��M��.��;��8Dx�-O\/��7fI�?p_�{_m'yY����>.~-�t�R�-B�V���b��Pg�W��%59u�⊝τOm	ͭ"�>�n�n�<.����3�ڞ�� ��cB_v�˭�h�����ak&�0.$�W	9�V~���D<Q�f���Yr�J�R��;Xî�nf�v�q�I=Oݦ���w�p�?s�{p���ڟz�Zr����YHp1w����	��f�����!y��Ƴ���9ۧ�������E�/�<թ7���!�H��0g�0i�YB�
(�ȝ�*C��]���
�c`�����N�蔮��]"�)q*�5_�z_���~��e�CUD�ϮHU�j>�	*]	��B��TBQ*��~�BBF\�H-S�u	��繠�(K���9ʚJZS}�*,�NJ�E����y8���ڢ��υ�>/�A�z��D����AMU�����Nx�2�5��������W5
��Z[V���d,�2��PaV�����X�jj�b�KB������� �k��鬸ԭ��fcL�z	��Lw�w�*�ҥ>R�����+}[��U��sh�\����1�S�Pi�>��.b���5�!v��?�}�;�%�<߮�]M�_S�Q��є����3%�9��5ߍ�3��ą����5�X�P��M�m���ڏ!