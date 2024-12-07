part of 'list_horezn_cubit.dart';

sealed class ListHoreznState extends Equatable {
  const ListHoreznState();

  @override
  List<Object> get props => [];
}

final class ListHoreznInitial extends ListHoreznState {}

final class ListHoreznLoding extends ListHoreznState {}

final class ListHoreznFailure extends ListHoreznState {
  final String errormessage;

 const  ListHoreznFailure(this.errormessage);
}

final class ListHoreznSccuss extends ListHoreznState {
  final List <BookModel> books = [];
}
