 draw = function (BMI) {
    
    var chart = new CanvasJS.Chart("chartContainer", {
        title:{
            text: "BMI"              
        },
        data: [
		{
		    type: "column",
		    dataPoints: [
				{ label: "BMI", y: parseFloat(BMI) },
		    ]
		}
        ]
    });
    chart.render();
}