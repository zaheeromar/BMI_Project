draw = function (height, weight, BMI) {

    if (height === "0" && weight === "0") {
        document.getElementById("chartPlaceholder").style.display = "none";
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    }
    else {
        var chart = new CanvasJS.Chart("chartContainer", {
            backgroundColor: "rgba(160, 32, 240, 0)",
            title: {
                fontColor: "#696969",
                text: "BMI: " + BMI,
            },
            animationEnabled: false,

            data: [
		    {
		        type: "column",
		        dataPoints: [
                    { label: "Height*", y: (parseFloat(height) * 10), indexLabelFontColor: "#696969" },
		            { label: "Weight*", y: (parseFloat(weight) / 2), indexLabelFontColor: "#696969" },
                    { label: "BMI", y: parseFloat(BMI), indexLabelFontColor: "#696969" }
		        ]
		    }
            ]
        });
        chart.render();
    }
}