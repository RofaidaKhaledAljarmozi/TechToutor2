import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Domain/todo_cubit.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import '../Shared/Components/Component.dart';
import 'Home.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TodoCubit cubit = BlocProvider.of<TodoCubit>(context);
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment(1, 0.02),
    end: Alignment(0, 1.03),
    colors: [appTheme.gray600, appTheme.gray800])
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: appBar(title: Text("Notification",style:theme.textTheme.bodyLarge),leading: InkWell(
      child: Icon(Icons.keyboard_backspace_outlined,color: Colors.white,),
      onTap: (){
        cubit.onTap(0);
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
            create: (context) => TodoCubit(),
            child:Home())));      },) ,
        actions:[Container(
            margin: EdgeInsets.only(right:20),
            child: Icon(Icons.notifications_none_rounded,color: Colors.white,))]),)
    );
  }
}
