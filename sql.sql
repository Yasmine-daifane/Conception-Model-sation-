CREATE DATABASE my_briefe ;

USE my_briefe ;

CREATE TABLE Client_(
   N__de_client_ INT,
   nom VARCHAR(50),
   prénom VARCHAR(50),
   adresse_email VARCHAR(100),
   mot_de_passe VARCHAR(100),
   téléphone VARCHAR(20),
   PRIMARY KEY(N__de_client_)
);

CREATE TABLE Annonce(
   N__d_annonce INT,
   titre_ VARCHAR(100),
   prix VARCHAR(50),
   date_de_publication_ VARCHAR(50),
   _date_de_dernière__modification_ VARCHAR(50),
   N_rue VARCHAR(50),
   nom_de_rue VARCHAR(50),
   ville VARCHAR(50),
   pays VARCHAR(50),
   code_postale VARCHAR(50),
   N__de_client_ INT NOT NULL,
   PRIMARY KEY(N__d_annonce),
   FOREIGN KEY(N__de_client_) REFERENCES Client_(N__de_client_)
);

CREATE TABLE Images(
   Id_Images COUNTER,
   is_pricipale LOGICAL NOT NULL,
   image_path VARCHAR(50),
   N__d_annonce INT NOT NULL,
   PRIMARY KEY(Id_Images),
   FOREIGN KEY(N__d_annonce) REFERENCES Annonce(N__d_annonce)
);
