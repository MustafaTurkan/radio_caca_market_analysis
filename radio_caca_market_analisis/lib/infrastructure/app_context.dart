class AppContext {
  AppContext() {
    _setAppConnection();
    _setUser();
  }
  AppConnection? _connection;
  AppConnection? get connection {
    return _connection;
  }

  void _setAppConnection() {
    _connection = AppConnection();
  }

  User? _user;
  User? get user {
    return _user;
  }

  void _setUser() {
    _user = User();
  }
}

class User {
  String language = 'tr';
}

class AppConnection {
  final String apiUrl = "https://cheapest-items-finder.herokuapp.com/market/";
}
