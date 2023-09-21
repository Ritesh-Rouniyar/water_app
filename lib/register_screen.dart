import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:water_app/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController mailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController unameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController conpwdController = TextEditingController();
  bool _passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register Yourself',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                 TextField(
                  controller: mailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'E-mail',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                 TextField(
                  controller: unameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'UserName',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    prefixIcon: const Icon(Icons.people),
                  ),
                ),
      
                const SizedBox(
                  height: 10,
                ),
      
                 TextField(
                  controller: contactController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Contact',
                    hintStyle:const TextStyle(
                      fontSize: 20,
                    ),
                    prefixIcon: const Icon(Icons.phone_android),
                  ),
                ),
      
                const SizedBox(
                  height: 10,
                ),
      
                TextField(
                  controller: pwdController,
                  obscureText: _passwordObscured,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                      hintText: ' Password',
                      hintStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              _passwordObscured = !_passwordObscured;
                            },
                          );
                        },
                        icon: const Icon(Icons.visibility_off),
                      )),
                ),
      
                const SizedBox(
                  height: 10,
                ),
      
                
                const SizedBox(
                  height: 20,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: mailController.text, 
                      password: pwdController.text).then((value) {
                        print("Account Created");
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context)=>LoginPage())).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                          });
                      });
                        
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 253, 253, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Already have an account.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
