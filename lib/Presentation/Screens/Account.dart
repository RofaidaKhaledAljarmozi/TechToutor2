import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Presentation/Shared/Components/Component.dart';
import '../../Domain/todo_cubit.dart';
import '../../core/global/theme/DarkTheme/custom_button_style.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import 'Home.dart';

class Account extends StatelessWidget {
   Account({super.key});
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController ageAndDOBoneController = TextEditingController();
  TextEditingController educationalstatController = TextEditingController();
  TextEditingController sharevalueController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
       child:Scaffold(
       backgroundColor: Colors.transparent,
       appBar: appBar(title: Text("Accounts",style:theme.textTheme.bodyLarge,),actions: [Container( margin:EdgeInsets.only(right:20),
       child: Icon(Icons.person ,color: Colors.white,))],leading:InkWell(
       child: Icon(Icons.keyboard_backspace_outlined,color: Colors.white,),
       onTap: (){
         cubit.onTap(0);
         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
             create: (context) => TodoCubit(),
             child:Home())));       },
     ) ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
            key: _formKey,
            child:  Column(
                children: [
                  SizedBox(height: 15,),
                  CustomTextFormField( controller: userNameController,  context: context,hintText: "Username",filled: true,fillColor: theme.primaryColor),
                  SizedBox(height: 15,),
                  CustomTextFormField( controller: emailController,  context: context,hintText: "Email",filled: true,fillColor: theme.primaryColor),
                  SizedBox(height: 15,),
                  CustomTextFormField( controller: addressController,  context: context,hintText: "Address",filled: true,fillColor: theme.primaryColor),
                  SizedBox(height: 15,),
                  CustomTextFormField( controller: ageAndDOBoneController, context: context,hintText: "Age & D.O.B",filled: true,fillColor: theme.primaryColor),
                  SizedBox(height: 15,),
                  CustomTextFormField(controller: educationalstatController, context: context,hintText: "Educational status",filled: true,fillColor: theme.primaryColor),
                  SizedBox(height: 15,),
                  CustomTextFormField( controller: sharevalueController, context: context,hintText: "Share",filled: true,fillColor: theme.primaryColor),
                  SizedBox(height: 15,),
                  Container(
                    height: 65,
                      width: 300,
                      child: elevatedButton(buttonStyle:CustomButtonStyles.fillBlue , text: "Logout", onPressed: (){})),
                  SizedBox(height: 60,),
                ],

              ),
            ),
          ),
      ),
    );
  }
}
