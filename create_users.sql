CREATE USER dev_user IDENTIFIED BY 'password123';
CREATE USER admin_user IDENTIFIED BY 'adminpass';

GRANT SELECT, INSERT, UPDATE ON Code_Repository TO Developer;
GRANT ALL PRIVILEGES ON Code_Repository TO Administrator;