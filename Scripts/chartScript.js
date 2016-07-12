draw = function (height, weight, BMI) {

    if (height === "0" && weight === "0") {
        document.getElementById("chartPlaceholder").style.display = "none";
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    }
    else {
        var chart = new CanvasJS.Chart("chartContainer", {
            title: {
                text: "BMI"
            },
            data: [
		    {
		        type: "column",
		        dataPoints: [
                    { label: "Height", y: (parseFloat(height) * 10), indexLabelFontColor: "#fff" },
		            { label: "Weight", y: (parseFloat(weight) / 10), indexLabelFontColor: "#fff" },
                    { label: "BMI", y: parseFloat(BMI), indexLabelFontColor: "#fff" }
		        ]
		    }
            ]
        });
        chart.render();
    }
}