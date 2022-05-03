<#include "module/macro.ftl">
<@layout title="${settings.photos_title!'相册'} - ${blog_title!}">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content photos-page">
                <header class="bg-cover page-header">
                    <#if settings.photos_patternimg?? && settings.photos_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.photos_patternimg!}" alt="${settings.photos_title!'相册'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg"
                        >
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.photos_title!'相册'}</h1>
                        </div>
                    </div>
                </header>
            <div class="photo-content gallery-content">
                <div class="container mx-auto px-4 mt-16  tracking-wider md:leading-relaxed sm:leading-normal cn-pd photos-page content-container">
                    <div class="photos grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 xs:grid-cols-1 lg:gap-6 md:gap-4 sm:gap-3 mt-4"
                        id="galleryCards">
                        <@photoTag method="listTeams">
                            <#list teams as item>
                                <div class="gallery-cards" itemIndex="${item_index}">
                                    <ul class="cards" id="cards_${item_index}">
                                        <#list item.photos as photo>
                                            <li class="card card-${photo_index + 1}">
                                                <a class="gallery-item jg-entry entry-visible" href="javascript:void(0)">
                                                    <img src="${photo.url!}" data-src="${photo.url!}" alt="${photo.name!}"/>
                                                    <div class="content">
                                                        <#if item.team?? && item.team!=''>
                                                            <h6 class="gallery-card-title">${item.team}</h6>
                                                        <#else>
                                                            <h6 class="gallery-card-title">默认相册</h6>
                                                        </#if>
                                                    </div>
                                                </a>
                                            </li>
                                        </#list>
                                    </ul>
                                </div>
                            </#list>
                        </@photoTag>
                    </div>
                </div>
            </div>

            </div>
        </main>
    </div>
</@layout>



<#--  <#include "module/macro.ftl">
<@layout title="${settings.photos_title!'相册'} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <main class="mx-auto" id="container">
        <header class="bg-cover post-cover">
            <#if settings.photos_patternimg?? && settings.photos_patternimg!=''>
                <div class="cover-bg">
                    <img src="${settings.photos_patternimg!}" class="z-auto"
                         alt="${settings.photos_title!'相册'}">
                </div>
            <#else>
                <div class="placeholder-bg">
                </div>
            </#if>
            <div class="cover-content flex justify-center">
                <div class="inner flex flex-col justify-center">
                    <p class="cover-title text-base md:text-4xl lg:text-4xl xl:text-5xl">${settings.photos_title!'相册'}</p>
                </div>
            </div>
        </header>
        <div class="container mx-auto px-4 mt-16  tracking-wider md:leading-relaxed sm:leading-normal cn-pd photos-page content-container">
            <div class="photos grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 xs:grid-cols-1 lg:gap-6 md:gap-4 sm:gap-3 mt-4"
                 id="galleryCards">
                <@photoTag method="listTeams">
                    <#list teams as item>
                        <div class="gallery-cards" itemIndex="${item_index}">
                            <ul class="cards" id="cards_${item_index}">
                                <#list item.photos as photo>
                                    <li class="card card-${photo_index + 1}">
                                        <a class="gallery-item jg-entry entry-visible" href="javascript:void(0)">
                                            <img src="${photo.url!}" data-src="${photo.url!}" alt="${photo.name!}"/>
                                            <div class="content">
                                                <#if item.team?? && item.team!=''>
                                                    <h1 class="gallery-card-title">${item.team}</h1>
                                                <#else>
                                                    <h1 class="gallery-card-title">默认相册</h1>
                                                </#if>
                                            </div>
                                        </a>
                                    </li>
                                </#list>
                            </ul>
                        </div>
                    </#list>
                </@photoTag>
            </div>
        </div>
    </main>
</@layout>  -->
