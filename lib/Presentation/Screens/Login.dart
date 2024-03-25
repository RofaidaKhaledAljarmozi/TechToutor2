import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../Constants/ConstantsVariables.dart';
import '../../Constants/image_constant.dart';
import '../../Domain/todo_cubit.dart';
import '../../core/global/theme/DarkTheme/custom_button_style.dart';
import '../../core/global/theme/DarkTheme/custom_text_style.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import '../Shared/Components/Component.dart';
import 'Home.dart';
import 'Register.dart';


class Login extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  bool usernameError = false;
  bool passwordError = false;
  final TextEditingController usernameCintroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String username = "";
  String password = "";
 TodoCubit cubit=TodoCubit();

  @override
  Widget build(BuildContext context)  {
    hiveRef=Hive.box("User");
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(1, 0.02),
                  end: Alignment(0, 1.03),
                  colors: [appTheme.gray600, appTheme.gray800])
          ),
          child: form(context)),
    );
    // });
  }

  Widget form(BuildContext context) {
    return Form(
      key: _key,
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              loginOptions(imagePath: ImageConstant.imgClock, text: "Login with Google"),
              SizedBox(height: 30,),
              loginOptions(imagePath: ImageConstant.imgPlus, text: "Login with Facebook"),
              SizedBox(height: 30,),
              Padding(
                  padding: EdgeInsets.only(left: 9, top: 36, right: 9), //modify
                  child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 11, bottom: 7),
                            //modify
                            child: SizedBox(
                                width: 129, //modify
                                child: Divider())
                        ),
                        Text("or", style: CustomTextStyles.bodyMediumWhiteA700),
                        Padding(
                            padding: EdgeInsets.only(top: 11, bottom: 7),
                            //modify
                            child: SizedBox(
                                width: 129, //modify
                                child: Divider())
                        ),
                      ])
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                imagePath: ImageConstant.imgUser,
                controller: usernameCintroller,
                errorMessage: 'Sorry,enter more characters',
                labelText: 'UserName',
                context: context,
                maxLength: 25,
              ),
              SizedBox(height: 10,),
              CustomTextFormField(
                  imagePath: ImageConstant.imgLock,
                  controller: passwordController,
                  errorMessage: 'Invalid Password',
                  labelText: 'Password',
                  context: context,
                  hintText: "Contain [! @ # \$ & * ~ ,A..,a..,0..](8 and more)",
                  hintStyle: CustomTextStyles.passwordHint,
                  obscureText: true,
                  obscuringCharacter: "*"
              ),
              textLink(
                  style: CustomTextStyles.bodySmallGray100,
                  onPressed: () {},
                  text: 'Forget Password', margin: EdgeInsets.only(left: 200)
              ),
              SizedBox(height: 30,),
              elevatedButton(
                buttonStyle: CustomButtonStyles.fillGray,
                text: "Login",
                onPressed: () {
                  hiveRef.put("key",{'name' : usernameCintroller.text,'password': passwordController.text});
                  getInfo();
                  // cubit.saveUserName(usernameCintroller.text);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
                      create: (context) => TodoCubit(),
                      child:Home())));
                 },
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: CustomTextStyles.bodySmallWhiteA70012_1),
                  textLink(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Register()));
                      },
                      text: 'register here',
                      style: CustomTextStyles.bodySmallGray100
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void getInfo(){
    List<Map<String,String>> list=[];
    final currentValue=hiveRef.get("key");
    username=currentValue['name'];
    print(currentValue['name']+" "+currentValue['password']);
  }
}




