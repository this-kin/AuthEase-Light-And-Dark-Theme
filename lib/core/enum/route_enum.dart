enum RouteGenerator {
  login(path: "/login", name: 'login'),
  register(path: "/register", name: 'register'),
  home(path: '/home', name: 'home'),
  profile(path: '/profile', name: 'profile');

  final String path;
  final String name;

  const RouteGenerator({
    required this.path,
    required this.name,
  });
}
