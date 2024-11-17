class Project {
  final String name;
  final String description;
  final String image;
  final String link;

  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Pico User',
    'Simple customize user application design for E-commerce Software.',
    'assets/images/pico_user.jpg',
    'https://github.com/kyilwinoo97/pico_user.git',
  ),
  Project(
    'Tai Learner',
    'Tai Learner is mobile Application for learning shan language.It had over 10k downloads and many positive feedback',
    'assets/images/tai_learner.jpg',
    'https://github.com/kyilwinoo97/tai_learner.git',
  ),
  Project(
    'Location Tracker',
    'Location Tracker is android application for tracking user device location every 4 minutes even if app is force close',
    '',
    'https://github.com/kyilwinoo97/LocationTracker.git',
  ),

  Project(
    'Lucky',
    'Lucky is money exchanger application with update profit and loss chart',
    '',
    'https://github.com/kyilwinoo97/Lucky.git',
  ),
];
