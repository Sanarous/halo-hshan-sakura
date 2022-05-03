<#include "module/macro.ftl">
<@layout title="${post.title!options.blog_title}">

    <div id="page" class="site post-template">
        <main class="site-main" id="main">
            <div id="readProgress">
                <div class="read-progress-bar" role="progressbar" style="width: 0"></div>
            </div>
            <div class="site-content post-page">
                <article class="post tag-getting-started" id="siteContent">
                    <header class="bg-cover post-header" id="postHeader">
                        <#if post.thumbnail?? && post.thumbnail!=''>
                            <div class="cover-bg">
                                <img src="${post.thumbnail!}" alt="${post.title!}"/>
                            </div>
                        <#else>
                            <div class="default-cover-bg">
                            </div>
                        </#if>
                        <div class="cover-content">
                            <div class="inner">
                                <h1 class="post-title js-toc-ignore">${post.title}</h1>
                                <div class="post-meta">
                                    <span class="post-meta-wrap">
                                        <img class="author-avatar"
                                             srcset="${user.avatar!}, ${user.avatar!} 2x"
                                             src="${user.avatar!}" alt=""/>
                                        <span class="post-author">${post.visits} 次浏览</span>
                                        <time class="published"
                                              datetime="${post.createTime?string("yyyy-MM-dd")}">${post.createTime?string("yyyy-MM-dd")}
                                        </time>
                                    </span>
                                    <div>${user.nickname!}</div>
                                </div>
                                <#if settings.enabled_visual_height!true>
                                    <a href="#post-content" class="arrow-down" data-scroll><span
                                                class="screen-reader-text">Scroll Down</span></a>
                                </#if>
                            </div>
                        </div>
                    </header>
                    <div class="post-inner">
                        <div class="article-body">
                            <div class="post-content article-content" id="post-content">
                                <#if (.now?long-86400000*60)?number_to_datetime gte post.editTime?datetime>
                                    <div class='note warning'>请注意，本文编写于&nbsp; ${(((.now?long) - (post.createTime?long)) / 86400000)?int} &nbsp;天前，最后修改于&nbsp; ${(((.now?long) - (post.editTime?long)) / 86400000)?int} &nbsp;天前，其中某些信息可能已经过时。</div><hr/>
                                </#if>
                                <div id="post-article-content">
                                    ${post.formatContent!}
                                </div>

                        <div
                                <#if settings.copyright_clean!true>
                                    class="article-copyright-info simple-copyright-info"
                                <#else>
                                    class="article-copyright-info full-copyright-info"
                                </#if>
                            >
                                <#if settings.copyright_clean!true>
                                <p>© 本文著作权归作者所有，转载前请务必署名</p>
                                <#else>
                                <p style="font-size:16px;margin:0">
                                            <svg id="icon-touxiang" viewBox="0 0 1024 1024" width="17" height="17" style="vertical-align: -2px;"><path d="M614.72 554.538c-49.086-6.399-100.27-2.1-149.256-2.1-119.465 0-209.04 95.972-206.84 215.437 0 17.095 8.498 31.99 23.493 40.488 14.896 10.697 34.09 14.896 53.285 17.095 61.882 6.398 123.664 6.398 198.342 6.398 40.488 0 93.872-2.1 142.858-4.298 27.692 0 53.284-4.3 78.877-14.896 19.194-8.498 29.89-19.194 31.99-40.488 8.498-104.57-72.478-204.84-172.75-217.636zM680.8 375.39c0-87.474-74.678-162.053-164.251-162.053-89.574 0-162.053 74.679-162.053 162.053-2.1 87.474 74.678 164.252 162.053 164.252 89.673 0 164.252-74.678 164.252-164.252z" fill="#FFFFFF"></path><path d="M512.35 0C228.733 0 0.5 228.233 0.5 511.85s228.233 511.85 511.85 511.85 511.85-228.233 511.85-511.85S795.967 0 512.35 0z m275.12 772.074c-2.1 21.294-12.797 31.99-31.991 40.488-25.593 10.697-51.185 14.896-78.877 14.896-49.086 2.099-102.37 4.298-142.858 4.298-74.678 0-136.46 0-198.342-6.398-19.195-2.1-38.389-6.398-53.285-17.095-14.895-8.497-23.493-23.493-23.493-40.488-2.1-119.465 87.475-215.437 206.84-215.437 49.085 0 100.27-4.299 149.256 2.1 100.27 12.896 181.247 113.166 172.75 217.636zM354.495 375.39c0-87.474 72.479-162.053 162.053-162.053S680.8 288.016 680.8 375.39c0 89.574-74.679 164.252-164.252 164.252-87.375 0-164.152-76.778-162.053-164.252z" fill="#249FF8"></path></svg>
                                                本文由 <a href="${blog_url!}">${user.nickname!}</a> 创作，如果您觉得本文不错，请随意赞赏<br>
                                            <svg id="icon-fenxiang" viewBox="0 0 1024 1024" width="17" height="17" style="vertical-align: -2px;"><path d="M512 512m-512 0a512 512 0 1 0 1024 0 512 512 0 1 0-1024 0Z" fill="#F3B243"></path><path d="M630.784 323.584m-90.112 0a90.112 90.112 0 1 0 180.224 0 90.112 90.112 0 1 0-180.224 0Z" fill="#FFFFFF"></path><path d="M630.784 688.128m-90.112 0a90.112 90.112 0 1 0 180.224 0 90.112 90.112 0 1 0-180.224 0Z" fill="#FFFFFF"></path><path d="M319.488 512m-90.112 0a90.112 90.112 0 1 0 180.224 0 90.112 90.112 0 1 0-180.224 0Z" fill="#FFFFFF"></path><path d="M341.037056 480.370688l257.343488-175.7184 27.713536 40.59136-257.339392 175.7184z" fill="#FFFFFF"></path><path d="M349.052928 488.452096l252.854272 182.10816-28.725248 39.886848-252.874752-182.10816z" fill="#FFFFFF"></path></svg>
                                                采用 <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank"
                                            rel="external nofollow">知识共享署名4.0</a> 国际许可协议进行许可，转载前请务必署名<br>
                                            <svg id="icon-ziyuan" viewBox="0 0 1024 1024" width="17" height="17" style="vertical-align: -2px;"><path d="M511.854421 0a511.854421 511.854421 0 1 0 512.145579 511.854421A511.854421 511.854421 0 0 0 511.854421 0z" fill="#39B54A"></path><path d="M576.491328 630.355417l-116.462895 116.462894a129.56497 129.56497 0 0 1-182.555587 0l-2.0381-2.038101a128.982656 128.982656 0 0 1 0-182.26443l81.232868-81.232868a179.644015 179.644015 0 0 0 13.102076 70.460051l-52.69946 52.408302a69.877737 69.877737 0 0 0 0 98.702303l2.038101 2.038101a70.168894 70.168894 0 0 0 98.702303 0l116.462895-116.462894a69.877737 69.877737 0 0 0 0-98.702304l-2.038101-2.0381a69.586579 69.586579 0 0 0-13.975547-10.772818l42.508956-42.508956a128.109184 128.109184 0 0 1 13.102076 11.355132l2.0381 2.0381a129.273813 129.273813 0 0 1 0 182.26443z" fill="#FFFFFF"></path><path d="M746.235997 460.901905l-81.232869 81.232869a179.352858 179.352858 0 0 0-13.102076-70.460051l52.69946-52.408303a69.877737 69.877737 0 0 0 0-98.702303l-2.038101-2.038101a69.877737 69.877737 0 0 0-98.702303 0l-116.462894 116.462895a69.877737 69.877737 0 0 0 0 98.702303l2.0381 2.038101a68.421951 68.421951 0 0 0 13.975548 10.772817l-42.508957 42.508957a136.552744 136.552744 0 0 1-13.102076-11.355132l-2.0381-2.038101a128.982656 128.982656 0 0 1 0-182.26443l116.462894-116.462894a129.56497 129.56497 0 0 1 182.555587 0l2.038101 2.0381a128.982656 128.982656 0 0 1 0 182.26443z" fill="#FFFFFF"></path></svg>
                                                本文链接：<a href="${post.fullPath!}">${post.fullPath!}</a><br>
                                            <svg viewBox="0 0 1024 1024" p-id="3887" width="17" height="17" style="vertical-align: -2px;"><path d="M512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512-230.4-512-512-512z m102.4 294.4l19.2-38.4c19.2-32 44.8-6.4 44.8-6.4L768 396.8c19.2 32-19.2 38.4-19.2 38.4l-166.4 38.4c-57.6 6.4-38.4-32-38.4-32l19.2-44.8C320 307.2 236.8 480 236.8 480c76.8-300.8 377.6-185.6 377.6-185.6z m-198.4 435.2l-19.2 38.4c-19.2 32-44.8 6.4-44.8 6.4L256 627.2c-19.2-25.6 19.2-38.4 19.2-38.4l166.4-38.4c57.6-12.8 38.4 32 38.4 32l-19.2 44.8c249.6 83.2 320-89.6 320-89.6-57.6 294.4-364.8 192-364.8 192z m0 0" fill="#6190E8" p-id="3888"></path></svg>
                                                最后更新于：${post.editTime?string('yyyy-MM-dd HH:mm:ss')}
                                </p>
                                </#if>
                            </div>

                        <div class="article-info" id="articleInfo">
                            <div class="extra-info extra-info-center">
                                <#if settings.QR_code_zfb?? || settings.QR_code_wx??>
                                    <button type="submit"
                                            class="appreciate-btn btn-primary font-bold rounded width-47 height-46 custom-color-solid-bg font-16-to-14"
                                            onclick="">
                                        <img src="${theme_base!}/assets/media/images/cuplogo-sm.png"
                                             class="right-mrgn-8 support-img" style="height: 11px"/>
                                        <span id="">Coffee</span>
                                    </button>
                                </#if>
                                <#if settings.social_share!false>
                                    <button class="btn-primary btn-primary-light font-bold rounded width-47 height-46 custom-color-secondary-bg share-btn "
                                            onclick="">
                                        <span id="">Share</span>
                                    </button>
                                </#if>
                            </div>
                            <div id="socialShare" class="no-show">
                                <div class="social-share" data-disabled="${settings.share_disabeld!''}"></div>
                            </div>

                            <div class="post-tags">
                                    <#if post.tags?? && post.tags?size gt 0>
                                        <#list post.tags as tag>
                                            <a href="${tag.fullPath!}" data-ajax>
                                                <i class="fa fa-tag" aria-hidden="true"></i>&nbsp;
                                                ${tag.name!}&nbsp;&nbsp;&nbsp;</a>
                                        </#list>
                                    </#if>
                            </div>

                            <#if settings.post_nepre!true>
                                <nav class="post-navigation" id="post-navigation">
                                    <#--  <h2 class="screen-reader-text">Post navigation</h2>  -->
                                    <div class="nav-links">
                                        <#if prevPost??>
                                            <a href="${prevPost.fullPath!}" data-ajax class="nav-previous">
                                                <#if prevPost.thumbnail?? && prevPost.thumbnail!=''>
                                                    <div class="nav-bg ">
                                                        <img src="${prevPost.thumbnail!}" alt=""/>
                                                    </div>
                                                <#else>
                                                    <div class="nav-bg default-cover-bg">
                                                    </div>
                                                </#if>
                                                <div class="nav-inside">
                                                    <span class="nav-before">上一篇</span>
                                                    <span class="nav-title">${prevPost.title!}</span>
                                                    <span class="nav-date"><time class="published"
                                                                                datetime="${prevPost.createTime?string("yyyy-MM-dd")}">${prevPost.createTime?string("yyyy-MM-dd")}
                                                    </time></span>
                                                </div>
                                            </a>
                                        </#if>
                                        <#if nextPost??>
                                            <a href="${nextPost.fullPath!}" data-ajax class="nav-next">
                                                <#if nextPost.thumbnail?? && nextPost.thumbnail!=''>
                                                    <div class="nav-bg ">
                                                        <img src="${nextPost.thumbnail!}" alt=""/>
                                                    </div>
                                                <#else>
                                                    <div class="nav-bg default-cover-bg">
                                                    </div>
                                                </#if>
                                                <div class="nav-inside">
                                                    <span class="nav-before">下一篇</span>
                                                    <span class="nav-title">${nextPost.title!}</span>
                                                    <span class="nav-date"><time class="published"
                                                                                datetime="${nextPost.createTime?string("yyyy-MM-dd")}">${nextPost.createTime?string("yyyy-MM-dd")}
                                                    </time></span>
                                                </div>
                                            </a>
                                        </#if>
                                    </div>
                                </nav>
                            </#if>

                            <#include "module/comment.ftl">
                            <#if is_post??>
                                <@comment post,"post" />
                            <#elseif is_sheet??>
                                <@comment sheet,"sheet" />
                            </#if>
                            </div>
                        </div>
                    </div>
                    <div id="tocFlag"></div>
                        <#if settings.post_toc!true>
                            <aside id="toc" class="toc"></aside>
                        </#if>
                    </div>
                </article>
            </div>
        </main>
    </div>
</@layout>
