import 'package:flutter/material.dart';
import 'package:led_bulb_indicator/led_bulb_indicator.dart';

main() => runApp(const LightBulbIndicatorExample());

class LightBulbIndicatorExample extends StatelessWidget {
  const LightBulbIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LedBulbIndicator(
                    initialState: LedBulbColors.green,
                    size: 25,
                  ),
                  LedBulbIndicator(
                    initialState: LedBulbColors.yellow,
                    size: 25,
                  ),
                  LedBulbIndicator(
                    initialState: LedBulbColors.red,
                    glow: true,
                    size: 50,
                  ),
                  LedBulbIndicator(
                    initialState: LedBulbColors.off,
                    size: 25,
                  ),
                ],
              ),
              Row(
                children: [
                  LedBulbIndicator(
                    initialState: LedBulbColors.red,
                    glow: true,
                    size: 20,
                    margin: 10,
                  ),
                  Text("Malfunction detected"),
                ],
              ),
              Row(
                children: [
                  LedBulbIndicator(
                    initialState: LedBulbColors.green,
                    size: 20,
                  ),
                  Text("All systems nominal"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
