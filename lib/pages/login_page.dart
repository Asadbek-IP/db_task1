import 'package:db_task1/services/db.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nameController = TextEditingController();
    TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1A1D37),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              const Spacer(),
              Container(
                height: 65,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg"))),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Welcome back!",
                style: GoogleFonts.inder(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Sign in to continue",
                style: GoogleFonts.inder(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 70,
              ),
              TextField(
                controller: _nameController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "User Name",
                    hintStyle:
                        GoogleFonts.inder(color: Colors.white, fontSize: 16),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                          right: 20, top: 14, bottom: 14, left: 13),
                      child: Image(
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                        color: Colors.white,
                        image: AssetImage("assets/icons/user.png"),
                      ),
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _passController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle:
                        GoogleFonts.inder(color: Colors.white, fontSize: 16),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                          right: 20, top: 14, bottom: 14, left: 13),
                      child: Image(
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                        color: Colors.white,
                        image: AssetImage("assets/icons/key.png"),
                      ),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Fogot Password?",
                style: GoogleFonts.inder(fontSize: 14, color: Colors.white70),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  DB().writeName(_nameController.text);
                  DB().writePassword(_passController.text);
                  print(DB().getName());
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 13, 139, 241),
                        Color.fromARGB(255, 33, 149, 245),
                        Color.fromARGB(255, 55, 158, 243),
                        Color.fromARGB(255, 131, 197, 247),
                      ],
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Don't have an account?",
                      style: GoogleFonts.inder(
                          fontSize: 16, color: Colors.white70),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    child: Text(
                      "SIGN UP",
                      style:
                          GoogleFonts.inder(fontSize: 17, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
