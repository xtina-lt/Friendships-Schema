--------------------------------------
--        #  XTINA.CODES  #         --
--   INSERT INTO table() VALUE()    --
--  UPDATE table SET table.id = 'y' --
--      DELETE FROM table WHERE     --
--           WHERE id = #           --
--        SELECT * FROM table       --
--       GROUP BY column DESC       --
--          ORDER BY column         --
--   CONCAT_WS('delimeter', x, y)   --
--------------------------------------

#  CREATE  # --
-- INSERT INTO users(first_name, last_name, email, password) VALUES('Amy','Giver','amy@giveer.com','password'), ('Eli','Byers','Byers@email.com','password'), ('Big','Bird','Bird@email.com','password'), ('Kermit','The Frog','thefrog@email.com','password'), ('Marky','Mark','markymark@email.com','password'), ('ada','lovelace','motherofprogramming@email.com','password')


-- # UPDATE #--
-- INSERT INTO friendships(user_id, friend_id) VALUES(1,2),(1,4),(1,6),(2,1),(2,3),(2,5),(3,2),(3,5),(4,3),(5,1),(5,6),(6,2),(6,3)


-- # READ # --
-- display all users / friendships 
-- SELECT users.first_name, users.last_name, u2.first_name as friend_first_name, u2.last_name as friend_last_name FROM users
-- JOIN friendships ON users.id = friendships.user_id
-- LEFT JOIN users AS u2 ON u2.id = friendships.friend_id;

-- display all users whos friends with user1
-- SELECT users.first_name, users.last_name, u2.first_name as friend_first_name, u2.last_name as friend_last_name FROM users
-- JOIN friendships ON users.id = friendships.user_id
-- LEFT JOIN users AS u2 ON u2.id = friendships.friend_id
-- WHERE users.id = 1

-- get count of friendships
-- SELECT COUNT(*) AS count FROM friendships;

-- who has the most friends, return count
-- SELECT users.first_name, users.last_name, count(user_id) AS count, u2.first_name as friend_first_name, u2.last_name as friend_last_name FROM users
-- JOIN friendships ON users.id = friendships.user_id
-- LEFT JOIN users AS u2 ON u2.id = friendships.friend_id
-- GROUP BY user_id
-- ORDER BY count DESC
-- LIMIT 2 -- the first one will have the most

-- friends of the third user, alphabetical order
-- SELECT users.first_name, users.last_name, u2.first_name as friend_first_name, u2.last_name as friend_last_name FROM users
-- JOIN friendships ON users.id = friendships.user_id
-- LEFT JOIN users AS u2 ON u2.id = friendships.friend_id
-- WHERE users.id = 3
-- ORDER BY first_name
