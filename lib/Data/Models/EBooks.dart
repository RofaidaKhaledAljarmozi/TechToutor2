import '../../Constants/image_constant.dart';

class EBooks{
  String imgPath;
  String title;
  String subTitle;


  EBooks({required this.imgPath,required this.title,required this.subTitle});

  static List<EBooks> getBooks() {
    List<EBooks> courses = [];

    courses.add(
        EBooks(imgPath:ImageConstant.imgRectangle34 , title: "Python",subTitle: "beginner")
    );
    courses.add(
        EBooks(imgPath: ImageConstant.imgRectangle35, title: "Java",subTitle: "beginner")
    );
    courses.add(
        EBooks(imgPath: ImageConstant.imgRectangle3490x90, title: "C++",subTitle: "beginner")
    );
    courses.add(
        EBooks(imgPath: ImageConstant.imgRectangle3590x90, title: "Javascript",subTitle: "beginner")
    );
    courses.add(
        EBooks(imgPath: ImageConstant.imgRlogo1, title: "R",subTitle: "beginner")
    );
    courses.add(
        EBooks(imgPath: ImageConstant.imgRectangle351, title: "swift",subTitle: "beginner")
    );
    return courses;
  }
}