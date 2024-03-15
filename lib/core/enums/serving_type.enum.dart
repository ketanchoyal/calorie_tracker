enum ServingType {
  hundreedGrams('100g'),
  onePiece('1pc'),
  oneCup('1cup'),
  smallSized('small-sized'),
  mediumSized('medium-sized'),
  largeSized('large-sized');

  final String value;

  String get displayValue {
    switch (this) {
      case ServingType.hundreedGrams:
        return '100 grams';
      case ServingType.onePiece:
        return '1 Piece';
      case ServingType.oneCup:
        return '1 Cup';
      case ServingType.smallSized:
        return 'Small Sized';
      case ServingType.mediumSized:
        return 'Medium Sized';
      case ServingType.largeSized:
        return 'Large Sized';
    }
  }

  const ServingType(this.value);
}
