const GOOGLE_API_KEY = 'AIzaSyBz06qEMMRtN6MDn5GFeZUdgHpwQOgz9TU';

class LocationHelper {
  static String generateLocationPreviewImage({
    required double latitude,
    required double longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=18&size=600x300&maptype=roadmap&markers=color:red%7Clabel:V%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
