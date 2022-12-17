import 'package:flutter/material.dart';
import 'main.dart';

class SixthRoute extends StatelessWidget {
   SixthRoute({Key? key}) : super(key: key);

   final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Forgot Password'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              border: UnderlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                return "Enter your Email e.g flutter123@gmail.com";
                              } else {
                                return null;
                              }
                            },
                          )),

                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Current Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              border: UnderlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Current Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'New Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              border: UnderlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'New Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              border: UnderlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'New Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      FloatingActionButton.extended(
                        label: Text('Submit'), // <-- Text
                        backgroundColor: Colors.greenAccent,
                        icon: Icon( // <-- Icon
                          Icons.login_rounded,
                          size: 24.0,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/first');
                            return;
                          }
                        },
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}