import 'package:flutter/material.dart';
import 'package:climacast_app/model/weather_model/weather_model.dart';
import 'package:climacast_app/view/theme/constants.dart';
import 'package:climacast_app/view/forecast/widgets/forecast_inherited_widget.dart';

class ForecastWidget extends StatelessWidget {
  final String? weatherDate;
  final List<ListDatas>? dailyForecastList;
  final int index;

  const ForecastWidget({
    Key? key,
    required this.index,
    this.weatherDate,
    this.dailyForecastList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListDatas forecastList;
    if (dailyForecastList != null) {
      forecastList = dailyForecastList![index];
    } else {
      forecastList = ForecastInheritedWidget.of(context)!.forecastList[index];
    }

    // Get the time of weather
    String weatherTime = forecastList.dtTxt!.substring(
        forecastList.dtTxt!.indexOf(' ') + 1, forecastList.dtTxt!.length);
    final time = weatherTime.substring(0, 5);

// Get the Daily Forecast List

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 81, 80, 85),
              Color.fromARGB(255, 78, 77, 82),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            weatherDate != null
                ? Text(
                    weatherDate!,
                    style: whiteTxt14,
                  )
                : Text(
                    time,
                    style: whiteTxt18,
                  ),
            const Divider(
              color: blackClr45,
            ),
            sbHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('${forecastList.main!.humidity}', style: whiteTxt20),
                    const Text(
                      'Humidade',
                      style: whiteTxt18,
                    )
                  ],
                ),
                sbHeight10,
                Column(
                  children: [
                    Text('${forecastList.main!.temp}°C', style: whiteTxt20),
                    sbHeight10,
                    Text(
                      forecastList.weather![0].main.toString(),
                      style: whiteTxt22,
                    ),
                  ],
                ),
                sbHeight10,
                Column(
                  children: [
                    Text(
                      '${forecastList.wind!.speed} m/s',
                      style: whiteTxt20,
                    ),
                    const Text(
                      'Vento',
                      style: whiteTxt18,
                    )
                  ],
                ),
              ],
            ),
            sbHeight20
          ],
        ),
      ),
    );
  }
}
