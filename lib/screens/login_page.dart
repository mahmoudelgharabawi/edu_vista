import 'package:edu_vista/screens/confirm_password_page.dart';
import 'package:edu_vista/screens/reset_password_page.dart';
import 'package:edu_vista/screens/signup_page.dart';
import 'package:edu_vista/utils/color_utilis.dart';
import 'package:edu_vista/widgets/Custom_text_button.dart';
import 'package:edu_vista/widgets/custom_elevated_button.dart';
import 'package:edu_vista/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'LoginPage';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorUtility.gbScaffold,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => const ConfirmPasswrdPage()));
      }),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Login',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextFormField(
                      hintText: 'Demo@gmail.com',
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      hintText: '***********',
                      labelText: 'Password',
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 3,
                            indent: 10,
                            endIndent: 10,
                            color: Colors.black,
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
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomElevatedButton(
                            horizontal: 20,
                            width: 265,
                            backgroundColor: const Color(0xff1877f2),
                            foregroundColor: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    'assets/images/facebook-64.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'Sign In with Facebook',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            onPressed: () {}),
                        Expanded(
                          child: CustomElevatedButton(
                            horizontal: 0,
                            width: 70,
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 23,
                              height: 23,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 17),
                        ),
                        CustomTextButton(
                          label: 'Sign Up',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SignUpPAge())));
                          },
                        )
                      ],
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
