/*

Signup page
1. Textfield name(3 char min <20 > 3)
2. Number (min 10 char min max error)
3. Email (regex)
4. password (<6 * or .)
submit validate
sign in btn page
*/

import 'package:flutter/material.dart';
import 'package:sign_ops/signUp.dart';

// import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Login'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/me.jpg'),
                      radius: 50,
                    ),

                    // **********************************************************************
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.length < 3 || value.length > 21) {
                          return 'name must be of 3-20 chars.';
                        } else {
                          return null;
                        }
                        // if(value!.length == "" && value!.length > 3 && value!.length < 21){
                        //   return 'Name must be 3-20 characters';
                        // }else{
                        //   return null;
                        // }
                      },
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Enter Name',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),
// ************************************************************************************************

                    TextFormField(
                      validator: (value) {
                        if (value!.length != 10) {
                          return 'Enter 10 digit number';
                        } else {
                          return null;
                        }
                        // if(value!.length < 3 && value!.length > 21){
                        //   return 'Enter Correct Value ';
                        // }else{
                        //   return null;
                        // }
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Enter Number',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),

// *********************************************************************************
                    TextFormField(
                      validator: (value) {
                        // Check if this field is empty
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }else 

                  // using regular expression
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Please enter a valid email address";
                  } else {

                  // the email is valid
                  return null;
}
                        // String email = value;
                        // bool emailValid = RegExp(
                        //         r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                        //     .hasMatch(email);
                        // print(emailValid);
                        // if(value!.length != 10){
                        //   return 'Enter Correct Value ';
                        // }else{
                        //   return null;
                        // }
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Enter Email',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),

// *******************************************************************************
                    TextFormField(
                      obscureText: true,
                       obscuringCharacter: '●',
  // style: TextStyle(fontSize: 20),
                      validator: (value) {
                        RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
   if (value == null || value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password: (Must contain)\nMinimum 1 Upper case\nMinimum 1 lowercase\nMinimum 1 Numeric Number\nMinimum 1 Special Character\nCommon Allow Character \n( ! @ # \$ & * ~ )';
      } else {
        return null;
      }
    }
                        // if (value!.length != 10) {
                        //   return 'Enter Correct Value ';
                        // } else {
                        //   return null;
                        // }
                      },
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.black,fontSize: 10),
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),
// *********************************************************************************
                    ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print('Done');
                          } else {
                            print('worrg');
                          }
                        },
                        child: Text('Submit')),
                    InkWell(
                      onTap: () {
                        // print('sign up');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//         title: Text('My Login'),
//       ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               color: Colors.blue[170],
//             ),
//             Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.all(50),
//               child: Column(
//                 children: [
//                   Text('Sign In',style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     ),),
//                 CircleAvatar(
//                     backgroundImage: AssetImage('images/me.jpg'),
//                     radius:50,
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       hintText: 'Number' ,
//                       fillColor: Colors.white,
//                       filled: true,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(50),
//                       )
//                     ),
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                         hintText: 'Number' ,
//                         fillColor: Colors.white,
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                         )
//                     ),
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.emailAddress,
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                         hintText: 'Number' ,
//                         fillColor: Colors.white,
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                         )
//                     ),
//                   ),
//                   ElevatedButton(onPressed:(){
//                       print('submit');
//                       },
//                       child: Text('Submit'))
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp(MyApp());

// }

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: const LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Login'),
//       ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               color: Colors.blue[170],
//             ),
//             Container(
//               padding: EdgeInsets.all(50),
//               child: Column(
//                 children: [
//                   Text('Sign In'
//                   ,
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     ),
//                     ),
//                 Image.asset('/images/me.jpg'),
//                 CircleAvatar(
//                     backgroundImage: AssetImage('images/me.jpg'),
//                     radius:100,
//                   ),
//                   TextFormField(
//                     validator: (value){
//                       if(value!.length != 10){
//                         return 'please enter correct number';
//                       }else{
//                         return null;
//                       }
//                     },
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(color:Colors.red),
//                     decoration: InputDecoration(
//                       hintText: 'number',
//                     ),
//                   ),
//                   TextField(
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       hintText: 'Number',
//                       fillColor: Colors.white,
//                       filled: true,
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
//                       )
//                     ),
//                   ),
//                   ElevatedButton(onPressed: (){
//                     // print("Submit");
//                     // if(formKey.currentState)
//                   },
//                    child: Text("Submit"),),
//                    InkWell(
//                     onTap: (){
//                       Navigator.push(
//                         context,MaterialPageRoute(
//                           builder: (context) => SignUpPage()),
//                     },
//                    )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
