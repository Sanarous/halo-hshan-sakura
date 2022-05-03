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
                    <!-- 访客量 -->
                    <div id="uv-container" style="min-width: 400px;height:400px;margin-top:50px"></div>
                    <!-- 访问量 -->
                    <div id="pv-container" style="min-width: 400px;height:400px;margin-top:50px"></div>
                    <!-- 访客来源 -->
                    <div id="refer-container" style="min-width: 400px;height:400px;margin-top:50px"></div>
                    <#include "module/comment.ftl">
                    <#if is_post??>
                        <@comment post,"post" />
                    <#elseif is_sheet??>
                        <@comment sheet,"sheet" />
                    </#if>
                </div>
                <script src="https://cdn.bootcdn.net/ajax/libs/echarts/4.8.0/echarts.common.min.js"></script>
                <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                if($("body").hasClass("night")){
                var uvChart = echarts.init(document.getElementById('uv-container'),'night');
                }else{
                var uvChart = echarts.init(document.getElementById('uv-container'),'shine');
                }


// 指定图表的配置项和数据
var option = {
    color: ['#d223e7','#3F77FE','#01C2F9','#18D070'],
    title : {
        text: '站点访客数统计',
        subtext: '数据来源: 百度统计（自 2019/06/28 开始统计）',
        textStyle:{
          color:'#504b4d',
       }
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data: ['2019年访客数','2020年访客数', '2021年访客数', '2022年访客数'],
        bottom:0,
        left:'center',
        textStyle:{
          color:'#504b4d',
       }
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        }
    ],
    yAxis : [
        {
            type : 'value',
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        }
    ],
    series : [
        {
            name:'2019年访客数',
            type:'line',
            smooth:true,
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[null, null, null, null, null, 115, 1791, 2346, 2368, 2158, 2176, 2276],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            },
        },
        {
            name:'2020年访客数',
            type:'line',
            smooth:true,
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[1788, 2225, 3145, 4222, 3298, 2442, 3028, 2556, 2835, 2531, 2423, 3371],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            },
        },
        {
            name:'2021年访客数',
            type:'line',
            smooth:true,
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[3286, 2611, 2686, 2319, 2067, 1925, 2150, 2226, 1829, 1690, 1892, 1860],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            },
        },
        {
            name:'2022年访客数',
            type:'line',
            smooth:true,
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[1691, 1240, 1730, 123, null, null, null, null, null, null, null, null],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            },
        },
    ]
};
// 使用刚指定的配置项和数据显示图表。
uvChart.setOption(option);



//浏览量统计
var pvChart = echarts.init(document.getElementById('pv-container'));

var pv_option = {
    color: ['#01C2F9','#18D070','#d223e7','#3F77FE'],
    title : {
        text: '站点访问量统计',
        subtext: '数据来源: 百度统计（自 2019/06/28 开始统计）',
        textStyle:{
          color:'#504b4d',
       }
    },
    legend: {
        data: ['2019年访问量','2020年访问量', '2021年访问量', '2022年访问量'],
        bottom:0,
        left:'center',
        textStyle:{
           color:'#504b4d',
       }
    },
    tooltip : {
        trigger: 'axis'
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        }
    ],
    yAxis : [
        {
            type : 'value',
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        }
    ],
    series : [
        {
            name:'2019年访问量',
            type:'line',
            data:[null, null, null, null, null, 1360, 11929, 13820, 14501, 11327, 10702, 15676],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        },
        {
            name:'2020年访问量',
            type:'line',
            data:[10101, 12909, 13784, 22978, 16090, 20682, 19207, 9887, 9436, 8047, 7262, 9864],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        },
        {
            name:'2021年访问量',
            type:'line',
            data:[9549, 10095, 8018, 7002, 5839, 5675, 6502, 6415, 4959, 3851, 4673, 5552],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        },
        {
            name:'2022年访问量',
            type:'line',
            data:[4209, 3548, 3977, 315, null, null, null, null, null, null, null, null],
            axisLabel : {
                   formatter: '{value}',
                   textStyle: {
                          color: '#929298'
                   }
            }
        },
    ]
};

pvChart.setOption(pv_option);


//访客量来源
var referChart = echarts.init(document.getElementById('refer-container'));  

var refer_option = {
    title: {
        text: '站点访客来源统计',
        itemGap: 20,
        subtext: '数据来源: 百度统计（最近一年的统计数据）',
        left: 'right',
        textStyle:{
          color:'#504b4d',
       }
    },
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b}: {c} ({d}%)'
    },
    legend: {
        orient: 'vertical',
        left: 10,
        data: ['直达', 'Github', '简书', '其它外链', '百度', 'Google', 'Bing', '其它搜索引擎'],
        textStyle:{
          color:'#929298',
       }
    },
    series: [
        {
            name: '访问来源',
            type: 'pie',
            selectedMode: 'single',
            radius: [0, '30%'],

            label: {
                position: 'inner'
            },
            labelLine: {
                show: false
            },
            data: [
                {value: 16334, name: '直接访问', selected: true},
                {value: 7165, name: '外链'},
                {value: 7512, name: '搜索'}
            ]
        },
        {
            name: '访问来源',
            type: 'pie',
            radius: ['40%', '55%'],
            label: {
                formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                backgroundColor: '#eee',
                borderColor: '#aaa',
                borderWidth: 1,
                borderRadius: 4,
                rich: {
                    a: {
                        color: '#999',
                        lineHeight: 22,
                        align: 'center'
                    },
                    hr: {
                        borderColor: '#aaa',
                        width: '100%',
                        borderWidth: 0.5,
                        height: 0
                    },
                    b: {
                        fontSize: 16,
                        lineHeight: 33
                    },
                    per: {
                        color: '#eee',
                        backgroundColor: '#334455',
                        padding: [2, 4],
                        borderRadius: 2
                    }
                }
            },
            data: [
                {value: 16334, name: '直达'},
                {value: 437, name: 'Github'},
                {value: 2984, name: '简书'},
                {value: 3744, name: '其它外链'},
                {value: 4786, name: '百度'},
                {value: 2516, name: 'Google'},
                {value: 151, name: 'Bing'},
                {value: 59, name: '其它搜索引擎'}
            ]
        }
    ]
};
referChart.setOption(refer_option); 
</script>
</main>
</div>
</@layout>