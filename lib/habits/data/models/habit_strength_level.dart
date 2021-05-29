//TODO: Make valid names and extension for those
enum HabitStrengthLevel {
  //1-7 days
  newbie,
  //8-21 days
  inProgress,
  //22-120 days - buddy so u do not necessarily like it but u do it, sometimes
  //if there is a mess in your schedule you skip it or smth
  //TODO: - really? buddy? xd
  buddy,
  //120+ days
  acquired
}

extension XHabitStrengthLevel on HabitStrengthLevel {
  String get value {
    return this.toString().split('.').last;
  }

  ///May throw [FormatException] if value is wrong
  static HabitStrengthLevel fromValue(String value) {
    for (final lvl in HabitStrengthLevel.values) {
      if (lvl.value == value) return lvl;
    }
    throw const FormatException(
        'Trying to get value of level but value does not correspond to types');
  }
}
