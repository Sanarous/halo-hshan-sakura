<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!} ">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if sheet.thumbnail?? && sheet.thumbnail!=''>
                        <div class="cover-bg">
                            <img src="${sheet.thumbnail!}" alt="${sheet.title!}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${sheet.title!}</h1>
                        </div>
                    </div>
                </header>
                <div class="sheet-content">
                    <div class="mod-list list-chart">
                        <ul class="views-top">
                            <@postTag method="count">
                                <@postTag method="latest" top="${count}">
                                    <#assign postCunt = 0 />
                                    <#list posts?sort_by("visits")?reverse as post>
                                        <li class="item clearfix">
                                            <span class="icon icon-chart <#if post_index == 0> first<#elseif post_index == 1> second<#elseif post_index == 2> third</#if>">${post_index + 1}</span>

                                    <div class="img">
                                        <a target="_blank" href="${post.fullPath}" title="${post.title}">
                                            <img src="https://cdn.jsdelivr.net/gh/LIlGG/cdn@1.0.1/img/svg/loader/orange.progress-bar-stripe-loader.svg" data-echo="${post.thumbnail!}"/>
                                        </a>
                                    </div>
                                    <div class="item-info">
                                        <a class="item-name" target="_blank" href="${post.fullPath}" title="${post.title}">
                                            <h3>${post.title}</h3>
                                        </a>
                                        <span class="item-prename">
                                            <span style="margin-right:10px">作者：${user.nickname!}</span>
                                            <span style="margin-right:10px">发布时间：${post.createTime?string("yyyy-MM-dd")}</span>
                                            <#--  <span>最后编辑时间：${post.editTime?string("yyyy-MM-dd")}</span>  -->
                                        </span>
                                        <p class="item-text">
                                            ${post.summary!}                       
                                        </p>
                                        <#if post.tags?? && post.tags?size gt 0>
                                            <div class="item-tag">
                                                <#list post.tags as tag>
                                                    <#if tag_index != 0></#if>
                                                        <a class="tag-i" target="_blank" href="${tag.fullPath!}" data-ajax>${tag.name!}</a>
                                                </#list>
                                            </div>
                                        </#if>
                                    </div>
                                    <div class="btn-comment">
                                        <span class="chart-colletion"></span>
                                        <a target="_blank" href="${post.fullPath}" title="阅读量">
                                            <svg viewBox="0 0 1024 1024" width="28" height="28" style="vertical-align: -5px;"><path d="M64 214.4c-12 8-20 20.8-22.4 35.2-2.4 14.4 0.8 28.8 10.4 42.4L145.6 400l12.8-6.4c19.2-9.6 40.8-19.2 66.4-28.8l24-8.8-109.6-128c-16.8-24.8-51.2-30.4-75.2-13.6zM953.6 213.6c-12-8-26.4-11.2-40.8-8.8-14.4 2.4-27.2 10.4-34.4 20.8L768.8 354.4l24 8.8c24.8 8.8 47.2 18.4 66.4 28.8l12.8 6.4 93.6-108 0.8-1.6c8-12 11.2-26.4 8.8-40.8s-10.4-26.4-21.6-34.4zM508.8 76c-29.6 0-54.4 24-54.4 53.6v194.4l32.8-1.6c7.2-0.8 14.4-0.8 22.4-0.8 7.2 0 14.4 0.8 21.6 0.8l32 1.6V129.6c-0.8-29.6-24.8-53.6-54.4-53.6z" fill="#5EB294" p-id="8487"></path><path d="M508 954.4c-155.2 0-286.4-48.8-389.6-145.6-32-30.4-60.8-64-84-100-6.4-9.6-11.2-18.4-15.2-25.6L8 663.2l11.2-20c4-7.2 8.8-16 15.2-25.6 23.2-36 51.2-69.6 84-100 103.2-96.8 234.4-145.6 389.6-145.6 155.2 0 286.4 48.8 389.6 145.6 32 30.4 60.8 64 84 100 6.4 9.6 11.2 18.4 15.2 25.6l11.2 20-11.2 20c-4 7.2-8.8 16-15.2 25.6-23.2 36-51.2 69.6-84 100-103.2 96.8-234.4 145.6-389.6 145.6zM102.4 663.2c0 0.8 0.8 0.8 0.8 1.6 20 30.4 43.2 59.2 71.2 84.8 88 82.4 200 124 334.4 124 133.6 0 246.4-41.6 334.4-124 27.2-25.6 51.2-54.4 71.2-84.8 0-0.8 0.8-0.8 0.8-1.6s-0.8-0.8-0.8-1.6c-20-30.4-43.2-59.2-71.2-84.8-88-82.4-200-124-334.4-124-133.6 0-246.4 41.6-334.4 124-27.2 25.6-51.2 54.4-71.2 84.8-0.8 0.8-0.8 1.6-0.8 1.6z" fill="#E84E0D" p-id="8488"></path><path d="M508 547.2c-34.4 0-65.6 12.8-88 34.4l88 82.4H383.2c0 64 56 116.8 124.8 116.8S632.8 728.8 632.8 664s-56-116.8-124.8-116.8z" fill="#5EB294" p-id="8489"></path></svg>
                                            ${post.visits}                      
                                        </a>
                                    </div>
                                        </li>
                                        <#assign postCunt++ />
                                        <#if postCunt == 20>
                                            <#break>
                                        </#if>
                                    </#list>
                                </@postTag>
                            </@postTag>
                        </ul>
                </div>
        </main>
    </div>
</@layout>