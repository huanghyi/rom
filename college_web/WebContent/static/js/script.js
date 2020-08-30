/*
 * @Author: your name
 * @Date: 2020-06-02 13:56:46
 * @LastEditTime: 2020-06-03 08:42:01
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \IT学习\Bootstrap学习\College-manager-demo.2\images\script.js
 */
var ctx = document.getElementById ('canvas').getContext ('2d');
var lineChartData = {
  //X坐标数据
  labels: ['2', '4', '6', '8', '10', '12', '14', '16', '18', '20', '22', '24'],
  datasets: [
    {
      //统计表的背景颜色
      fillColor: 'rgba(255, 99, 132, 0.2)',
      //统计表画笔颜色
      strokeColor: 'rgba(0,0,0,1)',
      //点的颜色
      pointColor: 'rgba(155,39,39,1)',
      //点边框的颜色
      pointStrokeColor: '#fff',
      //鼠标触发时点的颜色
      pointHighlightFill: '#fff',
      //鼠标触发时点边框的颜色
      pointHighlightStroke: 'rgba(220,220,220,1)',
      //Y坐标数据
      data: [8, 2, 5, 4, 5, 5, 3, 7, 3, 8, 9, 9],
    },
    {
      fillColor: 'rgba(54, 162, 235, 0.2)',
      strokeColor: 'rgba(92,184,92,1)',
      pointColor: 'rgba(23,126,23,1)',
      pointStrokeColor: '#fff',
      pointHighlightFill: '#fff',
      pointHighlightStroke: 'rgba(151,187,205,1)',
      data: [2, 5, 8, 4, 9, 4, 6, 7, 6, 8, 7, 3],
    },
    {
      fillColor: 'rgba(255, 206, 86, 0.2)',
      strokeColor: 'rgba(153, 102, 255, 0.2)',
      pointColor: 'rgba(75, 192, 192, 1)',
      pointStrokeColor: '#fff',
      pointHighlightFill: '#fff',
      pointHighlightStroke: 'rgba(153, 102, 255, 1)',
      data: [6, 4, 5, 5, 6, 7, 6, 7, 6, 8, 7, 7],
    },
  ],
};

window.myLine = new Chart (ctx).Line (lineChartData, {
  responsive: true,
});

// var ctx = document.getElementById ('myChart');
// var myChart = new Chart (ctx, {
//   type: 'bar',
//   data: {
//     labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
//     datasets: [
//       {
//         label: '# of Votes',
//         data: [12, 19, 3, 5, 2, 3],
//         backgroundColor: [
//           'rgba(255, 99, 132, 0.2)',
//           'rgba(54, 162, 235, 0.2)',
//           'rgba(255, 206, 86, 0.2)',
//           'rgba(75, 192, 192, 0.2)',
//           'rgba(153, 102, 255, 0.2)',
//           'rgba(255, 159, 64, 0.2)',
//         ],
//         borderColor: [
//           'rgba(255, 99, 132, 1)',
//           'rgba(54, 162, 235, 1)',
//           'rgba(255, 206, 86, 1)',
//           'rgba(75, 192, 192, 1)',
//           'rgba(153, 102, 255, 1)',
//           'rgba(255, 159, 64, 1)',
//         ],
//         borderWidth: 1,
//       },
//     ],
//   },
//   options: {
//     scales: {
//       yAxes: [
//         {
//           ticks: {
//             beginAtZero: true,
//           },
//         },
//       ],
//     },
//   },
// });
