import 'package:ecommerce_app_admin_panel/Auth/Auth_service.dart';
import 'package:ecommerce_app_admin_panel/Pages/Dashboard_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routeName = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String _errMsg ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Form(
          key: _formKey,
          child: ListView(
            padding:  const EdgeInsets.all(20),
            shrinkWrap: true,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    labelText: ("email adress")
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return "provide valid email adress";
                  }

                },
              ),
              Padding(padding: EdgeInsets.all(15)),
              TextFormField(
                style:TextStyle(color: Colors.white) ,
                keyboardType: TextInputType.emailAddress,
                controller: _passwordController,
                decoration: const InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.password),
                  labelText: ("password"),
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return "provide valid password";
                  }

                },
              ),
              Padding(padding: EdgeInsets.all(15)),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: _authenticate,
                    child: Text("Login As admin")),

              ),

              Text(_errMsg)

            ],
          ),
        ),

      ),
      );


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _authenticate () async {
    if(_formKey.currentState!.validate()){
      EasyLoading.show(status: 'please wait');

     final email = _emailController.text ;
     final password = _passwordController.text;

     try{
       final status = await AuthService.LoginAdmin(email, password);
       EasyLoading.dismiss();

       if(status){
         context.goNamed(DashboardPage.routeName);
       }
       else{
         setState(() {
           _errMsg = "this is not admin account";
         });
       }
     } on FirebaseAuthException catch(err){
       setState(() {
         _errMsg = err.message!;
       });
     }
    }


  }
}
