import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:note_app_vtwo/settings/style_and_colors_utils.dart';

import 'package:note_app_vtwo/widget/add%20form/setBudgetForm.dart';
import 'package:note_app_vtwo/widget/header/userHeader_custom_without_searchbar.dart';

class SetBudgetPage extends StatelessWidget {
  const SetBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return const Scaffold(
      backgroundColor: bgColor,
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                UserheaderCustomWithoutSearchbar(
                  iconHeader: 'assets/setting icon.svg',
                  titlePage: 'Kelola Budget',
                ),
                Setbudgetform()
              ],
            ),
          )
        ],
      ),
    );
  }
}
