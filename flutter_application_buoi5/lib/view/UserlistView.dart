// import 'package:flutter/material.dart';
 import 'package:flutter_application_buoi5/view_model/User_List_View_Model.dart';
 import 'package:provider/provider.dart';

// class UserListView extends StatefulWidget {
//   const UserListView({super.key});

//   @override
//   State<UserListView> createState() => _UserListView();
// }

// class _UserListView extends State<UserListView> {
//   UserListViewModel userListViewModel = UserListViewModel();
//   //List<Users> user = <Users>[];

//   @override
//   void initState() {
//     super.initState();
//     userListViewModel.fetcUserList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<UserListViewModel>(
//       create: (_) => userListViewModel,
//       child: Scaffold(
//         body: Center(
//           child: body(),
//         ),
//       ),
//     );
//   }

// //   Widget body() {
// //     return Consumer<UserListViewModel>(
// //       builder: (context, value, child) => ListView.builder(
// //         padding: const EdgeInsets.all(8),
// //         itemCount: value.user.length,
// //         itemBuilder: (BuildContext context, int index) {
// //           return Container(
// //             height: 50,
// //             color: Colors.amber,
// //             child: Center(
// //                 child: Column(children: [
// //           //     FilledButton(
// //           // onPressed: () {
// //           //   Navigator.pop(context);
// //           // },

// //           // child: const Text('back'),
// //           // printf("");

// //         //),
// //               Text('Name: ${value.user[index].name}'),
// //               const Padding(padding: EdgeInsets.all(10)),
// //             ])),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
//   Widget body() {
//     return Consumer<UserListViewModel>(
//       builder: (context, value, child) {
//         if (value.user.isEmpty) {
//           return const CircularProgressIndicator();
//         } else {
//           return ListView.builder(
//             padding: const EdgeInsets.all(8),
//             itemCount: value.user.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 height: 50,
//                 color: Colors.amber,
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Text('Name: ${value.user[index].name?.first ?? ''}'),
//                       const Padding(padding: EdgeInsets.all(10)),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_application_buoi5/view_model/User_List_View_Model.dart';
import 'package:provider/provider.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListView();
}

class _UserListView extends State<UserListView> {
  UserListViewModel userListViewModel = UserListViewModel();

  @override
  void initState() {
    super.initState();
    userListViewModel.fetcUserList();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserListViewModel>(
      create: (_) => userListViewModel,
      child: Scaffold(
        appBar: AppBar(title: const Text('User List')),
        body: Center(
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return Consumer<UserListViewModel>(
      builder: (context, value, child) {
        if (value.errorMessage.isNotEmpty) {
          return Text(value.errorMessage);
        }

        if (value.user.isEmpty) {
          return const CircularProgressIndicator();
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: value.user.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                          'Name: ${value.user[index].name?.first ?? ''} ${value.user[index].name?.last ?? ''}'),
                      Text('Email: ${value.user[index].email ?? ''}'),
                      Image.network(value.user[index].picture?.thumbnail ?? ''),
                      const Padding(padding: EdgeInsets.all(10)),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
