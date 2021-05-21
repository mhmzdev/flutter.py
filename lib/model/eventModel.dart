class Event {
  int id;
  String title;
  String place;
  String community;
  String city;
  String country;
  String date;
  String time;
  String category;
  String mode;
  String dateCreated;

  Event({
    this.id,
    this.title,
    this.place,
    this.community,
    this.city,
    this.country,
    this.date,
    this.time,
    this.category,
    this.mode,
    this.dateCreated,
  });

  factory Event.fromJSON(var json) {
    return Event(
      id: json['id'],
      title: json['title'],
      place: json['place'],
      community: json['community'],
      city: json['city'],
      country: json['country'],
      date: json['date'],
      time: json['time'],
      category: json['category'],
      mode: json['mode'],
      dateCreated: json['date_created'],
    );
  }
}
