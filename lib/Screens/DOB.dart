import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/FullName.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utils/toolbar.dart';

class DOB extends StatefulWidget {
  @override
  _DOBState createState() => _DOBState();
}

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';

class _DOBState extends State<DOB> {


  // bool _showTitle = true;
  //
  // DateTimePickerLocale _locale = DateTimePickerLocale.en_us;
  // List<DateTimePickerLocale> _locales = DateTimePickerLocale.values;
  //
  // String _format = 'yyyy-MMMM-dd';
  // TextEditingController _formatCtrl = TextEditingController();
  //
  // DateTime _dateTime;


  @override
  Widget build(BuildContext context) {


    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Creat Account"),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23,),
                      // Whats your date of birth ?
                      setBoldText(
                        "Whats your date of birth?",
                        30,
                        Colors.white,
                        FontWeight.w700,
                        FontStyle.normal,
                      ),

                      SizedBox(height: 6.7,),





                    ],
                  ),
                ),

                Next_White_Button(
                  onChanged: (value) {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => FullName(),
                      ));
                    });
                  },
                )
              ],
            ),
          ),

          // display DatePicker floating action button
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _showDatePicker,
          //   tooltip: 'Show DatePicker',
          //   child: Icon(Icons.date_range),
          // ),
        )
    );
  }

  // /// Display date picker.
  // void _showDatePicker() {
  //   DatePicker.showDatePicker(
  //     context,
  //     onMonthChangeStartWithFirstDate: true,
  //     pickerTheme: DateTimePickerTheme(
  //       showTitle: _showTitle,
  //       confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
  //     ),
  //     minDateTime: DateTime.parse(MIN_DATETIME),
  //     maxDateTime: DateTime.parse(MAX_DATETIME),
  //     initialDateTime: _dateTime,
  //     dateFormat: _format,
  //     locale: _locale,
  //     onClose: () => print("----- onClose -----"),
  //     onCancel: () => print('onCancel'),
  //     onChange: (dateTime, List<int> index) {
  //       setState(() {
  //         _dateTime = dateTime;
  //       });
  //     },
  //     onConfirm: (dateTime, List<int> index) {
  //       setState(() {
  //         _dateTime = dateTime;
  //       });
  //     },
  //   );
  // }

}
