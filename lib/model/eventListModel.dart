import 'package:flutter_py/model/eventModel.dart';

class EventList {
  List events;

  EventList({this.events});

  factory EventList.fromJSON(var json) {
    List allEvents = json.map((event) => Event.fromJSON(event)).toList();

    return EventList(
      events: allEvents,
    );
  }
}
