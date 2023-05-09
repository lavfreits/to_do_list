import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(label,
                  style: const TextStyle(
                      fontSize: 20)),
            ),

            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
                const TextStyle(
                  color: Colors.black54,
                  decoration: TextDecoration.lineThrough,
                );
              },
            ),
          ],
        ),)
      ,
    );
  }
}
