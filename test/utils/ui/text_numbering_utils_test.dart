import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Text Numbering utils "getNumberingSuffixOf()"', () {
    test('get numbering suffix " "', () {
      var result = getNumberingSuffixOf(NumberingSuffix.bullet);
      expect(result, '');

      // second condition
      result = getNumberingSuffixOf(NumberingSuffix.parentheses);
      expect(result, isNot(''));
    });

    test('get numbering suffix "."', () {
      var result = getNumberingSuffixOf(NumberingSuffix.dot);
      expect(result, ".");
    });

    test('get numbering suffix ")"', () {
      var result = getNumberingSuffixOf(NumberingSuffix.parentheses);
      expect(result, ')');

      // second condition
      result = getNumberingSuffixOf(NumberingSuffix.dot);
      expect(result, isNot(')'));
    });
  });

  group('Text Numbering utils "getNumberingByIndex"', () {
    test('get numbering by index with numbering type is "numeric"', () {
      var index = 0;
      var result = getNumberingByIndex(
        index,
        NumberingType.numeric,
      );
      expect(result, "1");

      // second condition
      index = 12;
      result = getNumberingByIndex(index, NumberingType.numeric);
      expect(result, '13');

      // third condition => high index
      index = 86;
      result = getNumberingByIndex(index, NumberingType.numeric);
      expect(result, '87');

      // third condition => lower than 0 index
      // should always returns '1'
      index = -2;
      result = getNumberingByIndex(index, NumberingType.numeric);
      expect(result, '1');
    });

    test('get numbering by index with numbering type is "lowerCaseAlphabetic"',
        () {
      var index = 0;
      var result =
          getNumberingByIndex(index, NumberingType.lowerCaseAlphabetic);
      expect(result, "a");

      // second condition
      index = 20;
      result = getNumberingByIndex(index, NumberingType.lowerCaseAlphabetic);
      expect(result, 'u');

      // third condition => high index
      index = 64; // out of alphabetic chars range's index
      result = getNumberingByIndex(index, NumberingType.lowerCaseAlphabetic);
      expect(result, 'z'); // stop at 'z'

      // third condition => lower than 0 index
      // should always returns 'a'
      index = -2;
      result = getNumberingByIndex(index, NumberingType.lowerCaseAlphabetic);
      expect(result, 'a');
    });

    test('get numbering by index with numbering type is "upperCaseAlphabetic"',
        () {
      var index = 0;
      var result = getNumberingByIndex(
        index,
        NumberingType.upperCaseAlphabetic,
      );
      expect(result, 'A');

      // second condition
      index = 16;
      result = getNumberingByIndex(index, NumberingType.upperCaseAlphabetic);
      expect(result, "Q");

      // third condition => high index
      index = 78; // out of alphabetic chars range's index
      result = getNumberingByIndex(index, NumberingType.upperCaseAlphabetic);
      expect(result, 'Z'); // stop at 'Z'

      // third condition => lower than 0 index
      // should always returns 'A'
      index = -2;
      result = getNumberingByIndex(index, NumberingType.upperCaseAlphabetic);
      expect(result, 'A');
    });

    test('get numbering by index with numbering type is "bullet"', () {
      var index = 0;
      var result = getNumberingByIndex(
        index,
        NumberingType.bullet,
      );
      expect(result, "•");

      // second condition
      // whatever the index would be, the numbering remains the same
      index = 120;
      result = getNumberingByIndex(index, NumberingType.bullet);
      expect(result, '•');
    });
  });

  group('Get timer string format of counter in seconds', () {
    test('count is 0', () {
      var countInSeconds = 0;
      var result = getTimerStringOf(countInSeconds);
      expect(result, '00:00:00');
    });

    test('count is 8', () {
      var countInSeconds = 8;
      var result = getTimerStringOf(countInSeconds);
      expect(result, '00:00:08');
    });

    test('count is 62', () {
      var countInSeconds = 62;
      var result = getTimerStringOf(countInSeconds);
      expect(result, '00:01:02');
    });

    test('count is 7189', () {
      var countInSeconds = 7189;
      var result = getTimerStringOf(countInSeconds);
      expect(result, '01:59:49');
    });
  });
}
