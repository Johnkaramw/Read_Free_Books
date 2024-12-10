import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/Data/model/book_model/book_model.dart';
import 'package:book_app/Features/home/Data/repo/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'list_vertecal_state.dart';

class ListVertecalCubit extends Cubit<ListVertecalState> {
  ListVertecalCubit(this.homeRepo) : super(ListVertecalInitial());
  final HomeRepo homeRepo;
  Future<void> fetuchfutcherbook() async {
    emit(ListVertecalLoding());
    var resalt = await homeRepo.fetuchrbookvertical();
    resalt.fold((failure) {
      emit(ListVertecalfailure(failure.errormessage));
    }, (books) {
      emit(ListVertecalsuccess(books));
    });
  }
}
