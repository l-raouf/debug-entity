
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';


uploadImage(File _image,String path) async{
  try{
    await FirebaseStorage.instance.ref().child(path).putFile(_image);
    return true;
  }catch(e){
    return false;
  }
}