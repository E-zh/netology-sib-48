CREATE TABLE users
(
    id       BIGSERIAL PRIMARY KEY,
    login    TEXT      NOT NULL UNIQUE,
    password TEXT      NOT NULL,
    name     TEXT      NOT NULL,
    roles    TEXT[]    NOT NULL DEFAULT '{user}',
    status   TEXT      NOT NULL DEFAULT 'active' CHECK ( status IN ('inactive', 'active', 'blocked') ),
    removed  BOOLEAN   NOT NULL DEFAULT FALSE,
    created  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE codes
(
    id      BIGSERIAL PRIMARY KEY,
    login   TEXT      NOT NULL UNIQUE REFERENCES users(login),
    code    TEXT      NOT NULL,
    tries   INT       NOT NULL DEFAULT 0,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tokens
(
    token   TEXT PRIMARY KEY,
    user_id BIGINT    NOT NULL REFERENCES users,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cards
(
    id       TEXT PRIMARY KEY,
    owner_id BIGINT    NOT NULL REFERENCES users,
    number   TEXT      NOT NULL,
    balance  DECIMAL   NOT NULL DEFAULT 0,
    status   TEXT      NOT NULL DEFAULT 'active' CHECK ( status IN ('inactive', 'active', 'blocked') ),
    created  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions
(
    id      TEXT PRIMARY KEY,
    card_id TEXT      NOT NULL REFERENCES cards,
    amount  DECIMAL   NOT NULL DEFAULT 0,
    status  TEXT      NOT NULL DEFAULT 'pending' CHECK ( status IN ('pending', 'success', 'fail') ),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- merge schema + data for simplification
INSERT INTO users (login, password, name)
VALUES ('sasha', 'b896c0996c75a84f378c6ec0af924a800c0b7fcd0ee860b8fb8d7b45f7e9fd8d910604d22b6b9000965a0047c5009ee967a75bf21690412376da9f7bc48a8402', 'Александра'),
       ('masha', '3c3183ccb7b47e6760784e751a4a265995452b44db8f627a002c4acd4ef4cef6652ae58723464d9d31c979eb0773d451ad4453a2c82a21dc4c0cb43841d5e85b', 'Мария');

INSERT INTO cards(id, owner_id, number, balance) VALUES
    ('92df3f1c-a033-48e6-8390-206f6b1f56c0', 1, '5559 0000 0000 0001', 10000),
    ('0f3f5c2a-249e-4c3d-8287-09f7a039391d', 1, '5559 0000 0000 0002', 10000);
