import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rpedia/widget/textfield_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle loginCaption = textTheme.labelMedium!.copyWith(fontSize: 10);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 12),
            child: Image.asset(
              'images/rpedia-logos/logo-no-background.png',
              semanticLabel: 'Rpedia Logo',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                TextFieldWidget(
                  preIcon: Icons.people_alt,
                  placeholder: 'Username / Email',

                ),
                SizedBox(
                  height: 5,
                ),
                TextFieldWidget(
                  preIcon: Icons.lock,
                  suIcon: Icons.remove_red_eye,
                  placeholder: 'Password',

                ),
              ],
            ),
          ),
          SizedBox(
              width: 200,
              height: 40,
              child:
                  FilledButton(onPressed: () {}, child: const Text('Login'))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: loginCaption,
                    children: [
                      const TextSpan(
                        text: "Doesn't have an account? ",
                      ),
                      TextSpan(
                        text: 'Register',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                Text(
                  "Or",
                  style: loginCaption,
                ),
              ],
            ),
          ),
          SizedBox(
              height: 40,
              child: FilledButton.tonalIcon(
                onPressed: () {},
                icon: Image.asset('images/icons/google-icon.png'),
                label: Text(
                  'Continue with google',
                  style: textTheme.labelMedium,
                ),
              )),
        ],
      );
  }
}