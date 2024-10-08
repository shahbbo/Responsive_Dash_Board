import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class MYDropDowm extends StatefulWidget {
  const MYDropDowm({super.key});

  @override
  MYDropDowmState createState() => MYDropDowmState();
}

String option = 'Monthly';

class MYDropDowmState extends State<MYDropDowm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFF064060), width: 1.3),
      ),
      child: DropdownButton<String>(
        value: option,
        style: TextStyles.medium16(context),
        borderRadius: BorderRadius.circular(15),
        focusColor: Colors.white,
        dropdownColor: Colors.white,
        icon: Transform.rotate(
            angle: -1.5707,
            child:
                const Icon(Icons.arrow_back_ios_new, color: Color(0xFF064060))),
        iconSize: 20,
        underline: Container(
          height: 0,
          color: Colors.white,
        ),
        alignment: Alignment.topCenter,
        onChanged: (String? newValue) {
          setState(() {
            option = newValue!;
          });
        },
        items: <String>['Monthly', 'Yearly', 'Weekly', 'Daily']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.calendar_month, color: Colors.blue),
                  // const SizedBox(width: 5),
                  Text(
                    value,
                    style: TextStyles.medium16(context),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
        selectedItemBuilder: (BuildContext context) {
          return <String>['Monthly', 'Yearly', 'Weekly', 'Daily']
              .map<Widget>((String value) {
            return IntrinsicWidth(
              child: Row(
                children: [
                  Text(value, style: TextStyles.medium16(context)),
                  const SizedBox(width: 8),
                  // const Icon(null),
                ],
              ),
            );
          }).toList();
        },
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';

class MYDropDowm extends StatefulWidget {
  const MYDropDowm({super.key});

  @override
  _MYDropDowmState createState() => _MYDropDowmState();
}

String option = 'Monthly';

class _MYDropDowmState extends State<MYDropDowm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(15),
          focusColor: Colors.white,
          dropdownColor: Colors.white,
          icon: const Icon(Icons.keyboard_arrow_down_sharp),
          iconSize: 24,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 0,
            color: Colors.white,
          ),
          value: option,
          items: <String>['Monthly', 'Yearly', 'Weekly', 'Daily']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              option = newValue!;
            });
          },
        ),
    );
  }
}*/
