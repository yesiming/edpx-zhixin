{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f"><h3 class="t"><a target="_blank" href="{%$tplData.url%}" style="font-size:16px;">{%$tplData.title|highlight:0%}</a><span class="tsuf tsuf-op" data="{title : '{%$tplData.title|escape:'javascript'%}', link :'{%$tplData.url|escape:'javascript'%}'}"></span></h3> <style >.op_temp_auto{width:100%;} .op_temp_auto td{font-size:13px;}</style><div class="op_temp_auto"><table cellspacing="0" cellpadding="0"><tr><td style="line-height:20px;padding-top:2px;"><div><span style="line-height:1.3em;">{%$tplData.content1|highlight:0%}</span> </div>{%if $tplData.content2!=""%}<div><span style="line-height:1.3em;">{%$tplData.content2|highlight:0%}</span></div>{%/if%}{%if $tplData.content3!=""%}<span style="line-height:1.3px;">{%$tplData.content3|highlight:0%}</span>{%/if%}{%if $tplData.link[0]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[0]['linkurl']%}">{%$tplData.link[0]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[1]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[1]['linkurl']%}" style="margin-left:8px;">{%$tplData.link[1]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[2]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[2]['linkurl']%}" style="margin-left:8px;">{%$tplData.link[2]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[3]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[3]['linkurl']%}" style="margin-left:8px;">{%$tplData.link[3]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[4]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[4]['linkurl']%}" style="margin-left:8px;">{%$tplData.link[4]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[5]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[5]['linkurl']%}" style="margin-left:8px;">{%$tplData.link[5]['linkcontent']|highlight:0%}</a><br>{%/if%}</td></tr><tr><td style="line-height:18px;">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</td></tr></table></div></td></tr>{%/block%}