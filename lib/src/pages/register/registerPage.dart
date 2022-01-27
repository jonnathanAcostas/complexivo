import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 150),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        _nameRegister(),
                        _textRegister(),
                        _emailRegister(),
                        _passwordRegister(),
                        _butonRegister(),
                        
                      ], //Aqui llama a los metodos a mostrar
                    ),
                  ),
                )
              ],
            )));
  }

  Widget _textRegister() {
    return Text(
      'Registrarse',
      style: TextStyle(
          color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }

Widget _nameRegister() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'digite su email',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.email, 
            color: Colors.black),
            ),
            
      ),
    );
  }

  Widget _emailRegister() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'digite su email',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.email, 
            color: Colors.black),
            ),
            
      ),
    );
  }

  Widget _passwordRegister() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.security, 
            color: Colors.black),
            ),
            
      ),
    );
  }

Widget _butonRegister() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('ENTRAR'),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(vertical: 20)),
        ));
  }

  

}
