import 'package:MPSP/views/area.view.dart';
import 'package:MPSP/views/cidadao.view.dart';
import 'package:MPSP/views/services.view.dart';
import 'package:bloc/bloc.dart';
import 'package:MPSP/views/Institucional.view.dart';

enum NavigationEvents {
  InstitucionalClickedEvent,
  AreaClickedEvent,
  CidadaoClickedEvent,
  ServicesClickedEvents,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => Institucional(
        onMenuTap: onMenuTap,
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.InstitucionalClickedEvent:
        yield Institucional(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.AreaClickedEvent:
        yield Area(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.CidadaoClickedEvent:
        yield Cidadao(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ServicesClickedEvents:
        yield Services(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}
