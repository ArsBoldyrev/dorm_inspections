-- Таблица пользователей (члены студкома)
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(20),
  room VARCHAR(10),
  course INT,
  assigned_blocks TEXT[]
);

-- Таблица блоков
CREATE TABLE blocks (
  id SERIAL PRIMARY KEY,
  floor INT NOT NULL,
  number INT NOT NULL,
  full_name VARCHAR(10) UNIQUE
);

-- Таблица проверок
CREATE TABLE inspections (
  id SERIAL PRIMARY KEY,
  block_id INT REFERENCES blocks(id),
  user_id INT REFERENCES users(id),
  left_room INT CHECK (left_room BETWEEN 1 AND 5),
  right_room INT CHECK (right_room BETWEEN 1 AND 5),
  mop INT CHECK (mop BETWEEN 1 AND 5),
  bathroom INT CHECK (bathroom BETWEEN 1 AND 5),
  toilet INT CHECK (toilet BETWEEN 1 AND 5),
  comments TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);
