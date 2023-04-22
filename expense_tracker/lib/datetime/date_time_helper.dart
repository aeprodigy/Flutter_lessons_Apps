//convert DateTime object to a string yyyymmdd
String convertDateTimeToString(DateTime dateTime) {
  //year int the format -> yyyy
  String year = dateTime.year.toString();

  //day in the format -> dd
  String day = dateTime.day.toString();
  if (day.length == 1) {
    day = '0$day';
  }

  //month in the format -> mm
  String month = dateTime.month.toString();
  if (month.length == 1) {
    month = '0$month'; //this is the same as writing month = '0' + month;
  }

  //The final date format.
  String yyyymmdd = year + month + day;

  return yyyymmdd;
  //the toString removes the excessive numbers after a day.
  /* 
    DateTime.now() -> 2023/2/11
                   -> 20230211
  */
}
