import 'package:edu_vista/screens/login_page.dart';
import 'package:edu_vista/widgets/Custom_text_button.dart';
import 'package:edu_vista/widgets/custom_elevated_button.dart';
import 'package:edu_vista/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPAge extends StatefulWidget {
  static String id = 'SignUpPAge';
  const SignUpPAge({super.key});

  @override
  State<SignUpPAge> createState() => _SignUpPAgeState();
}

class _SignUpPAgeState extends State<SignUpPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextFormField(
                      hintText: 'Mariam Attef ',
                      labelText: 'Full Name',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: 'Demo@gmail.com',
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: '***********',
                      labelText: 'Password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: '***********',
                      labelText: 'Confirm Password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    CustomTextButton(
                      label: 'Forgot Password ?',
                      onPressed: () {},
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 3,
                              indent: 10,
                              endIndent: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Or sign with',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 3,
                              indent: 10,
                              endIndent: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CustomElevatedButton(
                            width: 230,
                            backgroundColor: const Color(0xff1877f2),
                            foregroundColor: Colors.white,
                            child: const Text(
                              'Sign In with Facebook',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {}),
                        Expanded(
                          child: CustomElevatedButton(
                            width: 100,
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 70,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already Have an acount',
                          style: TextStyle(fontSize: 17),
                        ),
                        CustomTextButton(
                          label: 'Login Here',
                          onPressed: () {
                            Navigator.pushNamed(context, LoginPage.id);
                          },
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
        ],
      ),
    );

    ;
  }
}
