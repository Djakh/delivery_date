import 'package:restaurant_delivery_date_calculator/restaurant_delivery_date_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Delivery Date Calculator Tests', () {
    final calculator = DeliveryDateCalculator(workingDays: [1, 2, 3, 4, 5]);

    test('Delivery date falls on a working day', () {
      DateTime orderDate = DateTime(2024, 2, 16); // Friday
      int autoIncrementDays = 2;
      DateTime result = calculator.calculateDeliveryDate(orderDate, autoIncrementDays);
      expect(result.weekday, equals(2)); // Should be Tuesday
    });

    test('Delivery date skips weekends', () {
      DateTime orderDate = DateTime(2024, 2, 15); // Thursday
      int autoIncrementDays = 2;
      DateTime result = calculator.calculateDeliveryDate(orderDate, autoIncrementDays);
      expect(result.weekday, equals(1)); // Should be Monday
    });
  });
}
