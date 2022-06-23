import 'package:flutter/material.dart';
import 'package:khana/Screens/MealScreen/MenuListView.dart';
import 'package:khana/Utils/Theme/themes.dart';
import 'package:khana/Widgets/Appbar/homeAppBar.dart';
import 'package:khana/Widgets/Textfield/textSearchBox.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        context,
        () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const customSearchBox(),
            MenuListView(
              media: media,
            ),
          ],
        ),
      ),
    );
  }
}
