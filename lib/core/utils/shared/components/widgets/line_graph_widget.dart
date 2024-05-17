import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';
import 'package:mithraa_sports/core/utils/shared/components/widgets/line_chart_data.dart';

class LineGraphWidget extends StatelessWidget {
  const LineGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Graph for 3-3-3",
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: AppColor.headingColor,
                    fontSize: 12.sp,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "Best Timing: 00:00:10",
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: AppColor.headingColor,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              child: AspectRatio(
                aspectRatio: 16 / 6,
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(
                      handleBuiltInTouches: true,
                    ),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            return data.bottomTitle[value.toInt()] !=null
                                ?SideTitleWidget(axisSide: meta.axisSide, child: Text(
                              data.bottomTitle[value.toInt()].toString(), style: TextStyle(
                              fontSize: 10.sp, color: AppColor.blackTextColor, fontFamily: "Poppins-Medium",
                            ),
                            ),
                            ): const SizedBox();
                          }
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          getTitlesWidget: (double value, TitleMeta meta) {
                            return data.bottomTitle[value.toInt()] != null
                                ? SideTitleWidget(axisSide: meta.axisSide,
                              child: Text(
                                data.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: AppColor.blackTextColor,
                                  fontFamily: "Poppins-Medium",
                                ),
                              ),
                            ): const SizedBox();
                          },
                          showTitles: true,
                          interval: 1,
                          reservedSize: 40,
                        )
                      )
                    ),
                    borderData: FlBorderData(show: false),
                    lineBarsData: [LineChartBarData(
                      color: AppColor.appMainColor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                           Color(0xff0095da).withOpacity(0.5),
                            AppColor.whiteColor,
                          ],
                        ),
                        show: true,
                      ),
                      dotData: FlDotData(show: false),
                      spots: data.spots,
                    ),
                    ],
                    minX: 0,
                    maxX: 120,
                    minY: -5,
                    maxY: 105,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
