import 'package:flutapp_playing_with_widgets/age_model.dart';
import 'package:flutapp_playing_with_widgets/duaration_model.dart';
import 'package:flutter/material.dart';

TextEditingController _dateOfBirthController = new TextEditingController();

TextEditingController _todaysDateController = new TextEditingController();
Widget _emptyBox = SizedBox(
  height: 40,
  width: 40,
  // color: Colors.red,              //this attrubute does't work with this widget
  // padding: EdgeInsets.all(30),     //this attrubute does't work with this widget too
);
Widget _smallEmptyBox = SizedBox(
  height: 20,
  width: 20,
);
var context;

Color myPrimaryColor = Colors.indigo;

Age _userAge = new Age();

Duration _nextBirthdate = new Duration();

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _dateOfBirthRowBuilder(),
            _emptyBox,
            _todaysDateRowBuilder(),
            _emptyBox,
            _ageResult(),
            _emptyBox,
            _nextBirthDateResult(),
            _emptyBox,
            _buildClearCalcButton(),
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
      _smallEmptyBox,
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
  TextEditingController theController, // its a constrocter for the controller
) {
  return TextField(
      controller: theController,
      showCursor: true,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1940),
          lastDate: DateTime.now(),
        );
      },
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.date_range_outlined,
        ),
        // enabled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: myPrimaryColor),
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
      ));
}

_todaysDateRowBuilder() {
  return Column(children: [
    _titleBuilder("todays date"),
    _smallEmptyBox,
    _textFeildBuilder(_todaysDateController),
  ]);
}

_ageResult() {
  return Column(
    children: [
      _titleBuilder("the age result"),
      _smallEmptyBox,
      Row(
        // verticalDirection: VeraticalDirection,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _smallTabBuilder("yeas", _userAge.years.toString()),
          _smallTabBuilder("monthes", _userAge.monthes.toString()),
          _smallTabBuilder("days", _userAge.days.toString()),
        ],
      ),
    ],
  );
}

_smallTabBuilder(String theTabTitle, String tabeText) {
  // i'll use this func on building blocks of data viewer
  // it's returns title and uneditable text feilde !!!! yeah bro

  return Column(
    children: [
      Container(
        // color: Theme.of(context).primaryColor,
        color: myPrimaryColor,
        height: 30,
        width: 115,
        child: Center(
          child: _titleBuilder(theTabTitle.toString()),
        ),
      ),
      Container(
        child: Center(child: Text(tabeText.toString())),
        height: 30,
        width: 115,
        decoration: BoxDecoration(
            border: Border.all(
          color: myPrimaryColor,
        )),
      ),
    ],
  );
}

_nextBirthDateResult() {
  return Column(
    children: [
      _titleBuilder("the age result"),
      _smallEmptyBox,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _smallTabBuilder("years", _nextBirthdate.years.toString()),
          _smallTabBuilder("monthes", _nextBirthdate.monthes.toString()),
          _smallTabBuilder("days", _nextBirthdate.days.toString()),
        ],
      ),
    ],
  );
}

_buildClearCalcButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buttonBuilder("clear"),
      _emptyBox,
      _buttonBuilder("calc"),
    ],
  );
}

_buttonBuilder(String theButtonName) {
  return Expanded(
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        'clear'.toUpperCase(),
      ),
      style: ButtonStyle(
          // i could'nt aply the theming her fuuuuuuckkkkkk
          // backgroundColor: Theme.of(context).primaryColor,
          // backgroundColor: Color(Colors.amber),
          ),
    ),
  );
}
