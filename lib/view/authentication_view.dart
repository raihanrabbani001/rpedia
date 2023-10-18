import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  TextField textField(ColorScheme colorScheme, TextTheme textTheme,
      String placeholder, IconData preIcon,
      {IconData? suIcon}) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(preIcon),
        suffixIcon: Icon(suIcon),
        hintText: placeholder,
        hintStyle: textTheme.labelMedium,
        filled: true,
        fillColor: colorScheme.primary.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }

  Expanded leftPanel(
      ColorScheme colorScheme, TextTheme textTheme, TextStyle loginCaption) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: colorScheme.onSurface.withOpacity(0.05),
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow/BoxShadow
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 12),
              child: Image.asset(
                'images/rpedia-logos/logo-no-background.png',
                semanticLabel: 'Rpedia Logo',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  textField(
                    colorScheme,
                    textTheme,
                    'Username / Email',
                    Icons.people_alt,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  textField(colorScheme, textTheme, 'Password', Icons.lock,
                      suIcon: Icons.remove_red_eye)
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle loginCaption = textTheme.labelMedium!.copyWith(fontSize: 10);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 400,
      width: 800,
      child: Row(
        children: [
          leftPanel(colorScheme, textTheme, loginCaption),
          const SizedBox(
            width: 100,
          ),
          const Expanded(
            child: Column(children: [
              Text('right panel'),
            ]),
          ),
        ],
      ),
    );
  }
}
