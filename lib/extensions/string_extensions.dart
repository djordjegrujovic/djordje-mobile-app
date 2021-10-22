extension StringExtension on String {
  String replaceSpaceWithNonBreakingSpace() {
    return replaceAll(' ', '\u00A0');
  }
}
