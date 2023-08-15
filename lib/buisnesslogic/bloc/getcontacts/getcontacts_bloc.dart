import 'package:bloc/bloc.dart';
import 'package:chatapp/data/models/get_contacts_model/get_contacts_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'getcontacts_event.dart';
part 'getcontacts_state.dart';
part 'getcontacts_bloc.freezed.dart';

@injectable
class GetcontactsBloc extends Bloc<GetcontactsEvent, GetcontactsState> {
  final IGetContactsrepo getContactsrepo;
  GetcontactsBloc(this.getContactsrepo) : super(GetcontactsState.initial()) {
    on<GetcontactsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
