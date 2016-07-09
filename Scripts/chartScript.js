Draw = function () {
    
    var chart = new CanvasJS.Chart("chartContainer", {
        title:{
            text: "BMI"              
        },
        data: [
		{
		    type: "column",
		    dataPoints: [
				{ label: "BMI", y: 10 },
		    ]
		}
        ]
    });
    chart.render();
}