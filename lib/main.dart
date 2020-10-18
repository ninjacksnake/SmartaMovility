import 'package:flutter/material.dart';

void main() => runApp(SM());

class SM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Movility',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      routes: {
        '/register': (_) => Register(),
        '/Login': (_) => Login(),
        '/Home': (_) => HomePage(),
        '/NearMap': (_) => NearMap(),
        '/Go': (_) => Go()
      },
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your username'),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Password',
              ),
            ),
            RaisedButton(
                child: Text('Log In'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
            RaisedButton(
                child: Text('Register'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your username'),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Email',
              ),
            ),
            RaisedButton(
                child: Text('Register'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Movility'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
        new Container(
          child: new Image.asset('assets/images/electricbike.png'),
        ),
            RaisedButton(
                child: Text('Bicicletas Cercanas'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NearMap()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class NearMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            new Container(
              child: new Image.asset('assets/images/Maps.png'),
            ),

          ],
        ),
      ),
    );
  }
}

class Go extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Register',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'Register',
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
