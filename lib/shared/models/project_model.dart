class ProjectModel {
  final String urlImage;
  final String title;
  final String desc;
  final List<String> skills;
  final String urlGithub;
  final String urlYoutube;
  final String urlPlaystore;

  ProjectModel({
    required this.urlImage,
    required this.title,
    required this.desc,
    required this.skills,
    this.urlGithub = '',
    this.urlYoutube = '',
    this.urlPlaystore = '',
  });
}
