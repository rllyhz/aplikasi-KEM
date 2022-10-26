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
    var totalAlphabetChars = _lowerCaseAlphabeticalNumberings.length;
    if (index >= totalAlphabetChars) {
      index = totalAlphabetChars - 1;
    } else if (index <= 0) {
      index = 0;
    }
    return _lowerCaseAlphabeticalNumberings[index];
  } else if (numberingType == NumberingType.upperCaseAlphabetic) {
    var totalAlphabetChars = _upperCaseAlphabeticalNumberings.length;
    if (index >= totalAlphabetChars) {
      index = totalAlphabetChars - 1;
    } else if (index <= 0) {
      index = 0;
    }
    return _upperCaseAlphabeticalNumberings[index];
  } else if (numberingType == NumberingType.numeric) {
    if (index <= 0) index = 0;
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
  // counts mod (24 x 60 x 60) => day
  // counts / (60 x 60) => hours
  // (counts mod (60 x 60)) / 60  => mins
  // counts mod 60 => seconds

  // Ex: 120 counts (seconds)
  // 120 % (24 * 60 * 60) = 0
  // 120 / (60 * 60) = 0.03333333333333333
  // (120 % (60 * 60)) / 60 = 2
  // 120 % 60 = 0

  var seconds = countInSeconds % (24 * 60 * 60);
  var hours = seconds ~/ (60 * 60);
  seconds %= (60 * 60);
  var minutes = seconds ~/ 60;
  seconds %= 60;

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
