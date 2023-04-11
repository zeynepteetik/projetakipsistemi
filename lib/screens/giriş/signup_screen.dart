import 'package:flutter/material.dart';
import 'login_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Ol'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                hintText: "Ad Soyad",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifre",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: confirmController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifre Tekrar",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () async {
                var fullName = fullNameController.text.trim();
                var email = emailController.text.trim();
                var password = passwordController.text.trim();
                var confirm = confirmController.text.trim();

                if (fullName.isEmpty || email.isEmpty || password.isEmpty || confirm.isEmpty) {
                  return;
                }
                if (password.length < 6) {
                  return;
                }
                if (password != confirm) {
                  return;
                }

                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add),
                  SizedBox(width: 5),
                  Text("Kayıt Ol"),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                const Text("Üye misiniz?"),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: const Text("Giriş Yap"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
