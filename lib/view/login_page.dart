import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pruebatecnica/view/home_page.dart';
import 'package:pruebatecnica/view/widgets/button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "assets/images/isotipo login.svg",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width * .6,
                ),
                SvgPicture.asset(
                  "assets/images/logotipo.svg",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width * .5,
                ),
                const CustomInputText(
                  hint: "Correo Electrónico",
                  icon: Icons.email_outlined,
                ),
                const CustomInputText(
                  hint: "Contraseña",
                  icon: Icons.lock_outline,
                ),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    textColor: Colors.white,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        )),
                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "Iniciar Sesión",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  "¿No tienes cuenta? Registrate",
                  style: TextStyle(
                    color: Theme.of(context).indicatorColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2.5,
                        color: Colors.orangeAccent[900],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "O inicia sesión con",
                        style: TextStyle(
                          color: Theme.of(context).indicatorColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2.5,
                        color: Colors.orangeAccent[900],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset(
                        "assets/images/facebook.svg",
                        height: MediaQuery.of(context).size.height * .07,
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: SvgPicture.asset(
                        "assets/images/ios.svg",
                        height: MediaQuery.of(context).size.height * .07,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
