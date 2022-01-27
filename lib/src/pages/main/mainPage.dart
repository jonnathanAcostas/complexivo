import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../main/mainController.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

    late String hola;

  MainController _mainController = new MainController(); //llama al controlador del otro documento

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _mainController.init(context, refresh);
    });

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
                        _text(),
                        _emailLogin(),
                        _password(),
                        _butonLogin(),
                        _butonRegister(),
                        _textdawn()
                      ], //Aqui llama a los metodos a mostrar
                    ),
                  ),
                )
              ],
            )));
  }

  Widget _text() {
    return Text(
      'Iniciar Sesión',
      style: TextStyle(
          color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }

  Widget _emailLogin() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _mainController.prueba,
        decoration: InputDecoration(
          hintText: 'digite su email',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.email, color: Colors.black),
        ),
      ),
    );
  }

  Widget _password() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _mainController.data,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.security, color: Colors.black),
        ),
      ),
    );
  }

  Widget _butonLogin() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _mainController.capturarDato();
          },
          child: Text('ENTRAR'),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(vertical: 20)),
        ));
  }

  Widget _butonRegister() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _mainController.changePage;
          },
          child: Text('REGISTRARTE'),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(vertical: 20)),
        ));
  }

  Widget _textdawn() {
    return Text(
      'Has olvidado tu contraseña? Recuperar',
      style: TextStyle(
          color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),
    );
  }

  void refresh() {
    setState(() {});
  }
}
