var myChart = echarts.init(document.getElementById('piechart'));
var option = {
    title: {
        text: 'Referer of a Website',
        subtext: 'Fake Data',
        left: 'center'
    },
    tooltip: {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        left: 'left'
    },
    series: [
        {
            name: '消费',
            type: 'pie',
            radius: '50%',
            data: [
                { value: 111, name: '科技' },
                { value: 735, name: '艺术' },
                { value: 580, name: '公益' },
                { value: 484, name: '农业' },
                { value: 300, name: '其他' }
            ],
            emphasis: {
                itemStyle: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
myChart.setOption(option);

function echartsShow(){
    $.post("/personal?method=personalProperty",function(datas){
            var data= $.parseJSON(datas);
            var servicedata=[];
            for(var i=0 ; i<data.name.length ; i++){
                var obj=new Object();
                obj.name=data.name[i];
                obj.value=data.value[i];
                servicedata[i]=obj;
            }
            myChart.setOption({
                series:
                    {
                        name: '消费',
                        type: 'pie',
                        radius: '50%',
                        data: servicedata
                    }
            });

        }
    )
};
