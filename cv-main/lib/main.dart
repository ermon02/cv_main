import 'package:flutter/material.dart';
import 'Create.dart';
import 'forgot.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => FifthRoute(),
      '/sixth': (context) => SixthRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  HomeRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 160, 6),
        appBar: AppBar(
          title: const Text('Curriculum Vitae'),
          backgroundColor: Color.fromARGB(255, 241, 100, 6),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/login.gif'),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter email',
                                    prefixIcon: Icon(Icons.email),
                                    border: OutlineInputBorder()),
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
                              padding: EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Password is required';
                                },
                              )),
                          SizedBox(height: 10.0),
                          FloatingActionButton.extended(
                            label: Text('Login'), // <-- Text
                            backgroundColor: Color.fromARGB(255, 231, 128, 9),
                            icon: Icon(
                              // <-- Icon
                              Icons.logout,
                              size: 24.0,
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/first');
                                return;
                              }
                            },
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/fifth');
                                },
                                child: const Text('Sign Up'),
                              ),
                              SizedBox(width: 20.0),
                              TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sixth');
                                },
                                child: const Text('Forgot Password'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 252, 174, 6),
        appBar: AppBar(
          title: const Text('Curriculum Vitae'),
          backgroundColor: Color.fromARGB(255, 255, 123, 0),
        ), // AppBar
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Color.fromARGB(255, 240, 164, 2),
                  backgroundImage: AssetImage('images/img.png'),
                ),
                SizedBox(height: 30.0),
                SizedBox(height: 5.0),
                Text(
                  'Name:',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    color: Colors.black,
                    fontSize: 15.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Parayno, Cyber Luz V.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                SizedBox(height: 5.0),
                Text(
                  'Position:',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    color: Colors.black,
                    fontSize: 15.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Information Technology',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    color: Colors.black,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: 350.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'cyberluzparayno8@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Number:',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '+639754155861',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Address:',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Longos, Calasiao,+ Pangasinan',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50.0),
                    ]),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 231, 170, 2), // background
                        onPrimary: Colors.black, // foreground
                      ),
                      child: const Icon(Icons.school),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                    ),
                    SizedBox(width: 30.0), // ElevatedButton
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 231, 170, 2), // background
                        onPrimary: Colors.black, // foreground
                      ),
                      child: const Icon(Icons.person),
                      onPressed: () {
                        Navigator.pushNamed(context, '/third');
                      },
                    ),
                    SizedBox(width: 30.0), // ElevatedButton
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 230, 177, 6), // background
                        onPrimary: Colors.black, // foreground
                      ),
                      child: const Icon(Icons.settings_rounded),
                      onPressed: () {
                        Navigator.pushNamed(context, '/fourth');
                      },
                    ),
                  ],
                ),
                SizedBox(width: 30.0),
                FloatingActionButton.extended(
                  label: Text('Logout'), // <-- Text
                  backgroundColor: Color.fromARGB(255, 250, 205, 4),
                  icon: Icon(
                    // <-- Icon
                    Icons.logout,
                    size: 24.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 197, 178),
      appBar: AppBar(
        title: const Text("Educational Background"),
        backgroundColor: Color.fromARGB(255, 240, 186, 105),
      ), // AppBar
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Philippine College of Science and Technology',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.black,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Bachelor of Science in Information Technology',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.black54,
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Batch 2019-2023',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.blueGrey[800],
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bilarans National High School',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.black,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Batch 2011-2015',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.blueGrey[800],
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nasugbu East Central School',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.black,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Batch 2006-2011',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.blueGrey[800],
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 236, 187),
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Color.fromARGB(255, 236, 164, 8),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box_outlined,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Professional Summary",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Im a freshly graduated out of college',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.album,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Skills and Abilities',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Trustworthy, Multi-Tasking, Loyalty and Willingness',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.web_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Web-Development',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I have a experience to developing website using PHP and knowledge to front - end',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Certificates',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'NCII holder in Computer System Servicing from PHILCST',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 221, 228),
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Color.fromARGB(255, 240, 185, 4),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.album,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Skills and Abilities',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Trustworthy',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Multi-Tasking',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Loyalty and Willingness',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have knowledge in pogramming',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// AppBar
    );
  }
}
