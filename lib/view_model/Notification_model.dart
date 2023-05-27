class Notification_model {
  String title;
  String subtitle;
  Notification_model({
    required this.title,
    required this.subtitle,
  });
}

List notify = <Notification_model>[
  Notification_model(
      title: 'Welcome', subtitle: 'Talk with a customer care if you need help'),
  Notification_model(
      title: 'Land for sale near Lekki',
      subtitle: 'Talk with a customer care if you need help'),
  Notification_model(
      title: '4 bed flat in Ibadan',
      subtitle: 'Talk with a customer care if you need help'),
];
