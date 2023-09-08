extension StringX on String? {
  bool isNullOrBlank() {
    return this == null || this!.isEmpty;
  }

  bool isNotNullOrBlank() {
    return !isNullOrBlank();
  }
}
