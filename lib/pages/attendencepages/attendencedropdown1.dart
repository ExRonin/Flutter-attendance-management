import 'package:attendence_management_system/pages/attendencepages/attendencedropdownpage2.dart';
import 'package:attendence_management_system/theme/colors.dart';
import 'package:attendence_management_system/widgets/dropDownWidget.dart';
import 'package:attendence_management_system/utils/names.dart';
import 'package:flutter/material.dart';

class AttendenceDropdownPage1 extends StatefulWidget {
  const AttendenceDropdownPage1({Key? key}) : super(key: key);

  @override
  _AttendenceDropdownPage1State createState() =>
      _AttendenceDropdownPage1State();
}

class _AttendenceDropdownPage1State extends State<AttendenceDropdownPage1> {
  @override
  Widget build(BuildContext context) {
    // String programdropdownValue = Program[0];
    // String branchdropdownValue = Branch[0];
    // String schooldropdownValue = School[0];
    // String semdropdownValue = Semester[0];
    // String yeardropdownValue = CollegeYear[0];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: new ListView(physics: BouncingScrollPhysics(), children: [
          Center(
            child: Image.asset('assets/Logo_Login_Page.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
              child: Text(
            "Absensi Mahasiswa",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0)),
          )),
          const SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                dropdown(
                  DropdownValue: programdropdownValue,
                  Hint: "Program",
                  sTring: Program,
                ),
                SizedBox(
                  height: 20,
                ),
                dropdown(
                    DropdownValue: schooldropdownValue,
                    Hint: "School",
                    sTring: School),
                SizedBox(
                  height: 20,
                ),
                dropdown(
                    DropdownValue: branchdropdownValue,
                    sTring: Branch,
                    Hint: "Branch"),
                SizedBox(
                  height: 20,
                ),
                dropdown(
                    DropdownValue: yeardropdownValue,
                    sTring: CollegeYear,
                    Hint: "Year"),
                SizedBox(
                  height: 20,
                ),
                // dropdownButton(batchdropdownValue,Batch,"Batch"),
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => AttendenceDropdownpage2()),
                    );
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50),
                      primary: primaryColor,
                      onPrimary: Color.fromARGB(255, 255, 255, 255),
                      elevation: 10,
                      textStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 20)),
                )
              ],
            ),
            // DropdownButton<String>(
            //   isExpanded: true,
            //   value: dropdownValue,
            //   icon: const Icon(Icons.keyboard_arrow_down_outlined),
            //   elevation: 16,
            //   style: const TextStyle(color: Colors.black),
            //   // underline: Container(
            //   //     height: 2,
            //   // color: Colors.black),
            //   onChanged: (String? newValue) {
            //     setState(() {
            //       dropdownValue = newValue!;
            //     });
            //   },
            //   items: <String>['One', 'Two', 'Free', 'Four']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
          ),
        ]),
      ),
    );
  }
}
