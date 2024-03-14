import 'package:flutter/material.dart';
import 'package:todo_app/sheets/languageBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 64, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language'),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    'English',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text('Mode'),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    'Light',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }

// void showThemeBottomSheet() {
//   showModalBottomSheet(
//       context: context, builder: (context) => ThemeBottomSheet());
// }
}
