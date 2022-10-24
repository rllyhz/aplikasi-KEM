const _lowerCaseAlphabeticalNumberings = 'abcdefghijklmnopqrstuvwxyz';
const _upperCaseAlphabeticalNumberings = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

enum NumberingSuffix {
  dot,
  parentheses,
  bullet,
}

enum NumberingType {
  numeric,
  lowerCaseAlphabetic,
  upperCaseAlphabetic,
  bullet,
}

String getNumberingByIndex(int index, NumberingType numberingType) {
  if (numberingType == NumberingType.lowerCaseAlphabetic) {
    var lastIndex = _lowerCaseAlphabeticalNumberings.length - 1;
    return index >= lastIndex
        ? _lowerCaseAlphabeticalNumberings[lastIndex]
        : _lowerCaseAlphabeticalNumberings[index];
  } else if (numberingType == NumberingType.upperCaseAlphabetic) {
    var lastIndex = _upperCaseAlphabeticalNumberings.length - 1;
    return index >= lastIndex
        ? _upperCaseAlphabeticalNumberings[lastIndex]
        : _upperCaseAlphabeticalNumberings[index];
  } else if (numberingType == NumberingType.numeric) {
    return (index + 1).toString();
  } else {
    return "•";
  }
}

String getNumberingSuffixOf(NumberingSuffix numberingSuffix) {
  if (numberingSuffix == NumberingSuffix.parentheses) {
    return ')';
  } else if (numberingSuffix == NumberingSuffix.dot) {
    return '.';
  } else {
    return "";
  }
}
