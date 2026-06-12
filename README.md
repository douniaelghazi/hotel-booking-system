# 🏨 Système de Gestion Hôtelière

## 📌 Description

Le projet **Système de Gestion Hôtelière** est une base de données relationnelle permettant de gérer les principales activités d’un hôtel. Il facilite la gestion des clients, des chambres, des réservations et des paiements tout en centralisant les informations dans une seule base de données.

Ce projet a été réalisé dans le cadre d’un travail d’analyse, de conception et d’implémentation d’une base de données.

---

## 🎯 Objectifs

- Gérer les informations des clients.
- Gérer les chambres et leur disponibilité.
- Enregistrer les réservations.
- Suivre les paiements des clients.
- Centraliser les données de l’hôtel.
- Faciliter la consultation des informations.

---

## 👥 Acteurs du système

### Réceptionniste
- Enregistrer les clients.
- Consulter les informations des clients.
- Créer, modifier ou annuler des réservations.
- Vérifier la disponibilité des chambres.
- Enregistrer les paiements.

### Gestionnaire de l'hôtel
- Consulter les réservations.
- Suivre les paiements.
- Contrôler l’activité de l’hôtel.
- Consulter les statistiques et rapports.

### Client
- Effectuer une réservation.
- Séjourner dans une chambre.
- Effectuer un paiement.

---

## 📊 Modèle Logique de Données (MLD)

```text
CLIENT(
#id_client,
nom,
prenom,
telephone,
email,
adresse
)

CHAMBRE(
#id_chambre,
numero,
type,
prix_nuit,
disponibilite
)

RESERVATION(
#id_reservation,
date_reservation,
date_arrivee,
date_depart,
statut,
id_client(FK),
id_chambre(FK)
)

PAIEMENT(
#id_paiement,
date_paiement,
montant,
mode_paiement,
id_reservation(FK)
)
```

---

## 🔗 Relations

- Un client peut effectuer plusieurs réservations.
- Une réservation appartient à un seul client.
- Une chambre peut être réservée plusieurs fois à des dates différentes.
- Une réservation concerne une seule chambre.
- Une réservation peut avoir un ou plusieurs paiements.

---

## 🛠️ Étapes de réalisation

### 1. Analyse des besoins

Identification des acteurs du système et rédaction des User Stories.

### 2. Conception de la base de données

- Création du MCD (Modèle Conceptuel de Données).
- Transformation du MCD en MLD (Modèle Logique de Données).

### 3. Création de la base de données

```sql
CREATE DATABASE hotel_booking_system;
USE hotel_booking_system;
```

### 4. Création des tables

Création des tables :

- CLIENT
- CHAMBRE
- RESERVATION
- PAIEMENT

avec leurs clés primaires et clés étrangères.

### 5. Insertion des données

Insertion des données de test avec les commandes SQL :

```sql
INSERT INTO CLIENT (...);
INSERT INTO CHAMBRE (...);
INSERT INTO RESERVATION (...);
INSERT INTO PAIEMENT (...);
```

### 6. Vérification des données

```sql
SELECT * FROM CLIENT;
SELECT * FROM CHAMBRE;
SELECT * FROM RESERVATION;
SELECT * FROM PAIEMENT;
```

### 7. Exportation de la base de données

Après la création des tables et l’insertion des données, la base de données a été exportée dans un fichier SQL afin de sauvegarder sa structure et son contenu.

---

## 📂 Contenu du projet

- Analyse des besoins
- MCD (Modèle Conceptuel de Données)
- MLD (Modèle Logique de Données)
- Script SQL
- Données de test

---

## 🛠️ Outils et Technologies

- MySQL
- phpMyAdmin
- SQL
- Git
- GitHub
- Looping (conception des modèles MCD et MLD)

---

## 🚀 Installation

### Cloner le projet

```bash
git clone https://github.com/douniaelghazi/hotel-booking-system.git
```

### Accéder au dossier

```bash
cd hotel-booking-system
```

### Importer la base de données

Importer le fichier SQL dans MySQL ou phpMyAdmin afin de recréer automatiquement la base de données.

---

## 📁 Livrables

- Analyse_des_besoins.pdf
- MCD.pdf
- MLD.pdf
- systeme_gestion_hoteliere.sql

---

## 👩‍💻 Réalisé par

**Dounia El Ghazi**

Projet académique de conception et gestion de bases de données.