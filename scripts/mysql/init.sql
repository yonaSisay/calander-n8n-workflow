USE mydatabase;
CREATE TABLE IF NOT exists `event` (
  `CalenderId` INT PRIMARY KEY AUTO_INCREMENT,
  `Source` varchar(255) DEFAULT 'N8N Flow',
  `WrittenDateTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `EventID` varchar(255) DEFAULT NULL,
  `EventName` varchar(255) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Organizer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`Organizer`)),
  `Attendees` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`Attendees`)),
  `Creator` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;