-- Création des séquences
CREATE SEQUENCE seq_candidat START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_diplome START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_question START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_qcmscore START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_reponse START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_parcours START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_resultat START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_profil START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_departement START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_contrat START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_rh START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_admin START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_manager START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_poste START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_entretien START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_essai START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_renouvellement START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_besoin START WITH 1 INCREMENT BY 1;

-- Table Candidat
CREATE TABLE Candidat(
   idCandidat VARCHAR(50) DEFAULT 'CDDT' || LPAD(NEXTVAL('seq_candidat')::text, 6, '0'),
   email VARCHAR(250) UNIQUE,
   nom VARCHAR(500) NOT NULL,
   prenom VARCHAR(500) NOT NULL,
   adresse VARCHAR(250) NOT NULL,
   dtn DATE NOT NULL,
   renseignement VARCHAR(500),
   totalAnne_experience INT DEFAULT 0,
   datePostulation DATE,
   PRIMARY KEY(idCandidat)
);

-- Table Diplome
CREATE TABLE Diplome(
   id_diplome VARCHAR(50) DEFAULT 'DPLM' || LPAD(NEXTVAL('seq_diplome')::text, 6, '0'),
   nomDiplome VARCHAR(50) NOT NULL UNIQUE,
   PRIMARY KEY(id_diplome)
);

-- Table Question
CREATE TABLE Question(
   idQuestion VARCHAR(50) DEFAULT 'QSTN' || LPAD(NEXTVAL('seq_question')::text, 6, '0'),
   question VARCHAR(500) NOT NULL UNIQUE,
   PRIMARY KEY(idQuestion)
);

-- Table QcmScore
CREATE TABLE QcmScore(
   idQcmScore VARCHAR(50) DEFAULT 'QCMSCR' || LPAD(NEXTVAL('seq_qcmscore')::text, 6, '0'),
   note DECIMAL(15,2),
   dateQcm DATE,
   idCandidat VARCHAR(50) NOT NULL,
   PRIMARY KEY(idQcmScore),
   FOREIGN KEY(idCandidat) REFERENCES Candidat(idCandidat)
);

-- Table Reponse
CREATE TABLE Reponse(
   idReponse VARCHAR(50) DEFAULT 'RPNS' || LPAD(NEXTVAL('seq_reponse')::text, 6, '0'),
   reponse VARCHAR(500),
   choix VARCHAR(50),
   PRIMARY KEY(idReponse)
);

-- Table Resultat
CREATE TABLE Resultat(
   idResultat VARCHAR(50) DEFAULT 'RSLT' || LPAD(NEXTVAL('seq_resultat')::text, 6, '0'),
   valide BOOLEAN,
   PRIMARY KEY(idResultat)
);

-- Table Profil
CREATE TABLE Profil(
   idProfil VARCHAR(50) DEFAULT 'PRFL' || LPAD(NEXTVAL('seq_profil')::text, 6, '0'),
   annee_experience INT,
   id_diplome VARCHAR(50) NOT NULL,
   PRIMARY KEY(idProfil),
   FOREIGN KEY(id_diplome) REFERENCES Diplome(id_diplome)
);

-- Table Departement
CREATE TABLE Departement(
   id_departement VARCHAR(50) DEFAULT 'DPRTM' || LPAD(NEXTVAL('seq_departement')::text, 6, '0'),
   nomDepartement VARCHAR(250),
   PRIMARY KEY(id_departement)
);

-- Table Contrat
CREATE TABLE Contrat(
   idContrat VARCHAR(50) DEFAULT 'CNTR' || LPAD(NEXTVAL('seq_contrat')::text, 6, '0'),
   typeContrat VARCHAR(250),
   PRIMARY KEY(idContrat)
);

-- Table RH
CREATE TABLE RH(
   idRh VARCHAR(50) DEFAULT 'RH' || LPAD(NEXTVAL('seq_rh')::text, 6, '0'),
   email VARCHAR(500),
   mdp VARCHAR(500),
   PRIMARY KEY(idRh)
);

-- Table Admin
CREATE TABLE Admin(
   idAdmin VARCHAR(50) DEFAULT 'admin' || LPAD(NEXTVAL('seq_admin')::text, 6, '0'),
   email VARCHAR(500),
   mdp VARCHAR(500),
   PRIMARY KEY(idAdmin)
);

-- Table Manager
CREATE TABLE Manager(
   idManager VARCHAR(50) DEFAULT 'MNGR' || LPAD(NEXTVAL('seq_manager')::text, 6, '0'),
   email VARCHAR(500),
   mdp VARCHAR(500),
   PRIMARY KEY(idManager)
);

-- Table Poste
CREATE TABLE Poste(
   idPoste VARCHAR(50) DEFAULT 'PSTE' || LPAD(NEXTVAL('seq_poste')::text, 6, '0'),
   nomPoste VARCHAR(250),
   id_departement VARCHAR(50) NOT NULL,
   idQuestion VARCHAR(50),
   PRIMARY KEY(idPoste),
   FOREIGN KEY(id_departement) REFERENCES Departement(id_departement),
   FOREIGN KEY(idQuestion) REFERENCES Question(idQuestion)
);

-- Table Entretien
CREATE TABLE Entretien(
   idEntretien VARCHAR(50) DEFAULT 'ETRT' || LPAD(NEXTVAL('seq_entretien')::text, 6, '0'),
   date_entretien DATE,
   statut BOOLEAN,
   pretention DECIMAL(15,2),
   idResultat VARCHAR(50) NOT NULL,
   idCandidat VARCHAR(50) NOT NULL,
   PRIMARY KEY(idEntretien),
   UNIQUE(idResultat),
   UNIQUE(idCandidat),
   FOREIGN KEY(idResultat) REFERENCES Resultat(idResultat),
   FOREIGN KEY(idCandidat) REFERENCES Candidat(idCandidat)
);

-- Table Essai
CREATE TABLE Essai(
   idEssai VARCHAR(50) DEFAULT 'ESSAI' || LPAD(NEXTVAL('seq_essai')::text, 6, '0'),
   periode DATE,
   idResultat VARCHAR(50) NOT NULL,
   idCandidat VARCHAR(50) NOT NULL,
   PRIMARY KEY(idEssai),
   UNIQUE(idResultat),
   UNIQUE(idCandidat),
   FOREIGN KEY(idResultat) REFERENCES Resultat(idResultat),
   FOREIGN KEY(idCandidat) REFERENCES Candidat(idCandidat)
);

-- Table Renouvellement
CREATE TABLE Renouvellement(
   idRenouvellement VARCHAR(50) DEFAULT 'RNVLMT' || LPAD(NEXTVAL('seq_renouvellement')::text, 6, '0'),
   periode INT,
   idResultat VARCHAR(50) NOT NULL,
   idCandidat VARCHAR(50) NOT NULL,
   PRIMARY KEY(idRenouvellement),
   UNIQUE(idResultat),
   UNIQUE(idCandidat),
   FOREIGN KEY(idResultat) REFERENCES Resultat(idResultat),
   FOREIGN KEY(idCandidat) REFERENCES Candidat(idCandidat)
);

-- Table Besoin
CREATE TABLE Besoin(
   idBesoin VARCHAR(50) DEFAULT 'BSN' || LPAD(NEXTVAL('seq_besoin')::text, 6, '0'),
   nombre_employe INT,
   description VARCHAR(500),
   idContrat VARCHAR(50) NOT NULL,
   idPoste VARCHAR(50) NOT NULL,
   PRIMARY KEY(idBesoin),
   FOREIGN KEY(idContrat) REFERENCES Contrat(idContrat),
   FOREIGN KEY(idPoste) REFERENCES Poste(idPoste)
);

-- Tables d'association
CREATE TABLE diplome_candidat(
   idCandidat VARCHAR(50),
   id_diplome VARCHAR(50),
   PRIMARY KEY(idCandidat, id_diplome),
   FOREIGN KEY(idCandidat) REFERENCES Candidat(idCandidat),
   FOREIGN KEY(id_diplome) REFERENCES Diplome(id_diplome)
);

CREATE TABLE reponse_question(
   idQuestion VARCHAR(50),
   idReponse VARCHAR(50),
   PRIMARY KEY(idQuestion, idReponse),
   FOREIGN KEY(idQuestion) REFERENCES Question(idQuestion),
   FOREIGN KEY(idReponse) REFERENCES Reponse(idReponse)
);

CREATE TABLE besoin_profil(
   idProfil VARCHAR(50),
   idBesoin VARCHAR(50),
   PRIMARY KEY(idProfil, idBesoin),
   FOREIGN KEY(idProfil) REFERENCES Profil(idProfil),
   FOREIGN KEY(idBesoin) REFERENCES Besoin(idBesoin)
);