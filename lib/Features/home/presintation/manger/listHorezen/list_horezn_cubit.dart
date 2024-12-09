import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/Data/model/book_model/book_model.dart';
import 'package:book_app/Features/home/Data/repo/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'list_horezn_state.dart';

class ListHoreznCubit extends Cubit<ListHoreznState> {
  ListHoreznCubit(this.homeRepo) : super(ListHoreznInitial());
  final HomeRepo homeRepo;
  Future<void> fetuchNewsbookhorzen() async {
    emit(ListHoreznLoding());
    var result = await homeRepo.fetuchNewsbookhorzen();
    result.fold((failure) {
      emit(ListHoreznFailure(failure.errormessage));
    }, (books) {
      emit(ListHoreznSccuss(books));
    });
  }
}
