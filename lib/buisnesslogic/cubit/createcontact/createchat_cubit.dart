import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/createuser/createuser.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'createchat_state.dart';
part 'createchat_cubit.freezed.dart';

@injectable
class CreatechatCubit extends Cubit<CreatechatState> {
  final ICreatUserRepo creatUserRepo;
  CreatechatCubit(this.creatUserRepo) : super(CreatechatState.initial());

  creatcontact(Createuser contactmodel) async {
    Either<MainFailures, String> createcontact =
        await creatUserRepo.creatcontact(contactmodel);
    emit(
      createcontact.fold(
        (l) => const _failedstate(),
        (r) => r == 'success' ? const _successstate() : const _failedstate(),
      ),
    );
  }
}
