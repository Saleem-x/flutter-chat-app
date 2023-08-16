import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/get_contacts_model/get_contacts_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'getcontacts_event.dart';
part 'getcontacts_state.dart';
part 'getcontacts_bloc.freezed.dart';

@injectable
class GetcontactsBloc extends Bloc<GetcontactsEvent, GetcontactsState> {
  final IGetContactsrepo getContactsrepo;
  GetcontactsBloc(this.getContactsrepo) : super(GetcontactsState.initial()) {
    on<_getAllContacts>((event, emit) async {
      Either<MainFailures, List<GetContactsModel>> contactlist =
          await getContactsrepo.getallcontacts();
      emit(contactlist.fold(
          (l) => const _errorstate(), (r) => _hasContactState(contactlist: r)));
    });
  }
}
