enum RouteGenerator {
  home(path: '/home', name: 'home'),
  inbox(path: "/inbox", name: 'inbox'),
  search(path: "/search", name: 'search'),
  searchforgot(path: "/forgot", name: "forgot"),
  profile(path: '/profile', name: 'profile');

  final String path;
  final String name;

  const RouteGenerator({
    required this.path,
    required this.name,
  });
}
