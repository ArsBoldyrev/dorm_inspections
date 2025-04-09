-- Добавляем тестовых пользователей
INSERT INTO users (full_name, email, phone, room, course, assigned_blocks)
VALUES 
  ('Иванов Алексей', 'ivanov@example.com', '+79161234567', '1464', 3, '{"1401", "1402"}'),
  ('Петрова Мария', 'petrova@example.com', '+79167654321', '1356', 2, '{"1301", "1302"}');

-- Добавляем блоки
INSERT INTO blocks (floor, number, full_name)
VALUES 
  (14, 1, '1401'),
  (14, 2, '1402'),
  (13, 1, '1301'),
  (13, 2, '1302');

-- Добавляем проверки
INSERT INTO inspections (block_id, user_id, left_room, right_room, mop, bathroom, toilet, comments)
VALUES 
  (1, 1, 4, 3, 5, 4, 3, 'В левой комнате грязный пол'),
  (2, 2, 5, 5, 4, 5, 4, 'Идеально чисто');
