# Prilagodba korisničkog sučelja u Flutteru

Seminarski rad iz kolegija Razvoj aplikacija za mobilne i pametne uređaje.

Jednostavna aplikacija koja prikazuje prilagodbu boja, tipografije i izgleda kartice. Gumb **Promijeni boju** prebacuje cijelu aplikaciju između plave i zelene teme.

## Pokretanje

Potrebni su Flutter SDK i pokrenut Android emulator ili spojen Android uređaj.

U terminalu otvori mapu projekta koja sadrži `pubspec.yaml` i pokreni:

```sh
flutter pub get
flutter run
```

## Što primjer prikazuje

- `ThemeData` i `ColorScheme.fromSeed` — zajednička tema i paleta boja.
- `TextTheme` — veličina i debljina naslova te izgled običnog teksta.
- `CardThemeData` — pozadina, obrub i zaobljenje kartice.
- `Padding` — razmaci oko sadržaja.
- `StatefulWidget` i `setState` — promjena teme pritiskom na gumb.

## Kod i koraci izrade

Cijeli kod aplikacije nalazi se u [lib/main.dart](lib/main.dart).

Svaki korak izrade spremljen je zasebnim commitom. Promjene se mogu pratiti kroz [povijest commitova](https://github.com/mpuljic24/prilagodba-ui-flutter/commits/main).
