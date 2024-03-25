import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Presentation/Shared/Components/Component.dart';
import '../../Domain/todo_cubit.dart';
import '../../core/global/theme/DarkTheme/app_decoration.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import 'Home.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    TodoCubit cubit = BlocProvider.of<TodoCubit>(context);
    return  Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment(1, 0.02),
        end: Alignment(0, 1.03),
        colors: [appTheme.gray600, appTheme.gray800])
        ),
     child: Scaffold(
       backgroundColor: Colors.transparent,
       appBar: appBar(title: Text("Settings",style:theme.textTheme.bodyLarge),leading: InkWell(
         child: Icon(Icons.keyboard_backspace_outlined,color: Colors.white,),
         onTap: (){
           cubit.onTap(0);
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
               create: (context) => TodoCubit(),
               child:Home())));         },) ,
           actions:[Container(
          margin: EdgeInsets.only(right:20),
      child: Icon(Icons.settings,color: Colors.white,))]),
      body: Container(
        width: 400,
        height: 650,
        margin: EdgeInsets.all(40),
        decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10),
       child:Container(
    margin: EdgeInsets.all(30),
    width: 70,
    height: 100,
    child:SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: settingBox()
    )
      ),)
     )
    );
  }

}
