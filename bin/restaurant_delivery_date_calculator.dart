import 'package:restaurant_delivery_date_calculator/restaurant_delivery_date_calculator.dart';

void main() {
  // Example usage: Working days are Monday to Friday
  final calculator = DeliveryDateCalculator(workingDays: [1, 2, 3, 4, 5]);

  DateTime orderDate = DateTime(2024, 2, 16); // Friday
  int autoIncrementDays = 2;

  DateTime deliveryDate = calculator.calculateDeliveryDate(orderDate, autoIncrementDays);
  print("Order Date: $orderDate");
  print("Delivery Date: $deliveryDate"); // Expected delivery date: Tuesday (Feb 20)
}
