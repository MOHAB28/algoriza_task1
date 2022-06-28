import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/components/text_beside_button.dart';
import '../../../core/components/custom_app_bar.dart';
import '../../../core/components/custom_button.dart';
import '../../../core/components/custom_divider.dart';
import '../../../core/components/custom_headline_with_text_button.dart';
import '../../../core/components/custom_text_form_field.dart';
import '../../../core/components/sign_by_google_button.dart';
import '../../../core/resources/app_strings.dart';
import '../../register/view/register_view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: MediaQuery.of(context).size.height / 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.welcome,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              CustomHeadLineWithTextButton(
                onPressed: () {},
                title: AppString.signIn,
              ),
              const SizedBox(height: 15.0),
              const CustomTextFormField(
                hintText: AppString.phoneNumberHintText,
                keyboardType: TextInputType.phone,
                showCounterPicker: true,
                validatorText: 'Enter your phone',
                title: AppString.phoneNumber,
              ),
              const SizedBox(height: 20.0),
              CustomButtonBuilder(
                onPressed: () {},
                height: 55.0,
                title: AppString.signIn,
                color: Colors.blue,
                borderRadius: 3.0,
              ),
              const SizedBox(height: 20.0),
              const CustomDivider(),
              const SizedBox(height: 20.0),
              const SignByGoogleButton(),
              const SizedBox(height: 20.0),
              TextBseidesButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) =>  RegisterView(),
                    ),
                  );
                },
                textButtontitle: AppString.register,
                textTitle: AppString.doNotYouHaveAnAccount,
              ),
              const SizedBox(height: 20.0),
              Text(
                AppString.useTheApplicationRules,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
