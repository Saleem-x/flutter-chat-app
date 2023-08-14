import 'package:bloc/bloc.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'createchat_state.dart';
part 'createchat_cubit.freezed.dart';

@injectable
class CreatechatCubit extends Cubit<CreatechatState> {
  final ICreatUserRepo creatUserRepo;
  CreatechatCubit(this.creatUserRepo) : super(CreatechatState.initial());
}
