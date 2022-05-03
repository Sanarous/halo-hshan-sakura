<#include "mermaid.ftl">
<!--<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>-->
<script src="${theme_base!}/assets/media/scripts/plugins.min.js?ver=${.now?long}"></script>
<script src="${theme_base!}/assets/media/scripts/main.min.js?ver=${.now?long}"></script>
<script src="https://cdn.jsdelivr.net/npm/velocity-animate@1.5.2/velocity.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/velocity-animate@1.5.2/velocity.ui.min.js"></script>

<#if settings.Aplayer?? && settings.Aplayer != ''>
    <script src="https://cdn.jsdelivr.net/npm/aplayer@1.10.1/dist/APlayer.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/meting@2/dist/Meting.min.js"></script>
<#else>
    <script type="text/javascript">
        // Smooth scroll to anchors
        var scroll = new SmoothScroll('[data-scroll]', {
            speed: 300,
            updateURL: false,
        })
    </script>
</#if>

<#-- 暗夜模式 -->
<#if settings.auto_night_mode!true>
    <script type="text/javascript">
        var nightModeStartTime = ${settings.night_mode_start_time?default('20')};
        var nightModeEndTime = ${settings.night_mode_end_time?default('6')};
    </script>
    <script src="${theme_base!}/assets/media/scripts/night-mode.min.js?ver=${.now?long}"></script>
</#if>

<#--  不蒜子统计  -->
<#if settings.visit_statistics!false>
    <script async src="https://cdn.jsdelivr.net/gh/Sanarous/files@master/js/busuanzi.pure.min.js"></script>
</#if>

<#-- katex-->
<#if settings.enabled_mathjax!true>
    <script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js"
            onload="if (document.getElementById('post-content') ) {renderMathInElement(document.getElementById('post-content'),katex_config)}"></script>
</#if>

<#-- gallery  -->
<script src="https://cdn.jsdelivr.net/npm/justifiedGallery@3.7.0/dist/js/jquery.justifiedGallery.min.js"></script>
<!--图片预览插件-->
<script data-pjax-viewer src="https://cdn.jsdelivr.net/npm/viewerjs@1.5.0/dist/viewer.min.js"></script>
<script data-gallery src="${theme_base!}/assets/media/scripts/gallery.min.js"></script>
<script type='text/javascript' src="https://cdn.jsdelivr.net/gh/Sanarous/files@master/js/linkcard.js"></script>
<script type='text/javascript' src="https://cdn.jsdelivr.net/gh/Sanarous/files@master/js/tabs.min.js"></script>

<#--  打赏  -->
<div class="qr-code-wrap" role="dialog">
    <div role="document" class="qr-code" style="transform-origin: 201px 294px;">
        <span class="closinglayer"><svg viewBox="64 64 896 896" focusable="false" class="" data-icon="close" width="1em"
                                        height="1em" fill="currentColor" aria-hidden="true"><path
                        d="M563.8 512l262.5-312.9c4.4-5.2.7-13.1-6.1-13.1h-79.8c-4.7 0-9.2 2.1-12.3 5.7L511.6 449.8 295.1 191.7c-3-3.6-7.5-5.7-12.3-5.7H203c-6.8 0-10.5 7.9-6.1 13.1L459.4 512 196.9 824.9A7.95 7.95 0 0 0 203 838h79.8c4.7 0 9.2-2.1 12.3-5.7l216.5-258.1 216.5 258.1c3 3.6 7.5 5.7 12.3 5.7h79.8c6.8 0 10.5-7.9 6.1-13.1L563.8 512z"></path></svg>
        </span>
        <div style="text-align: center;padding: 10px 0;">
            <#if settings.QR_code_zfb??>
                <img class="qr_code_zfb" src="${settings.QR_code_zfb!}"/>
            </#if>
            <#if settings.QR_code_wx??>
                <img class="qr_code_wx" src="${settings.QR_code_wx!}"/>
            </#if>
        </div>
        <#if settings.QR_code_zfb?? && settings.QR_code_wx??>
            <div class="switch-btn">
                <span class="zfb-btn">支付宝</span>
                <span class="wx-btn">微信</span>
            </div>
        </#if>
    </div>
</div>

<#--目录-->
<#if settings.post_toc!true>
    <script src="https://cdn.jsdelivr.net/npm/tocbot@4.4.4/dist/tocbot.min.js"></script>
</#if>

<#--  阅读进度条  -->
<script type="application/javascript">
    var displayReadProgress = <#if (settings.open_read_progress)??>${settings.open_read_progress?c}<#else>true</#if>;
</script>
<script src="${theme_base!}/assets/media/scripts/post.min.js?ver=${.now?long}"></script>
<style>
    /* 阅读进度的进度条颜色 */
    #readProgress .read-progress-bar {
        background: ${settings.progress_color?default('#2474b5')} !important;
        height: 0.1875rem;
    }
</style>

<#if settings.TimeStatistics??>
    <script type="text/javascript">
        // 建站时间统计
        function show_date_time() {
            if ($("#span_dt_dt").length > 0) {
                window.setTimeout("show_date_time()", 1000);
                BirthDay = new Date("${settings.TimeStatistics!}");
                today = new Date();
                timeold = (today.getTime() - BirthDay.getTime());
                sectimeold = timeold / 1000;
                secondsold = Math.floor(sectimeold);
                msPerDay = 24 * 60 * 60 * 1000;
                e_daysold = timeold / msPerDay;
                daysold = Math.floor(e_daysold);
                e_hrsold = (e_daysold - daysold) * 24;
                hrsold = Math.floor(e_hrsold);
                e_minsold = (e_hrsold - hrsold) * 60;
                minsold = Math.floor((e_hrsold - hrsold) * 60);
                seconds = Math.floor((e_minsold - minsold) * 60);
                //span_dt_dt.innerHTML = daysold + "天" + hrsold + "小时" + minsold + "分" + seconds + "秒";
                span_dt_dt.innerHTML = daysold + "天";
            }
        }

        show_date_time();
    </script>
</#if>

<#if settings.Custom_js_foot??>
    <script type="text/javascript">
        ${settings.Custom_js_foot!}
    </script>
</#if>

<#if settings.Custom_js_foot_src??>
    ${settings.Custom_js_foot_src!}
</#if>

<#if settings.pjax_enabled!false>
    <script src="https://cdn.jsdelivr.net/npm/pjax@0.2.8/pjax.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/Sanarous/files@master/twikoo.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/xzzai/static@master/js/jqcloud-1.0.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/Sanarous/files@master/js/prism.min.js"></script>
    <link type='text/css' rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Sanarous/files@master/css/prism.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.css">

    <script>
        var socialDisabled = '${settings.share_disabeld?default('')}';
        var pjax = new Pjax({
            elements: 'a[href]:not([href^="#"]):not([data-not-pjax]), form', // default is "a[href], form[action]"
            cacheBust: false,
            debug: false,
            selectors: [
                'title',
                '#page',
            ]
        });

        //在Pjax请求开始后触发
        document.addEventListener('pjax:send', function () {
            NProgress.start();
        });

        //在Pjax请求完成后触发
        document.addEventListener('pjax:complete', function (e) {
            NProgress.done();

            // 加载相册
            if ($("#page").find('.photos-page').length > 0) {
                photo.loadGallery();
                photo.showPhotos();
            }

            //重置图片懒加载
            echo.init({offset: 0,throttle: 0,unload: false,});
         
            han.initLazyLoad();
            // 整个页面延迟加载
            han.lazyLoad();

            // card 延迟加载
            han.lazyLoadCardItem();

            //重载
            if (typeof _hmt !== 'undefined') {
                // support 百度统计
                _hmt.push(['_trackPageview', location.pathname + location.search]);
            }
            if (typeof ga !== 'undefined') {
                // support google analytics
                ga('send', 'pageview', location.pathname + location.search);
            }

            // 菜单高亮
            han.highlightMenu(); 

            // 小屏幕菜单隐藏
            han.makeMenuInvisible();

            //  关闭搜索框
            $(".search-popup").velocity("transition.expandOut", { duration: 300 });

            // 重新加载 评论
            $('script[data-pjax-comment]').each(function () {
                $(this).parent().append($(this).remove());
            });
            
            //代码高亮
            $('pre').addClass("line-numbers");

            //心情页面处理
            var treeHoleBoxs = document.querySelectorAll('.tree-hole-box')
            if (treeHoleBoxs)
               for (var i = 0; i < treeHoleBoxs.length; i++) {
                var childrens = $(treeHoleBoxs[i]).children('p:empty')
                  for (var j = 0; j < childrens.length; j++)
                    childrens[j].remove()
            }

            var links = $('.post-content a')
            if (links)
               for (var i = 0; i < links.length; i++)
                  $(links[i]).attr('target', '_blank')
          
            if ($("#page").find('.post-page').length > 0) {
                window.removeEventListener('scroll', post.tocScroll, false);
                // 赞赏
                post.appreciate();

                // 初始化toc
                post.initToc()

                // 删除文章第一个 <ul>
                post.removeFirstUL()

                // 目录事件
                post.scrollTocFixed();

                // 搞一个阅读进度，为了提高准确度，数据都要实时获取
                post.readProgress();

                // 代码块
                self.Prism.highlightAll(event);
                post.loadHighlight();

                // 按钮事件
                post.appreciateModel()

                // 分享
                post.toggleSocialShare()

                // 图片预览
                post.initViewer()

                // 目录悬浮时间
                post.tocHover();

                //全屏代码块
                post.expandCode();
     
                //寻找LinkCard
                var LinkCards=document.getElementsByClassName('LinkCard');
		        if(LinkCards.length != 0){
		            var LinkCard=LinkCards[0];
		            var link=LinkCard.href;
		            var title=LinkCard.innerText;
		            LinkCard.innerHTML="<style type=text/css>.LinkCard,.LinkCard:hover{text-decoration:none;border:none!important;color:inherit!important}.LinkCard{position:relative;display:block;margin:1em auto;width:390px;box-sizing:border-box;border-radius:12px;max-width:100%;overflow:hidden;color:inherit;text-decoration:none}.ztext{word-break:break-word;line-height:1.6}.LinkCard-backdrop{position:absolute;top:0;left:0;right:0;bottom:0;background-repeat:no-repeat;-webkit-filter:blur(20px);filter:blur(20px);background-size:cover;background-position:center}.LinkCard,.LinkCard:hover{text-decoration:none;border:none!important;color:inherit!important}.LinkCard-content{position:relative;display:flex;align-items:center;justify-content:space-between;padding:12px;border-radius:inherit;background-color:rgba(246,246,246,0.88)}.LinkCard-text{overflow:hidden}.LinkCard-title{display:-webkit-box;-webkit-line-clamp:2;overflow:hidden;text-overflow:ellipsis;max-height:calc(16px * 1.25 * 2);font-size:16px;font-weight:500;line-height:1.25;color:#1a1a1a}.LinkCard-meta{display:flex;margin-top:4px;font-size:14px;line-height:20px;color:#999;white-space:nowrap}.LinkCard-imageCell{margin-left:8px;border-radius:6px}.LinkCard-image{display:block;width:60px;height:auto;border-radius:inherit}</style><span class=LinkCard-backdrop style=background-image:url(https://zhstatic.zhihu.com/assets/zhihu/editor/zhihu-card-default.svg)></span><span class=LinkCard-content><span class=LinkCard-text><span class=LinkCard-title>"+title+"</span><span class=LinkCard-meta><span style=display:inline-flex;align-items:center>​<svg class="+"'Zi Zi--InsertLink'"+" fill=currentColor viewBox="+"'0 0 24 24'"+" width=17 height=17><path d="+"'M6.77 17.23c-.905-.904-.94-2.333-.08-3.193l3.059-3.06-1.192-1.19-3.059 3.058c-1.489 1.489-1.427 3.954.138 5.519s4.03 1.627 5.519.138l3.059-3.059-1.192-1.192-3.059 3.06c-.86.86-2.289.824-3.193-.08zm3.016-8.673l1.192 1.192 3.059-3.06c.86-.86 2.289-.824 3.193.08.905.905.94 2.334.08 3.194l-3.059 3.06 1.192 1.19 3.059-3.058c1.489-1.489 1.427-3.954-.138-5.519s-4.03-1.627-5.519-.138L9.786 8.557zm-1.023 6.68c.33.33.863.343 1.177.029l5.34-5.34c.314-.314.3-.846-.03-1.176-.33-.33-.862-.344-1.176-.03l-5.34 5.34c-.314.314-.3.846.03 1.177z'"+" fill-rule=evenodd></path></svg></span>"+link+"</span></span><span class=LinkCard-imageCell><img class=LinkCard-image alt=图标 src=https://site-1258928558.cos.ap-guangzhou.myqcloud.com/linkcard.png></span></span>";

		         for (var i = LinkCards.length - 1; i >= 1; i--) {
		            LinkCard=LinkCards[i];
		            title=LinkCard.innerText;
		            link=LinkCard.href;
		            LinkCard.innerHTML="<span class=LinkCard-backdrop style=background-image:url(https://zhstatic.zhihu.com/assets/zhihu/editor/zhihu-card-default.svg)></span><span class=LinkCard-content><span class=LinkCard-text><span class=LinkCard-title>"+title+"</span><span class=LinkCard-meta><span style=display:inline-flex;align-items:center>​<svg class="+"'Zi Zi--InsertLink'"+" fill=currentColor viewBox="+"'0 0 24 24'"+" width=17 height=17><path d="+"'M6.77 17.23c-.905-.904-.94-2.333-.08-3.193l3.059-3.06-1.192-1.19-3.059 3.058c-1.489 1.489-1.427 3.954.138 5.519s4.03 1.627 5.519.138l3.059-3.059-1.192-1.192-3.059 3.06c-.86.86-2.289.824-3.193-.08zm3.016-8.673l1.192 1.192 3.059-3.06c.86-.86 2.289-.824 3.193.08.905.905.94 2.334.08 3.194l-3.059 3.06 1.192 1.19 3.059-3.058c1.489-1.489 1.427-3.954-.138-5.519s-4.03-1.627-5.519-.138L9.786 8.557zm-1.023 6.68c.33.33.863.343 1.177.029l5.34-5.34c.314-.314.3-.846-.03-1.176-.33-.33-.862-.344-1.176-.03l-5.34 5.34c-.314.314-.3.846.03 1.177z'"+" fill-rule=evenodd></path></svg></span>"+link+"</span></span><span class=LinkCard-imageCell><img class=LinkCard-image alt=图标 src=https://site-1258928558.cos.ap-guangzhou.myqcloud.com/linkcard.png></span></span>";
		           }
	            }

                try {
                    post.shareIcon()

                    if (renderMathInElement && typeof renderMathInElement !== 'undefined') {
                        renderMathInElement(document.getElementById('post-content'), katex_config);
                    }

                    if (mermaid && typeof mermaid !== 'undefined') {
                        mermaid.initialize();
                    }
                } catch (e) {
                    console.log("error");
                }
                // 刷新
                han.refreshLazyLoad();
            } else {
                han.initLazyLoad()
            }


        });

        document.addEventListener('pjax:end', function () {
            
        });

        //Pjax请求失败后触发，请求对象将作为一起传递event.options.request
        document.addEventListener('pjax:error', function () {
            NProgress.done();
            bar('系统出现问题，请手动刷新一次', '3000');
        });
    </script>
</#if>
