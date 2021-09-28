-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) = 1990

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM `courses` 
WHERE `cfu` > 10

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students`
WHERE `date_of_birth` >= "1990-09-28"

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT `period`, `year`
FROM `courses`
WHERE `period`= "I semestre" AND `year`= "1"

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT `date`, `hour`
FROM `exams`
WHERE `date` = "2020/06/20" AND `hour` >= "14:00:00"

-- 6. Selezionare tutti i corsi di laurea magistrale (38)
SELECT `name` AS "Corso di laura", `level` AS "livello"
FROM `degrees`
WHERE `level`= "magistrale"

-- 7. Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(*) AS "Dipartimenti Università"
FROM `departments`

-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT `name`, `surname`, `phone` AS "Numero di telefono"
FROM `teachers`
WHERE `phone` IS NOT NULL


-- EX - Query con SELECT

-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS "numeri iscritti", YEAR(`enrolment_date`) AS "Anno"
FROM `students`
GROUP BY  YEAR(`enrolment_date`)

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(*) AS "insegnante", `office_address` AS "indirizzo"
FROM `teachers`
GROUP BY `indirizzo`

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 2) AS "media", `exam_id` AS "sessione"
FROM `exam_student`
GROUP BY `sessione`

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(*) AS `total_courses`, `department_id`
FROM `degrees`
GROUP BY `department_id`;





