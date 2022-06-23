import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPaymentButton extends StatelessWidget {
  final String text;
  final VoidCallback func;

  const CustomPaymentButton({Key? key, required this.text, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 60,
        width: media.size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: theme.accentColor,
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.aBeeZee(
              color: theme.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
