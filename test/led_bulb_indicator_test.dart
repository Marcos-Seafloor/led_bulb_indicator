import 'package:flutter_test/flutter_test.dart';
import 'package:led_bulb_indicator/led_bulb_indicator.dart';

void main() {
  testWidgets('Start Lightbulb Test', (WidgetTester tester) async {
    await tester.pumpWidget(LedBulbIndicator(
      initialState: LedBulbColors.green,
      size: 20,
    ));
  });
}
