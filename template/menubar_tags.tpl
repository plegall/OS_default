{if isset($tab_system) && $tab_system && in_array($id, $tab_closed)}
<dt class="titre_acordeon">
{else}
<dt class="titre_acordeon_0">
{/if}
<a href="javascript:void(0);"><img src="{$ROOT_URL}{$themeconf.icon_dir}/menu/small_resizable.png" class="button_res" alt="[_]">{'Related tags'|@translate}</a></dt><dd>
	<div id="menuTagCloud">
		{foreach from=$block->data item=tag}
		<span>{strip}
			<a class="tagLevel{$tag.level}" href=
			{if isset($tag.U_ADD)}
				"{$tag.U_ADD}" title="{$pwg->l10n_dec('%d photo is also linked to current tags', '%d photos are also linked to current tags', $tag.counter)}" rel="nofollow">+
			{else}
				"{$tag.URL}" title="{'display photos linked to this tag'|@translate}">
			{/if}
				{$tag.name}</a></span>{/strip}
{* ABOVE there should be no space between text, </a> and </span> elements to avoid IE8 bug https://connect.microsoft.com/IE/feedback/ViewFeedback.aspx?FeedbackID=366567 *}
		{/foreach}
	</div>
</dd>
