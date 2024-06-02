import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String googleIimagePath;
  final String googleText;
  final String appleImagePath;
  final String appleText;
  const AuthButton({
    Key? key,
    required this.googleIimagePath,
    required this.appleImagePath,
    required this.onPressed,
    required this.googleText,
    required this.appleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 327,
            height: 48,
            child: ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Color.fromRGBO(142, 124, 255, 1),
                    width: 2,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              onPressed: onPressed,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(googleIimagePath),
                    SizedBox(width: 10),
                    Text(googleText),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 327,
            height: 48,
            child: ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Color.fromRGBO(142, 124, 255, 1),
                    width: 2,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              onPressed: onPressed,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(appleImagePath),
                    SizedBox(width: 10),
                    Text(appleText),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
