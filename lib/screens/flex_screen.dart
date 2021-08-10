import 'package:flutter/material.dart';

var flexvar_1 = 1, flexvar_2 = 4, flexvar_3 = 1;
int flexPresentage;
Widget _emptyBox = SizedBox(height: 20);

class TheFlexScreen extends StatefulWidget {
  @override
  _TheFlexScreenState createState() => _TheFlexScreenState();
}

class _TheFlexScreenState extends State<TheFlexScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _flexibleBuilder(Colors.red, flexvar_1),
          _flexibleBuilder(Colors.blue, flexvar_2),
          _flexibleBuilder(Colors.green, flexvar_3),
        ],
      ),
    );
  }
}

// _moreFlexPlease() {
//   return flexPresentage = flexPresentage++;
// }

_flexibleBuilder(Color theColor, int flexPresentage) {
  return Flexible(
    // fit: FlexFit.loose,
    flex: flexPresentage,
    child: Container(
      color: theColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Text(
              flexPresentage.toString(),
            ),
          ),
          _emptyBox,
          ElevatedButton(
              onPressed: () {
                //  _TheFlexScreenState().setState(() =>_moreFlexPlease());
              },
              child: Text('add more flex'))
        ],
      ),
    ),
  );
}
