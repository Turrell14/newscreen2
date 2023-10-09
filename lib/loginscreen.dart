import 'package:flutter/material.dart';
//import 'package:newscreen2/button.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({Key? key}) : super(key: key);
  @override
  State<Loginscreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ButtonStyle style;
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'sign up',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType
                      .text, // Use TextInputType.text for usernames
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter username',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter your username' : null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType
                      .text, // Use TextInputType.text for usernames
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'Enter password',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter your password' : null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType
                      .text, // Use TextInputType.text for usernames
                  decoration: InputDecoration(
                    labelText: 'confirm password',
                    hintText: 'confirm password',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                  validator: (value) {
                    return value!.isEmpty
                        ? 'Please confirm your password'
                        : null;
                  },
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('register'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
