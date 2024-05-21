import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({super.key,  required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: SizedBox(
        child: MaterialButton(
            color: Colors.purple,
            padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 50.0
            ),
            onPressed:onPressed,
            child:Text(
              text,style: const TextStyle(
              color: Colors.white,
              fontSize: 17.0
            ),
            )
        ),
      ),
    );
  }
}
