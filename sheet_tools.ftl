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
                    <blockquote>
                        <div style="text-align:center;font-size:21px;margin:10px 0">收藏一些有用的工具，也欢迎推荐你正在使用的「利器」!</div>
                    </blockquote>
                    <hr/>

                    <div class="tool-cards" style="display: inline-block;">
                        <div class="note warning no-icon">图片工具</div>
                            <div class="card"><img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="http://pic.netbian.com/e/search/result/index.php?page=19&searchid=25" target="_blank">彼岸图网</a>
                                    </div>
                                    <div class="info">每天可以免费下载一张 4k 超清壁纸</div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://tinypng.com/" target="_blank">
                                            TinyPNG
                                        </a>
                                    </div>
                                    <div class="info">
                                            在线压缩图片
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://sm.ms" target="_blank">
                                            sm.ms
                                        </a>
                                    </div>
                                    <div class="info">
                                            第三方免费图床
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://github.com/meowtec/Imagine" target="_blank">
                                            Imagine
                                        </a>
                                    </div>
                                    <div class="info">
                                            客户端压缩图片，我正在使用中，非常推荐
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://github.com/Molunerfinn/PicGo" target="_blank">
                                            PicGo
                                        </a>
                                    </div>
                                    <div class="info">
                                            客户端图床，支持sm.ms/腾讯云/七牛云等
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/avatar/unsplashlogo.png"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://unsplash.com/" target="_blank">
                                            Unsplash
                                        </a>
                                    </div>
                                    <div class="info">
                                            免费图片，不可商用
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://colorhub.me/" target="_blank">
                                            colorhub
                                        </a>
                                    </div>
                                    <div class="info">
                                            高清无版权图片，个人和商业用途免费
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://pixabay.com/zh/" target="_blank">
                                            Pixabay 
                                        </a>
                                    </div>
                                    <div class="info">
                                            免费图片，可搜中文
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615232217.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://www.upyun.com/webp" target="_blank">
                                            又拍云 WebP
                                        </a>
                                    </div>
                                    <div class="info">
                                            在线将图片转换成 WebP 格式
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/images/20200615224242.png!getwebp"/>
                                <div class="card-header">
                                    <div>
                                        <a href="https://zhitu.isux.us/" target="_blank">
                                            智图
                                        </a>
                                    </div>
                                    <div class="info">
                                            智能在线图片压缩平台
                                    </div>
                                </div>
                            </div>
                        </div>


                    <div class="tool-cards" style="display: inline-block;">
                        <div class="note info no-icon">Web 前端</div>
                            <div class="card">
                                <img class="ava" src="https://image.bestzuo.cn/avatar/shieldlogo.png"/>
                                <div class="card-header">
                                    <div>
                                     <a href="https://shields.io/" target="_blank">shields.io</a>
                                </div>
                                <div class="info">Github 使用非常火的 svg 标签</div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615233625.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="https://www.bestcssbuttongenerator.com/" target="_blank">
                                        Button Generator
                                    </a>
                                </div>
                                <div class="info">
                                        生成 CSS 按钮
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200720121155.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="http://tool.c7sky.com/webcolor/" target="_blank">
                                        网站常用设计色彩搭配
                                    </a>
                                </div>
                                <div class="info">
                                        各种风格的网站色彩搭配方案
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615233625.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="http://l-lin.github.io/font-awesome-animation/" target="_blank">
                                        Font Awesome Animation
                                    </a>
                                </div>
                                <div class="info">
                                        会动的 FontAwesome 图标
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615233625.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="http://www.wangeditor.com/" target="_blank">
                                        wangEditor
                                    </a>
                                </div>
                                <div class="info">
                                        一款非常轻量级的富文本编辑器
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615233625.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="https://www.computerhope.com/htmcolor.htm" target="_blank">
                                        HTML color codes and names
                                    </a>
                                </div>
                                <div class="info">
                                        16 进制颜色与符号对应表
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615231317.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="https://www.iconfont.cn/" target="_blank">
                                        IconFont
                                    </a>
                                </div>
                                <div class="info">
                                        各类网站会用到的矢量图标
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615233625.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="http://instantlogosearch.com/" target="_blank">
                                        Instant Logo Search
                                    </a>
                                </div>
                                <div class="info">
                                        各大企业矢量 logo 在线搜索下载
                                </div>
                            </div>
                        </div>
                        </div>

                        <div class="tool-cards" style="display:inline-block;width:100%">
                        <div class="note danger no-icon">Linux 工具</div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615225615.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="https://man.cx/" target="_blank">
                                        Man-Linux
                                    </a>
                                </div>
                                <div class="info">
                                        Linux 命令行帮助查询，英文版
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="ava" src="https://image.bestzuo.cn/images/20200615225615.png!getwebp"/>
                            <div class="card-header">
                                <div>
                                    <a href="http://www.atoolbox.net/Tool.php?Id=826" target="_blank">
                                        Linux 命令搜索
                                    </a>
                                </div>
                                <div class="info">
                                        这个是中文版的
                                </div>
                            </div>
                        </div>
                    </div>

            <div class="tool-cards" style="display:inline-block;width:100%">
                <div class="note warning no-icon">办公常用</div>
                    <div class="card">
                        <img class="ava" src="https://image.bestzuo.cn/images/20200615230320.png!getwebp"/>
                        <div class="card-header">
                            <div>
                                <a href="https://smallpdf.com/cn" target="_blank">
                                    SmallPDF
                                </a>
                            </div>
                            <div class="info">
                                    万能 PDF 工具集合
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img class="ava" src="https://image.bestzuo.cn/images/20200615230426.png!getwebp"/>
                        <div class="card-header">
                            <div>
                                <a href="https://convertio.co/zh/" target="_blank">
                                    Convertio
                                </a>
                            </div>
                            <div class="info">
                                    文件转换器
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img class="ava" src="https://image.bestzuo.cn/images/20200615230803.png!getwebp"/>
                        <div class="card-header">
                            <div>
                                <a href="http://www.diyiziti.com/" target="_blank">
                                    字体转换器
                                </a>
                            </div>
                            <div class="info">
                                    转换成各类书法字体并保存为图片
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img class="ava" src="https://image.bestzuo.cn/images/20200615230948.png!getwebp"/>
                        <div class="card-header">
                            <div>
                                <a href="https://naotu.baidu.com/" target="_blank">
                                    百度脑图
                                </a>
                            </div>
                            <div class="info">
                                    便捷的思维工具
                            </div>
                        </div>
                    </div>
                    </div>

                <div class="tool-cards" style="display:inline-block;width:100%">
                <div class="note primary no-icon">软件镜像</div>
                <div class="card">
                    <img class="ava" src="https://image.bestzuo.cn/images/20200615231043.png!getwebp"/>
                    <div class="card-header">
                        <div>
                            <a href="https://mirrors.huaweicloud.com/" target="_blank">
                                华为镜像
                            </a>
                        </div>
                        <div class="info">
                                华为开源镜像站
                        </div>
                    </div>
                </div>
                <div class="card">
                    <img class="ava" src="https://mirrors.tuna.tsinghua.edu.cn/static/img/logo-small.png"/>
                    <div class="card-header">
                        <div>
                            <a href="https://mirrors.tuna.tsinghua.edu.cn/" target="_blank">
                                清华镜像
                            </a>
                        </div>
                        <div class="info">
                                清华大学开源软件镜像
                        </div>
                    </div>
                </div>
                <div class="card">
                    <img class="ava" src="https://image.bestzuo.cn/images/20200815201600.png!getwebp"/>
                    <div class="card-header">
                        <div>
                            <a href="http://mirrors.ustc.edu.cn/" target="_blank">
                                中科大镜像
                            </a>
                        </div>
                        <div class="info">
                                中国科学院大学开源软件镜像
                        </div>
                    </div>
                </div>
                <div class="card">
                    <img class="ava" src="https://image.bestzuo.cn/avatar/tencent.jpg"/>
                    <div class="card-header">
                        <div>
                            <a href="https://mirrors.cloud.tencent.com/" target="_blank">
                                腾讯镜像
                            </a>
                        </div>
                        <div class="info">
                                腾讯软件源
                        </div>
                    </div>
                </div>
                </div>

            <div class="tool-cards" style="display:inline-block;width:100%">
            <div class="note tips no-icon">其它常用工具</div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200615223152.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://github.com/soimort/you-get" target="_blank">
                            you-get
                        </a>
                    </div>
                    <div class="info">
                        一键下载各类网页视频
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200615223152.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://tool.lu/" target="_blank">
                            Tool 在线工具集
                        </a>
                    </div>
                    <div class="info">
                            超全的程序员工具箱，涵盖常用小功能
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200615223152.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://gifcam.en.softonic.com/?ex=MOB-575.0" target="_blank">
                            GifCam
                        </a>
                    </div>
                    <div class="info">
                            录屏制作 gif 图，轻量级客户端软件
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200615231457.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://developers.google.com/speed/pagespeed/insights/" target="_blank">
                            Google PageSpeed Insights
                        </a>
                    </div>
                    <div class="info">
                            在线网站性能评测，可获取优化建议报告
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200625090953.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://emojipedia.org/" target="_blank">
                            Emojipedia
                        </a>
                    </div>
                    <div class="info">
                            各种 emoji 表情库
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200721213510.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://www.uupoop.com/" target="_blank">
                            PS 在线精简版
                        </a>
                    </div>
                    <div class="info">
                            在线版轻量级 PS，方便快捷
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200721213700.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://www.gaoding.com/" target="_blank">
                            稿定设计
                        </a>
                    </div>
                    <div class="info">
                            在线海报制作，轮播图、公众号首图
                    </div>
                </div>
            </div>
            <div class="card">
                <img class="ava" src="https://image.bestzuo.cn/images/20200721213856.png!getwebp"/>
                <div class="card-header">
                    <div>
                        <a href="https://www.jijidown.com/" target="_blank">
                            哔哩哔哩唧唧
                        </a>
                    </div>
                    <div class="info">
                            在线下载 B 站视频
                    </div>
                </div>
            </div>
        </div>

                <#include "module/comment.ftl">
                <#if is_post??>
                    <@comment post,"post" />
                <#elseif is_sheet??>
                    <@comment sheet,"sheet" />
                </#if>

                <script type="text/javascript">
                    var randnum = function(n) {
                            return Math.round(Math.random() * n)
                        },
                        hexify = function(n) {
                            return ("0" + parseInt(n).toString(16)).slice(-2)
                        },
                        randex = function() {
                            return "#" + hexify(randnum(255)) + hexify(randnum(255)) + hexify(randnum(255))
                        },
                        blender = function() {
                            return Math.round(Math.random()) ? "radial-gradient(circle at " + randnum(100) + "% " + randnum(100) + "%, " +
                                randex() + ", " + randex() + ")" : "linear-gradient(" + randnum(360) + "deg, " + randex() + ", " + randex() + ")"
                        };
                    $(".card").each(function() {
                        var n = blender();
                        $(this).hover(function() {
                            $(this).css("background-image", n);
                        }, function() {
                            $(this).css("background-image", "none");
                        })
                    }), $(".card").click(function() {
                        var n = $(this).children(".card-header").children("div").children("a").attr("href");
                                window.open(n);
                    });
                </script>
            </div>
        </main>
    </div>
</@layout>