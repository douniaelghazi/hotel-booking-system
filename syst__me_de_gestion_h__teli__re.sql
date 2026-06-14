

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `chambre` (
  `id_chambre` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Prix` decimal(10,2) NOT NULL,
  `Statut` varchar(30) NOT NULL,
  `id_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `chambre` (`id_chambre`, `Numero`, `Type`, `Prix`, `Statut`, `id_reservation`) VALUES
(1, 101, 'Simple', 300.00, 'Occupee', 101),
(2, 102, 'Double', 500.00, 'Occupee', 102),
(3, 103, 'Suite', 800.00, 'Occupee', 103),
(4, 104, 'Double', 500.00, 'Occupee', 104),
(5, 105, 'Simple', 300.00, 'Occupee', 105);

-- --------------------------------------------------------



CREATE TABLE `client` (
  `Id_client` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Date_naissance` varchar(2) NOT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




INSERT INTO `client` (`Id_client`, `Nom`, `Prenom`, `Tel`, `Date_naissance`, `Email`) VALUES
(1, 'ElGhazi', 'Dounia', '0612345678', '20', 'dounia@gmail.com'),
(2, 'Alaoui', 'Yassine', '0623456789', '15', 'yassine@gmail.com'),
(3, 'Bennani', 'Sara', '0634567890', '08', 'sara@gmail.com'),
(4, 'Amrani', 'Omar', '0645678901', '25', 'omar@gmail.com'),
(5, 'Karimi', 'Salma', '0656789012', '12', 'salma@gmail.com');


CREATE TABLE `paiment` (
  `id_paiement` int(11) NOT NULL,
  `Montant` decimal(15,2) NOT NULL,
  `Date_paiment` date NOT NULL,
  `Mode_paiment` varchar(50) NOT NULL,
  `id_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `paiment` (`id_paiement`, `Montant`, `Date_paiment`, `Mode_paiment`, `id_reservation`) VALUES
(1, 1500.00, '2026-06-01', 'Carte Bancaire', 101),
(2, 3000.00, '2026-06-02', 'Especes', 102),
(3, 4000.00, '2026-06-03', 'Carte Bancaire', 103),
(4, 3500.00, '2026-06-04', 'Virement', 104),
(5, 1800.00, '2026-06-05', 'Especes', 105);



CREATE TABLE `réservation` (
  `id_reservation` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `date_depart` date NOT NULL,
  `Id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `réservation` (`id_reservation`, `date_reservation`, `date_arrivee`, `date_depart`, `Id_client`) VALUES
(101, '2026-06-01', '2026-06-10', '2026-06-15', 1),
(102, '2026-06-02', '2026-06-12', '2026-06-18', 2),
(103, '2026-06-03', '2026-06-20', '2026-06-25', 3),
(104, '2026-06-04', '2026-06-22', '2026-06-28', 4),
(105, '2026-06-05', '2026-06-25', '2026-06-30', 5);


ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id_chambre`),
  ADD KEY `id_reservation` (`id_reservation`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id_client`);

--
-- Index pour la table `paiment`
--
ALTER TABLE `paiment`
  ADD PRIMARY KEY (`id_paiement`),
  ADD KEY `id_reservation` (`id_reservation`);

--
-- Index pour la table `réservation`
--
ALTER TABLE `réservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `Id_client` (`Id_client`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`id_reservation`) REFERENCES `réservation` (`id_reservation`);

--
-- Contraintes pour la table `paiment`
--
ALTER TABLE `paiment`
  ADD CONSTRAINT `paiment_ibfk_1` FOREIGN KEY (`id_reservation`) REFERENCES `réservation` (`id_reservation`);

--
-- Contraintes pour la table `réservation`
--
ALTER TABLE `réservation`
  ADD CONSTRAINT `réservation_ibfk_1` FOREIGN KEY (`Id_client`) REFERENCES `client` (`Id_client`);
COMMIT;


