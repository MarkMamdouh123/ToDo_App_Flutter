import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {},
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget getSelectedWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$text',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
          ),
        ),
        Icon(
          Icons.check,
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget getUnSelectedWidget(String text) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: 23,
        color: Colors.black,
      ),
    );
  }
}
