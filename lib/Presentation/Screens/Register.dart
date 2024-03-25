import '../../Constants/image_constant.dart';
import '../../core/global/theme/DarkTheme/custom_text_style.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import '../Shared/Components/Component.dart';
import 'Login.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final formkey=GlobalKey<FormState>();
  final _usernameController=TextEditingController();
  final _emailController=TextEditingController();
  final _birthDayController=TextEditingController();
  final _ageController=TextEditingController();
  final _educationalController=TextEditingController();
  final _passwordController=TextEditingController();

  bool usernameErrored=false;
  bool emailErrored=false;
  bool passwordErrored=false;
  bool confirmPasswordMatched=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(1, 0.02),
                    end: Alignment(0, 1.03),
                    colors: [appTheme.gray600, appTheme.gray800])
            ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child: Form(
                  key: formkey,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Register Account", style: CustomTextStyles.titleMediumBold)),
                        SizedBox(height: 40),
                        CustomTextFormField(
                            imagePath: ImageConstant.imgUser,
                            controller: _usernameController,
                            errorMessage: 'Too short username',
                            labelText:'user name',
                            context: context,
                         ),
                        SizedBox(height: 40,),
                        CustomTextFormField(
                            imagePath: ImageConstant.imgMail,
                            controller: _emailController,
                            errorMessage: 'Invalid email',
                            labelText:"email",
                            context: context,
                            hintStyle:CustomTextStyles.titleSmallWhiteA700 ,
                            textInputType: TextInputType.emailAddress,),
                        SizedBox(height: 40,),
                        CustomTextFormField(
                            imagePath:  ImageConstant.imgCalendar,
                            controller: _birthDayController,
                            labelText:"date of birth",
                            context: context,
                          onTap: (){
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('2030-12-31')
                            ).then((value) {
                              _birthDayController.text = DateFormat.yMMMd().format(value!);
                            });
                          }
                        ),
                        SizedBox(height: 40,),
                        CustomTextFormField(
                          imagePath:  ImageConstant.imgCar,
                          controller: _ageController,
                          labelText:"age",
                          context: context,
                          hintStyle:CustomTextStyles.titleSmallWhiteA700 ,),
                        SizedBox(height: 40,),
                        CustomTextFormField(
                          imagePath:  ImageConstant.imgCamera,
                          controller: _educationalController,
                          labelText:"educational status",
                          context: context,
                          hintStyle:CustomTextStyles.titleSmallWhiteA700 ,),
                        SizedBox(height: 40,),
                        CustomTextFormField(
                            imagePath: ImageConstant.imgLock,
                            controller: _passwordController,
                            errorMessage: 'Invalid Password',
                            labelText: 'Password',
                            context: context,
                            hintStyle: CustomTextStyles.passwordHint,
                            obscureText: true,
                            obscuringCharacter: "*"
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an acount?",style: CustomTextStyles.bodySmallWhiteA70012_1),
                            textLink(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));
                                },
                                text: 'Login', style: CustomTextStyles.bodySmallGray100),
                          ]),
                        SizedBox(height: 20,),
                        textButton(backgroundColor: theme.colorScheme.onPrimary,
                            textButton: 'Register',
                            margin:  EdgeInsets.only(left: 160,right: 40),
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Login()));           // ??????state
                            }),

                      ],
                    ),
                  ),
                ),
              ),
            ),


    );
  }

  Widget title()=> Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Text("Register Account",style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),),
  );

  // Widget username()=> TextFormField(
  //   onChanged: (String value){
  //     usernameErrored=validateUsername(value);
  //   },
  //   controller: _usernamecontroller,
  //   decoration: InputDecoration(
  //     errorText:usernameErrored? 'Too short username':null,
  //     labelText: 'user name',
  //     labelStyle: TextStyle(color: Colors.white38),
  //     prefixIcon: Icon(Icons.person,size: 30,),
  //     prefixIconColor: Colors.white60,
  //     enabledBorder: const OutlineInputBorder(
  //       borderSide: const BorderSide(color: Colors.white70, width: 2),
  //     ),
  //   ),
  // );

  bool validateUsername(String value) {
    bool error=false;
    if(value.isEmpty||value.length<7||value.contains(' '))
      setState(() {
        error=true;
      });
    else{
      setState(() {
      error=false;
    });}
    return error;
  }
  bool validateEmailError(String value) {
    bool error = false;
    if (!value.contains('@')||!value.contains('.com')||value.isEmpty||value.contains(' ')) {
      setState(() {error = true;});
    }
    else { setState(() {error = false;});}
    return error;
  }

  Widget password()=>TextFormField(
    onChanged: (String value){
      passwordErrored=validatePasswordError(value);
    },
    controller: _passwordController,
    obscureText: true,
    obscuringCharacter: '*',
    decoration: InputDecoration(
      errorText:passwordErrored? 'Invalid password':null,
      labelText: 'password',
      labelStyle: TextStyle(color: Colors.white38),
      prefixIcon: Icon(Icons.lock,size: 30),
      prefixIconColor: Colors.white60,
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white70, width: 2),
      ),
      // contentPadding: EdgeInsets.only(left: 370)
    ),
  );

  bool validatePasswordError(String value) {
    bool error=false;
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    bool correct=regExp.hasMatch(value);
    !correct?setState(()=>error=true):setState(()=>error=false);
    return error;
  }

  // Widget confirmPassword()=>TextFormField(
  //   onChanged: (String value){
  //     confirmPasswordMatched=validateConfirmPassword(value);
  //   },
  //     controller: _confirmPasswordcontroller,
  //     decoration: InputDecoration(
  //       errorText:_confirmPasswordcontroller.text.isNotEmpty?confirmPasswordMatched?null:'Doesn\'t matched':null,
  //       labelText: 'confirm password',
  //       labelStyle: TextStyle(color: Colors.white38),
  //       prefixIcon: Icon(Icons.lock_person,size: 30),
  //       prefixIconColor: Colors.white60,
  //       enabledBorder: const OutlineInputBorder(
  //         borderSide: const BorderSide(color: Colors.white70, width: 2),
  //       ),
  //     ),
  //   obscureText: true,
  //   obscuringCharacter: '*',
  // );


  // Widget login()=> Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     Text("Already have an acount?",style: TextStyle(color: Colors.white),),
  //     TextButton(
  //       style: ButtonStyle(
  //         foregroundColor: MaterialStateProperty.all<Color>(Colors.white38),
  //         textStyle:MaterialStateProperty.all(TextStyle(fontSize: 12)),
  //       ),
  //       child: Text('Login'),
  //       onPressed: (){
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));
  //       },
  //     ),
  //   ],
  // );
  //
  // Widget registerButton()=>Container(
  //   width: 110,
  //   height: 30,
  //   margin: EdgeInsets.only(left: 160,top: 10),
  //   decoration: BoxDecoration(
  //     borderRadius:BorderRadius.circular(5),
  //     color: Colors.black38,
  //   ),
  //   child: Center(
  //     child: GestureDetector(
  //       child:Text('Register', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),),
  //       onTap: (){
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));
  //       },
  //     ),
  //   ),
  // );

}