-- autoincremented
CREATE TABLE tbl1 (id BIGSERIAL PRIMARY KEY UNIQUE, a INTEGER);
CREATE TABLE tbl2 (b INTEGER REFERENCES tbl1 (id));
CREATE TABLE tbl3 (b INTEGER REFERENCES tbl1);
-- not autoincremented
CREATE TABLE tbl4 (id INTEGER PRIMARY KEY NOT NULL, a INTEGER);
CREATE TABLE tbl5 (b INTEGER NOT NULL REFERENCES tbl4 (id));
CREATE TABLE tbl6 (b INTEGER NOT NULL REFERENCES tbl4);
