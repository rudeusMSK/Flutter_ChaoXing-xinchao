// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

import 'package:flutter_application_buoi5/model/UsersModel/Info.dart';
import 'package:flutter_application_buoi5/model/UsersModel/Users.dart';


/*
    ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐
                                             tree                                           
    │       SON                                                                         │
                                                                                    
    │       │                                                                           │
            │                                                                            
    │       ├───────   results                                                          │
            │                                                                            
    │       │                                                                           │
            │                                                                            
    │       │                                                                           │
            └───────   info                                                             
    │                                                                                   │
                                                                                        
    └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘
*/

class UserList {
  List<Users>? userItem;
  Info? info;
//
  UserList({
      this.userItem, this.info
    });
//
  UserList.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      userItem = <Users>[];
      json['results'].forEach((v) {
        userItem!.add(new Users.fromJson(v));
      });
    }
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
  }
//
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userItem != null) {
      data['results'] = this.userItem!.map((v) => v.toJson()).toList();
    }
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}








