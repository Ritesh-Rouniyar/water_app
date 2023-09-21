import 'package:flutter/material.dart';
import 'package:water_app/forgot_password_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _passwordObscured = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                    label: Text(
                      'E-mail',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(Icons.email)),
                validator: (value) {
                  return 'Message';
                },
              ),
              TextFormField(
                obscureText: _passwordObscured,
                decoration: InputDecoration(
                  label: const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordObscured = !_passwordObscured;
                      });
                    },
                    icon: const Icon(Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
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
                    MaterialPageRoute(builder: (context)=> ForgotPasswordPage(),),);
                },
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Create an account ?',
                  style: TextStyle(
                    fontSize: 15,
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
