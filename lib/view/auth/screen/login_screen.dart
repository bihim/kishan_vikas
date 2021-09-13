import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Image.asset("assets/logo.png"),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: _loginTextField(
                  "Enter Email Address",
                  Icon(Icons.email_outlined),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: _loginTextField(
                  "Enter Password",
                  Icon(
                    Icons.lock_outline,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Don't have any account? Register here"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField _loginTextField(String hint, Widget icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.grey.shade900,
        filled: true,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1.h),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
