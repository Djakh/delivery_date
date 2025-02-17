class DeliveryDateCalculator {
  final List<int> workingDays; // List of working days (e.g., [1, 2, 3, 4, 5] for Monday-Friday)

  DeliveryDateCalculator({required this.workingDays});

  /// Calculates the delivery date based on the order date and auto-increment days.
  /// Ensures the final date falls on a working day.
  DateTime calculateDeliveryDate(DateTime orderDate, int autoIncrementDays) {
    DateTime deliveryDate = orderDate.add(Duration(days: autoIncrementDays));

    // Keep shifting the date forward until it falls on a working day
    while (!workingDays.contains(deliveryDate.weekday)) {
      deliveryDate = deliveryDate.add(const Duration(days: 1));
    }

    return deliveryDate;
  }
}
