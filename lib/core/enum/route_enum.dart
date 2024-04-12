enum RouteGenerator {
  home(path: '/home', name: 'home'),
  inbox(path: "/inbox", name: 'inbox'),
  search(path: "/search", name: 'search'),
  article(path: "/article", name: "article"),
  profile(path: '/profile', name: 'profile');

  final String path;
  final String name;

  const RouteGenerator({
    required this.path,
    required this.name,
  });
}
