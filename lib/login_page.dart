import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simple_login_app/custom_widgets/custom_image_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool _isPasswordObscure = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _tooglePasswordObscure() =>
      setState(() => _isPasswordObscure = !_isPasswordObscure);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: const CustomImageWidget(
                          imageProvider: AssetImage('assets/logo_iv1.png'),
                          size: 200)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                      hintText: "Usuario",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      )),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText:
                                      _isPasswordObscure ? true : false,
                                  decoration: InputDecoration(
                                      hintText: "Contraseña",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(_isPasswordObscure
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onPressed: () =>
                                            _tooglePasswordObscure(),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Expanded(
                          child: Container(
                        color: Colors.white,
                      )),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: OutlinedButton(
                              onPressed: () => _onLogInPressed(context),
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: const Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                          )),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onLogInPressed(BuildContext context) {
    Fluttertoast.showToast(
      msg: "Log In Clicked",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );

    Navigator.of(context).pushReplacementNamed('/home');
  }
}
