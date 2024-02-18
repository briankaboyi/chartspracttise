import 'package:dougnut/entity/chart_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatelessWidget {
  final List<ChartData> dataSource;
  final List<ChartData>? dataSource2;

  const ChartWidget({super.key, required this.dataSource, this.dataSource2});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: SfCircularChart(
            tooltipBehavior: TooltipBehavior(enable: true),
            legend: Legend(
              isVisible: true,
              position: LegendPosition.right,
            ),

            series: <CircularSeries<ChartData, String>>[
              DoughnutSeries<ChartData, String>(

                dataSource: dataSource,
                xValueMapper: (ChartData data, _) => data.title,
                yValueMapper: (ChartData data, _) => data.val,
                pointColorMapper: (ChartData data, _) => data.color,
                radius: '100%',

              ),
              DoughnutSeries<ChartData, String>(
                dataSource: dataSource2,
                xValueMapper: (ChartData data, _) => data.title,
                yValueMapper: (ChartData data, _) => data.val,
                pointColorMapper: (ChartData data, _) => data.color,
                radius: '70%',
                innerRadius: '60%',
              )
            ],
          ),
        ),
      ],
    );
  }
}
