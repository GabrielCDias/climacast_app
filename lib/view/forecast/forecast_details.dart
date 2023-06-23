import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:climacast_app/view/theme/constants.dart';
import 'package:climacast_app/view/forecast/widgets/forecast_widget.dart';

class ForecastDetails extends StatelessWidget {
  final int index;
  const ForecastDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        title: const Text(
          'Detalhes',
          style: whiteTxt20,
        ),
        centerTitle: true,
        backgroundColor: blackColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          ForecastWidget(index: index),
        ],
      ),
    );
  }
}
