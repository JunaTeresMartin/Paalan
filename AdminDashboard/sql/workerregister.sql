CREATE TABLE worker_registration (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  address TEXT NOT NULL,
  phone VARCHAR(10) NOT NULL,
  email VARCHAR(100) NOT NULL,
  education VARCHAR(100) NOT NULL,
  score INT NOT NULL,
  place VARCHAR(100) NOT NULL,
  registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);