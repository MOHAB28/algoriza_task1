import 'package:flutter/material.dart';

import '../../../core/components/custom_app_bar.dart';
import '../../../core/components/custom_button.dart';
import '../../../core/components/custom_divider.dart';
import '../../../core/components/custom_headline_with_text_button.dart';
import '../../../core/components/custom_text_form_field.dart';
import '../../../core/components/sign_by_google_button.dart';
import '../../../core/components/text_beside_button.dart';
import '../../../core/resources/app_strings.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 80.0,
        showLeading: true,
        leadingOnPressed: () {
          Navigator.pop(context);
        },
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
                title: AppString.register,
              ),
              const SizedBox(height: 15.0),
              const CustomTextFormField(
                hintText: AppString.emailHintText,
                keyboardType: TextInputType.emailAddress,
                showCounterPicker: false,
                validatorText: 'Enter your email',
                title: AppString.email,
              ),
              const SizedBox(height: 20.0),
              const CustomTextFormField(
                hintText: AppString.phoneNumberHintText,
                keyboardType: TextInputType.phone,
                showCounterPicker: true,
                validatorText: 'Enter your phone',
                title: AppString.phoneNumber,
              ),
              const SizedBox(height: 20.0),
              const CustomTextFormField(
                hintText: AppString.password,
                keyboardType: TextInputType.visiblePassword,
                showCounterPicker: false,
                validatorText: 'Enter your password',
                title: AppString.password,
              ),
              const SizedBox(height: 20.0),
              CustomButtonBuilder(
                onPressed: () {},
                height: 55.0,
                title: AppString.register,
                color: Colors.blue,
                borderRadius: 3.0,
              ),
              const SizedBox(height: 15.0),
              const CustomDivider(),
              const SizedBox(height: 15.0),
              const SignByGoogleButton(),
              const SizedBox(height: 15.0),
              TextBseidesButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                textButtontitle: AppString.register,
                textTitle: AppString.doNotYouHaveAnAccount,
              ),
              const SizedBox(height: 10.0),
              Text(
                AppString.byRegistering,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              InkWell(
                onTap: (){},
                child: Center(
                  child: Text(
                    AppString.terms,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
