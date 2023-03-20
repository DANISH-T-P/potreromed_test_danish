import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ChartData> chartData = [
    ChartData('Clarity of concepts', 25, 10, 20, 25, 20),
    ChartData('Quality of discussion', 5, 40, 30, 10, 15),
    ChartData('punctuality', 5, 40, 30, 10, 15),
    ChartData('session design', 5, 40, 30, 10, 15),
    ChartData('relevance of content', 5, 40, 30, 10, 15),
    ChartData('content and methodology', 5, 40, 30, 10, 15),
    ChartData('degree of preparation', 5, 40, 30, 10, 15),
    ChartData('practical examples', 5, 40, 30, 10, 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Bar Chart'),
      // ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                  labelRotation: 90, opposedPosition: true, isInversed: true),
              primaryYAxis: NumericAxis(
                  minimum: 0,
                  maximum: 100,
                  interval: 10,
                  isVisible: false,
                  isInversed: true),
              series: <ChartSeries>[
                StackedColumnSeries<ChartData, String>(
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  dataSource: chartData,
                  xValueMapper: (ChartData ch, _) => ch.x,
                  yValueMapper: (ChartData ch, _) => ch.y1,
                ),
                StackedColumnSeries<ChartData, String>(
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  dataSource: chartData,
                  xValueMapper: (ChartData ch, _) => ch.x,
                  yValueMapper: (ChartData ch, _) => ch.y2,
                ),
                StackedColumnSeries<ChartData, String>(
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  dataSource: chartData,
                  xValueMapper: (ChartData ch, _) => ch.x,
                  yValueMapper: (ChartData ch, _) => ch.y3,
                ),
                StackedColumnSeries<ChartData, String>(
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  dataSource: chartData,
                  xValueMapper: (ChartData ch, _) => ch.x,
                  yValueMapper: (ChartData ch, _) => ch.y4,
                ),
                StackedColumnSeries<ChartData, String>(
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  dataSource: chartData,
                  xValueMapper: (ChartData ch, _) => ch.x,
                  yValueMapper: (ChartData ch, _) => ch.y5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;
  final int y5;
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4, this.y5);
}
