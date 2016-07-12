 draw = function (height, weight, BMI) {
    
    var chart = new CanvasJS.Chart("chartContainer", {
        title:{
            text: "BMI"              
        },
        data: [
		{
		    type: "column",
		    dataPoints: [
                { label: "Height", y: (parseFloat(height) * 10) },
		        { label: "Weight", y: (parseFloat(weight) / 10) },
                { label: "BMI", y: parseFloat(BMI) }
		    ]
		}
        ]
    });
    chart.render();
}