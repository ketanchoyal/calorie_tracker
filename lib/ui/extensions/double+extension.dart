// ignore_for_file: file_names

extension doubleX on double {
  double toDoubleAsFixed(int x) => double.parse(toStringAsFixed(x));

  double get convertToUseableDouble {
    if (isNaN || isInfinite) {
      return 0;
    }
    return this;
  }
}
