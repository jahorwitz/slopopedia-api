
-- Insert USERS
INSERT INTO `User` (id, username, password, email, status, isAdmin, createdAt) 
VALUES
(UUID(), 'Kyle', 'password', 'gnomexp@gmail.com', 'active', 0, '2024-10-07 10:00:00'),
(UUID(), 'NilbogBen', 'password', 'ben.mulholland@gmail.com', 'active', 0, '2024-10-07 10:00:00'),
(UUID(), 'clockspot', 'password', 'luke@theclockspot.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'DanilaTing', 'password', 'tinggone@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'brucimus_maximus', 'password', 'brucecall@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'buckyball', 'password', 'ebuckin@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'NoahYoder', 'password', 'nkyoder@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'OneOne', 'password', 'andria.myers@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'james', 'password', 'james.knight.11@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'ksun', 'password', 'kanno.sonnenschein@gmail.com', 'active', 0, '2024-10-07 10:00:00'),
(UUID(), 'Jeremy', 'password', 'jdavposner@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'Lolcretius', 'password', 'tzarasbiscotti@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'lindsey', 'password', 'lkellogg@mica.edu', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'Sean', 'password', 'sean.chris.hughes@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'lacinquette', 'password', 'mr.smee829@me.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'etartane', 'password', 'etartane@gmail.com', 'active', 1, '2024-10-07 10:00:00'),
(UUID(), 'Terl', 'password', 'wantspawnterm@gmail.com', 'active', 1, '2024-10-07 10:00:00');

-- INSERT USER PREFERENCES


            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Exposition'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Frosted Tips'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Save the Rec Center'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hello Mr. Police'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Plane Problems'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'That''s the Name of the Movie'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stupid Premise Stupid Execution'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Cop Slop'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power was Testosterone'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Matrix?'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Get the Bastards'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Never Stopped to Ask if We Should'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Narration'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Classics Flex'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Peril'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'She Died for the Plot'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Terminator?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Robocop?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Barely a Movie'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Time Jump'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Rickety Bridge'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Did You Know That Humans Only Use 10% of Their Brains'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Technology Hates Us'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Quips'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Vignettes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Die Hard on a'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Just Yelling'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Music Video'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ooh an Original Song'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unexpectedly Garbage Cameo'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Slop from Abroad'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gore'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Old Child'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ninjas'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Shitty Puppet'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jar Jar Binks'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Furries'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Werewolves'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robots'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Accidental Expressionism'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dead Inside Line Readings'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Wasted Tape'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Slo-Mo'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Second Takes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Dummy'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Stock Footage'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Foley'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Sets Here'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Compositing'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Visible Production Gear'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Lighting'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Score'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Editing'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hulk Hogan'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jason Statham'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'M. Night Shyamalan'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'John Cusack'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ice-T'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'luke@theclockspot.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wachowskis'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Rock'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Al Pacino'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ice-T'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gary Busey'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'james.knight.11@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Seagal'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Save the Rec Center'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hello Mr. Police'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dad-Approved'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Plane Problems'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stupid Premise Stupid Execution'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'That''s the Name of the Movie'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Just Yelling'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Shitty Puppet'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ninjas'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Old Child'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Accidental Expressionism'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dead Inside Line Readings'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Wasted Tape'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Seagal'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Save the Rec Center'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hello Mr. Police'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dad-Approved'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stupid Tarantino'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'That''s the Name of the Movie'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stupid Premise Stupid Execution'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'She Died for the Plot'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sex Movie for Sex Perverts'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ew Don''t Kiss Him'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Accidental Expressionism'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dead Inside Line Readings'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Slo-Mo'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Great Stunts'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ooh an Original Song'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Dummy'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Second Takes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gary Busey'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ice-T'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gary Busey'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ice-T'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Stock Footage'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Slo-Mo'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Second Takes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Dummy'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Cowboys'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ew Don''t Kiss Him'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Ooh an Original Song'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Music Video'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Great Stunts'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Frosted Tips'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mullets'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'White People with Dreads'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'A Little Too Cronenberg'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Animated'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Figurative Hell'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hot for Guns'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Nudity'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unexpectedly Garbage Cameo'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Slop from Abroad'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Extreme Sports'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Homo'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Literal Hell'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Score'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Foley'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mouthbreather Theater'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Sets Here'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Compositing'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Visible Production Gear'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Lighting'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bees'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dinosaurs'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Furries'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robots'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robot Spiders'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Snakes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Supersoldiers'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Talking Things That Shouldn''t Talk'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sharks'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Vampires'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gene Simmons'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hulk Hogan'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'M. Night Shyamalan'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Michael Crichton'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Milla Jovovich'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stallone'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'John Cusack'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Al Pacino'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'ebuckin@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Zombies'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'So That’s What Killed the Dinosaurs'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Narration'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Classics Flex'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Foley'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Al Pacino'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Rock'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Foley'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Sets Here'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Talking Things That Shouldn''t Talk'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hot for Guns'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Literal Hell'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'So That’s What Killed the Dinosaurs'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'It Was All a Dream'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Matrix?'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Never Stopped to Ask if We Should'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Backstory'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Rickety Bridge'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Al Pacino'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Rock'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'It Was All a Dream'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Never Stopped to Ask if We Should'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Classics Flex'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Backstory'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Peril'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sex Movie for Sex Perverts'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Indiana Jones'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Rickety Bridge'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power Was Love'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Technology Hates Us'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Somehow This Passes the Bechdel Test'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Vignettes'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Die Hard on a'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mad Max'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Exposition'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Nudity'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Slop from Abroad'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Homo'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Literal Hell'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Figurative Hell'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Animated'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Vampires'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Werewolves'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Talking Things That Shouldn''t Talk'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Snakes'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robot Spiders'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dinosaurs'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Foley'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Visible Production Gear'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Lighting'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Score'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Editing'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Camera'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Asylum Production'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'ADR'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stephen King'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hulk Hogan'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'nkyoder@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gene Simmons'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Cop Slop'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Classics Flex'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Backstory'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'She Died for the Plot'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Sex Movie for Sex Perverts'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Terminator?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Time Jump'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Indiana Jones'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Did You Know That Humans Only Use 10% of Their Brains'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Technology Hates Us'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Die Hard on a'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Unexpectedly Garbage Cameo'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Extreme Sports'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'No Homo'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Animated'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Robot Spiders'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Score'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Al Pacino'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'It Was All a Dream'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Scorn Porn'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Al Pacino'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Rock'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hot for Guns'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Literal Hell'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Cop Slop'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Rock'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Brendan Fraser'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Matrix?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Rickety Bridge'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'The Friends We Made Along The Way'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Quips'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Vignettes'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Mad Max'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Gore'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'A Little Too Cronenberg'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Werewolves'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Talking Things That Shouldn''t Talk'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Mullets'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Vampires'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Sharks'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Supersoldiers'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Furries'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Robots'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Bees'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Camera'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Bad Sound Mix'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'John Cusack'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Wachowskis'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Stallone'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Oscar Isaac'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'M. Night Shyamalan'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Jason Statham'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Hulk Hogan'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'lkellogg@mica.edu'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Rickety Bridge'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Literal Hell'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stephen King'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Zombies'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jar Jar Binks'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Matrix?'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Never Stopped to Ask if We Should'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Backstory'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mullets'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Frosted Tips'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Matrix?'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power was Testosterone'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Get the Bastards'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Never Stopped to Ask if We Should'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Narration'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Classics Flex'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Backstory'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Peril'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'She Died for the Plot'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sex Movie for Sex Perverts'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Terminator?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Robocop?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Barely a Movie'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Time Jump'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Indiana Jones'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Rickety Bridge'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Did You Know That Humans Only Use 10% of Their Brains'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power Was Love'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Friends We Made Along The Way'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Technology Hates Us'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Somehow This Passes the Bechdel Test'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Fourth Act'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Vignettes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mad Max'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Die Hard on a'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Exposition'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hot for Guns'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unexpectedly Garbage Cameo'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Slop from Abroad'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Extreme Sports'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Literal Hell'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Zombies'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jar Jar Binks'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Talking Things That Shouldn''t Talk'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robot Spiders'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Corman Production'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mouthbreather Theater'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Sets Here'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Compositing'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Cannon Production'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'John Cusack'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wachowskis'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stephen King'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Michael Crichton'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'M. Night Shyamalan'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Wig'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Classics Flex'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Narration'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Never Stopped to Ask if We Should'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Get the Bastards'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power was Testosterone'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Matrix?'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Backstory'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Corman Production'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mouthbreather Theater'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Sets Here'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Corman Production'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Sets Here'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Costumes by Mom'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'M. Night Shyamalan'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bad Sound Mix'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mullets'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Frosted Tips'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Peril'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sex Movie for Sex Perverts'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Terminator?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Robocop?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Barely a Movie'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Indiana Jones'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Did You Know That Humans Only Use 10% of Their Brains'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'John Cusack'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wachowskis'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stephen King'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power Was Love'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Friends We Made Along The Way'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'M. Night Shyamalan'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Michael Crichton'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mad Max'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Cannon Production'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Die Hard on a'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Compositing'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Extreme Sports'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unexpectedly Garbage Cameo'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Slop from Abroad'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Extreme Sports'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jar Jar Binks'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Compositing'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Cannon Production'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sex Movie for Sex Perverts'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Did You Know That Humans Only Use 10% of Their Brains'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Robocop?'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Time Jump'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Indiana Jones'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'John Cusack'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Kelsey Grammer'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Peril'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wachowskis'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Vignettes'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'White People with Dreads'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mullets'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Frosted Tips'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unexpectedly Garbage Cameo'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Homo'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Baffling'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Obvious Compositing'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Cannon Production'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Pan Pipes'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Radical Shredding'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Extreme Sports'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Slop from Abroad'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Twists'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Indiana Jones'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Star War?'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gratuitous Time Jump'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a Robocop?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Is This a The Terminator?'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Somehow This Passes the Bechdel Test'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Technology Hates Us'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Friends We Made Along The Way'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power Was Love'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Fourth Act'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Exposition'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Die Hard on a'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mad Max'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robot Spiders'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Talking Things That Shouldn''t Talk'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jar Jar Binks'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Actors Here'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Beating a Dead Exposition'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Somehow This Passes the Bechdel Test'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Real Power Was Love'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'The Friends We Made Along The Way'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Did You Know That Humans Only Use 10% of Their Brains'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Mad Max'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wachowskis'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Michael Crichton'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Luc Besson'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Score'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Quips'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Twist'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Nudity'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Quips'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Asylum Production'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'A Little Too Cronenberg'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Vampires'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Werewolves'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sharks'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Supersoldiers'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Furries'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dinosaurs'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bees'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Lighting'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Visible Production Gear'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jason Statham'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stallone'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Milla Jovovich'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'sean.chris.hughes@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Nudity'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wake Up Sheeple'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Twist'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Quips'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Homo'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Asylum Production'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'A Little Too Cronenberg'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Vampires'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Werewolves'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sharks'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Snakes'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robots'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Furries'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dinosaurs'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bees'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Editing'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Camera'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bad Sound Mix'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'ADR'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Visible Production Gear'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Lighting'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jason Statham'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stallone'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hulk Hogan'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gene Simmons'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'etartane@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wake Up Sheeple'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Twist'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Unnecessary Nudity'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Quips'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'No Homo'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Homoerotic Undertones'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gore'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Figurative Hell'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Asylum Production'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Animated'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'A Little Too Cronenberg'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wizards'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Supersoldiers'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sharks'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Snakes'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Robots'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Dinosaurs'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'ADR'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Big Budget Slop'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Makeup'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Practical Effects'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gene Simmons'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Hulk Hogan'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Milla Jovovich'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oscar Isaac'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stallone'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'mr.smee829@me.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wow What a Twist'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Wake Up Sheeple'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Sincere'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops All Bits'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gore'),
                1
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Faaaaabulous'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Campy'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Bromance'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Costumes'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oops Good Lighting'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Visible Production Gear'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Low Budget'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Editing'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Intrusive Camera'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Gene Simmons'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Milla Jovovich'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Keanu'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Nic Cage'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Oscar Isaac'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Schwarzenegger'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Stallone'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Travolta'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Van Damme'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jason Statham'),
                2
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Jackie Chan'),
                5
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Auteur'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Another Fine Asylum Production'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Aliens'),
                4
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Chuck Norris'),
                3
            );
            

            INSERT INTO `UserKeyword` (id, user, keyword, value)
            VALUES (
                UUID(),
                (SELECT id FROM `User` WHERE email = 'wantspawnterm@gmail.com'),
                (SELECT id FROM `Keyword` WHERE name = 'Animated'),
                3
            );
            
