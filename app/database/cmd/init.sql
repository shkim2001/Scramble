\c scramble_db;

CREATE TABLE IF NOT EXISTS games (
    GameID TEXT,
    Board JSONB NOT NULL,
    LetterDistribution JSONB NOT NULL,
    Players JSONB,
    CurrentPlayer TEXT,
    PlayerList JSONB,
    TotalMoves INTEGER,
    GameStarted BOOLEAN
);

CREATE ROLE KoalaAdmin 
LOGIN
PASSWORD 'KoalatyProduct';

CREATE ROLE ReadOnlyUser 
WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION 
PASSWORD 'Kwyjibo';


GRANT ALL PRIVILEGES ON DATABASE scramble_db to KoalaAdmin;

GRANT CONNECT ON DATABASE scramble_db TO ReadOnlyUser;
GRANT USAGE ON SCHEMA public TO ReadOnlyUser;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO ReadOnlyUser;