import 'package:flutter/material.dart';
import 'main.dart';

class FifthRoute extends StatelessWidget {
  FifthRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Create Account'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                        SizedBox(height: 5.0),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                hintText: 'Enter First Name',
                                prefixIcon: Icon(Icons.person),
                                border: UnderlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return "Name is Required";
                                } else {
                                  return null;
                                }
                              },
                            )),
                        SizedBox(height: 5.0),
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
                        SizedBox(height: 5.0),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Address',
                                hintText: 'Enter Address',
                                prefixIcon: Icon(Icons.house),
                                border: UnderlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Address is required';
                              },
                            )),
                        SizedBox(height: 5.0),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Number',
                                hintText: 'Enter Number',
                                prefixIcon: Icon(Icons.phone),
                                border: UnderlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                        .hasMatch(value)) {
                                  return "Enter Numbers only";
                                } else {
                                  return null;
                                }
                              },
                            )),
                        SizedBox(height: 5.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter password',
                                prefixIcon: Icon(Icons.lock),
                                border: UnderlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Password is required';
                              },
                            )),
                        SizedBox(height: 5.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                hintText: 'Confirm password',
                                prefixIcon: Icon(Icons.lock),
                                border: UnderlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Password is required';
                              },
                            )),
                        SizedBox(height: 5.0),
                        FloatingActionButton.extended(
                          label: Text('Create Account'), // <-- Text
                          backgroundColor: Colors.greenAccent,
                          icon: Icon(
                            // <-- Icon
                            Icons.person_add,
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
