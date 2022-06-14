extension ConvertToDate on String {
  DateTime parseDate() {
    var splitString = this.split("-");
    return DateTime(int.parse(splitString[2]), int.parse(splitString[1]),
        int.parse(splitString[0]));
  }
}

void main() {
  String date = "04-08-1994";

  DateTime dateTime = date.parseDate();

  print(dateTime);
}
