import 'package:flutter/material.dart';
import 'main.dart';

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF4C4D59),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 60,),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Easy",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(text: "Worship",
                        style: TextStyle(
                          color: Color(0xFF3E7AF5),
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ]
                ),
              ),
              SizedBox(height: 60,),
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xFF4C4D59),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 15),
                          blurRadius: 15
                      ),
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, -5),
                          blurRadius: 8
                      ),
                    ]

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFF3BD99F),
                          fontSize: 34,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 15),
                    Text('Usuário',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "e-mail",
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 12
                          )
                      ),
                    ),
                    SizedBox(height: 15),
                    Text('Senha',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Senha",
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 12
                          )
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                              color: Color(0xFF3BD99F),
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                textColor: Colors.white,
                color: Colors.transparent,
                padding: EdgeInsets.all(2),
                child: Container(
                  height: 44,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF3BD99F),
                        Color(0xFF3E7AF5),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(6.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Entre',
                      style: TextStyle(
                          fontSize: 26,
                          letterSpacing: 5
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Novo Usuário? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(text: "Cadastre-se",
                        style: TextStyle(
                          color: Color(0xFF3BD99F),
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}