#  Bash Scripts Collection

Kolekcja praktycznych skryptów Bash do administracji systemami Linux/Unix, monitorowania i automatyzacji zadań.

##  Struktura projektu

```
├── Podstawowe_Skrypty/           # Skrypty dla początkujących
├── Sredniozaawansowane_Skrypty/  # Zaawansowane narzędzia administracyjne
└── README.md                     # Ten plik
```

##  Podstawowe Skrypty

### `hello_vars.sh`
Prosty skrypt demonstrujący użycie zmiennych w Bash.
```bash
./hello_vars.sh
```

### `system_welcome.sh`
Wyświetla podstawowe informacje o systemie i użytkowniku.
```bash
./system_welcome.sh
```
**Wyświetla:** nazwę użytkownika, datę, hostname

### `random_pass.sh`
Generuje bezpieczne hasło o długości 12 znaków.
```bash
./random_pass.sh
```
**Funkcje:** Używa /dev/urandom, alfanumeryczne znaki

### `check_disk.sh`
Monitoruje wykorzystanie dysku głównego (/).
```bash
./check_disk.sh
```
**Alert:** Ostrzeżenie przy >80% wykorzystania

### `file_counting.sh`
Liczy pliki w podanym katalogu (domyślnie bieżący).
```bash
./file_counting.sh [ścieżka_katalogu]
```
**Funkcje:** Walidacja katalogu, sprawdzanie uprawnień

### `web_access.sh`
Sprawdza status HTTP podanej strony internetowej.
```bash
./web_access.sh https://example.com
```
**Obsługiwane kody:** 200, 301/302, 403, 404, 500

##  Średnio-zaawansowane Skrypty

### `system-stats.sh`
Kompleksowy raport wydajności serwera.
```bash
./system-stats.sh
```
**Zawiera:**
- Uptime systemu
- Użycie CPU i pamięci RAM
- Wykorzystanie dysków
- Top 5 procesów (CPU/Memory)

### `system_report.sh`
Zwięzły raport systemowy.
```bash
./system_report.sh
```

### `alert-usage.sh`
Monitoruje zasoby systemowe i zapisuje alerty do pliku.
```bash
./alert-usage.sh
```
**Progi alertów:** CPU >80%, RAM >90%
**Log:** `alerty.log`

### `backup_with_cleaning.sh`
Automatyczny backup z rotacją plików.
```bash
./backup_with_cleaning.sh
```
**Funkcje:**
- Tworzy backup tar.gz z datą
- Usuwa backup starsze niż 7 dni
- Konfigurowalny katalog źródłowy

##  Instalacja i użytkowanie

### Wymagania systemowe
- Bash 4.0+
- Standardowe narzędzia Unix (awk, grep, curl, tar)
- Uprawnienia odpowiednie do wykonywanych operacji

### Instalacja
```bash
git clone https://github.com/twoja-nazwa/bash-scripts.git
cd bash-scripts
chmod +x Podstawowe_Skrypty/*.sh
chmod +x Sredniozaawansowane_Skrypty/*.sh
```

### Uruchamianie
```bash
# Dla pojedynczego skryptu
./Podstawowe_Skrypty/system_welcome.sh

# Dodanie do PATH (opcjonalne)
export PATH=$PATH:$(pwd)/Podstawowe_Skrypty:$(pwd)/Sredniozaawansowane_Skrypty
```

##  Przykłady użycia

### Monitoring serwera
```bash
# Jednorazowy raport
./Sredniozaawansowane_Skrypty/system-stats.sh

# Monitoring w cron (co 5 minut)
*/5 * * * * /path/to/alert-usage.sh
```

### Automatyczny backup
```bash
# Dzienny backup o 2:00
0 2 * * * /path/to/backup_with_cleaning.sh
```

### Sprawdzanie dostępności serwisów
```bash
./Podstawowe_Skrypty/web_access.sh https://mywebsite.com
./Podstawowe_Skrypty/web_access.sh https://api.myservice.com
```

##  Zastosowania biznesowe

- **DevOps:** Automatyzacja deploymentów i monitoringu
- **Administracja systemowa:** Raportowanie i maintenance
- **Backup & Recovery:** Automatyczne archiwizowanie danych
- **Security:** Monitoring zasobów i alerting
- **CI/CD:** Integracja z procesami buildowania

##  Status projektu

- [x] Podstawowe skrypty administracyjne
- [x] Monitoring zasobów systemowych
- [x] Automatyzacja backupów
- [ ] W planach: skrypty do zarządzania kontenerami
- [ ] W planach: integracja z narzędziami CI/CD


## 📝 Licencja

MIT License - szczegóły w pliku LICENSE

## 👨‍💻 Autor

**[Kacper]**
- GitHub: [Kacper-Slezak]
- Email: [k.slezak2207@gmail.com]

---

### 💡 Dlaczego te skrypty?

Te skrypty powstały z potrzeby codziennej pracy z systemami Linux/Unix. Każdy z nich rozwiązuje konkretny problem administracyjny, może być używany samodzielnie lub jako część większych rozwiązań automatyzacji.

**Główne zalety:**
- ✅ Gotowe do użycia w środowiskach produkcyjnych
- ✅ Obsługa błędów i walidacja danych wejściowych
- ✅ Czytelny, skomentowany kod
- ✅ Modułowa architektura
- ✅ Łatwe do rozszerzania i modyfikacji

---

*Ostatnia aktualizacja: $(date +%Y-%m-%d)*
