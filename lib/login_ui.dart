import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Image.asset(
                'assets/images/login_ui.png',
                height: MediaQuery.of(context).size.height * .32,
              ),
              const SizedBox(
                height: 34,
              ),
              const Text(
                'Login Now',
                style: TextStyle(color: Colors.black, fontSize: 34),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Please enter the details below to continue',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    hintStyle: const TextStyle(fontSize: 12),
                    hintText: 'Enter your Email',
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                obscureText: !visible,
                decoration: InputDecoration(
                    filled: true,
                    hintStyle: const TextStyle(fontSize: 12),
                    hintText: 'Enter your Password',
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                    suffixIcon: IconButton(
                      icon: visible == true
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                    ),
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Color(0xffee0f37),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 74,
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color(0xffee0f37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text('LOGIN' , style: TextStyle(color: Colors.white , fontSize: 16),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   bool visible = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height * .1,
//               ),
//               Image.asset(
//                 'assets/images/login_ui.png',
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height * .32,
//               ),
//               const SizedBox(
//                 height: 34,
//               ),
//               const Text(
//                 'Login Now',
//                 style: TextStyle(color: Colors.black, fontSize: 34),
//               ),
//               const SizedBox(
//                 height: 6,
//               ),
//               const Text(
//                 'Please enter the details below to continue',
//                 style: TextStyle(color: Colors.grey),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                     filled: true,
//                     hintStyle: const TextStyle(fontSize: 12),
//                     hintText: 'Enter your Email',
//                     contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16, vertical: 18),
//                     fillColor: Colors.grey[200],
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide.none)),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                 keyboardType: TextInputType.number,
//                 obscureText: !visible,
//                 decoration: InputDecoration(
//                     filled: true,
//                     hintStyle: const TextStyle(fontSize: 12),
//                     hintText: 'Enter your Password',
//                     contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16, vertical: 18),
//                     suffixIcon: IconButton(
//                       icon: visible == true
//                           ? const Icon(Icons.visibility)
//                           : const Icon(Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           visible = !visible;
//                         });
//                       },
//                     ),
//                     fillColor: Colors.grey[200],
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide.none)),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Align(
//                 alignment: Alignment.topRight,
//                 child: Text(
//                   'Forget Password?',
//                   style: TextStyle(
//                     color: Color(0xffee0f37),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               SizedBox(
//                 width: MediaQuery
//                     .of(context)
//                     .size
//                     .width,
//                 height: 74,
//                 child: MaterialButton(
//                   onPressed: () {},
//                   color: const Color(0xffee0f37),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(40)
//                   ),
//                   child: const Text('LOGIN',
//                     style: TextStyle(color: Colors.white, fontSize: 16),),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
