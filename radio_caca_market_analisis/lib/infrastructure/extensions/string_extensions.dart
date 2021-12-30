extension StringExtensions on String? {
  String orDefault() => this ?? '';

  bool isNullOrEmpty() => this == null || this!.isEmpty;

  bool isNullOrWhiteSpace() => this == null || this!.isEmpty || this!.trim() == '';

  bool equalsIgnoreCase(String? value) =>
      (this == null && value == null) || (this != null && value != null && this!.toLowerCase() == value.toLowerCase());

  bool containsIgnoreCase(String? value) =>
      this != null && value != null && this!.toLowerCase().contains(value.toLowerCase());

  int compareIgnoreCase(String? value) => this!.toLowerCase().compareTo(value!.toLowerCase());
}
