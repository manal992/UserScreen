import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  final int id ;
  final String name ;
  final String phone ;

  UserModel({
  required this.id,
  required this.name,
  required this.phone,
});
}



class UserScreen extends StatelessWidget {

  List<UserModel> users =[
    UserModel(id:1, name: 'Manal Hemida', phone: '0101234567') ,
    UserModel(id:2, name: 'Aliaa Hemida', phone: '01240647350') ,
    UserModel(id:3, name: 'Habiba Hemida', phone: '011670647350') ,
    UserModel(id:4, name: 'Abdo Hemida', phone: '01000647350') ,
    UserModel(id:5, name: 'wafaa Hany', phone: '01033647350') ,
    UserModel(id:6, name: 'Basma Kater', phone: '01000647350') ,
    UserModel(id:7, name: 'Eman Hemida', phone: '01056747350') ,
    UserModel(id:8, name: 'Metfat Mahmoud', phone: '01000647350') ,
    UserModel(id:9, name: 'Rasha Kater', phone: '01000647350') ,
    UserModel(id:10, name: 'Hoda Ahmed', phone: '01000647350') ,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users' ,
        style: TextStyle(
          fontSize: 25.0 ,
        ),),
      ),

      body: ListView.separated(itemBuilder:(context , index)=>buildUserItem(users[index]), separatorBuilder:(context , index)=>Container(
        width: double.infinity,
        color: Colors.grey,
        height: 1.0,
      ), itemCount: users.length,),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text('${user.id}' ,
            style: TextStyle(
              fontSize: 25.0 ,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}' ,
              style: TextStyle(
                fontSize: 25.0 ,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('${user.phone}' ,
              style: TextStyle(
                color: Colors.grey ,

              ),

            ),
          ],
        )
      ],
    ),
  ) ;
}
