import 'package:flutter/material.dart';

enum LedBulbColors { off, red, green, yellow }

class LedBulbIndicator extends StatelessWidget {
  final LedBulbColors initialState;
  final bool glow;
  final double size;
  final double? margin;

  LedBulbIndicator(
      {Key? key,
      required this.initialState,
      this.margin,
      required this.size,
      this.glow = false})
      : super(key: key);

  final Map<LedBulbColors, List<Color>> bulbColors = {
    LedBulbColors.green: <Color>[
      Colors.green.shade900,
      Colors.green.shade300,
      Colors.greenAccent.shade100,
    ],
    LedBulbColors.yellow: <Color>[
      Colors.amber.shade900,
      Colors.amber.shade300,
      Colors.amberAccent.shade100,
    ],
    LedBulbColors.red: <Color>[
      Colors.red.shade900,
      Colors.red.shade300,
      Colors.redAccent.shade100,
    ],
    LedBulbColors.off: <Color>[
      Colors.grey.shade600,
      Colors.grey.shade400,
      Colors.grey.shade50,
    ]
  };
  final Map<LedBulbColors, List<Color>> reflectionBulbColors = {
    LedBulbColors.green: <Color>[
      Colors.white,
      Colors.white60,
      Colors.white10,
      Colors.transparent,
    ],
    LedBulbColors.yellow: <Color>[
      Colors.white,
      Colors.white60,
      Colors.white10,
      Colors.transparent,
    ],
    LedBulbColors.red: <Color>[
      Colors.white,
      Colors.white60,
      Colors.white10,
      Colors.transparent,
    ],
    LedBulbColors.off: <Color>[
      Colors.white,
      Colors.white60,
      Colors.white10,
      Colors.transparent,
    ]
  };
  final Map<LedBulbColors, Color> borderBulbColors = {
    LedBulbColors.green: Colors.green,
    LedBulbColors.yellow: Colors.amber,
    LedBulbColors.red: Colors.red,
    LedBulbColors.off: Colors.blueGrey.shade300
  };
  final Map<LedBulbColors, Color> glowBulbColors = {
    LedBulbColors.green: Colors.green,
    LedBulbColors.yellow: Colors.yellow,
    LedBulbColors.red: Colors.red,
    LedBulbColors.off: Colors.transparent
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(margin ?? 0),
        child: SizedBox(
          width: size,
          height: size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: glow
                      ? [
                          BoxShadow(
                              color: glowBulbColors[initialState]!,
                              blurRadius: size / 10,
                              spreadRadius: 2)
                        ]
                      : [],
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: borderBulbColors[initialState]!, width: size / 15),
                  gradient: LinearGradient(
                    colors: bulbColors[initialState]!,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              Positioned(
                top: size / 8,
                left: size / 5,
                width: size / 2.5,
                height: size / 2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: reflectionBulbColors[initialState]!,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
