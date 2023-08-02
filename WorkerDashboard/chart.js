// Fetch data from the server
fetch('data.php')
    .then(response => response.json())
    .then(data => {
        // Create line chart
        var lineChart = new Chart(document.getElementById('lineChart'), {
            type: 'line',
            data: {
                labels: data.names,
                datasets: [{
                    label: 'Height',
                    data: data.heights,
                    borderColor: 'blue',
                    fill: false
                }, {
                    label: 'Weight',
                    data: data.weights,
                    borderColor: 'red',
                    fill: false
                }]
            },
            options: {
                responsive: true,
                title: {
                    display: true,
                    text: 'Child Height and Weight'
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: true,
                            labelString: 'Child Names'
                        }
                    }],
                    yAxes: [{
                        scaleLabel: {
                            display: true,
                            labelString: 'Value'
                        }
                    }]
                }
            }
        });

        // Create bar chart
        var barChart = new Chart(document.getElementById('barChart'), {
            type: 'bar',
            data: {
                labels: ['Boys', 'Girls'],
                datasets: [{
                    label: 'Count',
                    data: [data.boysCount, data.girlsCount],
                    Color: 'red',
                    borderWidth: 1,
                    backgroundColor: ['blue', 'red'] 
                }]
            },
            options: {
                responsive: true,
                title: {
                    display: true,
                    text: 'Number of Boys and Girls'
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: true,
                            labelString: 'Gender'
                        }
                    }],
                    yAxes: [{
                        scaleLabel: {
                            display: true,
                            labelString: 'Count'
                        }
                    }]
                }
            }
        });
    });
