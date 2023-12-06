CREATE DATABASE escola;

USE escola;

CREATE TABLE Aluno (

    id INT PRIMARY KEY,

    nome VARCHAR(50),

    idade INT,

    sexo CHAR(1)

);



CREATE TABLE Disciplina (

    id INT PRIMARY KEY,

    nome VARCHAR(50)

);



CREATE TABLE Matricula (

    id INT PRIMARY KEY,

    id_aluno INT,

    id_disciplina INT,

    nota DECIMAL(4,2),

    FOREIGN KEY (id_aluno) REFERENCES Aluno(id),

    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id)

);

INSERT INTO Aluno (id, nome, idade, sexo) VALUES
    (1, 'João Silva', 20, 'M'),
    (2, 'Maria Oliveira', 22, 'F'),
    (3, 'Carlos Souza', 21, 'M'),
    (4, 'Ana Lima', 23, 'F'),
    (5, 'José Santos', 22, 'M'),
    (6, 'Fernanda Costa', 20, 'F');
    
   INSERT INTO Disciplina (id, nome) VALUES
    (1, 'Matemática'),
    (2, 'História'),
    (3, 'Biologia'),
    (4, 'Química'),
    (5, 'Geografia'),
    (6, 'Física');
    
    INSERT INTO Matricula (id, id_aluno, id_disciplina, nota) VALUES
    (101, 1, 1, 8.5),
    (102, 2, 3, 7.2),
    (103, 3, 2, 9.0),
    (104, 4, 4, 6.8),
    (105, 5, 5, 8.0),
    (106, 6, 6, 7.5);
    
    SELECT AVG(nota) AS media FROM Matricula;