<footer class="site-footer" id="siteFooter">
    <#if settings.Aplayer?? && settings.Aplayer != ''>
        <meting-js
                server="netease"
                type="playlist"
                fixed="true"
                id="${settings.Aplayer}">
        </meting-js>
    </#if>

    <div class="inner">
        <div class="site-info">
            <#if settings.PublicSecurityRecord??>
                <div style="display: inline-block;background-image: url(${theme_base!}/assets/images/beian.png);background-repeat: no-repeat;background-position: top left;background-size: contain;padding-left: 20px;">
                    <a href="http://www.beian.gov.cn" target="_blank">${settings.PublicSecurityRecord!}</a>
                </div><br>
            </#if>
            <@global.footer />
        <div>
            <a href="https://www.upyun.com/?utm_source=lianmeng&utm_medium=referral" target="_blank"><img src="https://image.bestzuo.cn/images/20200701170550.png!getwebp" width='60' height='auto' style="vertical-align: -10px;margin: 0 20px;"></a>
        </div>
            <p>&copy; 2019 - ${.now?string('yyyy')}&nbsp;<i class="icon-font icon-sakura rotating" style="color: #ffc0cb;display:inline-block"></i>
                <a href="${blog_url!}"> ${user.nickname!}<#if settings.SiteSubtitle??> - ${settings.SiteSubtitle!}</#if></a> •
                <#if settings.Icp??>
                   <a href="http://beian.miit.gov.cn" target="_blank">${settings.Icp!}</a><br>
                </#if>
        </div>

        <div class="github-badge">
            <a style="color: #fff" rel="license" href="http://halo.run" target="_blank" title="由 Halo 驱动">
            <span class="badge-subject">Powered</span><span class="badge-value bg-blue">Halo</span></a>
        </div>
        <div class="github-badge">
            <a style="color: #fff" rel="license" href="https://github.com/hshanx/halo-theme-hshan.git" target="_blank" title="本站主题为 HanShan & Sakura 主题">
            <span class="badge-subject">Theme</span><span class="badge-value bg-red">HanShan & Sakura</span></a>
        </div>
        <div class="github-badge">
            <a style="color: #fff" rel="license" href="https://www.upyun.com/?utm_source=lianmeng&utm_medium=referral" target="_blank" title="本站CDN加速/云存储由又拍云提供">
            <span class="badge-subject">Storage</span><span class="badge-value bg-red">又拍云</span></a>
        </div>
        <div class="github-badge">
            <a style="color: #fff" rel="license" href="https://cloud.tencent.com/" target="_blank" title="运行于腾讯云轻量服务器">
            <span class="badge-subject">Hosted</span><span class="badge-value bg-brightgreen">腾讯云</span></a>
        </div>
        <div class="github-badge">
            <span class="badge-subject">访客</span><span class="badge-value bg-orange" id="busuanzi_value_site_uv" target="_blank" title="本站访客量"><span class="busuanzi-value" id="busuanzi_value_site_uv"></span></span>
        </div>
        <div class="github-badge">
            <span class="badge-subject">访问</span><span class="badge-value bg-orange" id="busuanzi_value_site_pv" target="_blank" title="本站浏览量"><span class="busuanzi-value" id="busuanzi_value_site_pv"></span></span>
        </div>
        <div class="github-badge">
            <span class="badge-subject">运行</span><span class="badge-value bg-blueviolet" target="_blank" title="本站已运行"><span id="span_dt_dt"></span></span>
        </div>
    </div>
</footer>
<#include "search-box.ftl"/>
