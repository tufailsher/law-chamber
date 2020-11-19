
class Lawyer {
  String id;
  String email;
  String name;
  String chamberNumber;
  String licenseNumber;
  String type;

  Lawyer(
      {this.chamberNumber,
      this.licenseNumber,
      this.email,
      this.type,
      this.name,
      this.id});

  Map<String, dynamic> toJSON() => Map<String, dynamic>.from({
        "id": this.id,
        "email": this.email,
        "chamberNumber": this.chamberNumber,
        "licenseNumber": this.licenseNumber,
        "type": this.type
      });
}

class Client {
  String id;
  String email;
  String type;
  String name;

  Client({this.name, this.type, this.email, this.id});

  Map<String, dynamic> toJSON() => Map<String, dynamic>.from({
        "email": this.email,
        "name": this.name,
        "type": this.type,
        "id": this.id
      });
}
