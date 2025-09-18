-- =====================
-- Côté candidat
-- =====================
-- Insertion pour la table diplome
INSERT INTO diplome (nomDiplome, ranking) VALUES ('CEPE', 1);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BEPC', 1);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BACC A1', 1);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BACC A2', 1);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BACC D', 1);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BACC C', 1);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BACC +1', 2);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('BACC +2', 3);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('LICENCE', 4);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('MASTER', 5);
INSERT INTO diplome (nomDiplome, ranking) VALUES ('DOCTORAT', 6); 

-- =====================
-- Côté manager
-- =====================
-- Gestion utilisateur
-- =========================
-- Insertions pour DG
-- =====================
INSERT INTO Dg (email, mdp) VALUES ('dg1@app.work', '1234');
INSERT INTO Dg (email, mdp) VALUES ('dg2@app.work', '1234');

-- Insertions pour Manager
INSERT INTO Manager (email, mdp) VALUES ('manager1@app.work', '1234');
INSERT INTO Manager (email, mdp) VALUES ('manager2@app.work', '1234');

-- Insertions pour RH
INSERT INTO RH (email, mdp) VALUES ('rh1@app.work', '1234');
INSERT INTO RH (email, mdp) VALUES ('rh2@app.work', '1234');

-- =====================
-- Gestion annonce
-- =========================
-- Insertions Departement
-- =========================
INSERT INTO Departement (nomDepartement) VALUES ('Ressources Humaines');
INSERT INTO Departement (nomDepartement) VALUES ('Informatique');
INSERT INTO Departement (nomDepartement) VALUES ('Finance & Comptabilité');
INSERT INTO Departement (nomDepartement) VALUES ('Marketing');
INSERT INTO Departement (nomDepartement) VALUES ('Commercial & Ventes');
INSERT INTO Departement (nomDepartement) VALUES ('Production');
INSERT INTO Departement (nomDepartement) VALUES ('Logistique');
INSERT INTO Departement (nomDepartement) VALUES ('Juridique');
INSERT INTO Departement (nomDepartement) VALUES ('Recherche & Développement');
INSERT INTO Departement (nomDepartement) VALUES ('Direction Générale');

-- =========================
-- Insertions Postes
-- =========================
-- Ressources Humaines
-- =========================
-- Poste : Chargé de Recrutement
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Chargé de Recrutement', (SELECT id_departement FROM Departement WHERE nomDepartement='Ressources Humaines'));
-- =========================
-- Questions pour Chargé de Recrutement
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quelle est la principale mission d''un Chargé de Recrutement ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Identifier et attirer les candidats adaptés aux postes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale mission d''un Chargé de Recrutement ?')),
('Gérer la paie des employés', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale mission d''un Chargé de Recrutement ?')),
('Organiser les événements marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale mission d''un Chargé de Recrutement ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle est la principale mission d''un Chargé de Recrutement ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Recrutement'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel outil est le plus utilisé pour diffuser une offre d''emploi ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Les sites d''emploi et réseaux sociaux professionnels', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour diffuser une offre d''emploi ?')),
('Les notes internes manuscrites', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour diffuser une offre d''emploi ?')),
('Les appels téléphoniques massifs aux clients', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour diffuser une offre d''emploi ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour diffuser une offre d''emploi ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Recrutement'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle étape suit immédiatement la réception des candidatures ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Le tri et la sélection des CV pertinents', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle étape suit immédiatement la réception des candidatures ?')),
('La signature du contrat de travail', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle étape suit immédiatement la réception des candidatures ?')),
('L''organisation de la fête annuelle de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle étape suit immédiatement la réception des candidatures ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle étape suit immédiatement la réception des candidatures ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Recrutement'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel critère est essentiel pour sélectionner un candidat ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Les compétences et expériences correspondant au poste', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel critère est essentiel pour sélectionner un candidat ?')),
('La couleur des yeux du candidat', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel critère est essentiel pour sélectionner un candidat ?')),
('Le nombre d''amis sur les réseaux sociaux', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel critère est essentiel pour sélectionner un candidat ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel critère est essentiel pour sélectionner un candidat ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Recrutement'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel type d''entretien est couramment utilisé pour évaluer un candidat ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Entretien structuré ou semi-structuré', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel type d''entretien est couramment utilisé pour évaluer un candidat ?')),
('Séance de karaoké', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type d''entretien est couramment utilisé pour évaluer un candidat ?')),
('Test de rapidité à la course', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type d''entretien est couramment utilisé pour évaluer un candidat ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel type d''entretien est couramment utilisé pour évaluer un candidat ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Recrutement'));

-- =========================
-- Poste : Assistant RH
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Assistant RH', (SELECT id_departement FROM Departement WHERE nomDepartement='Ressources Humaines'));
-- =========================
-- Questions pour Assistant RH
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Assistant RH ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Assister le Responsable RH dans la gestion administrative du personnel', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant RH ?')),
('Définir la stratégie commerciale de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant RH ?')),
('Gérer uniquement les stocks de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant RH ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant RH ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant RH'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel document l''Assistant RH doit-il souvent préparer ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Les contrats de travail et les attestations d''emploi', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel document l''Assistant RH doit-il souvent préparer ?')),
('Les plans marketing', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document l''Assistant RH doit-il souvent préparer ?')),
('Les rapports météorologiques', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document l''Assistant RH doit-il souvent préparer ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel document l''Assistant RH doit-il souvent préparer ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant RH'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quel logiciel est couramment utilisé par un Assistant RH ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Logiciel de gestion du personnel ou SIRH', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est couramment utilisé par un Assistant RH ?')),
('Logiciel de montage vidéo', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est couramment utilisé par un Assistant RH ?')),
('Logiciel de retouche photo', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est couramment utilisé par un Assistant RH ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel logiciel est couramment utilisé par un Assistant RH ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant RH'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quelle est l''une des tâches administratives principales ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Mettre à jour les dossiers des employés et gérer les absences', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle est l''une des tâches administratives principales ?')),
('Réaliser des campagnes publicitaires', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est l''une des tâches administratives principales ?')),
('Préparer les menus du restaurant de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est l''une des tâches administratives principales ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle est l''une des tâches administratives principales ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant RH'));

-- Question 5
INSERT INTO Question (question) VALUES ('Comment l''Assistant RH peut-il aider lors du recrutement ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('En organisant les entretiens et en communiquant avec les candidats', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment l''Assistant RH peut-il aider lors du recrutement ?')),
('En concevant le site web de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment l''Assistant RH peut-il aider lors du recrutement ?')),
('En gérant la comptabilité clients', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment l''Assistant RH peut-il aider lors du recrutement ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment l''Assistant RH peut-il aider lors du recrutement ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant RH'));


-- =========================
-- Informatique
-- =========================
-- Poste : Développeur Fullstack
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Développeur Fullstack', (SELECT id_departement FROM Departement WHERE nomDepartement='Informatique'));
-- =========================
-- Questions pour Développeur Fullstack
-- Poste : Développeur Fullstack
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel langage est couramment utilisé pour le développement frontend ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('JavaScript', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel langage est couramment utilisé pour le développement frontend ?')),
('Python', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel langage est couramment utilisé pour le développement frontend ?')),
('SQL', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel langage est couramment utilisé pour le développement frontend ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel langage est couramment utilisé pour le développement frontend ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Développeur Fullstack'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel framework backend est souvent utilisé pour construire des APIs en Node.js ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Express.js', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel framework backend est souvent utilisé pour construire des APIs en Node.js ?')),
('React', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel framework backend est souvent utilisé pour construire des APIs en Node.js ?')),
('Bootstrap', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel framework backend est souvent utilisé pour construire des APIs en Node.js ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel framework backend est souvent utilisé pour construire des APIs en Node.js ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Développeur Fullstack'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle base de données est souvent utilisée pour les applications web modernes ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('PostgreSQL', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle base de données est souvent utilisée pour les applications web modernes ?')),
('Photoshop', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle base de données est souvent utilisée pour les applications web modernes ?')),
('Excel', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle base de données est souvent utilisée pour les applications web modernes ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle base de données est souvent utilisée pour les applications web modernes ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Développeur Fullstack'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel concept permet de séparer le code frontend et backend ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Architecture client-serveur', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel concept permet de séparer le code frontend et backend ?')),
('Gestion des ressources humaines', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel concept permet de séparer le code frontend et backend ?')),
('Stratégie marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel concept permet de séparer le code frontend et backend ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel concept permet de séparer le code frontend et backend ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Développeur Fullstack'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel outil est utilisé pour le contrôle de version du code source ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Git', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé pour le contrôle de version du code source ?')),
('Slack', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé pour le contrôle de version du code source ?')),
('Trello', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé pour le contrôle de version du code source ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé pour le contrôle de version du code source ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Développeur Fullstack'));

-- =========================
-- Poste : Chef de Projet IT
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Chef de Projet IT', (SELECT id_departement FROM Departement WHERE nomDepartement='Informatique'));
-- =========================
-- Questions pour Chef de Projet IT
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Chef de Projet IT ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Planifier, coordonner et superviser les projets IT', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chef de Projet IT ?')),
('Développer uniquement le code backend', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chef de Projet IT ?')),
('Gérer le marketing digital de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chef de Projet IT ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chef de Projet IT ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chef de Projet IT'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel outil est souvent utilisé pour gérer les tâches et le suivi d''un projet IT ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Jira', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé pour gérer les tâches et le suivi d''un projet IT ?')),
('Photoshop', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé pour gérer les tâches et le suivi d''un projet IT ?')),
('Excel uniquement pour les budgets', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé pour gérer les tâches et le suivi d''un projet IT ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé pour gérer les tâches et le suivi d''un projet IT ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chef de Projet IT'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle méthodologie agile est souvent utilisée pour les projets IT ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Scrum', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle méthodologie agile est souvent utilisée pour les projets IT ?')),
('Waterfall', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle méthodologie agile est souvent utilisée pour les projets IT ?')),
('Lean Manufacturing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle méthodologie agile est souvent utilisée pour les projets IT ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle méthodologie agile est souvent utilisée pour les projets IT ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chef de Projet IT'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel document décrit les exigences et objectifs d''un projet IT ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Cahier des charges', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel document décrit les exigences et objectifs d''un projet IT ?')),
('Plan marketing', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document décrit les exigences et objectifs d''un projet IT ?')),
('Rapport financier', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document décrit les exigences et objectifs d''un projet IT ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel document décrit les exigences et objectifs d''un projet IT ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chef de Projet IT'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel indicateur permet de mesurer l''avancement d''un projet IT ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Diagramme de Gantt', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''avancement d''un projet IT ?')),
('Word Cloud', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''avancement d''un projet IT ?')),
('Budget mensuel', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''avancement d''un projet IT ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''avancement d''un projet IT ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chef de Projet IT'));



-- =========================
-- Finance & Comptabilité
-- =========================
-- Poste : Comptable
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Comptable', (SELECT id_departement FROM Departement WHERE nomDepartement='Finance & Comptabilité'));
-- =========================
-- Questions pour Comptable
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un comptable ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Tenir la comptabilité et produire les états financiers', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un comptable ?')),
('Gérer le recrutement du personnel', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un comptable ?')),
('Superviser les projets IT', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un comptable ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un comptable ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Comptable'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel document comptable sert à suivre les entrées et sorties d''argent ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Journal comptable', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel document comptable sert à suivre les entrées et sorties d''argent ?')),
('Plan marketing', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document comptable sert à suivre les entrées et sorties d''argent ?')),
('Diagramme de Gantt', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document comptable sert à suivre les entrées et sorties d''argent ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel document comptable sert à suivre les entrées et sorties d''argent ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Comptable'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle norme comptable doit être respectée dans les états financiers ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Normes IFRS', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle norme comptable doit être respectée dans les états financiers ?')),
('Méthode Scrum', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle norme comptable doit être respectée dans les états financiers ?')),
('Lean Management', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle norme comptable doit être respectée dans les états financiers ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle norme comptable doit être respectée dans les états financiers ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Comptable'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel logiciel est souvent utilisé pour la comptabilité en entreprise ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Sage', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la comptabilité en entreprise ?')),
('Photoshop', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la comptabilité en entreprise ?')),
('Visual Studio Code', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la comptabilité en entreprise ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la comptabilité en entreprise ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Comptable'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle tâche relève d''un comptable ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Préparer la déclaration fiscale de l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève d''un comptable ?')),
('Organiser les entretiens d''embauche', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève d''un comptable ?')),
('Développer l''application mobile de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève d''un comptable ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche relève d''un comptable ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Comptable'));

-- =========================
-- Poste : Trésorier
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Trésorier', (SELECT id_departement FROM Departement WHERE nomDepartement='Finance & Comptabilité'));
-- =========================
-- Questions pour Trésorier
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Trésorier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Gérer la trésorerie et la liquidité de l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Trésorier ?')),
('Superviser les recrutements RH', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Trésorier ?')),
('Définir la stratégie marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Trésorier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Trésorier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Trésorier'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel document permet de suivre les flux de trésorerie ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Plan de trésorerie', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel document permet de suivre les flux de trésorerie ?')),
('Journal des entretiens', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document permet de suivre les flux de trésorerie ?')),
('Rapport marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document permet de suivre les flux de trésorerie ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel document permet de suivre les flux de trésorerie ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Trésorier'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle opération relève directement du Trésorier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Optimiser la gestion des liquidités et financements', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle opération relève directement du Trésorier ?')),
('Planifier les campagnes de recrutement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle opération relève directement du Trésorier ?')),
('Gérer le développement logiciel', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle opération relève directement du Trésorier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle opération relève directement du Trésorier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Trésorier'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel logiciel est souvent utilisé pour la gestion de trésorerie ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('SAP Treasury', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la gestion de trésorerie ?')),
('Photoshop', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la gestion de trésorerie ?')),
('Visual Studio', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la gestion de trésorerie ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel logiciel est souvent utilisé pour la gestion de trésorerie ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Trésorier'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle tâche quotidienne relève du Trésorier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Suivre les encaissements et décaissements', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne relève du Trésorier ?')),
('Organiser les entretiens d''embauche', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne relève du Trésorier ?')),
('Développer les applications internes', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne relève du Trésorier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne relève du Trésorier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Trésorier'));



-- =========================
-- Marketing
-- =========================
-- Poste : Responsable Marketing
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Responsable Marketing', (SELECT id_departement FROM Departement WHERE nomDepartement='Marketing'));
-- =========================
-- Questions pour Responsable Marketing
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Responsable Marketing ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Définir et mettre en œuvre la stratégie marketing de l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Responsable Marketing ?')),
('Gérer uniquement la trésorerie de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Responsable Marketing ?')),
('Recruter le personnel informatique', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Responsable Marketing ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Responsable Marketing ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Responsable Marketing'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel outil est le plus utilisé pour analyser les performances marketing ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Google Analytics', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour analyser les performances marketing ?')),
('SAP Treasury', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour analyser les performances marketing ?')),
('Microsoft Word', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour analyser les performances marketing ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est le plus utilisé pour analyser les performances marketing ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Responsable Marketing'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle stratégie est essentielle pour attirer de nouveaux clients ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Stratégie de communication ciblée et campagnes publicitaires', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle stratégie est essentielle pour attirer de nouveaux clients ?')),
('Optimiser les flux de trésorerie', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle stratégie est essentielle pour attirer de nouveaux clients ?')),
('Gérer les entretiens RH', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle stratégie est essentielle pour attirer de nouveaux clients ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle stratégie est essentielle pour attirer de nouveaux clients ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Responsable Marketing'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel indicateur mesure l''efficacité d''une campagne marketing ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Taux de conversion', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure l''efficacité d''une campagne marketing ?')),
('Nombre de recrutements RH', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure l''efficacité d''une campagne marketing ?')),
('Liquidité de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure l''efficacité d''une campagne marketing ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure l''efficacité d''une campagne marketing ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Responsable Marketing'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle tâche relève directement du Responsable Marketing ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Analyser le marché et proposer des campagnes adaptées', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Responsable Marketing ?')),
('Superviser les flux financiers', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Responsable Marketing ?')),
('Développer le site web de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Responsable Marketing ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Responsable Marketing ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Responsable Marketing'));

-- =========================
-- Poste : Chargé de Communication
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Chargé de Communication', (SELECT id_departement FROM Departement WHERE nomDepartement='Marketing'));
-- =========================
-- Questions pour Chargé de Communication
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Chargé de Communication ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Gérer la communication interne et externe de l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chargé de Communication ?')),
('Superviser uniquement la comptabilité', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chargé de Communication ?')),
('Recruter le personnel technique', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chargé de Communication ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chargé de Communication ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Communication'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel outil est essentiel pour planifier une campagne de communication digitale ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Hootsuite ou Buffer', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est essentiel pour planifier une campagne de communication digitale ?')),
('Excel pour la comptabilité', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est essentiel pour planifier une campagne de communication digitale ?')),
('SAP Treasury', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est essentiel pour planifier une campagne de communication digitale ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est essentiel pour planifier une campagne de communication digitale ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Communication'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle compétence est essentielle pour un Chargé de Communication ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Maîtriser les outils de communication digitale et rédactionnelle', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Chargé de Communication ?')),
('Analyser les bilans financiers', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Chargé de Communication ?')),
('Gérer les recrutements RH', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Chargé de Communication ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Chargé de Communication ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Communication'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel indicateur permet de mesurer l''efficacité d''une campagne de communication ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Le taux d''engagement et la portée des publications', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''efficacité d''une campagne de communication ?')),
('Le nombre de recrutements RH', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''efficacité d''une campagne de communication ?')),
('Le chiffre d''affaires comptable', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''efficacité d''une campagne de communication ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer l''efficacité d''une campagne de communication ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Communication'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle tâche relève directement du Chargé de Communication ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Rédiger les communiqués et gérer les réseaux sociaux', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Chargé de Communication ?')),
('Superviser la comptabilité de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Chargé de Communication ?')),
('Développer le site web interne', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Chargé de Communication ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Chargé de Communication ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chargé de Communication'));


-- =========================
-- Commercial & Ventes
-- =========================
-- Poste : Représentant Commercial
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Représentant Commercial', (SELECT id_departement FROM Departement WHERE nomDepartement='Commercial & Ventes'));
-- =========================
-- Questions pour Représentant Commercial
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Représentant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Promouvoir et vendre les produits ou services de l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Représentant Commercial ?')),
('Gérer uniquement les ressources humaines', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Représentant Commercial ?')),
('Superviser la comptabilité de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Représentant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Représentant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Représentant Commercial'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel indicateur mesure la performance d''un Représentant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Le chiffre d''affaires généré et le nombre de clients acquis', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure la performance d''un Représentant Commercial ?')),
('Le nombre de publications sur les réseaux sociaux', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure la performance d''un Représentant Commercial ?')),
('Le volume des dossiers RH traités', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure la performance d''un Représentant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel indicateur mesure la performance d''un Représentant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Représentant Commercial'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle compétence est essentielle pour un Représentant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Avoir de bonnes capacités de négociation et de communication', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Représentant Commercial ?')),
('Maîtriser les logiciels de comptabilité uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Représentant Commercial ?')),
('Gérer le recrutement du personnel', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Représentant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Représentant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Représentant Commercial'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quelle tâche relève directement du Représentant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Contacter les clients et conclure des ventes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Représentant Commercial ?')),
('Rédiger les contrats RH', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Représentant Commercial ?')),
('Superviser la maintenance informatique', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Représentant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche relève directement du Représentant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Représentant Commercial'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel outil est utilisé par un Représentant Commercial pour suivre ses ventes ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Un CRM comme Salesforce ou HubSpot', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé par un Représentant Commercial pour suivre ses ventes ?')),
('Un logiciel de PAO pour créer des visuels', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé par un Représentant Commercial pour suivre ses ventes ?')),
('Un tableur pour gérer les salaires RH', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé par un Représentant Commercial pour suivre ses ventes ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est utilisé par un Représentant Commercial pour suivre ses ventes ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Représentant Commercial'));

-- =========================
-- Poste : Assistant Commercial
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Assistant Commercial', (SELECT id_departement FROM Departement WHERE nomDepartement='Commercial & Ventes'));
-- =========================
-- Questions pour Assistant Commercial
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Assistant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Supporter l''équipe commerciale dans le suivi des clients et des commandes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant Commercial ?')),
('Gérer uniquement le recrutement du personnel', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant Commercial ?')),
('Superviser la comptabilité de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Assistant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant Commercial'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle tâche quotidienne effectue un Assistant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Mettre à jour les informations clients et préparer les commandes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Assistant Commercial ?')),
('Rédiger les contrats RH', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Assistant Commercial ?')),
('Développer des applications web', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Assistant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Assistant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant Commercial'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quel outil est souvent utilisé par un Assistant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Un logiciel de gestion commerciale ou un CRM', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Assistant Commercial ?')),
('Un logiciel de PAO pour créer des visuels marketing', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Assistant Commercial ?')),
('Un logiciel de gestion de paie RH', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Assistant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Assistant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant Commercial'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quelle compétence est essentielle pour un Assistant Commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Organisation et communication pour gérer efficacement les clients et commandes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Assistant Commercial ?')),
('Maîtrise des réseaux sociaux uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Assistant Commercial ?')),
('Compétences avancées en comptabilité', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Assistant Commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Assistant Commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant Commercial'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel type de rapport un Assistant Commercial peut-il préparer ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Rapports de ventes, suivi des commandes et tableau de performance clients', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Assistant Commercial peut-il préparer ?')),
('Rapports RH sur les congés et absences', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Assistant Commercial peut-il préparer ?')),
('Rapports financiers de la trésorerie', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Assistant Commercial peut-il préparer ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Assistant Commercial peut-il préparer ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Assistant Commercial'));


-- =========================
-- Production
-- =========================
-- Poste : Superviseur Atelier
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Superviseur Atelier', (SELECT id_departement FROM Departement WHERE nomDepartement='Production'));
-- =========================
-- Questions pour Superviseur Atelier
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Superviseur Atelier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Coordonner les opérations de production et superviser les équipes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Superviseur Atelier ?')),
('Gérer la comptabilité de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Superviseur Atelier ?')),
('Définir la stratégie marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Superviseur Atelier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Superviseur Atelier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Superviseur Atelier'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle tâche quotidienne effectue un Superviseur Atelier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Suivi des opérations de production et gestion des équipes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Superviseur Atelier ?')),
('Gérer les campagnes publicitaires', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Superviseur Atelier ?')),
('Réaliser des audits financiers', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Superviseur Atelier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle tâche quotidienne effectue un Superviseur Atelier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Superviseur Atelier'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quel outil est souvent utilisé par un Superviseur Atelier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Logiciels de planification et suivi de production', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Superviseur Atelier ?')),
('Logiciels de gestion de paie', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Superviseur Atelier ?')),
('Logiciels de design graphique', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Superviseur Atelier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est souvent utilisé par un Superviseur Atelier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Superviseur Atelier'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quelle compétence est essentielle pour un Superviseur Atelier ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Organisation et leadership pour gérer efficacement les équipes de production', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Superviseur Atelier ?')),
('Maîtrise des réseaux sociaux uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Superviseur Atelier ?')),
('Compétences avancées en comptabilité', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Superviseur Atelier ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Superviseur Atelier ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Superviseur Atelier'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel type de rapport un Superviseur Atelier peut-il préparer ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Rapports de production, suivi des performances et gestion des équipes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Superviseur Atelier peut-il préparer ?')),
('Rapports RH sur les congés et absences', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Superviseur Atelier peut-il préparer ?')),
('Rapports financiers de la trésorerie', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Superviseur Atelier peut-il préparer ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel type de rapport un Superviseur Atelier peut-il préparer ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Superviseur Atelier'));

-- =========================
-- Poste : Opérateur Machine
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Opérateur Machine', (SELECT id_departement FROM Departement WHERE nomDepartement='Production'));
-- =========================
-- Questions pour Opérateur Machine
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quelle est la principale responsabilité d''un Opérateur Machine ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Assurer le fonctionnement correct et la maintenance de la machine', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Opérateur Machine ?')),
('Superviser les équipes de production', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Opérateur Machine ?')),
('Elaborer la stratégie marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Opérateur Machine ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Opérateur Machine ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Opérateur Machine'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle précaution de sécurité doit respecter un Opérateur Machine ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Porter les équipements de protection individuelle et suivre les procédures de sécurité', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle précaution de sécurité doit respecter un Opérateur Machine ?')),
('Ignorer les protocoles de sécurité', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle précaution de sécurité doit respecter un Opérateur Machine ?')),
('Définir les plannings RH', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle précaution de sécurité doit respecter un Opérateur Machine ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle précaution de sécurité doit respecter un Opérateur Machine ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Opérateur Machine'));

-- Question 3
INSERT INTO Question (question) VALUES ('Comment un Opérateur Machine peut-il vérifier le bon fonctionnement de la machine ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Effectuer des contrôles réguliers et signaler les anomalies', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment un Opérateur Machine peut-il vérifier le bon fonctionnement de la machine ?')),
('Modifier les horaires des employés', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Opérateur Machine peut-il vérifier le bon fonctionnement de la machine ?')),
('Gérer la trésorerie de l''entreprise', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Opérateur Machine peut-il vérifier le bon fonctionnement de la machine ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment un Opérateur Machine peut-il vérifier le bon fonctionnement de la machine ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Opérateur Machine'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quelle compétence technique est essentielle pour un Opérateur Machine ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Connaissance des machines et réglages précis', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Opérateur Machine ?')),
('Maîtrise des logiciels de marketing', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Opérateur Machine ?')),
('Expertise en gestion RH', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Opérateur Machine ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Opérateur Machine ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Opérateur Machine'));

-- Question 5
INSERT INTO Question (question) VALUES ('Que doit faire un Opérateur Machine en cas de panne ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Arrêter la machine et prévenir le responsable pour maintenance', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Que doit faire un Opérateur Machine en cas de panne ?')),
('Continuer à utiliser la machine normalement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit faire un Opérateur Machine en cas de panne ?')),
('Ecrire un rapport marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit faire un Opérateur Machine en cas de panne ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Que doit faire un Opérateur Machine en cas de panne ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Opérateur Machine'));



-- =========================
-- Logistique
-- =========================
-- Poste : Gestionnaire Stock
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Gestionnaire Stock', (SELECT id_departement FROM Departement WHERE nomDepartement='Logistique'));
-- =========================
-- Questions pour Gestionnaire Stock
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quelle est la principale responsabilité d''un Gestionnaire Stock ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Gérer les entrées et sorties de stock et assurer leur traçabilité', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Gestionnaire Stock ?')),
('Gérer uniquement la comptabilité de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Gestionnaire Stock ?')),
('Elaborer la stratégie marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Gestionnaire Stock ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle est la principale responsabilité d''un Gestionnaire Stock ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Gestionnaire Stock'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle méthode est utilisée pour organiser le stock ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('FIFO ou LIFO selon les produits', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle méthode est utilisée pour organiser le stock ?')),
('En stockant tout sans ordre', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle méthode est utilisée pour organiser le stock ?')),
('En laissant le stock aux employés sans contrôle', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle méthode est utilisée pour organiser le stock ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle méthode est utilisée pour organiser le stock ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Gestionnaire Stock'));

-- Question 3
INSERT INTO Question (question) VALUES ('Comment le Gestionnaire Stock vérifie-t-il la quantité réelle ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('En effectuant des inventaires réguliers', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment le Gestionnaire Stock vérifie-t-il la quantité réelle ?')),
('En demandant au service marketing de le faire', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment le Gestionnaire Stock vérifie-t-il la quantité réelle ?')),
('En ignorant les écarts de stock', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment le Gestionnaire Stock vérifie-t-il la quantité réelle ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment le Gestionnaire Stock vérifie-t-il la quantité réelle ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Gestionnaire Stock'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quelle compétence technique est essentielle pour un Gestionnaire Stock ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Maîtriser les logiciels de gestion de stock et les procédures logistiques', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Gestionnaire Stock ?')),
('Savoir rédiger des contrats commerciaux', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Gestionnaire Stock ?')),
('Etre expert en design graphique', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Gestionnaire Stock ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence technique est essentielle pour un Gestionnaire Stock ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Gestionnaire Stock'));

-- Question 5
INSERT INTO Question (question) VALUES ('Que doit faire un Gestionnaire Stock en cas de rupture de stock ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Informer le service achats et planifier un réapprovisionnement', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Que doit faire un Gestionnaire Stock en cas de rupture de stock ?')),
('Ignorer le problème et continuer le travail', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit faire un Gestionnaire Stock en cas de rupture de stock ?')),
('Créer une campagne marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit faire un Gestionnaire Stock en cas de rupture de stock ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Que doit faire un Gestionnaire Stock en cas de rupture de stock ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Gestionnaire Stock'));


-- =========================
-- Poste : Chauffeur-Livreur
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Chauffeur-Livreur', (SELECT id_departement FROM Departement WHERE nomDepartement='Logistique'));
-- =========================
-- Questions pour Chauffeur-Livreur
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Chauffeur-Livreur ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Assurer le transport et la livraison des marchandises en toute sécurité', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chauffeur-Livreur ?')),
('Gérer les commandes et le stock du magasin', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chauffeur-Livreur ?')),
('Superviser le service comptabilité', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chauffeur-Livreur ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Chauffeur-Livreur ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chauffeur-Livreur'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle précaution doit-il prendre avant de prendre le volant ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Vérifier l''état du véhicule et les documents de transport', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle précaution doit-il prendre avant de prendre le volant ?')),
('Ignorer le véhicule et partir immédiatement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle précaution doit-il prendre avant de prendre le volant ?')),
('Demander au client de vérifier le véhicule', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle précaution doit-il prendre avant de prendre le volant ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle précaution doit-il prendre avant de prendre le volant ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chauffeur-Livreur'));

-- Question 3
INSERT INTO Question (question) VALUES ('Que doit-il faire en cas d''accident léger durant la livraison ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Signaler immédiatement l''incident à son supérieur et remplir le constat', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas d''accident léger durant la livraison ?')),
('Continuer la livraison sans prévenir personne', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas d''accident léger durant la livraison ?')),
('Téléphoner au client pour se plaindre', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas d''accident léger durant la livraison ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas d''accident léger durant la livraison ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chauffeur-Livreur'));

-- Question 4
INSERT INTO Question (question) VALUES ('Comment optimiser ses trajets de livraison ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Planifier un itinéraire efficace et respecter les horaires', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment optimiser ses trajets de livraison ?')),
('Choisir l''itinéraire au hasard', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment optimiser ses trajets de livraison ?')),
('Livrer uniquement les commandes les plus proches', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment optimiser ses trajets de livraison ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment optimiser ses trajets de livraison ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chauffeur-Livreur'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle règle de sécurité doit-il respecter lors de la livraison ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Respecter le code de la route et les consignes de sécurité pour la manipulation des marchandises', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle règle de sécurité doit-il respecter lors de la livraison ?')),
('Livrer les colis rapidement sans regarder la route', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle règle de sécurité doit-il respecter lors de la livraison ?')),
('Demander aux clients de porter eux-mêmes les colis dangereux', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle règle de sécurité doit-il respecter lors de la livraison ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle règle de sécurité doit-il respecter lors de la livraison ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Chauffeur-Livreur'));


-- =========================
-- Juridique
-- =========================
-- Poste : Avocat Interne
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Avocat Interne', (SELECT id_departement FROM Departement WHERE nomDepartement='Juridique'));
-- =========================
-- Questions pour Avocat Interne
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Avocat Interne ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Conseiller l''entreprise sur les aspects juridiques et représenter ses intérêts', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Avocat Interne ?')),
('Gérer les comptes financiers de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Avocat Interne ?')),
('Superviser les campagnes marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Avocat Interne ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Avocat Interne ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Avocat Interne'));

-- Question 2
INSERT INTO Question (question) VALUES ('Que doit-il faire lorsqu''un contrat comporte des clauses ambiguës ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Analyser les clauses, conseiller l''entreprise et proposer des modifications', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''un contrat comporte des clauses ambiguës ?')),
('Signer le contrat sans vérification', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''un contrat comporte des clauses ambiguës ?')),
('Demander au département marketing de décider', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''un contrat comporte des clauses ambiguës ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''un contrat comporte des clauses ambiguës ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Avocat Interne'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle action doit-il entreprendre en cas de litige avec un fournisseur ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Représenter l''entreprise légalement et proposer une solution amiable ou judiciaire', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle action doit-il entreprendre en cas de litige avec un fournisseur ?')),
('Ignorer le litige', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle action doit-il entreprendre en cas de litige avec un fournisseur ?')),
('Confier le litige au service comptable', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle action doit-il entreprendre en cas de litige avec un fournisseur ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle action doit-il entreprendre en cas de litige avec un fournisseur ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Avocat Interne'));

-- Question 4
INSERT INTO Question (question) VALUES ('Comment assurer la conformité légale des activités de l''entreprise ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Vérifier régulièrement les réglementations et conseiller sur les procédures internes', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des activités de l''entreprise ?')),
('Ne rien vérifier et attendre un contrôle externe', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des activités de l''entreprise ?')),
('Se baser uniquement sur les avis des clients', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des activités de l''entreprise ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des activités de l''entreprise ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Avocat Interne'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel document est essentiel pour rédiger un contrat commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Les termes de l''accord et les obligations légales de chaque partie', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour rédiger un contrat commercial ?')),
('Le plan marketing de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour rédiger un contrat commercial ?')),
('Le registre des employés', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour rédiger un contrat commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour rédiger un contrat commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Avocat Interne'));


-- =========================
-- Poste : Conseiller Juridique
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Conseiller Juridique', (SELECT id_departement FROM Departement WHERE nomDepartement='Juridique'));
-- =========================
-- Questions pour Conseiller Juridique
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Conseiller Juridique ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Fournir des conseils juridiques et assurer la conformité de l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Juridique ?')),
('Gérer les finances de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Juridique ?')),
('Superviser les campagnes marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Juridique ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Juridique ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Juridique'));

-- Question 2
INSERT INTO Question (question) VALUES ('Que doit-il faire en cas de litige avec un partenaire commercial ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Analyser la situation et proposer des solutions légales appropriées', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas de litige avec un partenaire commercial ?')),
('Ignorer le litige', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas de litige avec un partenaire commercial ?')),
('Demander au service marketing de décider', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas de litige avec un partenaire commercial ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Que doit-il faire en cas de litige avec un partenaire commercial ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Juridique'));

-- Question 3
INSERT INTO Question (question) VALUES ('Comment assurer la conformité légale des contrats de l''entreprise ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Examiner les contrats et vérifier leur conformité aux lois en vigueur', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des contrats de l''entreprise ?')),
('Signer les contrats sans vérification', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des contrats de l''entreprise ?')),
('Se baser uniquement sur les suggestions des clients', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des contrats de l''entreprise ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment assurer la conformité légale des contrats de l''entreprise ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Juridique'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel document est essentiel pour évaluer les risques juridiques ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Les contrats, accords et réglementations applicables', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour évaluer les risques juridiques ?')),
('Les rapports de ventes', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour évaluer les risques juridiques ?')),
('Le planning des campagnes marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour évaluer les risques juridiques ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel document est essentiel pour évaluer les risques juridiques ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Juridique'));

-- Question 5
INSERT INTO Question (question) VALUES ('Que doit-il faire lorsqu''une nouvelle loi impacte l''entreprise ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Informer l''entreprise et adapter les procédures internes en conséquence', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''une nouvelle loi impacte l''entreprise ?')),
('Ignorer la loi et continuer les activités comme avant', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''une nouvelle loi impacte l''entreprise ?')),
('Confier la décision au service marketing', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''une nouvelle loi impacte l''entreprise ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Que doit-il faire lorsqu''une nouvelle loi impacte l''entreprise ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Juridique'));



-- =========================
-- Recherche & Développement
-- =========================
-- Poste : Analyste Innovation
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Analyste Innovation', (SELECT id_departement FROM Departement WHERE nomDepartement='Recherche & Développement'));
-- =========================
-- Questions pour Analyste Innovation
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Analyste Innovation ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Identifier et proposer de nouvelles idées et solutions pour l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Analyste Innovation ?')),
('Gérer le budget marketing', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Analyste Innovation ?')),
('Superviser la production quotidienne', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Analyste Innovation ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Analyste Innovation ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Analyste Innovation'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle méthodologie un Analyste Innovation peut-il utiliser pour générer des idées ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Brainstorming et Design Thinking', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle méthodologie un Analyste Innovation peut-il utiliser pour générer des idées ?')),
('Analyse comptable uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle méthodologie un Analyste Innovation peut-il utiliser pour générer des idées ?')),
('Gestion de la paie', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle méthodologie un Analyste Innovation peut-il utiliser pour générer des idées ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle méthodologie un Analyste Innovation peut-il utiliser pour générer des idées ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Analyste Innovation'));

-- Question 3
INSERT INTO Question (question) VALUES ('Comment analyser la faisabilité d''une idée innovante ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Evaluer les ressources nécessaires et l''impact potentiel sur l''entreprise', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment analyser la faisabilité d''une idée innovante ?')),
('Imposer l''idée sans analyse', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment analyser la faisabilité d''une idée innovante ?')),
('Se baser uniquement sur l''avis des concurrents', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment analyser la faisabilité d''une idée innovante ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment analyser la faisabilité d''une idée innovante ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Analyste Innovation'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel outil est couramment utilisé pour suivre les projets d''innovation ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Tableaux Kanban et logiciels de gestion de projets', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel outil est couramment utilisé pour suivre les projets d''innovation ?')),
('Calculatrice fiscale uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est couramment utilisé pour suivre les projets d''innovation ?')),
('Agenda papier pour les réunions', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel outil est couramment utilisé pour suivre les projets d''innovation ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel outil est couramment utilisé pour suivre les projets d''innovation ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Analyste Innovation'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel indicateur permet de mesurer le succès d''une innovation ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Adoption par les utilisateurs et impact sur le chiffre d''affaires', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer le succès d''une innovation ?')),
('Nombre de réunions réalisées', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer le succès d''une innovation ?')),
('Nombre de mails envoyés', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer le succès d''une innovation ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel indicateur permet de mesurer le succès d''une innovation ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Analyste Innovation'));


-- =========================
-- Poste : Technicien de Laboratoire
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Technicien de Laboratoire', (SELECT id_departement FROM Departement WHERE nomDepartement='Recherche & Développement'));
-- =========================
-- Questions pour Technicien de Laboratoire
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Technicien de Laboratoire ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Réaliser des analyses et tests en laboratoire selon les protocoles', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Technicien de Laboratoire ?')),
('Gérer le service commercial', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Technicien de Laboratoire ?')),
('Superviser les ressources humaines', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Technicien de Laboratoire ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Technicien de Laboratoire ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Technicien de Laboratoire'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quel équipement est essentiel pour un Technicien de Laboratoire ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Microscope et matériel de pipetage', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel équipement est essentiel pour un Technicien de Laboratoire ?')),
('Ordinateur pour gestion des stocks uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel équipement est essentiel pour un Technicien de Laboratoire ?')),
('Téléphone pour les appels clients', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel équipement est essentiel pour un Technicien de Laboratoire ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel équipement est essentiel pour un Technicien de Laboratoire ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Technicien de Laboratoire'));

-- Question 3
INSERT INTO Question (question) VALUES ('Quelle norme de sécurité doit être respectée dans un laboratoire ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Port de gants, lunettes et respect des protocoles de sécurité', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle norme de sécurité doit être respectée dans un laboratoire ?')),
('Ne jamais porter de gants', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle norme de sécurité doit être respectée dans un laboratoire ?')),
('Oublier les protocoles de manipulation', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle norme de sécurité doit être respectée dans un laboratoire ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle norme de sécurité doit être respectée dans un laboratoire ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Technicien de Laboratoire'));

-- Question 4
INSERT INTO Question (question) VALUES ('Comment un Technicien de Laboratoire documente-t-il ses expériences ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('En consignant les protocoles, observations et résultats dans un cahier de laboratoire', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment un Technicien de Laboratoire documente-t-il ses expériences ?')),
('En partageant uniquement les résultats par email', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Technicien de Laboratoire documente-t-il ses expériences ?')),
('En ne notant rien du tout', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Technicien de Laboratoire documente-t-il ses expériences ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment un Technicien de Laboratoire documente-t-il ses expériences ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Technicien de Laboratoire'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quel est l''objectif principal des tests réalisés par un Technicien de Laboratoire ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Valider des hypothèses scientifiques et garantir la qualité des produits', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est l''objectif principal des tests réalisés par un Technicien de Laboratoire ?')),
('Préparer les réunions de direction uniquement', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est l''objectif principal des tests réalisés par un Technicien de Laboratoire ?')),
('Superviser le marketing des produits', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est l''objectif principal des tests réalisés par un Technicien de Laboratoire ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est l''objectif principal des tests réalisés par un Technicien de Laboratoire ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Technicien de Laboratoire'));



-- Direction Générale
-- =========================
-- Poste : Secrétaire de Direction
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Secrétaire de Direction', (SELECT id_departement FROM Departement WHERE nomDepartement='Direction Générale'));
-- =========================
-- Questions pour Secrétaire de Direction
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Secrétaire de Direction ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Gérer l''agenda, les communications et assister la direction', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Secrétaire de Direction ?')),
('Superviser les finances de l''entreprise', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Secrétaire de Direction ?')),
('Développer la stratégie commerciale', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Secrétaire de Direction ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Secrétaire de Direction ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Secrétaire de Direction'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle compétence est essentielle pour un Secrétaire de Direction ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Organisation et maîtrise des outils bureautiques', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Secrétaire de Direction ?')),
('Conduite de machines de production', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Secrétaire de Direction ?')),
('Gestion de projets IT', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Secrétaire de Direction ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Secrétaire de Direction ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Secrétaire de Direction'));

-- Question 3
INSERT INTO Question (question) VALUES ('Comment un Secrétaire de Direction doit-il gérer les réunions ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Préparer l''ordre du jour et rédiger les comptes rendus', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment un Secrétaire de Direction doit-il gérer les réunions ?')),
('Participer aux tests de laboratoire', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Secrétaire de Direction doit-il gérer les réunions ?')),
('Superviser la logistique des stocks', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Secrétaire de Direction doit-il gérer les réunions ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment un Secrétaire de Direction doit-il gérer les réunions ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Secrétaire de Direction'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel type de documents le Secrétaire de Direction doit-il gérer ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Courriers, emails, comptes rendus et dossiers administratifs', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel type de documents le Secrétaire de Direction doit-il gérer ?')),
('Plans de production et inventaires', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de documents le Secrétaire de Direction doit-il gérer ?')),
('Rapports financiers uniquement', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de documents le Secrétaire de Direction doit-il gérer ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel type de documents le Secrétaire de Direction doit-il gérer ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Secrétaire de Direction'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle qualité est la plus importante pour un Secrétaire de Direction ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Discrétion, rigueur et efficacité', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Secrétaire de Direction ?')),
('Créativité artistique', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Secrétaire de Direction ?')),
('Compétence en pilotage d''avion', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Secrétaire de Direction ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Secrétaire de Direction ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Secrétaire de Direction'));


-- =========================
-- Poste : Conseiller Stratégique
-- =========================
INSERT INTO Poste (nomPoste, id_departement) VALUES ('Conseiller Stratégique', (SELECT id_departement FROM Departement WHERE nomDepartement='Direction Générale'));
-- =========================
-- Questions pour Conseiller Stratégique
-- =========================
-- Question 1
INSERT INTO Question (question) VALUES ('Quel est le rôle principal d''un Conseiller Stratégique ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Analyser la situation de l''entreprise et proposer des recommandations stratégiques', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Stratégique ?')),
('Superviser la paie des employés', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Stratégique ?')),
('Gérer uniquement le matériel informatique', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Stratégique ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel est le rôle principal d''un Conseiller Stratégique ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Stratégique'));

-- Question 2
INSERT INTO Question (question) VALUES ('Quelle compétence est essentielle pour un Conseiller Stratégique ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Capacité d''analyse, vision globale et aptitude à la prise de décision', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Conseiller Stratégique ?')),
('Conduite de véhicules lourds', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Conseiller Stratégique ?')),
('Réalisation de tâches administratives de bureau', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Conseiller Stratégique ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle compétence est essentielle pour un Conseiller Stratégique ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Stratégique'));

-- Question 3
INSERT INTO Question (question) VALUES ('Comment un Conseiller Stratégique aide-t-il la direction ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('En fournissant des analyses et des recommandations pour orienter les décisions', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Comment un Conseiller Stratégique aide-t-il la direction ?')),
('En supervisant la maintenance des machines de production', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Conseiller Stratégique aide-t-il la direction ?')),
('En s''occupant de la comptabilité quotidienne', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Comment un Conseiller Stratégique aide-t-il la direction ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Comment un Conseiller Stratégique aide-t-il la direction ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Stratégique'));

-- Question 4
INSERT INTO Question (question) VALUES ('Quel type de documents le Conseiller Stratégique utilise-t-il le plus ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Rapports d''activité, analyses financières et études de marché', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quel type de documents le Conseiller Stratégique utilise-t-il le plus ?')),
('Plans de production et inventaires de stock', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de documents le Conseiller Stratégique utilise-t-il le plus ?')),
('Manuels techniques pour les machines', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quel type de documents le Conseiller Stratégique utilise-t-il le plus ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quel type de documents le Conseiller Stratégique utilise-t-il le plus ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Stratégique'));

-- Question 5
INSERT INTO Question (question) VALUES ('Quelle qualité est la plus importante pour un Conseiller Stratégique ?');
-- Réponses
INSERT INTO Reponse (reponse, choix, vraiFaux, idQuestion) VALUES
('Vision, sens de l''analyse et esprit critique', 'A', TRUE, (SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Conseiller Stratégique ?')),
('Compétence en pilotage d''avion', 'B', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Conseiller Stratégique ?')),
('Capacité à produire des pièces mécaniques', 'C', FALSE, (SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Conseiller Stratégique ?'));
-- Poste correspondant
INSERT INTO question_poste (idQuestion, idPoste)
VALUES ((SELECT idQuestion FROM Question WHERE question='Quelle qualité est la plus importante pour un Conseiller Stratégique ?'), (SELECT idPoste FROM Poste WHERE nomPoste='Conseiller Stratégique'));

-- Insertions pour la table Contrat
INSERT INTO Contrat (typeContrat, abreviation) VALUES 
('Contrat à Durée Indéterminée', 'CDI'),
('Contrat à Durée Déterminée', 'CDD'),
('Contrat de Stage', 'STG'),
('Contrat d''Apprentissage', 'APP'),
('Contrat de Freelance', 'FRL');
