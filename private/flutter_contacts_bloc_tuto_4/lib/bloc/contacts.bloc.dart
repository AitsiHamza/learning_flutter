import 'package:flutter_contacts_bloc_tuto_4/model/contact.model.dart';

abstract class ContactsEvent{}
class LoadAllTeachersEvent extends ContactsEvent{}
class LoadAllStudentsEvent extends ContactsEvent{}
class LoadAllCEOsEvent extends ContactsEvent{}

enum RequestState{
  LOADING,LOADED,ERROR,NONE
}

class ContactsState{
  List<Contact> contacts;
  RequestState requestState;
  String errorMessage;

  ContactsState({required this.contacts, this.requestState=RequestState.NONE, this.errorMessage=""});
}