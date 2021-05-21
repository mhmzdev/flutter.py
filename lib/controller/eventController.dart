import 'package:flutter_py/model/eventListModel.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class EventController {
  String url =
      "https://django-event-app.azurewebsites.net/api/events/?format=json";

  /// [STATUS CODES]
  // 201 ==> POST
  // 200 ==> GET
  // 204 ==> DELETE
  Future<EventList> getEvents() async {
    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      return EventList.fromJSON(
        json.decode(response.body),
      );
    }
    throw Exception("API FAILED!");
  }

  Future postEvent(
      String title,
      String place,
      String community,
      String date,
      String time,
      String cateogry,
      String mode,
      String country,
      String city) async {
    final response = await http.post(
      Uri.parse("https://django-event-app.azurewebsites.net/api/events/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        <String, dynamic>{
          "title": title,
          "place": place,
          "community": community,
          "date": date,
          "time": time,
          "category": cateogry,
          "mode": mode,
          "country": country,
          "city": city,
        },
      ),
    );
    print(response.statusCode);

    if (response.statusCode == 201) {
      print(response.body);
      return EventList.fromJSON(
        json.decode(response.body),
      );
    } else {
      print(response.body);
      print("Nhi chal rha bhaiii");
    }
  }

  Future deleteEvent(int id) async {
    final response = await http.delete(
      Uri.parse("https://django-event-app.azurewebsites.net/api/events/$id/"),
      headers: {"Content-Type": "application/json"},
    );
    print(response.statusCode);

    if (response.statusCode == 204) {
      print(response.body);
      return response.body;
    } else {
      print(response.body);
      print("Nhi chal rha bhaiii");
    }
  }
}
