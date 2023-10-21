import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rpedia/widget/textfield_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextStyle headlineMedium = textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.bold,
        height: 2,
        color: colorScheme.primary.withOpacity(0.8));
    TextStyle labelMedium = textTheme.labelMedium!.copyWith(
        color: colorScheme.onSurface.withOpacity(0.5),
        fontWeight: FontWeight.bold);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                        onPressed: () => context.go('/login'),
                        icon: const Icon(Icons.arrow_back),
                        label: Text(
                          'Back to login',
                          style: textTheme.labelMedium,
                        )),
                    Text(
                      'Create Account',
                      style: headlineMedium,
                    ),
                    const Divider(
                      height: 2,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const TextFieldWidget(
                          label: 'Name',
                          preIcon: Icons.person,
                          placeholder: 'eg John Doe'),
                      TextFieldWidget(
                        label: 'Born',
                        preIcon: Icons.date_range,
                        placeholder: 'eg March 23 2004',
                        readOnly: true,
                        extend: FilledButton.tonal(
                              onPressed: () {},
                              child: Text(
                                'Pick date',
                                style: labelMedium,
                              ),),
                      ),
                      const TextFieldWidget(
                          label: 'Address',
                          preIcon: Icons.location_city,
                          placeholder:
                              'eg Pangalengan, Bandung Regency, West Java'),
                      TextFieldWidget(
                        label: 'Gender',
                        preIcon: Icons.face_6,
                        placeholder: 'eg Male / Female',
                        readOnly: true,
                        extend: SegmentedButton(
          
                          segments:  <ButtonSegment<String>>[
                                                      ButtonSegment<String>(
                                value: 'Male',
                                label: Text('Male',style: labelMedium,),
                                icon: const Icon(Icons.male)),
                                                      ButtonSegment<String>(
                                value: 'Female',
                                label: Text('Female',style: labelMedium,),
                                icon: const Icon(Icons.female)),
                                                      
                                                    ], selected: const <String>{'Male'})
                                                    ,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
                      const TextFieldWidget(
                          label: 'Email',
                          preIcon: Icons.mail,
                          placeholder: 'eg johndoe@domain.com'),
                      const TextFieldWidget(
                          label: 'Username',
                          preIcon: Icons.people_alt,
                          placeholder: 'eg johndoe7'),
                      TextFieldWidget(
                        label: 'Password',
                        obscureText: true,
                        preIcon: Icons.lock,
                        placeholder: 'Use symbol combination for strong password',
                        suIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye)),
                      ),
                      TextFieldWidget(
                        label: 'Confirm Password',
                        obscureText: true,
                        preIcon: Icons.lock_outline,
                        placeholder: '',
                        suIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            FilledButton(
              onPressed: () {},
              child: const Text(
                'Create',
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: Text(
                'Cancel',
                style: textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
