import'package:flutter/material.dart';

import '../resources/app_strings.dart';

class CustomHeadLineWithTextButton extends StatelessWidget {
  const CustomHeadLineWithTextButton({
    Key? key,
    required String title,
    required VoidCallback onPressed,
  })  : _title = title,
        _onPressed = onPressed,
        super(key: key);

  final String _title;
  final VoidCallback _onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          _title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        TextButton(
          onPressed: () {
            _onPressed();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                AppString.help,
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(width: 3.0),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(3.0),
                child: const Center(
                  child: Icon(
                    size: 15.0,
                    Icons.question_mark_rounded,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
