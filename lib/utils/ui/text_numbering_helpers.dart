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

String getTimerStringOf(int countInSeconds) {
  // counts / (60 * 60) => hours
  // counts / 60 => mins
  // counts & 60 => seconds

  // Ex: 120 counts (seconds)
  // 120 / (60 * 60) = 0.03333333333333333
  // 120 / 60 = 2
  // 120 mod 60 = 0

  var hours = countInSeconds ~/ (60 * 60);
  var minutes = countInSeconds ~/ 60;
  var seconds = countInSeconds % 60;

  var formattedHours = _formatTime(hours);
  var formattedMinutes = _formatTime(minutes);
  var formattedSeconds = _formatTime(seconds);

  return '$formattedHours:$formattedMinutes:$formattedSeconds';
}

String _formatTime(int time) {
  if (time < 10) {
    return "0$time";
  } else {
    return time.toString();
  }
}
