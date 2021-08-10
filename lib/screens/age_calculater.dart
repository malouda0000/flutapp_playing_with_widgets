import 'package:flutter/material.dart';

TextEditingController _dateOfBirthController = new TextEditingController();

TextEditingController _todaysDateController = new TextEditingController();
Widget _emptyBox = SizedBox(height: 40);
var theContext;

class AgeCalculater extends StatefulWidget {
  @override
  _AgeCalculaterState createState() => _AgeCalculaterState();
}

class _AgeCalculaterState extends State<AgeCalculater> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Padding(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _dateOfBirthRowBuilder(),
            _emptyBox,
            _todaysDateRowBuilder(),
            _emptyBox,
            _ageResult(),
            _emptyBox,
            _nextBirthDateResult(),
          ],
        ),
      ),
    );
  }
}

_dateOfBirthRowBuilder() {
  // to build the hole date of birth row
  return Column(
    children: [
      _titleBuilder("date of birth"),
      _textFeildBuilder(_dateOfBirthController)
    ],
  );
}

_titleBuilder(String theTitle) {
  // i'll use it to build every title or header
  return Text(
    theTitle.toString(),
    style: TextStyle(fontWeight: FontWeight.bold),
  );
}

_textFeildBuilder(
  // i'll use this func to build any text feild in this app
  TextEditingController theController,
) {
  return TextField(
    controller: theController,
    showCursor: true,
    // onTap: (() => {
    //       showDatePicker(
    //           context: theContext,
    //           initialDate: DateTime.now(),
    //           firstDate: DateTime(1940),
    //           lastDate: DateTime.now())
    //     }),
    decoration: InputDecoration(
      suffixIcon: Icon(
        Icons.date_range_outlined,
      ),
    ),
  );
}

_todaysDateRowBuilder() {
  return Column(children: [
    _titleBuilder("todays date"),
    _textFeildBuilder(_todaysDateController),
  ]);
}

_ageResult() {
  return Column(
    children: [
      _titleBuilder("the age result"),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _smallTabBuilder("years", "22"),
          _smallTabBuilder("years", "22"),
          _smallTabBuilder("years", "22"),
        ],
      ),
    ],
  );
}

_smallTabBuilder(String theTabTitle, String tabeText) {
  return Container(
      child: Column(children: [
    _titleBuilder(theTabTitle.toString()),
    Text(tabeText.toString()),
  ]));
}

_nextBirthDateResult() {
  return Column(
    children: [
      _titleBuilder("the age result"),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _smallTabBuilder("nextBirth", "22"),
          _smallTabBuilder("nextBirth", "22"),
          _smallTabBuilder("nextBirth", "22"),
        ],
      ),
    ],
  );
}
