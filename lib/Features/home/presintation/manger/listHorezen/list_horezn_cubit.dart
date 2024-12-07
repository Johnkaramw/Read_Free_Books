import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/Data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'list_horezn_state.dart';

class ListHoreznCubit extends Cubit<ListHoreznState> {
  ListHoreznCubit() : super(ListHoreznInitial());
}
