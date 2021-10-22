class AppRoutePage extends Object {
  final bool fullscreen;
  final List<dynamic> params;

  const AppRoutePage({
    this.fullscreen = false,
    List<dynamic>? params,
  }) : params = params ?? const [];

  // @override
  // String toString() {
  //   return route.toString();
  // }
}
