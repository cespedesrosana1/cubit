import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../models/usuario.dart';



part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  
  UsuarioCubit() : super( UsuarioInitial() );
  
  void seleccionarUsuario( Usuario user ) {
    emit( UsuarioActivo(user) );
  }

  void cambiarEdad( int edad ) {

    final currentState = state;
    if ( currentState is UsuarioActivo ) {
      final newUser = currentState.usuario.copyWith( edad: 30 );
      emit( UsuarioActivo( newUser ) );
    }

  }

  void agregarProfesion() {}

  void borrarUsuario() {}

}
