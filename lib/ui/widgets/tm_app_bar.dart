import 'package:flutter/material.dart';
import 'package:task_manger/ui/screens/sign_in_screen.dart';
import 'package:task_manger/ui/utils/app_colors.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TMAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.themeColor,
      title: Row(
        children: [
          CircleAvatar(radius: 16, backgroundColor: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafizur Rahman',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  'mustafizur@gmail.com',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => const SignInScreen()),
                (predicate)=>false
            );
          },
              icon: Icon(Icons.logout)),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight);
}