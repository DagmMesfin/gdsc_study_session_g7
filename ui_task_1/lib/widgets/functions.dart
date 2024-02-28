DateTime _parseDateString(String dateString) {
  List<String> dateParts = dateString.split('/');
  int day = int.parse(dateParts[0]);
  int month = int.parse(dateParts[1]);
  int year = int.parse(dateParts[2]);
  return DateTime(year, month, day);
}
