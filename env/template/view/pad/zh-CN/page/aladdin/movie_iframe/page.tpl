{%extends 'c_base.tpl'%} {%block name='content'%}<div> {%if $tplData.summary%} <p>{%$tplData.summary|limitlen:80|highlight:0%}</p> {%/if%} <div id="op_movie_iframe"></div></div><script >
    A.setup({"iframeSrc": "{%$tplData.iframeUrl|escape:'html'%}","fetchkey": "{%preg_replace('/^'|cat:$extData.resourceid|cat:'_/','',$extData.fetchkey)|escape%}","srcid":"{%$extData.resourceid%}"});
</script><script >A.setup(function() {var _this = this,bapp;var iframeSrc = _this.data.iframeSrc,iframeHeight=374;var appinfo_json = {app_id:{%if $tplData.appid%}{%$tplData.appid%}{%else%}''{%/if%},src:iframeSrc,height:374};A.use("renderIframe3",function(){bapp = A.ui.renderIframe3({container:'op_movie_iframe',relay : 'http://www.baidu.com/cache/app/aladdin/bd_aladdin_relay.html',zone:'app-list',width : 540,logParam : {"app_agent":"pad"}});bapp.render(appinfo_json,{});bapp.addEventListener("setHeight",function(e,o){iframeHeight = o.height;});});window['OP_MOVIE_IFRAME_HEIGHT'] = function(iframeHeight) {_this.find('#op_movie_iframe').style.height = iframeHeight+'px';_this.find('#op_movie_i{%*i*%}frame').getElementsByTagName('iframe')[0].style.height = iframeHeight+'px';};this.dispose = function(){window['OP_MOVIE_IFRAME_HEIGHT'] = function(){};bapp&&bapp.dispose&&bapp.dispose();};});</script>{%/block%}