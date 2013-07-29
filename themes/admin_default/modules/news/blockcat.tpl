<!-- BEGIN: main -->
<div id="module_show_list">
	{BLOCK_CAT_LIST}
</div>
<br />
<a id="edit"></a>
<!-- BEGIN: error -->
<div class="quote" style="width:780px;">
	<blockquote class="error"><span>{ERROR}</span></blockquote>
</div>
<!-- END: error -->
<form action="{NV_BASE_ADMINURL}index.php" method="post">
	<input type="hidden" name ="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" />
	<input type="hidden" name ="{NV_OP_VARIABLE}" value="{OP}" />
	<input type="hidden" name ="bid" value="{bid}" />
	<input name="savecat" type="hidden" value="1" />
	<table class="tab1">
		<caption>{LANG.add_block_cat}</caption>
		<tfoot>
			<tr>
				<td class="center" colspan="2"><input name="submit1" type="submit" value="{LANG.save}" /></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td class="right"><strong>{LANG.name}: </strong></td>
				<td><input style="width: 650px" name="title" id="idtitle" type="text" value="{title}" maxlength="255" /></td>
			</tr>
			<tr>
				<td class="right"><strong>{LANG.alias}: </strong></td>
				<td><input style="width: 600px" name="alias" id="idalias" type="text" value="{alias}" maxlength="255" /> &nbsp; <img src="{NV_BASE_SITEURL}images/refresh.png" width="16" style="cursor: pointer; vertical-align: middle;" onclick="get_alias('blockcat', {bid});" alt="" height="16" /></td>
			</tr>
			<tr>
				<td class="right"><strong>{LANG.keywords}: </strong></td>
				<td><input style="width: 650px" name="keywords" type="text" value="{keywords}" maxlength="255" /></td>
			</tr>
			<tr>
				<td class="right top">
				<br />
				<strong>{LANG.description}</strong></td>
				<td><textarea style="width: 650px" name="description" cols="100" rows="5">{description}</textarea></td>
			</tr>
		</tbody>
	</table>
</form>
<!-- BEGIN: getalias -->
<script type="text/javascript">
	$("#idtitle").change(function() {
		get_alias("blockcat", '{bid}');
	});
</script>
<!-- END: getalias -->
<!-- END: main -->