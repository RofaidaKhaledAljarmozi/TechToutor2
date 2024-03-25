import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Constants/ConstantsVariables.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());
  void initialPage() {}

 void saveUserName(String name)
 {
   username=name;
   emit(UserNameState());
 }
  void onTap(int value)
  {
    currentIndex=value;
    emit(ChangeCurrentIndex());
  }


}

