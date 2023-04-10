import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  

  // Sign user in metod

  void signUserIn() {
    const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Container(
        // decoration: const BoxDecoration(
        // image: DecorationImage(
        // image: AssetImage("assets/images/Mask_groupa.png"),
        //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.modulate),
        //fit: BoxFit.cover),),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              //Logo
              Image.asset(
              'lib/images/image_cover.png',
              fit: BoxFit.cover,
              height: 300, // set your height
              width:400, // and width here
              ),

             

              //Welcome back,

              const Text('Bubble Tea is Life',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 10),

              //Username textfield

              MyTextField(
                controller: usernameController,
                hintText: 'Kullanıcı Adı Giriniz',
                obscureText: false,
              ),

              const SizedBox(height: 15),

              //Password textfield

              MyTextField(
                controller: passwordController,
                hintText: 'Şifre Giriniz',
                obscureText: true,
              ),
              const SizedBox(height: 15),

              //Forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Şifreyimi Unutdun?',
                      style: TextStyle(color: Color.fromARGB(255, 203, 190, 190)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //Sign in button
              MyButton(
                onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
              ),
              const SizedBox(height: 50),

              //Or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Aşağıdakılar ile devam edin',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //Google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google button
                  SquareTile(imagePath: 'lib/images/google-logo.png'),

                  SizedBox(width: 10),

                  //apple button

                  SquareTile(imagePath: 'lib/images/apple-logo.png'),
                ],
              ),
              const SizedBox(height: 20),
              //Not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Üye Değilmisin?',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Şimdi Üye Ol',
                    style: TextStyle(
                        color: Color.fromARGB(255, 97, 78, 72), fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
