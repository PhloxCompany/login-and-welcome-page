import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'login_ui.dart';

class WelcomeUi extends StatelessWidget {
  const WelcomeUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/welcome_image.png',
              height: MediaQuery.of(context).size.height * .51,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Translate & Earn',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Now it is easy to earn money, just use the\ntranslator and collect the point',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 40,
              height: 26,
              child: LoadingIndicator(
                indicatorType: Indicator.lineScaleParty,
                colors: [
                  Color(0xffee0f37),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: const Color(0xffee0f37),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 18),
                child: Text(
                  'GET START',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        fontSize: 16
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => const LoginUi(),

                            transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                            transitionDuration: const Duration(milliseconds: 1000),
                          ),
                        );                      },
                      style: const TextStyle(
                          color: Color(0xffee0f37),
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
