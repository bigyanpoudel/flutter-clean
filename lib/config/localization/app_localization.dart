import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLocalization extends StatelessWidget {
  const AppLocalization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.locale;
    void choiceAction(String choice) {
      if (choice == Constants.eng) {
        context.setLocale(const Locale('en'));
      } else {
        context.setLocale(const Locale('ja'));
      }
    }

    return PopupMenuButton(
      icon: const Icon(
        Icons.language,
        color: Colors.white,
      ),
      onSelected: choiceAction,
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}

class Constants {
  static const String jap = 'Jap';
  static const String eng = 'Eng';
  static const List<String> choices = <String>[
    jap,
    eng,
  ];
}
