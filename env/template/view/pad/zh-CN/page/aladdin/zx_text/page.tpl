{%extends 'base.tpl'%} {%block name='content'%}<style>.op-zx-text{width:600px;font-size:15px;line-height:23px;color:#333}.op-zx-text h3,.op-zx-text h4{font-size:18px;font-weight:normal;margin:0 0 4px 0}.op-zx-text h4{font-weight:bold}.op-zx-text ul{margin-bottom:18px}.op-zx-text ul.op-zx-text-ul-last{margin-bottom:0}</style><div class="op-zx-text"> {%foreach $tplData.tips as $item%} <h4>{%$item.title%}</h4> {%if $item.label1%} <ul class="{%if $item@index == count($tplData.tips) - 1%}op-zx-text-ul-last{%/if%}"> {%if $item.label2%} {%for $ind=1 to 10%} {%$param="label{%$ind%}"%} {%if $item[$param]%} <li> {%build_search_url_limit_ubburl content=$item[$param]%}</li> {%else%} {%break%} {%/if%} {%/for%} {%else%} <li> {%build_search_url_limit_ubburl content=$item.label1%}</li> {%/if%} </ul> {%/if%} {%/foreach%}</div>{%/block%}