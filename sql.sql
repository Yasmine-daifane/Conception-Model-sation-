CREATE DATABASE Homes_Agency;

USE HomesAgency ;

CREATE TABLE Client(
   Ndeclient INT,
   nom VARCHAR(50),
   prénom VARCHAR(50),
   adresse_email VARCHAR(100),
   mot_de_passe VARCHAR(100),
   téléphone VARCHAR(20),
   PRIMARY KEY(Ndeclient)
);

CREATE TABLE Annonce(
   Ndannonce INT,
   titre VARCHAR(100),
   prix VARCHAR(50),
   date_depublication VARCHAR(50),
   _date_de_dernièremodification_ VARCHAR(50),
   N_rue VARCHAR(50),
   nom_de_rue VARCHAR(50),
   ville VARCHAR(50),
   pays VARCHAR(50),
   code_postale VARCHAR(50),
   Ndeclient INT NOT NULL,
   PRIMARY KEY(Nd_annonce),
   FOREIGN KEY(Ndeclient) REFERENCES Client_(Ndeclient)
);

CREATE TABLE Images(
   Id_Images int NOT NULL AUTO_INCREMENT,
   is_pricipale BOOLEAN NOT NULL,
   image_path VARCHAR(50),
   Nd_annonce INT NOT NULL,
   PRIMARY KEY(Id_Images),
   FOREIGN KEY(Nd_annonce) REFERENCES Annonce(N__d_annonce)
);
