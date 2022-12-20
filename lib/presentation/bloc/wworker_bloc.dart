import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wworker_event.dart';
part 'wworker_state.dart';

class WworkerBloc extends Bloc<WworkerEvent, WworkerState> {
  WworkerBloc() : super(WworkerInitial()) {
    on<WworkerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
