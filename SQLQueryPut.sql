--Zapytania do bazy danych college – moduł Skill 1.1
--11.01 (NULL w wyrażeniach i funkcjach agregujących)
--a) Wykonaj zapytanie:
--SELECT 34 + NULL
--i skomentuj wynik.

--b) Zapytanie zwracające wszystkie dane o tych pracownikach, dla których brakuje numeru
--PESEL lub NIP
--13 rekordów

--SELECT *
--FROM employees
--WHERE nip IS NULL OR pesel IS NULL

--c) Zapytanie wybierające wszystkie dane z tabeli students_modules.
--Zauważ, że dla niektórych egzaminów nie wyznaczono planned_exam_date.
--SELECT * FROM students_modules

--d) Zapytanie, które dla każdego rekordu z tabeli students_modules zwróci informację, ile
--dni minęło od planowanego egzaminu (wykorzystaj funkcję DateDiff).
--Dane posortowane malejąco według daty.
--Zapamiętaj ile rekordów zwróciło zapytanie.

--SELECT student_id, module_id,
--DateDiff(day,planned_exam_date,getdate()) AS no_of_days
--FROM students_modules
--ORDER BY planned_exam_date DESC

--e) Zapytanie zwracające wynik działania funkcji agregującej COUNT na polu
--planned_exam_date tabeli students_modules. Zwrócona wartość oznaczająca liczbę
--takich rekordów jest mniejsza niż liczba rekordów w tabeli. Wyjaśnij dlaczego.
--SELECT count(planned_exam_date) AS no_of_records
--FROM students_modules

--f) Zapytanie zwracające wynik działania funkcji agregującej COUNT(*) dla tabeli
--students_modules. Wartość oznaczająca liczbę rekordów jest równa liczbie rekordów w
--tabeli. Wyjaśnij dlaczego.
--Zapytanie zwróciło liczbę 94
--SELECT count(*) AS no_of_records
--FROM students_modules--11.02 (DISTINCT)
--a) Zapytanie zwracające identyfikatory studentów wraz z datami przystąpienia do
--egzaminów. Jeśli student danego dnia przystąpił do wielu egzaminów, jego identyfikator
--ma się pojawić tylko raz. Dane posortowane malejąco względem dat.
--50 rekordów
--SELECT DISTINCT student_id, exam_date
--FROM student_grades
--ORDER BY exam_date DESC--b) Zapytanie zwracające identyfikatory studentów, którzy przystąpili do egzaminu w marcu
--2018 roku. Identyfikator każdego studenta ma się pojawić tylko raz. Dane posortowane
--malejąco według identyfikatorów studentów
--10 rekordów
--SELECT DISTINCT student_id
--FROM student_grades
--WHERE exam_date BETWEEN '20180301' AND '20180331'
--ORDER BY student_id DESC--2
--11.03
--Spróbuj wykonać zapytanie:
--SELECT student_id, surname as s
--FROM students

--WHERE surname ='Fisher'
--where 's' = 'Fisher'
--Wyjaśnij dlaczego jest ono niepoprawne a następnie je skoryguj.


--11.04 (SARG)
--Zapytanie zwracające module_name oraz lecturer_id z tabeli modules z tych rekordów, dla
--których lecturer_id jest równy 8 lub NULL.
--Zapytanie napisz dwoma sposobami – raz wykorzystując funkcję COALESCE (jako drugi
--parametr przyjmij 0) raz tak, aby predykat podany w warunku WHERE był SARG.
--9 rekordów
--COALESCE:
--SELECT module_name, lecturer_id
--FROM modules
--WHERE lecturer_id=8 OR coalesce(lecturer_id, 0) = 0
--SARG:
--SELECT module_name, lecturer_id
--FROM modules
--WHERE lecturer_id=8 OR lecturer_id IS NULL

--11.05
--Wykorzystaj funkcję CAST i TRY_CAST jako parametr instrukcji SELECT próbując
--zamienić tekst ABC na liczbę typu INT.
--Skomentuj otrzymane wyniki.
--SELECT cast('ABC' AS int)
--SELECT try_cast('ABC' AS int)

--11.06
--Napisz trzy razy instrukcję SELECT wykorzystując funkcję CONVERT zamieniającą
--dzisiejszą datę na tekst. Jako ostatni parametr funkcji CONVERT podaj 101, 102 oraz 103.
--Skomentuj otrzymane wyniki.
--SELECT convert(varchar(12),getdate(),101)
--SELECT convert(varchar(12),getdate(),102)
--SELECT convert(varchar(12),getdate(),103)

--3
--11.07 (LIKE)
--Napisz zapytania z użyciem operatora LIKE wybierające nazwy grup (wielkość liter jest
--nieistotna):
--a) zaczynające się na DM
--6 rekordów
--SELECT group_no FROM groups
--WHERE group_no LIKE 'DM%'
--b) niemające w nazwie ciągu '10'
--15 rekordów
--SELECT group_no FROM groups
--WHERE group_no NOT LIKE '%10%'
--c) których drugim znakiem jest M
--9 rekordów
--SELECT group_no as G FROM groups
--WHERE group_no LIKE '_M%'
--d) których przedostatnim znakiem jest 0
--11 rekordów
--SELECT group_no as G from groups
--where group_no LIKE '%0_'
--e) których ostatnim znakiem jest 1 lub 2
--12 rekordów
--SELECT group_no FROM groups
--WHERE group_no LIKE '%[12]'
--f) których pierwszym znakiem nie jest litera D
--8 rekordów
---SELECT group_no FROM groups
--WHERE group_no LIKE '[^D]%'
--g) których drugim znakiem jest dowolna litera z zakresu A-P
--10 rekordów
--SELECT group_no FROM groups
--WHERE group_no LIKE '_[A-P]%'

--11.07 (LIKE i COLLATE)
--Napisz zapytania z użyciem operatora LIKE i/lub klauzuli COLLATE:
--a) wybierające nazwy wykładów, które w nazwie mają literę o (wielkość liter nie ma
--znaczenia)
--19 rekordów
--SELECT module_name
--FROM modules
--WHERE module_name LIKE '%o%'
--b) wybierające nazwy wykładów, które w nazwie mają dużą literę O
--1 rekord, Operational systems
--SELECT module_name
--FROM modules
--WHERE module_name collate POLISH_CS_AS LIKE '%O%'

--c) wybierające nazwy grup, które w nazwie mają trzecią literę i (wielkość liter nie ma
--znaczenia)
--16 rekordów
--SELECT group_no FROM groups
--WHERE group_no LIKE '__i%'

--4
--d) wybierające nazwy grup, które w nazwie mają trzecią literę małe i
--4 rekordy
--SELECT group_no FROM groups
--WHERE group_no collate POLISH_CS_AS LIKE '__i%' --dwa znaki 'podłoga'

--11.08 (COLLATE)
--Instrukcją CREATE utwórz tabelę #tmp (jeśli stworzymy tabelę, której nazwa będzie
--poprzedzona znakiem #, tabela zostanie automatycznie usunięta po zamknięciu sesji)
--składającą się z pól:

--CREATE TABLE #tmp (
--id int primary key,
--nazwisko varchar(30) collate polish_cs_as)
--Jedną instrukcją INSERT wprowadź do tabeli #tmp następujące rekordy (zwracając uwagę na
--wielkość liter):
--1 Kowalski
--2 kowalski
--3 KoWaLsKi
--4 KOWALSKI
--INSERT INTO #tmp VALUES
--(1,'Kowalski')
--,(2,'kowalski')
--,(3,'KoWaLsKi')
--,(4,'KOWALSKI')

--a) Wybierz z tabeli #tmp rekordy, które w polu nazwisko mają (wielkość liter jest istotna):
--pierwszą literę duże K
--3 rekordy
--SELECT * FROM #tmp
--WHERE nazwisko LIKE 'K%'
--napis Kowalski
---1 rekord
--SELECT * FROM #tmp
--WHERE nazwisko='Kowalski'
--drugą literę od końca duże K
--2 rekordy
--SELECT * FROM #tmp
--WHERE nazwisko LIKE '%K_'
--SELECT * FROM #tmp
--WHERE nazwisko collate polish_CI_as = 'kowalski'
--drugą literę o
--4 rekordy
--SELECT * FROM #tmp
--WHERE nazwisko collate polish_CI_as LIKE '_o%'
--Odpowiedz na pytanie, w którym przypadku, a) czy b), użycie klauzuli COLLATE było
--konieczne i dlaczego.


--5
--11.09
--Napisz zapytanie:
--SELECT DISTINCT surname
--FROM students
--ORDER BY group_no
--Wyjaśnij na czym polega błąd i skoryguj zapytanie tak, aby zwracało nazwiska studentów z
--tabeli students posortowane według numeru grupy.
--35 rekordów
--SELECT surname
--FROM students
--ORDER BY group_no

--11.10 (TOP)
--a) Napisz zapytanie wybierające 5 pierwszych rekordów z tabeli student_grades, które w
--polu exam_date mają najdawniejsze daty
--5 rekordów
--SELECT top(5) *
--FROM student_grades
--ORDER BY exam_date
--b) Skoryguj zapytanie z punktu a) dodając klauzulę WITH TIES. Skomentuj otrzymany
--wynik.
--6 rekordów
--SELECT top(5) WITH TIES *
--FROM student_grades
--ORDER BY exam_date

--1.11 (TOP, OFFSET)
--a) Sprawdź, ile rekordów jest w tabeli student_grades
--b) Wybierz 20% początkowych rekordów z tabeli student_grades. Posortuj wynik według
--exam_date. Sprawdź, ile rekordów zostało zwróconych i wyjaśnij dlaczego.
--SELECT top(20) PERCENT *
--FROM student_grades
--ORDER BY exam_date
--c) Pomiń pierwszych 6 rekordów i wybierz kolejnych 10 rekordów z tabeli student_grades.
--Posortuj wynik według exam_date (pierwszy rekord: student_id=6 i module_id=4)
--SELECT *
--FROM student_grades
--ORDER BY exam_date
--OFFSET 6 ROWS FETCH NEXT 10 ROWS ONLY
--d) Wybierz wszystkie rekordy z tabeli student_grades z pominięciem pierwszych 20
--38 rekordów
--SELECT *
--FROM student_grades
--ORDER BY exam_date
--OFFSET 20 ROWS


--6
--11.12 (INTERSECT, UNION, EXCEPT)
--a) Zapytanie zwracające wszystkie nazwiska z tabeli students i employees (każde ma się
--pojawić tylko raz) posortowane według nazwisk
--40 rekordów
--SELECT surname
--FROM students
--UNION
--SELECT surname
--FROM employees
--ORDER BY surname

--b) Zapytanie zwracające wszystkie nazwiska z tabeli students i employees (każde ma się
--pojawić tyle razy ile razy występuje w tabelach) posortowane według nazwisk
--77 rekordów
--SELECT surname
--FROM students
--UNION ALL
--SELECT surname
--FROM employees
--ORDER BY surname
--c) Zapytanie zwracające te nazwiska z tabeli students, które nie występują w tabeli
--employees
--21 rekordów
/*
SELECT surname
FROM students
EXCEPT
SELECT surname
FROM employees
ORDER BY surname
*/
--d) Zapytanie zwracające te nazwiska z tabeli students, które występują także w tabeli
--employees
--1 rekord – nazwisko Craven
/*
SELECT surname
FROM students
INTERSECT
SELECT surname
FROM employees
ORDER BY surname
*/
--e) Zapytanie zwracające informację, pracownicy których katedr (departments) nie prowadzą
--żadnego wykładu
--1 rekord – Department of Foreign Affairs
/*SELECT department
FROM lecturers
EXCEPT
SELECT department
FROM modules
*/
