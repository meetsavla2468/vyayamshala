import 'package:flutter/material.dart';

class customSearchBox extends StatelessWidget {
  const customSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: theme.accentColor,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: theme.primaryColorLight,
              size: 30,
            ),
            hintText: "Search",
            hintStyle: const TextStyle(
              height: 1.4,
            ),
            suffixIcon: const Icon(
              Icons.sort,
              size: 28,
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusColor: Colors.red,
            iconColor: theme.primaryColorDark,
            hoverColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
