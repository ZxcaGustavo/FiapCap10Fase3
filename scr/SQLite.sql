
CREATE TABLE estado (
    estadoid INTEGER PRIMARY KEY,
    nomeestado TEXT NOT NULL
);


CREATE TABLE safra (
    safraid INTEGER PRIMARY KEY,
    ano INTEGER NOT NULL,
    estadoid INTEGER NOT NULL,
    FOREIGN KEY (estadoid) REFERENCES estado (estadoid)
);


CREATE TABLE prodmenmg (
    prodmenid INTEGER PRIMARY KEY AUTOINCREMENT,
    mes TEXT NOT NULL,
    qtdsacasarb DECIMAL(10, 2) NOT NULL,
    rendmedarb DECIMAL(10, 2) NOT NULL,
    safraid INTEGER NOT NULL,
    FOREIGN KEY (safraid) REFERENCES safra (safraid)
);


CREATE TABLE prodmenes (
    prodmenid INTEGER PRIMARY KEY AUTOINCREMENT,
    mes TEXT NOT NULL,
    qtdsacasarb DECIMAL(10, 2) NOT NULL,
    rendmedarb DECIMAL(10, 2) NOT NULL,
    safraid INTEGER NOT NULL,
    FOREIGN KEY (safraid) REFERENCES safra (safraid)
);


INSERT INTO estado (estadoid, nomeestado) VALUES (1, 'Minas Gerais');
INSERT INTO estado (estadoid, nomeestado) VALUES (2, 'Espírito Santo');


INSERT INTO safra (safraid, ano, estadoid) VALUES (1, 2024, 1);
INSERT INTO safra (safraid, ano, estadoid) VALUES (2, 2024, 2);


INSERT INTO prodmenmg (mes, qtdsacasarb, rendmedarb, safraid) VALUES ('Janeiro', 2.34, 25.20, 1);
INSERT INTO prodmenmg (mes, qtdsacasarb, rendmedarb, safraid) VALUES ('Abril', 2.40, 25.50, 1);


INSERT INTO prodmenes (mes, qtdsacasarb, rendmedarb, safraid) VALUES ('Janeiro', 4.03, 26.00, 2);
INSERT INTO prodmenes (mes, qtdsacasarb, rendmedarb, safraid) VALUES ('Abril', 4.10, 26.30, 2);
