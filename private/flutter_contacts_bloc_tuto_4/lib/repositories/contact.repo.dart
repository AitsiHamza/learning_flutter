import 'dart:math';

import 'package:flutter_contacts_bloc_tuto_4/model/contact.model.dart';

class ContactRepository{
  Map<int,Contact> contacts={
    1:Contact(id:1,name:"hamza1",score:684,profile: 'H.A.1',type: 'Student'),
    2:Contact(id:2,name:"hamza2",score:684,profile: 'H.A.2',type: 'Teacher'),
    3:Contact(id:3,name:"hamza3",score:544,profile: 'H.A.3',type: 'CEO'),
    4:Contact(id:4,name:"hamza4",score:054,profile: 'H.A.4',type: 'Student'),
    5:Contact(id:5,name:"hamza5",score:654,profile: 'H.A.5',type: 'Teacher'),
    6:Contact(id:6,name:"hamza6",score:944,profile: 'H.A.6',type: 'CEO'),
    7:Contact(id:7,name:"hamza7",score:6354,profile: 'H.A.7',type: 'Student'),
    8:Contact(id:8,name:"hamza8",score:354,profile: 'H.A.8',type: 'Teacher'),
    9:Contact(id:9,name:"hamza9",score:3544,profile: 'H.A.9',type: 'CEO'),
  };

  Future<List<Contact>> allContacts()async{
    var future=await Future.delayed(Duration(seconds: 1));
    int random=new Random().nextInt(10);
    if(random>3){
      return contacts.values.toList();
    }else{
      throw new Exception("err!");
    }
  }

  Future<Iterable<Contact>> contactsByType(String type)async{
    var future=await Future.delayed(Duration(seconds: 1));
    int random=new Random().nextInt(10);
    if(random>3){
      return contacts.values.toList().where((element) => element.type==type);
    }else{
      throw new Exception("err!");
    }
  }
}