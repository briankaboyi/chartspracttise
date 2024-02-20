import 'package:dougnut/entity/chart_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatelessWidget {
  final List<ChartData> dataSource;
  final List<ChartData>? dataSource2;
  final String chart_title;

  const ChartWidget(
      {super.key,
      required this.dataSource,
      this.dataSource2,
      required this.chart_title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color(0xffFEFAE0),
                borderRadius: BorderRadius.circular(12)),
            child: SfCircularChart(
              title: ChartTitle(
                  text: chart_title,
                  alignment: ChartAlignment.near,
                  textStyle: TextStyle(fontSize: 16)),
              tooltipBehavior: TooltipBehavior(enable: true),
              legend: Legend(
                isVisible: true,
                position: LegendPosition.right,
                legendItemBuilder: (String name,
                    ChartSeries<dynamic, dynamic>? series,
                    ChartPoint<dynamic> point,
                    int seriesIndex) {
                  final ChartData data =
                      series!.dataSource![seriesIndex] as ChartData;
                  return Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: Container(
                        width: 120,
                        height: 12,
                        child: Row(
                          children: [
                            Container(
                              width: 18,
                              height: 12,
                              decoration: BoxDecoration(
                                color: data.color,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(name, style: TextStyle(fontSize: 14)),
                          ],
                        )),
                  );
                },
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
                  innerRadius: '70%',
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
