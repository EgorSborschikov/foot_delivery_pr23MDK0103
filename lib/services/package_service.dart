import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/package.dart';

class PackageService {
  Future<List<Package>> loadPackages() async {
    final String response = await rootBundle.loadString('assets/data/packages.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Package.fromJson(json)).toList();
  }
}
