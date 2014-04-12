{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$tplData.url=$tplData.titleUrl%}{%/block%}{%block name='content'%}<div class="c-row">{%if !$tplData.mapimg%} <p>{%$tplData.abs|limitlen:164|escape:'html'|highlight:0%}</p> <p> {%fe_fn_c_showurl%} </p>{%else if $tplData.schtitle%} <div class="c-span12" style="position:relative"> <a href="{%$tplData.url%}" target="_blank" class="op-mapcity-mapimg"> <img class="c-img c-img12" src="{%$tplData.mapimg%}" /> </a> <p class="op-mapcity-showurl"> {%fe_fn_c_showurl%} </p> </div> <div class="c-span12 c-span-last"> <p class="op-mapcity-btm op-mapcity-just">{%$tplData.abs|limitlen:78|escape:'html'|highlight:0%}</p> <p class="c-gap-bottom-small">{%$tplData.schtitle|limitlen:38|escape:'html'%}</p> <form  class="op-mapcity-form" name="opmap" target="_blank" method="post" action=""> <p> <span> <input class="c-input c-input12  op-mapcity-gray op-mapcity-input" value="{%$tplData.schabs|limitlen:78|escape:'html'%}" > </span> </p> <p class="c-gap-top op-mapcity-btm"> <a href="#" target="_blank"  onclick="return false;" class="c-btn c-btn-primary op-mapcity-submit">{%$tplData.submit%}</a> </p> </form> </div>{%else%} <div class="c-span6"> <a href="{%$tplData.url%}" target="_blank"> <img class="c-img c-img6" src="{%$tplData.mapimg%}" /> </a> </div> <div class="c-span18 c-span-last"> <p>{%$tplData.abs|limitlen:240|escape:'html'|highlight:0%}</p> <p>{%fe_fn_c_showurl%}</p> </div>{%/if%}</div><script type="text/javascript" >
A.setup({
    citycode : '{%$tplData.areacode%}',
	mapurl : '{%$tplData.mapurl%}',
	titleUrl : '{%$tplData.titleUrl%}',
	labelplace : '{%$tplData.labelplace%}'
});
</script>{%/block%}{%block name="foot"%}{%/block%}