import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 4,
        minY: 0,
      );

  // LineChartData get sampleData2 => LineChartData(
  //       lineTouchData: lineTouchData2,
  //       gridData: gridData,
  //       titlesData: titlesData2,
  //       borderData: borderData,
  //       lineBarsData: lineBarsData2,
  //       minX: 0,
  //       maxX: 14,
  //       maxY: 6,
  //       minY: 0,
  //     );

  ///////////////////////////////////////////////////////////////////////////////////////white bg
  ///

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Color.fromARGB(255, 255, 255, 255)),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: bottomTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
            }
            return '';
          },
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        // lineChartBarData1_2,
        // lineChartBarData1_3,
      ];

  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  // FlTitlesData get titlesData2 => FlTitlesData(
  //       show: false,
  //       bottomTitles: bottomTitles,
  //       rightTitles: SideTitles(showTitles: false),
  //       topTitles: SideTitles(showTitles: false),
  //       leftTitles: leftTitles(
  //         getTitles: (value) {
  //           switch (value.toInt()) {
  //             case 1:
  //               return '1m';
  //             case 2:
  //               return '2m';
  //             case 3:
  //               return '3m';
  //             case 4:
  //               return '5m';
  //             case 5:
  //               return '6m';
  //           }
  //           return '';
  //         },
  //       ),
  //     );

  // List<LineChartBarData> get lineBarsData2 => [
  //       lineChartBarData2_1,
  //       lineChartBarData2_2,
  //       lineChartBarData2_3,
  //     ];

  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: false,
        interval: 1,
        reservedSize: 0,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.transparent,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 22,
        margin: 10,
        interval: 1,
        getTextStyles: (context, value) => GoogleFonts.montserrat(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 2:
              return '7';
            case 4:
              return '8';
            case 6:
              return '9';
            case 8:
              return '10';
            case 10:
              return '11';
            case 12:
              return '12';
          }
          return '';
        },
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xffEBEBFF), width: 2),
          left: BorderSide(color: Color(0xffEBEBFF)),
          right: BorderSide(color: Color(0xffEBEBFF)),
          top: BorderSide(color: Color(0xffEBEBFF), width: 1),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [const Color(0xff4af699)],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  // LineChartBarData get lineChartBarData1_2 => LineChartBarData(
  //       isCurved: true,
  //       colors: [const Color(0xffaa4cfc)],
  //       barWidth: 8,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false, colors: [
  //         const Color(0x00aa4cfc),
  //       ]),
  //       spots: const [
  //         FlSpot(1, 1),
  //         FlSpot(3, 2.8),
  //         FlSpot(7, 1.2),
  //         FlSpot(10, 2.8),
  //         FlSpot(12, 2.6),
  //         FlSpot(13, 3.9),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData1_3 => LineChartBarData(
  //       isCurved: true,
  //       colors: const [Color(0xff27b6fc)],
  //       barWidth: 8,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  //         FlSpot(1, 2.8),
  //         FlSpot(3, 1.9),
  //         FlSpot(6, 3),
  //         FlSpot(10, 1.3),
  //         FlSpot(13, 2.5),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData2_1 => LineChartBarData(
  //       isCurved: true,
  //       curveSmoothness: 0,
  //       colors: const [Color(0x444af699)],
  //       barWidth: 4,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  //         FlSpot(1, 1),
  //         FlSpot(3, 4),
  //         FlSpot(5, 1.8),
  //         FlSpot(7, 5),
  //         FlSpot(10, 2),
  //         FlSpot(12, 2.2),
  //         FlSpot(13, 1.8),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData2_2 => LineChartBarData(
  //       isCurved: true,
  //       colors: const [Color(0x99aa4cfc)],
  //       barWidth: 4,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(
  //         show: true,
  //         colors: [
  //           const Color(0x33aa4cfc),
  //         ],
  //       ),
  //       spots: const [
  //         FlSpot(1, 1),
  //         FlSpot(3, 2.8),
  //         FlSpot(7, 1.2),
  //         FlSpot(10, 2.8),
  //         FlSpot(12, 2.6),
  //         FlSpot(13, 3.9),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData2_3 => LineChartBarData(
  //       isCurved: true,
  //       curveSmoothness: 0,
  //       colors: const [Color(0x4427b6fc)],
  //       barWidth: 2,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: true),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  //         FlSpot(1, 3.8),
  //         FlSpot(3, 1.9),
  //         FlSpot(6, 5),
  //         FlSpot(10, 3.3),
  //         FlSpot(13, 4.5),
  //       ],
  //     );
}

class LineChartSample1 extends StatefulWidget {
  const LineChartSample1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          // gradient: LinearGradient(
          //   colors: [
          //     Color(0xff2c274c),
          //     Color(0xff46426c),
          //   ],
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          // ),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 37,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.0, left: 0.0),
                    child: _LineChart(isShowingMainData: isShowingMainData),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
