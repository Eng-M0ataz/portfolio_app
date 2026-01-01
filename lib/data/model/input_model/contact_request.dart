class ContactRequest {
  final String name;
  final String email;
  final String phone;
  final String service;
  final String timeline;
  final String country;
  final String details;

  ContactRequest({
    required this.name,
    required this.email,
    required this.phone,
    required this.service,
    required this.timeline,
    required this.country,
    required this.details,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'service': service,
      'timeline': timeline,
      'country': country,
      'project_details': details,
    };
  }
}