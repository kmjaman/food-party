import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodparty/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Userr? _userFromFirebaseUser(User user){
    // ignore: unnecessary_null_comparison
    return user != null ? Userr(uid: user.uid) : null;
  }

  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);

    } catch(e){
      print(e.toString());
      return null;

    }
  }
}

