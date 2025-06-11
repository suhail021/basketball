import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubit/counter_state.dart';

class CounterCubit extends Cubit<CountertState> {
  CounterCubit() : super(CounterInitialState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamIncrement({required String team, required int bottomNumber}) {
    if (team == 'A') {
      teamAPoints += bottomNumber;
      emit(CounterAIncrementState());
    } else if(team == 'B') {
      teamBPoints += bottomNumber;
      emit(CounterBIncrementState());
    }else{
      teamAPoints = bottomNumber;
      teamBPoints = bottomNumber;
      emit(CounterInitialState());
    }
  }

}
