CREATE TABLE worker_approval (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  score INT NOT NULL,
  status VARCHAR(20) DEFAULT 'Pending'
);