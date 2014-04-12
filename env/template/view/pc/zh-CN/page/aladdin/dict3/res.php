<?php 
  class CssJs_Util_dict3
   {
      private static $cssStr = '.op_dict3_chinese_result span{float:left;height:24px;overflow:hidden;line-height:24px;margin-bottom:12px;}.op_dict3_chinsetxt{font-size:14px;}.op_dict3_howread{font-size:24px;font-family:arial;_font-family:"lucida sans unicode";}.op_dict3_marginBottom{margin-bottom:12px;}.op_dict3_marginRight{margin-right:15px;}.op_dict3_chinese_result_table{line-height:21px;height:21px;overflow:hidden;}.op_dict3_chinese_result_table .op_dict_text1{float:left;min-width:55px;_width:55px;color:#666;position:relative;top:-1px;_top:-2px;white-space:nowrap;}.op_dict3_chinese_result_table .op_dict_text2{float:left;margin:0;padding:0;}.op_dict3_english_result_table{line-height:21px;}.op_dict3_english_result_table .op_dict_text1{float:left;min-width:30px;_width:30px;color:#666;white-space:nowrap;}.op_dict3_english_result_table .op_dict_text2{float:left;margin:0;padding:0;}.op_dict3_chineselong_result{font-size:24px;line-height:24px;width:518px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;}.op_dict_fmp_flash_div{height:1px;width:1px;position:absolute;right:0;overflow:hidden;}.op_dict3_how_read,.op_dict3_mp3_play{display:block;width:14px;height:11px;overflow:hidden;background:url(http://www.baidu.com/aladdin/img/dic3/iconall.gif) no-repeat;text-decoration:none;margin-right:8px;margin-top:7px;*margin-top:9px;_margin-top:11px;}.op_dict3_mp3_play{background-position:0 -14px;}.op_dict3_font24{font-size:24px;font-family:arial;_font-family:"lucida sans unicode";height:24px;line-height:24px;_height:28px;_line-height:28px;}.op_dict3_font14{font-size:14px;position:relative;*top:-2px;}.op_dict3_how_read a,.op_dict3_how_read span{display:block;}.op_dict3_how_read a{width:15px;height:15px;}.op_dict3_lineone_result,.op_dict3_linetwo_result{display:none;width:518px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;}.op_dict3_linetwo_result{width:480px;}.op_dict3_lineone_result span{margin-right:6px;color:#999;}.op_dict3_linetwo_result,.op_dict3_more_example{padding-left:38px;}.op_dict3_more_example a{outline:none;}.op_dict3_lineone_result,.op_dict3_etext{word-break:normal;}.op_dict3_more_example{display:none;}.op_dict3_read1{float:left;}.op_dict3_read2{float:left;}.op_dict3_readline{line-height:24px;margin-bottom:12px;}.op_dict3_read1 span{height:24px;line-height:24px;float:left;_height:28px;_line-height:28px;}.op_dict_table td{white-space:nowrap;}.op_dict3_lineone_result,.op_dict3_linetwo_result{height:20px;overflow:hidden;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("dict3",function(){A.setup(function(){var f=this;var j=false;var i=f.data.flag;var c=false;try{c=external.max_version}catch(g){}var h={findq:function(e){return f.find("."+e)[0]},g:function(e){return document.getElementById(e)},f:function(e){this.findq(e.cid).innerHTML=this.fm(this.b.isIE?\'<object id="#{id}" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="#{width}" height="#{height}" align="#{align}"><param name="movie" value="#{movie}" /><param name="allowScriptAccess" value="#{allowScriptAccess}" /><param name="allowNetworking" value="#{allowNetworking}" /><param name="flashVars" value="#{flashVars}" /><param name="wmode" value="#{wmode}" /><param name="scale" value="#{scale}" /><param name="salign" value="#{salign}" /></object>\':\'<embed id="#{id}" src="#{movie}" allowScriptAccess="#{allowScriptAccess}" allowNetworking="#{allowNetworking}" flashVars="#{flashVars}" width="#{width}" height="#{height}" align="#{align}" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" wmode="#{wmode}" scale="#{scale}" salign="#{salign}" />\',e)},fm:function(l,e){if(arguments.length){if(typeof(e)=="object"){l=l.replace(/#\\{([^\\{\\}]+)\\}/g,function(o,m){var n=e[m];if(typeof n=="function"){n=n(m)}return typeof(n)=="undefined"?"":n})}else{if(typeof(e)!="undefined"){for(var k=arguments.length-2;k>-1;k--){l=l.replace(new RegExp("#\\\\{"+k+"\\\\}","g"),arguments[k+1])}}}}return l},b:{isIE:/msie/i.test(navigator.userAgent),isFF:/firefox/i.test(navigator.userAgent),isMaxthon:c},mo:function(){var k={};var e=arguments.length;for(var n=0;n<e;n++){var m=arguments[n];for(var l in m){if(k[l]!=null){continue}k[l]=arguments[n][l]}}return k}};window.FMP={g:h.g,findq:h.findq,f:h.f,b:h.b,fm:h.fm,_flash:null,loaded:false,cfg:{cid:"op_dict_fmp_flash_div",id:"op_dict_fmp_flash_"+(+new Date()),width:100,height:100,align:"middle",movie:"flash/fmp.swf?v=090105a",allowScriptAccess:"always",allowNetworking:"all",salign:"lt",wmode:"window",scale:"noscale",flashVars:"_instanceName=FMP"},load:function(){if(this.b.isMaxthon){this.cfg.movie+="&r="+Math.random()}this.f(this.cfg)},getUrl:function(){this._flash._getVar("url")},setUrl:function(e){this._flash._setVar("url",e)},getVolume:function(){return this._flash._getVar("volume")*100},setVolume:function(e){this._flash._setVar("volume",e/100)},getMute:function(){this._flash._getVar("mute")},setMute:function(e){this._flash._setVar("mute",e)},getCurrentPosition:function(){return this._flash._getVar("currentPosition")/1000},setCurrentPosition:function(e){this._flash._setVar("currentPosition",e*1000)},getDuration:function(){return this._flash._getVar("duration")/1000},getDownloadProgress:function(){return this._flash._getVar("downloadProgress")*100},play:function(){this._flash._play()},pause:function(){this._flash._pause()},stop:function(){this._flash._stop()},_onLoad:function(){this.loaded=true;this._flash=this.g(this.cfg.id);if(this.onLoad){this.onLoad()}},_onPlayStateChange:function(e){if(this.onPlayStateChange){this.onPlayStateChange(e)}}};FMP.cfg.movie="http://dict.baidu.com/static/flash/fmp.swf?v=090105a";FMP.load();var b="bd_cb_dict3_"+(+new Date());$.ajax({url:"http://sensearch.baidu.com/sensearch?wd="+encodeURIComponent(f.data.wd)+"&cb="+b,jsonpCallback:b,dataType:"jsonp",success:function(l){if(j){return}if(l.err_no==0&&l.liju_result){var r=l.liju_result;var k=r[0];var q=r[1];var e="",m="";for(var n=0;n<k.length-2;n++){if(i){e+=k[n][0]}else{e+=k[n][0]+" "}}e+=k[k.length-2][0];e+=k[k.length-1][0];for(var n=0;n<q.length-2;n++){if(i){m+=q[n][0]+" "}else{m+=q[n][0]}}m+=q[q.length-2][0];m+=q[q.length-1][0];if(f.find(".op_dict3_lineone_result")[0]&&f.find(".op_dict3_linetwo_result")[0]){var o=f.find(".op_dict3_lineone_result")[0],p=f.find(".op_dict3_linetwo_result")[0];o.innerHTML="<span>[例句]</span>"+e;p.innerHTML=m;o.style.display="block";p.style.display="block";f.find(".op_dict3_more_example")[0].style.display="block"}}},error:function(){f.find(".op_dict3_more_example")[0].style.display="none"}});var a=function(k){try{if(FMP.loaded){FMP.stop();FMP.setUrl(k);FMP.play()}else{FMP.onLoad=function(){FMP.setUrl(k);FMP.play()}}}catch(l){}};f.find(".op_dict3_more_example_link")[0]&&f.find(".op_dict3_more_example_link").click(function(){f.find(".more_example_form")[0].submit()});var d=f.find(".op_dict3_how_read");d.length>0&&d.each(function(k,e){$(e).mousedown(function(){$(e).addClass("op_dict3_mp3_play")}).mouseup(function(){$(e).removeClass("op_dict3_mp3_play")}).click(function(){a(e.getAttribute("url1")||e.getAttribute("url2"))})});this.dispose=function(){window.FMP=null;if(!j){j=true}}})});';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
      public static function getHeadCss()
      {
         if (!is_string(self::$cssStr))
         {
            return '';
         }
         return self::$cssStr;
      }
      
      public static function getFootJs()
      {
         if (!is_string(self::$jsStr))
         {
            return '';
         }
         return self::$jsStr;
      }
      
      // 返回数组
      public static function getCssUI()
      {
		 if ( empty(self::$uiList) ) return array();

         $arr = @explode(',', self::$uiList);
         if (!is_array($arr))
         {
            $arr = array();
         }
         return $arr;
      }
   }