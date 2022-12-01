import 'package:chat/Proceso/autenticacion.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsTJknWaxB4UxxuGCxxKwEzaiKMkMF87TLtg&usqp=CAU")),
            ),
            Divider(),
            TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Email",
                    suffixIcon: Icon(Icons.alternate_email_sharp))),
            Divider(),
            TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.vpn_key_sharp))),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.lock_open_sharp),
                label: Text("Iniciar Sesion")),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion()
                      .CrearUsuario(email: email.text, password: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrar Usuarios"))
          ],
        ),
      ),
    );
  }
}
