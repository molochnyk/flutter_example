import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import 'package:flutter_example/data/manager/character_manager.dart';
import 'package:flutter_example/domain/entities/character.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterManager _characterManager;

  CharacterBloc(this._characterManager) : super(CharacterInitial()) {
    on<LoadCharacters>(_onLoadCharacters);
  }

  Future<void> _onLoadCharacters(
    LoadCharacters event,
    Emitter<CharacterState> emit,
  ) async {
    emit(CharacterLoading());

    try {
      final characters = await _characterManager.getCharacters();
      emit(CharacterLoaded(characters));
    } catch (e) {
      emit(CharacterError('Failed to load characters'));
    }
  }
}
