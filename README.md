# MYSQL

Zaprojektować bazę danych w MySQL dla następującego problemu:
a. Baza służy do przechowywania danych uczestników konferencji naukowej.

b. Dane osobowe uczestników: imię, nazwisko, tytuł zawodowy, nazwa uczelni, adres uczelni (miasto, kod pocztowy, państwo), nazwa wydziału/instytutu, telefon, adres e-mail.
Jeden uczestnik może podać jedną lub więcej uczelni.
c. Uczestnik może wygłaszać zero lub więcej referatów.
d. Każdy referat ma tytuł.

e. Każdemu referatowi może towarzyszyć plik ze streszczeniem.
f. Konferencja trwa od poniedziałku do piątku. Trzeba przechowywać informację, którego dnia jaki uczestnik ma jaki referat (referaty).
g. Uczestnik może wykupić zero lub więcej (do 5) obiadów (po jednym na każdy dzień), przy czym trzeba przechować informację na które dni zostały one wykupione.
h. Uczestnik może wykupić zero lub więcej (do 5) noclegów (po jednym na każdy dzień), przy czym trzeba przechować informację na które dni zostały one wykupione.

i. Pokoje noclegowe mogą być jedno lub dwuosobowe. Trzeba przechowywać informację kto jaki ma pokój, a jeżeli dwuosobowy, to z którym innym uczestnikiem go współdzieli.
Sposób zaprojektowania bazy – dowolny, ale spełniający wymagania. Wskazówka – najlepiej zaprojektować kilka tabel (np. Uczestnik, Uczelnia, Referat, …)
i połączyć je kluczami obcymi. Wypełnić tabelę przykładowymi danymi (poza plikiem streszczenia, bo będzie to niewygodne). Podać przykładowe zapytania:
•	Wyświetlenie wszystkich tytułów referatów z czwartku
•	Wyświetlenie uczelni, w których pracują uczestnicy nocujący w środę
•	Policzenie wszystkich referatów
•	Policzenie wszystkich obiadów na wtorek (itp.)
