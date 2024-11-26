import 'package:flutter/material.dart';
import 'package:foot_delivery/models/package.dart';
import 'package:foot_delivery/services/package_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/map_widget.dart';

class TrackingPackageScreen extends StatefulWidget {
  @override
  _TrackingPackageScreenState createState() => _TrackingPackageScreenState();
}

class _TrackingPackageScreenState extends State<TrackingPackageScreen> {
  late GoogleMapController _controller;
  late List<Package> _packages;

  @override
  void initState() {
    super.initState();
    _loadPackages();
  }

  Future<void> _loadPackages() async {
    _packages = await PackageService().loadPackages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tracking Package'),
      ),
      body: _packages.isEmpty
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(_packages[0].latitude, _packages[0].longitude),
                zoom: 10.0,
              ),
              markers: _packages.map((package) {
                return Marker(
                  markerId: MarkerId(package.name),
                  position: LatLng(package.latitude, package.longitude),
                  infoWindow: InfoWindow(
                    title: package.name,
                    snippet: package.status,
                  ),
                );
              }).toSet(),
            ),
    );
  }
}