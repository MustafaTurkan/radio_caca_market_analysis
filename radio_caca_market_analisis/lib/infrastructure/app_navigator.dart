import 'package:flutter/material.dart';

class AppNavigator {
  static final key = GlobalKey<NavigatorState>();
  static final routeObserver = RouteObserver<PageRoute>();

  /*Future<void> pushFavoriteMovieListView(
    BuildContext context,
  ) {
    return Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => FavoriteMovieListView()),
    );
  }*/

}
