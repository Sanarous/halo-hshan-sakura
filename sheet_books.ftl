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
                    <div id="book">
                        <div class="page">
                        <ul class="content">
                            <li><div class="info"><a href="https://book.douban.com/subject/2130190/" target="_blank" rel="noreferrer noopener" class="book-container" data-pjax-state=""><div class="book"><img src="https://cdn.jsdelivr.net/gh/betsyx/jstcdn/img/books/javamethod.jpg" alt="Java编程思想"></div></a><div><h3>《 Java编程思想 （第4版） 》</h3><p>作者：[美] Bruce Eckel</p><p>出版时间：2007-6</p><p>阅读进度：温习中...</p><p><span>读书笔记：</span><a href="https://noheart.cn/tags/java" target="" rel="noopener noreferrer" data-pjax-state=""> java标签页 </a></p><p><span>推荐指数：</span><span></span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p></div></div><p class="description div-border green">本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。</p></li>
                            <li><div class="info"><a href="https://book.douban.com/subject/26745780/" target="_blank" rel="noreferrer noopener" class="book-container" data-pjax-state=""><div class="book"><img src="https://cdn.jsdelivr.net/gh/betsyx/jstcdn/img/books/javamath.jpg" alt="数据结构与算法分析"></div></a><div><h3>《 数据结构与算法分析 》</h3><p>作者：韦斯 (Mark Allen Weiss)</p><p>出版时间：2009-1</p><p>阅读进度：温习中...</p><p><span>读书笔记：</span><a href="https://noheart.cn/tags/data-structure" target="" rel="noopener noreferrer" data-pjax-state=""> 数据结构 </a></p><p><span>推荐指数：</span><span></span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p></div></div><p class="description div-border green">本书是国外数据结构与算法分析方面的经典教材，使用卓越的Java编程语言作为实现工具讨论了数据结构（组织大量数据的方法）和算法分析（对算法运行时间的估计）</p></li>
                            <li><div class="info"><a href="https://book.douban.com/subject/2243615/" target="_blank" rel="noreferrer noopener" class="book-container" data-pjax-state=""><div class="book"><img src="https://cdn.jsdelivr.net/gh/betsyx/jstcdn/img/books/javadesign.jpg" alt="Head First 设计模式"></div></a><div><h3>《 Head First 设计模式 》</h3><p>作者：[美] 弗里曼</p><p>出版时间：2007-9</p><p>阅读进度：温习中...</p><p><span>读书笔记：</span><a href="https://noheart.cn/categories/designpatterns" target="" rel="noopener noreferrer" data-pjax-state=""> 设计模式 </a></p><p><span>推荐指数：</span><span></span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p></div></div><p class="description div-border green">读这本书不仅仅是学习知识，而是在学习一种思考的方法，学习一种认知的技巧，学习一种成长的阶梯。总之，用你闲暇的时间来读这本书，并不亚于你专注的工作或学习。</p></li>
                            <li><div class="info"><a href="https://book.douban.com/subject/3360807/" target="_blank" rel="noreferrer noopener" class="book-container" data-pjax-state=""><div class="book"><img src="https://cdn.jsdelivr.net/gh/betsyx/jstcdn/img/books/effectjava.jpg" alt="Effective java 中文版"></div></a><div><h3>《 Effective java 中文版 》</h3><p>作者：[美] Joshua Bloch</p><p>出版时间：2009-01-01</p><p>阅读进度：温习中...</p><p><span>读书笔记：</span><a href="javascript:;" target="" rel="noopener noreferrer" data-pjax-state=""> 暂无 </a></p><p> <span>推荐指数：</span><span></span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p></div></div> <p class="description div-border green">本书介绍了在Java编程中78条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。</p></li>
                            <li><div class="info"><a href="https://book.douban.com/subject/2970300/" target="_blank" rel="noreferrer noopener" class="book-container" data-pjax-state=""><div class="book"><img src="https://cdn.jsdelivr.net/gh/betsyx/jstcdn/img/books/pcnetwork.jpg" alt="计算机网络"></div></a><div><h3>《 计算机网络 》</h3><p>作者：谢希仁</p><p>出版时间：2008-1</p><p>阅读进度：已读</p><p><span>读书笔记：</span><a href="https://noheart.cn/archives/computersummary" target="" rel="noopener noreferrer" data-pjax-state=""> 计算机网络 </a></p><p><span>推荐指数：</span><span></span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p></div></div><p class="description div-border green">谢老师深知学生的理解难点在哪里，因此本书结构清晰，讲解详细，特别是能抓住重点，让人往往有豁然开朗之感，对协议的讲解明了是本书另一大特点，既注重协议标准的准确解读，又能用本地思维方式娓娓阐述，确实是本经典网络入门著作</p></li>
                            <li><div class="info"><a href="https://book.douban.com/subject/2334288/" target="_blank" rel="noreferrer noopener" class="book-container" data-pjax-state=""><div class="book"><img src="https://cdn.jsdelivr.net/gh/betsyx/jstcdn/img/books/talkdesign.jpg" alt="大话设计模式"></div></a><div><h3>《 大话设计模式 》</h3><p>作者：程杰</p><p>出版时间：2007-12-1</p><p>阅读进度：已读</p><p><span>读书笔记：</span><a href="https://noheart.cn/categories/designpatterns" target="" rel="noopener noreferrer" data-pjax-state=""> 设计模式 </a></p><p><span>推荐指数：</span><span></span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p></div></div><p class="description div-border green">本书通篇都是以情景对话的形式，用多个小故事或编程示例来组织讲解GOF(设计模式的经典名著——Design Patterns:Elements of Reusable Object-Oriented Software...</p></li>
                            </ul>
                        </div>
                    </div>
                    <#include "module/comment.ftl">
                    <#if is_post??>
                        <@comment post,"post" />
                    <#elseif is_sheet??>
                        <@comment sheet,"sheet" />
                    </#if>
                </div>
        </main>
    </div>
</@layout>