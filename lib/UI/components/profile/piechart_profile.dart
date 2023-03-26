import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartCustom extends StatelessWidget {
  const PieChartCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.05),
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .5,
            //  color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Safety chekup",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  // Spacer(),
                  Text(
                    "Boost your safety profile by Turning on Additional feature",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      // fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 70,
              height: 70,
              child: PieChart(
                dataMap: const {
                  "Completed": 1,
                  "Pending": 2,
                },
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: const [
                  Colors.blue,
                  Colors.white,
                ],
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                ),
                ringStrokeWidth: 8,
                centerText: "1/3",
                legendOptions: const LegendOptions(
                  showLegendsInRow: false,
                  showLegends: false,
                  legendShape: BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
