/**
 * Main JS file for Subtle behaviours
 */
// Responsive video embeds
var videoEmbeds = [
    'iframe[src*="youtube.com"]',
    'iframe[src*="vimeo.com"]',
]
reframe(videoEmbeds.join(','))

var currBgId = "white-bg";

var fontfamilyId = "serif";

var commentId = "valine";

var katex_config = {
    delimiters:
        [
            {left: "$$", right: "$$", display: true},
            {left: "$", right: "$", display: false},
            {left: "\\(", right: "\\)", display: false},
            {left: "\\[", right: "\\]", display: true},
        ]
};

// Sidebar toggle
var sidebarToggle = document.querySelectorAll('.sidebar-toggle')
if (sidebarToggle)
    for (var i = 0; i < sidebarToggle.length; i++)
        sidebarToggle[i].addEventListener(
            'click',
            function (e) {
                var menuCtrl = $('#sidebarToggle')
                if (menuCtrl)
                    menuCtrl.toggleClass('menu-ctrl-on')
                var scrollMenu = $('#scrollMenu')
                if (scrollMenu)
                    scrollMenu.toggleClass('scroll-menu-show')
                var siteHeader = $('#siteHeader')
                if (siteHeader)
                    siteHeader.toggleClass('site-header-scroll')
                siteHeader.toggleClass('site-header-bg')
                var sideBar = $('#sidebar')
                if (sideBar)
                    sideBar.toggleClass('sidebar-show')
                e.preventDefault()

                // 滚动条
                $(document.body).toggleClass('cancel-scroll')
            },
            {
                passive: false,
            })

var oldScrollTop;
var han = {
    lazyLoad: function () {
        $("#page").velocity("transition.slideDownBigIn", {stagger: 200});
    },

    initLazyLoad: function () {
        $('#page').removeClass('transform-none');
    },

    refreshLazyLoad: function () {
        $('#page').addClass('transform-none');
    },

    lazyLoadCardItem: function () {
        $(".card-item-vel").velocity("transition.slideUpIn", {stagger: 200, display: "flex"});
    },

    linksAddBlank: function () {
        var links = $('.post-content a')
        if (links)
            for (var i = 0; i < links.length; i++)
                $(links[i]).attr('target', '_blank')
    },


    // 获取滚动条距离顶部位置
    getScrollTop: function () {
        var scrollTop = 0
        if (document.documentElement && document.documentElement.scrollTop)
            scrollTop = document.documentElement.scrollTop
        else if (document.body)
            scrollTop = document.body.scrollTop
        return scrollTop
    },

    scollHeader: function () {
        window.addEventListener(
            'scroll',
            function () {
                var siteHeader = $('#siteHeader')
                var scrollMenu = $('#scrollMenu')
                var sidebarToggle = $('#sidebarToggle')
                var scrollTop = han.getScrollTop()
                if (siteHeader && scrollTop > 0) {
                    siteHeader.addClass('site-header-scroll')
                    scrollMenu.addClass('scroll-menu-show')
                    sidebarToggle.hide()
                } else {
                    siteHeader.removeClass('site-header-scroll')
                    scrollMenu.removeClass('scroll-menu-show')
                    sidebarToggle.show()
                }
                oldScrollTop = scrollTop
            },
            false)
    },

    toggleSearch: function () {
        // 搜索框
        $('.js-toggle-search').on('click', function () {
            openSearchPanel()
            $('.searchbox-input').focus()
            this.makeMenuInvisible()
        })
    },

    makeMenuInvisible: function () {
        $('#sidebar').removeClass('sidebar-show')
        $('#sidebarToggle').removeClass('menu-ctrl-on')
        $(document.body).removeClass('sidebar-opened')
        $(document.body).removeClass('cancel-scroll')
        $(".side-bar-val").velocity("transition.slideUpOut", {stagger: 200});
    },

    // 当前菜单菜单高亮
    highlightMenu: function () {
        var nav = document.getElementById('scrollMenu')
        var links = nav.getElementsByTagName('a')
        var currenturl = document.location.href
        var last = 0
        for (var i = 0; i < links.length; i++) {
            var linkurl = links[i].getAttribute('href')
            if (currenturl.indexOf(linkurl) !== -1){
                last = i
            }
        }
        $(links[last]).addClass('active-current')
        for (var i = 0; i < links.length; i++) {
            if (last !== i) {
                console.log('当前移除：',links[i]);
                $(links[i]).removeClass('active-current')
            }
        }
        var currentLinks = links[last]
        if ($(currentLinks).parents('.sub-menu')) {
            var subMenu = $(currentLinks).parents('.sub-menu')
            $(subMenu[0]).siblings('a').addClass('active-current')
        }
    },

    // 展开子菜单
    foldSubMenu: function () {
        $(".nav-menu-link").click(function (e) {
            var angle = $(this).children('.fa')[0];
            $(angle).toggleClass('angle-transform');
            var subMenu = $(this).siblings('.nav-sub-menu');
            if (subMenu && !$(this).siblings('.nav-sub-menu').hasClass('nav-menu-show')) {
                subMenu.velocity("transition.slideDownIn", {duration: 300});
                subMenu.addClass('nav-menu-show')
            } else if (subMenu && $(this).siblings('.nav-sub-menu').hasClass('nav-menu-show')) {
                subMenu.velocity("transition.slideUpOut", {duration: 300});
                subMenu.removeClass('nav-menu-show')
            }
        });
    },

    pagination: function () {
        $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body');
        $('body').on('click', '#pagination a', function () {
            var pageContent = $('#pagination');
            pageContent.html("")
            pageContent.append('<div class="loader-inner ball-pulse"><div/><div/><div/></div>');
            $.ajax({
                type: "GET",
                url: $(this).attr("href"),
                success: function (data) {
                    result = $(data).find("#post-list .postItem");
                    pageInner = $(data).find("#pagination .inner");
                    // In the new content
                    $("#post-list").html(result.fadeIn(500));
                    pageContent.empty();
                    pageContent.append(pageInner);
                    document.getElementById("postContainer").scrollIntoView()
                }
            });
            return false;
        });
    }, 

	changeBg: function(){
            //获取本地存储信息
            var local_currBgId = hanUtils.getLocalStorage(currBgId);
            if(local_currBgId == null){
                hanUtils.setLocalStorage(currBgId,"white-bg"); //默认是白色的
            }else{
                if($("body").hasClass("night")){
                    $("#nightMode").click();
                }

                if(local_currBgId == "sakura-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/sakura.png)");
                }else if(local_currBgId == "gribs-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/plaid2dbf8.jpg)");
                }else if(local_currBgId == "KAdots-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/kyotoanimation.png)");
                }else if(local_currBgId == "totem-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/dot_orange.gif)");
                }else if(local_currBgId == "pixiv-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/star02.png)");
                }else if(local_currBgId == "bing-bg"){
                    $("body").css("background-image","url(https://api.mashiro.top/bing)");
                }else if(local_currBgId == "white-bg"){
                    $("body").css("background-image","none"); 
                }else{
                    $("body").css("background-image","none"); 
                    $("#nightMode").click();
                }
            }

		    // 这里使用off来解决匿名空间的问题
            $(".changeSkin-gear").off("click").on("click", function () {
                $(".skin-menu").toggleClass('show');
            });


            $(".theme-controls").find("li").click(function(){
                //修改背景
                if($(this).attr("id") != 'dark-bg' && $("body").hasClass("night")){
                    $("#nightMode").click();
                }

                if($(this).attr("id") == "sakura-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/sakura.png)");
                }else if($(this).attr("id") == "gribs-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/plaid2dbf8.jpg)");
                }else if($(this).attr("id") == "KAdots-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/kyotoanimation.png)");
                }else if($(this).attr("id") == "totem-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/dot_orange.gif)");
                }else if($(this).attr("id") == "pixiv-bg"){
                    $("body").css("background-image","url(https://cdn.jsdelivr.net/gh/spirit1431007/cdn@1.6/img/star02.png)");
                }else if($(this).attr("id") == "bing-bg"){
                    $("body").css("background-image","url(https://api.mashiro.top/bing)");
                }else if($(this).attr("id") == "white-bg"){
                    $("body").css("background-image","none"); 
                }else{
                    $("body").css("background-image","none"); 
                    $("#nightMode").click();
                }

                //保存到本地存储
                hanUtils.setLocalStorage(currBgId,$(this).attr("id"));

                // 绑定完之后隐藏主题开关
                $(".skin-menu").removeClass('show');
                setTimeout(function () {
                    $(".changeSkin-gear").css("visibility", "visible");
                }, 300);
            });

            var local_fontfamily = hanUtils.getLocalStorage(fontfamilyId);
            if(local_fontfamily == null){
                hanUtils.setLocalStorage(fontfamilyId,"serif"); //默认是有衬线字体
            }else{
                if(local_fontfamily == "serif"){
                    $("body").css("font-family","'Linux Biolinum','Noto Serif SC',Helvetica,Arial,Menlo,Monaco,monospace,sans-serif");
                    $(".control-btn-serif").addClass("selected");
                    $(".control-btn-sans-serif").removeClass("selected");
                }else if(local_fontfamily  == "sans-serif"){
                    $("body").css("font-family","'Merriweather Sans',Helvetica,Tahoma,Arial,'PingFang SC','Hiragino Sans GB','Microsoft Yahei','WenQuanYi Micro Hei',sans-serif");
                    $(".control-btn-sans-serif").addClass("selected");
                    $(".control-btn-serif").removeClass("selected");
                }
            }

            $(".changefont").click(function(){
                if($(this).hasClass("control-btn-serif")){
                    $("body").css("font-family","'Linux Biolinum','Noto Serif SC',Helvetica,Arial,Menlo,Monaco,monospace,sans-serif");
                    $(this).addClass("selected");
                    $(".control-btn-sans-serif").removeClass("selected");
                    hanUtils.setLocalStorage(fontfamilyId,"serif"); //默认是有衬线字体
                }else if($(this).hasClass("control-btn-sans-serif")){
                    $("body").css("font-family","'Merriweather Sans',Helvetica,Tahoma,Arial,'PingFang SC','Hiragino Sans GB','Microsoft Yahei','WenQuanYi Micro Hei',sans-serif");
                    $(this).addClass("selected");
                    $(".control-btn-serif").removeClass("selected");
                    hanUtils.setLocalStorage(fontfamilyId,"sans-serif"); //默认是有衬线字体
                }

                // 绑定完之后隐藏主题开关
                $(".skin-menu").removeClass('show');
                setTimeout(function () {
                    $(".changeSkin-gear").css("visibility", "visible");
                }, 300);
            });
    },

    changeComment: function(){
        var local_commentId = hanUtils.getLocalStorage(commentId);

        if(local_commentId == null){
            hanUtils.setLocalStorage(commentId,"valine");
        }else{
           if(local_commentId == 'valine'){
              $(".comments-items-2").css({"display":"none","animation":"0.5s ease 0s 1 normal none running tabshow"});
              $(".comments-items-1").css({"display":"block","animation":"0.5s ease 0s 1 normal none running tabshow"});
           }else{
              $(".comments-items-1").css({"display":"none","animation":"0.5s ease 0s 1 normal none running tabshow"});
              $(".comments-items-2").css({"display":"block","animation":"0.5s ease 0s 1 normal none running tabshow"});
           }
        }

        $(".comment-switch").find(".slider").click(function(){
            if($(".comments-items-1").css("display") != 'none'){
               //切换评论样式
               $(".comments-items-1").css({"display":"none","animation":"0.5s ease 0s 1 normal none running tabshow"});
               $(".comments-items-2").css({"display":"block","animation":"0.5s ease 0s 1 normal none running tabshow"});
 
               //保存到本地存储
               hanUtils.setLocalStorage(commentId,"sakura");
            }else{
               $(".comments-items-2").css({"display":"none","animation":"0.5s ease 0s 1 normal none running tabshow"});
               $(".comments-items-1").css({"display":"block","animation":"0.5s ease 0s 1 normal none running tabshow"});
 
               //保存到本地存储
               hanUtils.setLocalStorage(commentId,"valine");
            }
         })
    }
}

$(function () {
    // han.lazyLoad()

    han.lazyLoadCardItem()

    han.linksAddBlank()

    // 头部菜单滚动时间
    han.scollHeader()

    han.toggleSearch()

    // 当前目录菜单高亮
    han.highlightMenu()

    // 菜单点击事件
    han.foldSubMenu()

    // 分页
    // han.pagination()

    han.getScrollTop()
              
    han.changeBg()
    
    // han.changeComment()
                                      
})

// 删除日志中的空元素
$(document).ready(
    function () {
        var treeHoleBoxs = document.querySelectorAll('.tree-hole-box')
        if (treeHoleBoxs)
            for (var i = 0; i < treeHoleBoxs.length; i++) {
                var childrens = $(treeHoleBoxs[i]).children('p:empty')
                for (var j = 0; j < childrens.length; j++)
                    childrens[j].remove();

        
        if(document.getElementById('post-content')){
            $(".post-content img").each(function(index,item){
                if(!$(this).hasClass("prevent")){
                    $($(this)).wrap("<a data-fancybox='images' href='"+ $(this)[0].src +"'></a>");
                }
            });
        }
    }
});


