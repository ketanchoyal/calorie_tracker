class AddDataResult {
  AddDataResult({
    required this.carbsAdded,
    required this.fatAdded,
    required this.proteinAdded,
    required this.caloriesAdded,
  });
  factory AddDataResult.web() => AddDataResult(
        carbsAdded: false,
        fatAdded: false,
        proteinAdded: false,
        caloriesAdded: false,
      );

  /// variable to show if carb data was added
  final bool carbsAdded;

  /// variable to show if fat data was added
  final bool fatAdded;

  /// variable to show if protein data was added
  final bool proteinAdded;

  /// variable to show if calories data was added
  final bool caloriesAdded;

  bool get anyTrue {
    return carbsAdded || fatAdded || proteinAdded || caloriesAdded;
  }
}
