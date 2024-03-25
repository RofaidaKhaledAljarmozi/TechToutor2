import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Constants/ConstantsVariables.dart';
import '../../../Constants/image_constant.dart';
import '../../../Data/Models/EBooks.dart';
import '../../../Domain/todo_cubit.dart';
import '../../../core/global/theme/DarkTheme/app_decoration.dart';
import '../../../core/global/theme/DarkTheme/custom_text_style.dart';
import '../../../core/global/theme/DarkTheme/theme_helper.dart';
import 'package:flutter_svg/svg.dart';


Widget onBoardingShow({required String imagePath ,required String title ,required String description})=>Column(
    children: [
      Center(
        child:SvgPicture.asset(imagePath,height: 239, width: 323) ,                        //modify
      ),
      Padding(
        padding: const EdgeInsets.only(right: 260,left: 20),
        child: Text(title, style:theme.textTheme.headlineSmall),
      ),
      SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.only(right: 260,left: 20),
        child: Text(description,style:CustomTextStyles.titleSmallBluegray300),
      ),
    ],
);

Widget textButton({required Color? backgroundColor,required String textButton,required void Function() onTap,EdgeInsetsGeometry? margin})=>Container(
  width: 100,
  height: 40,
  margin:margin,
  decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(5),
    color: backgroundColor,
  ),
  child: Center(
    child: GestureDetector(
      child:Text(textButton, style: CustomTextStyles.titleMediumGray100,),
      onTap: onTap,
    ),
  ),
);

Widget loginOptions({required String imagePath,required String text})=>Container(
    margin: EdgeInsets.only(left: 9, top: 36, right: 9),                                 //modify
    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),                          //modify
    decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
    child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(imagePath,height:29, width: 30),                                //modify
          Padding(
              padding: EdgeInsets.only(left: 29, top: 5, bottom: 3),                        //modify
              child: Text(text, style: CustomTextStyles.titleSmallSemiBold))
        ])
);

Widget CustomTextFormField({ String imagePath="",required TextEditingController controller, String? errorMessage,int? maxLength,  String? labelText ,required BuildContext context,String? hintText, TextStyle? hintStyle,bool obscureText=false,String obscuringCharacter=" ",TextInputType? textInputType ,void Function()? onTap ,bool filled=false ,Color? fillColor })=>Container(
  margin: EdgeInsets.only(left: 100,right: 100),
  child: TextFormField(

    onTap: onTap,
    controller: controller,
    keyboardType: textInputType,
    decoration: InputDecoration(
      filled: filled,
      fillColor: fillColor,
      errorText:userNameErrored? errorMessage:null,
      labelText: labelText,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      prefixIcon: SvgPicture.asset(imagePath,height: 10, width: 10),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white70, width: 2),
      ),
      hintText: hintText,
      hintStyle: hintStyle,
    ),
    obscureText: obscureText,
    obscuringCharacter: obscuringCharacter,
    maxLength: maxLength,
    // onSaved: (value)=>!usernameError?username=value!:null,                                   ???????????????
  ),
);

Widget textLink({EdgeInsetsGeometry? margin,required void Function()? onPressed,required String text,required TextStyle style})=>Container(
  margin: margin,
  child: TextButton(
    // style: buttonStyle,
    onPressed: onPressed,
    child: Text(text,style: style,),
  ),
);

Widget elevatedButton({required ButtonStyle buttonStyle ,required String text,required void Function() onPressed})=> ElevatedButton(
  style: buttonStyle,
  child: Text(text),
  onPressed:onPressed,
);

Container searchField() {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(top: 40,left: 40,right: 40),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
          )
        ]
    ),
    child: TextField(
      style: TextStyle(color: theme.primaryColor),
      decoration: InputDecoration(
        filled: true,
        fillColor:  Color(0xfff1f1f1),
        contentPadding: const EdgeInsets.only(left: 30),
        hintText: 'Search',
        hintStyle: const TextStyle(
            color: Colors.black87,
            fontSize: 16
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(Icons.search),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

AppBar appBar({required Widget title,Widget? leading , List<Widget>? actions})=>AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title:title,
  leading: leading,
  actions: actions,
);

Column ShowCourses({required Widget courseTitle ,required List list ,void Function()? onTap }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Padding(
        padding: EdgeInsets.only(left:40),
        child:courseTitle,
      ),
      const SizedBox(height: 35),
      SizedBox(
        height: 120,
        child: ListView.separated(
          itemCount:list.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 50, right: 20),
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemBuilder: (context, index) {
            return Container(
              width: 80,
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: Image.asset(list[index].imgPath),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      list[index].title,
                      style: const TextStyle(color: Colors.white70, fontSize: 13),
                    )
                  ],
                ),
                onTap: onTap,
              ),
            );
          },
        ),
      )
    ],
  );
}

Widget eBooks({required List<EBooks> list})=>GridView.count(
  crossAxisCount: 2,
  children: List.generate(
    6, (index) {
    return InkWell(
      child: Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.all(3),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              child: Image.asset(list[index].imgPath,height:100 ,width: 100,),
            ),
            Text(list[index].title,style:CustomTextStyles.titleSmallGray100),
            SizedBox(height: 2,),
            Text(list[index].subTitle,style: theme.textTheme.bodySmall,),
          ],
        ),
      ),
      onTap: (){},
    );
  },
  ),
);

Widget settingsRow({required Widget img,required Widget text})=>Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [Container(width: 130,height:50,alignment:Alignment.centerLeft,child: img,margin: EdgeInsets.only(left: 35)),Container(width: 150,height:50,alignment:Alignment.center,child: text,margin: EdgeInsets.only(left: 15),)],);

Widget settingBox()=> Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    settingsRow(img: SvgPicture.asset(ImageConstant.imgUserGray100), text:Text("Accounts settings")) ,
    SizedBox(height: 25,),
    settingsRow(img: SvgPicture.asset( ImageConstant.imgAlarmGray100), text:Text("Notifications")) ,
    SizedBox(height: 25,),
    settingsRow( img:Text("App notification"),text: Switch(value: false, onChanged: (val){})) ,
    SizedBox(height: 25,),
    settingsRow(img: SvgPicture.asset(ImageConstant.imgSearchWhiteA700), text:Text("Language & Region",)),
    SizedBox(height: 25,),
    settingsRow(img: SvgPicture.asset(ImageConstant.imgUserWhiteA700), text:Text("Privacy settings",)),
    SizedBox(height: 25,),
    settingsRow(img:SizedBox(height: 27, width: 22, child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: Text("i", style: theme.textTheme.titleLarge)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: appTheme.gray100,width: 1))))
        ])), text:Text("About",)),
    SizedBox(height: 25,),
    settingsRow(img: SvgPicture.asset( ImageConstant.imgVector), text:Text("Logout",)),
  ],
);

Widget bottomNavigationBar(TodoCubit cubit)=>
    Container(
      width: 50,
      height: 72,
      margin: EdgeInsets.only(left: 40,right: 40,bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child:Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 1.0),
        child:
        BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex:currentIndex,
            items:[
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey.shade800,size: 26,),label: "",backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.book,color: Colors.grey.shade800,size: 26,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.manage_accounts,color: Colors.grey.shade800,size: 26,),label: ""),
            ],
            elevation: 0,
            onTap: (int selectedIndex){
              cubit.onTap(selectedIndex);
            }
        ),
      ),

    );

