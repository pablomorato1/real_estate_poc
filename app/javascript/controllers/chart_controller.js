import { Controller } from "@hotwired/stimulus";
import { Chart, registerables } from 'chart.js';

Chart.register(...registerables);

// Connects to data-controller="chart"
export default class extends Controller {
    static targets = ["chart"];
    
    chartTargetConnected(element) {
        
        const myChart = new Chart(element, {
            type: 'line',
            data: {
                labels: ["February", "March", "April", "May", "June", "July"],
                datasets: [{
                    label: "Cost history",
                    data: [307732, 314125, 323889, 333220, 326167, 343906],
                    fill: false,
                    borderColor: "#E08043",
                    tension: 0.2
                }]
            },
            options: {
                animation: {
                    duration: 0
                },
                responsive: true,
                maintainAspectRatio: false,
                layout: {padding: -20},
                scales: {
                    x: {
                        bounds: "ticks",
                        grid: {display: false, borderWidth: 0},
                        ticks: {
                            color: "#495161",
                            padding: 23,
                            font: {
                                family: "system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji",
                                size: 12,
                                lineHeight: "16px"
                            },
                            includeBounds: true
                        }
                    },
                    y: {
                        bounds: "ticks",
                        grid: {
                            borderWidth: 0,
                            color: "#EBEBEB",
                            drawBorder: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [8, 8]
                        },
                        ticks: {
                            color: "#495161",
                            padding: 23,
                            font: {
                                family: "system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji",
                                size: 12,
                                lineHeight: "16px"
                            },
                            includeBounds: true
                        }
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    title: {
                        display: true
                    },
                    tooltip: {
                        yAlign: "bottom",
                        padding: {top: 14, right: 16, bottom: 7, left: 16},
                        titleFont: {
                            family: "system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji",
                            size: 20,
                            lineHeight: "20px",
                            weight: "700"
                        },
                        footerColor: "#C2C5CC",
                        footerFont: {
                            family: "system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji",
                            size: 12,
                            lineHeight: "16px",
                            weight: "400"
                        },
                        footerMarginTop: 0,
                        backgroundColor: "#19202E",
                        cornerRadius: 16,
                        callbacks: {}
                    }
                }
            }
        });
    }
}
