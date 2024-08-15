
import 'package:ecommerce_app_admin_panel/DB/DB_Helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthService {

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static User? get CurrentUser => _auth.currentUser;

  static Future<bool> LoginAdmin(String email , String password) async {
      final result =  await _auth.signInWithEmailAndPassword(email: email, password: password);

      return db_helber.isAdmin(result.user!.uid) ;
  }

  static Future<void> logOut (){
    return _auth.signOut();
  }


}