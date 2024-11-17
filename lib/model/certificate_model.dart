class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Unit Testing in Java',
    organization: 'Coursera',
    date: 'SEP 2023',
    skills: 'Unit Testing',
    credential:  'https://www.coursera.org/account/accomplishments/certificate/KXD9QJ8U8AGS',
  ),
  CertificateModel(
    name: 'Tables, Data & Networking in iOS',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'iOS Development .iOS Networking',
    credential:  'https://www.coursera.org/account/accomplishments/certificate/BREHDRP6CXZV',
  ),
  CertificateModel(
    name: 'Introduction to iOS App Development with Swift 5',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'iOS Development . Swift 5',
    credential:  'https://www.coursera.org/account/accomplishments/certificate/65GAPK43FNCC',
  ),
  CertificateModel(
    name: 'Introduction to Programming in Swift 5',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'Swift 5',
    credential:  'https://www.coursera.org/account/accomplishments/certificate/7YHTS46UDM2V',
  ),









];
