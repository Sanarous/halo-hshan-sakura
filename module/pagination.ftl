<nav>
    <ul class="pagination">
        <#if pagination.hasPrev>
            <li class="page-item">
                <a aria-label="Previous Page" class="page-link" href="${pagination.prevPageFullPath!}" data-scroll data-ajax>
                <i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </li>
        </#if>
        <#list pagination.rainbowPages as number>
            <#if number.isCurrent>
                <li class="page-item active">
                    <span class="page-link" style="cursor: default;">${number.page!}</span>
                </li>
            <#else>
                <li class="page-item">
                    <a class="page-link" href="${number.fullPath!}">${number.page!}</a>
                </li>    
            </#if>
        </#list>
        <#if pagination.hasNext>
            <li class="page-item">
                <a aria-label="Next Page" class="page-link" href="${pagination.nextPageFullPath!}" data-scroll data-ajax>
                <i class="fa fa-angle-right" aria-hidden="true"></i></a>
            </li>
        </#if>
        </ul>
</nav>

