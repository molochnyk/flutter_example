import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/data/manager/character_manager.dart';

import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterManager _characterManager;

  CharacterBloc(this._characterManager)
    : super(const CharacterState.initial()) {
    on<CharacterEvent>((event, emit) async {
      await event.when(loadCharacters: () => _onLoadCharacters(emit));
    });
  }

  Future<void> _onLoadCharacters(Emitter<CharacterState> emit) async {
    emit(const CharacterState.loading());

    try {
      final characters = await _characterManager.getCharacters();
      emit(CharacterState.loaded(characters));
    } catch (e) {
      emit(CharacterState.error(e.toString()));
    }
  }
}
