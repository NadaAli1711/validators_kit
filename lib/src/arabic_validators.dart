abstract class ArabicValidators {
  static const Map<String, String> _arabicToEnglishNumbers = {
    '٠': '0',

    '١': '1',

    '٢': '2',

    '٣': '3',

    '٤': '4',

    '٥': '5',

    '٦': '6',

    '٧': '7',

    '٨': '8',

    '٩': '9',
  };

  static final RegExp _arabicDigitsRegex = RegExp(r'[٠-٩]');

  /// Converts Eastern Arabic numerals (٠-٩) to Western Arabic numerals (0-9).

  static String normalizeNumbers(String input) {
    if (input.isEmpty) return input;

    return input.replaceAllMapped(
      _arabicDigitsRegex,

      (match) => _arabicToEnglishNumbers[match.group(0)]!,
    );
  }
}
