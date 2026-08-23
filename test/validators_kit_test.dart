import 'package:validators_kit/validators_kit.dart';
import 'package:test/test.dart';

void main() {
  group('ArabicValidators - normalizeNumbers', () {
    test('should convert Eastern Arabic numbers to Western Arabic numbers', () {
      expect(
        ArabicValidators.normalizeNumbers('٠١٢٣٤٥٦٧٨٩'),
        equals('0123456789'),
      );
    });

    test('should convert mixed text with Arabic numbers correctly', () {
      expect(
        ArabicValidators.normalizeNumbers('رقم الهاتف: ٠١٠١٢٣٤٥٦٧٨'),
        equals('رقم الهاتف: 01012345678'),
      );
    });

    test('should return empty string when input is empty', () {
      expect(ArabicValidators.normalizeNumbers(''), equals(''));
    });

    test('should leave Western numbers and English text unchanged', () {
      expect(ArabicValidators.normalizeNumbers('User 123'), equals('User 123'));
    });
  });
}
