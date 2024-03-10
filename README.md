I. Am reusit sa creez un script bash si am implementat diferite functii pentru manipularea fisierului /etc/passwd. Folosind variabila de mediu $HOME, am reusit sa afisez directorul principal al utilizatorului curent. De asemenea, am utilizat comanda awk pentru a extrage numele de utilizatori si alte informatii relevante din fisierul /etc/passwd.
Am implementat functia read pentru a citi input de la utilizator si am folosit valorile introduse pentru a efectua operatii specifice, precum gasirea directorului principal al unui anumit utilizator sau listarea utilizatorilor cu un anumit interval UID. Folosind comanda sed, am inlocuit caracterele intr-un fisier si am redirectionat iesirea catre un alt fisier pentru stocare.
De asemenea, am utilizat comenzile hostname -I si curl ifconfig.me pentru a afisa adresele IP privata si publica ale sistemului, oferind astfel o imagine completa a configuratiei retelei.
II.
1. Am incercat sa construiesc o imagine Docker utilizand comanda "docker build -t imagine_doker C:\Users\Rares\Desktop\dok\DockerFile", specificand calea catre fisierul Dockerfile. Procesul a fost finalizat cu succes, generand o imagine Docker numita "imagine_doker".
2. Ulterior, am incercat sa rulez un container folosind comanda "docker run -it imagine_docker", dar am intampinat o eroare care indica faptul ca imaginea "imagine_docker" nu a putut fi gasita local
3. Am incercat sa ma deplasez in directorul care contine fisierul Dockerfile cu comanda "cd DockerFile", dar am observat ca comanda a esuat deoarece directorul nu exista.
4. Am incercat sa refac construcția imaginii Docker utilizand comanda "docker build -t imagine_docker .", dar am primit o eroare care indica faptul ca fisierul Dockerfile nu a putut fi gasit.
5. Incercarea de a utiliza comanda "docker build -t imagine_docker" a esuat, deoarece nu am furnizat un argument necesar pentru comanda.
6. In cele din urma, am reusit sa construiesc o imagine Docker cu succes folosind comanda "docker build -t imagine_doker .".

III.
 -Am rulat comanda docker exec -it mysql-server mysql -uroot -p.
 -Am verificat bazele de date existente;
 -Am creat un tabel numit angajati cu coloanele id, employee_name, department și salary;
 -Am introdus date in baza de date dupa care am calculat media de la departamentele hr si it.
