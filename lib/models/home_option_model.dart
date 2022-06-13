import 'package:flutter/material.dart';

class Gym {
  final String title;
  final VoidCallback event;
  final String image;
  final String desc;

  Gym({required this.title, required this.event, required this.image, required this.desc});
}

List<Gym> gymCards = [
  Gym(title: "Event 1", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 2", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 3", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 4", event: () {}, image: "" , desc: "Hello world"),
];
List<Gym> yogaCards = [
  Gym(title: "Event 1", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 2", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 3", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 4", event: () {}, image: "" , desc: "Hello world"),
];
List<Gym> mediCards = [
  Gym(title: "Event 1", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 2", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 3", event: () {}, image: "" , desc: "Hello world"),
  Gym(title: "Event 4", event: () {}, image: "" , desc: "Hello world"),
];