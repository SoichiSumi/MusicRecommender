# --- !Ups
INSERT INTO account VALUES(1, "Sample User1");
INSERT INTO account VALUES(2, "Sample User2");
INSERT INTO account VALUES(3, "Sample User3");

INSERT INTO music VALUES(1, "Artist1", "Music1");
INSERT INTO music VALUES(2, "Artist1", "Music2");
INSERT INTO music VALUES(3, "Artist2", "Music3");
INSERT INTO music VALUES(4, "Artist3", "Music4");
INSERT INTO music VALUES(5, "Artist3", "Music5");


INSERT INTO room VALUES(1, "Room1");
INSERT INTO room VALUES(2, "Room2");

INSERT INTO sung_music VALUES(1, 1, 1, 1);
INSERT INTO sung_music VALUES(2, 1, 1, 2);
INSERT INTO sung_music VALUES(3, 1, 2, 3);
INSERT INTO sung_music VALUES(4, 2, 2, 1);

# --- !Downs

