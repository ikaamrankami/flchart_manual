import 'package:flutter/material.dart';

class TaskCheckboxRow extends StatelessWidget {
  final bool isChecked;

  const TaskCheckboxRow({Key? key, required this.isChecked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.black;
              }
              return Colors.black;
            },
          ),
          checkColor: Colors.black,
          value: isChecked,
          onChanged: null,
        ),
        const Text("Completed Tasks"),
        const SizedBox(
          width: 25,
        ),
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.white;
              }
              return Colors.black;
            },
          ),
          tristate: true,
          checkColor: Colors.white,
          value: null,
          activeColor: Colors.white,
          onChanged: null,
        ),
        const Text("Total Tasks"),
      ],
    );
  }
}
