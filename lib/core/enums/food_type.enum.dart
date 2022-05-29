// ignore_for_file: sort_constructors_first

enum FoodType {
  breakfast('Breakfast'),
  lunch('Lunch'),
  dinner('Dinner'),
  snack('Snack'),
  dessert('Dessert'),
  other('Other');

  final String displayName;
  const FoodType(this.displayName);

  @override
  String toString() {
    return displayName;
  }
}
