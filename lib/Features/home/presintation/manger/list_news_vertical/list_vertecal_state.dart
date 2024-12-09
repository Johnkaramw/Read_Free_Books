part of 'list_vertecal_cubit.dart';

sealed class ListVertecalState extends Equatable {
  const ListVertecalState();

  @override
  List<Object> get props => [];
}

final class ListVertecalInitial extends ListVertecalState {}

final class ListVertecalLoding extends ListVertecalState {}

final class ListVertecalfailure extends ListVertecalState {
  final String errorMessage;

 const ListVertecalfailure( this.errorMessage);
}

final class ListVertecalsuccess extends ListVertecalState {
  final List<BookModel> books = [];

  ListVertecalsuccess(List<BookModel> books);
}
