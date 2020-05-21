import 'dart:convert';
class Navegacion {
    final String foto;
    final String descripcion;

    Navegacion({
        this.foto,
        this.descripcion,
    });

    factory Navegacion.fromJson(String str) => Navegacion.fromMap(json.decode(str));

    String toJson() => json.encode(toMap(foto,descripcion));

    factory Navegacion.fromMap(Map<String, dynamic> json) => Navegacion(
        foto: json["foto"],
        descripcion: json["descripcion"],
    );

    Map<String, dynamic> toMap(String foto,String descripcion) => {
        "foto": foto,
        "descripcion": descripcion,
    };
}
