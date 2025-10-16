import 'package:dioproject/pages/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "email@email.com");
  // TextEditingController senhaController = TextEditingController();
  // String email = "";
  String senha = "";
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Image.network(
                    "https://media.glassdoor.com/sql/8482245/dio-squarelogo-1726214733650.png",
                  ),
                ),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Faça seu login e make the change._",
                  style: TextStyle(color: Colors.white, fontSize: 14)
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "E-mail",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 141, 79, 151)),
                            // contentPadding: EdgeInsets.only(top: 0)
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: isObscureText,
                          onChanged: (value) {
                            senha = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 141, 79, 151)),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(
                                isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility, 
                                color: Color.fromARGB(255, 141, 79, 151),
                              ),
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.green,
                  width: double.infinity,
                  height: 35,
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){
                        // print("Email: ${emailController.text}\nSenha: $senha");
                        if(emailController.text.trim() == "email@email.com" && senha.trim() == "1234"){
                          Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute(builder: (context) => MainPage())
                          );
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Erro ao efetuar o login."))
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 141, 79, 151)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                        )
                      ),
                      child: Text(
                        "ENTRAR",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        alignment: Alignment.center,
                        child: Text(
                          "Esqueci minha senha",
                          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        alignment: Alignment.center,
                        child: Text(
                          "Criar conta",
                          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}