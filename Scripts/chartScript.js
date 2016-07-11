 draw = function (height, weight, BMI) {
    
    var chart = new CanvasJS.Chart("chartContainer", {
        title:{
            text: "BMI"              
        },
        data: [
		{
		    type: "column",
		    dataPoints: [
                { label: "Height", y: parseFloat(height) },
		        { label: "Weight", y: parseFloat(weight) },
                { label: "BMI", y: parseFloat(BMI) }
		    ]
		}
        ]
    });
    chart.render();
}