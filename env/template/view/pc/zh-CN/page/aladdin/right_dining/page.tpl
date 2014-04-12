{%extends 'c_right_base.tpl'%} {%block name='content'%}<div class="c-abstract"><div class="cr-title c-gap-bottom-small"> <span title="{%$tplData.title|escape%}">{%$tplData.title|escape%}</span> </div> {%$width = 'opr_dining_price'%} {%foreach $tplData.dining as $item%} {%if $item['price']|string_display_len > 3%} {%$width = 'opr_dining_pricelen'%} {%/if%} {%/foreach%} {%foreach $tplData.dining as $item%} {%if $item['level']%} {%$level = $item['level'] * 20%} {%else%} {%$level = 0%} {%/if%} {%if $item['price']%} {%$price = $item['price']%} {%else%} {%$price = '暂无'%} {%/if%} <div class="opr_dining_list"> <div class="c-clearfix"><div class="opr_dining_fl {%$width|escape%}"><span class="opr_dining_fl ">{%$price|escape%}</span>人均:{%if $price != '暂无'%}￥{%/if%}</div><a href="{%$item['linkUrl']%}" target="_blank" title="{%$item['name']|escape%}">{%$item['name']|limitlen:28|escape%}</a></div> <div class="c-clearfix  c-gap-bottom-small"><i class="opr_dining_fl c-icon c-icon-star-gray opr_dining_star"><i class="c-icon c-icon-star" style="width:{%$level|escape%}%"></i></i><span>{%$item['type']|limitlen:28|escape%}</span></div> </div> {%/foreach%}</div>{%/block%}