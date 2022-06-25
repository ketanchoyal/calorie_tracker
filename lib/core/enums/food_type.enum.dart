// ignore_for_file: sort_constructors_first

enum FoodType {
  breakfast('Breakfast', 0),
  lunch('Lunch', 1),
  dinner('Dinner', 2),
  snack('Snack', 3),
  dessert('Dessert', 4),
  other('Other', 5);

  final String displayName;
  final int sortValue;
  const FoodType(this.displayName, this.sortValue);

  @override
  String toString() {
    return displayName;
  }
}

extension FoodTypeX on FoodType {}
