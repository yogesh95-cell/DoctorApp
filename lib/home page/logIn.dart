import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isObs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage("assets/image/boy img1.png"),
                ),
                SizedBox(
                  height: 30,
                ),

                /// User Name
                TextFormField(
                  controller: _userName,
                  decoration: InputDecoration(
                    label: Text("User Name"),
                    hintText: "User Name",
                    // hintStyle: TextStyle(color: Colors.purple)
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // suffix: Icon(Icons.search),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter user name";
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),

                /// Password
                TextFormField(
                  controller: _password,
                  obscureText: isObs,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    // hintStyle: TextStyle(color: Colors.purple)
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffix: IconButton(
                      onPressed: () {
                        isObs = !isObs;
                        setState(() {});
                      },
                      icon: Icon(Icons.visibility),
                    ),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 digits/char";
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
