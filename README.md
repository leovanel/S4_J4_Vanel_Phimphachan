Ce repo appartient à Anthony Phimphachanh et Leo Vanel dans le cadre de THP

2. Le projet
2.1. FreeDoc - Réserve ton docteur
2.1.1. Le pitch
Allez, on va implémenter pour de vrai ce concurrent de Doctolib dont on te parle à longueur de ressource ! À toi d'être chirurgical 👩‍⚕️

2.1.2. Les models
Pour ce premier exercice, nous allons t'aider et te donner les models à créer :

un model Doctor, qui a comme attributs :
un first_name, qui est un string
un last_name, qui est un string
un specialty, qui est un string
un zip_code, qui est un string
un model Patient, qui a comme attributs :
un first_name, qui est un string
un last_name, qui est un string
un model Appointment, qui a comme attributs :
un date, qui est un datetime
Une fois les attributs fixés, on s'attaque aux relations :

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.
Je t'invite à créer les models et les migrations puis à les passer.

2.1.3. Tester
Pour tester, tu peux aller dans la console, créer des doctor, patient, et appointment à la volée, puis les lier.
Une fois que c'est bon, n'oublie pas le seeds.rb qui va bien.
