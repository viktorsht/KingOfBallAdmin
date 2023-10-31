class StateResponse{  
  static String loading = 'loading';
  static String sucess = 'sucess';
  static String error = 'error';
  static String start = 'start';

}

abstract class StateRequest{}

class LoadingState implements StateRequest{}
class SucessState implements StateRequest{}
class ErrorState implements StateRequest{}
class InitialState implements StateRequest{}