enum RouteGenerator {
  login(path: "/login", name: 'login'),
  register(path: "/register", name: 'register'),
  forgot(path: "/forgot", name: "forgot"),
  home(path: '/home', name: 'home'),
  profile(path: '/profile', name: 'profile');

  final String path;
  final String name;

  const RouteGenerator({
    required this.path,
    required this.name,
  });
}
