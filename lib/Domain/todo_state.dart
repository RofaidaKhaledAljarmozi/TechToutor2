part of 'todo_cubit.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}
class UserNameState extends TodoState{}
class ChangeCurrentIndex extends TodoState {}
