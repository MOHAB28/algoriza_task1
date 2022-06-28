import 'package:flutter/material.dart';

import '../resources/app_strings.dart';
import '../resources/image_assets.dart';

class SignByGoogleButton extends StatelessWidget {
  const SignByGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.blue),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 35.0,
              width: 35.0,
              child: Image(
                image: AssetImage(ImageAssets.google),
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              AppString.signByGoogle,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
