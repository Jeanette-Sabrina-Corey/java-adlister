USE ADventure_db;

# do not run this insert!!! keep it Commented out
# INSERT INTO users (id, username, email, password)
#     VALUES (1,'sabrina','sa@gmail.com','pass123'),
#            (2,'corey','ck@gmail.com', 'password'),
#            (3,'jeanette','jp@gmail.com','pass456');

# all of sabrina's ads
INSERT INTO ads (id, user_id, title, description)
    VALUES (1,1,'REI co-op trail Hut','Selling REI co-op trail Hut upgraded. some wear'),
           (2,1,'Havasu Falls', 'Looking for a group to join us in on the hike. Starting early. Contact Us!'),
           (3,1, 'Big Bend National parks: Lost Mine Trail', 'Hello fellow Adventurers, Just finished the Lost mine Trail. 4.8 miles not dog friendly');


# all of corey's ads
INSERT INTO ads (id, user_id, title, description)
    VALUES (4,2,'Three-Burner Camp Stove', 'Selling my 3-burner. Used a couple of times in good condition'),
           (5,2,'HeadLamp', 'Selling my Headlamp bought wrong size and site does not allow returns'),
           (6,2,'Camping with Dogs','Took our dog with us and really enjoyed The Coleman Dome Tent with Screen Room. Fits 6 people comfortably');

# all of jeanette's ads
INSERT INTO ads (id, user_id, title, description)
    VALUES (7,3,'Kayak','Ascend 12T sit-on-top Kayak. We ended up upgrading. Selling in area'),
           (8,3,'Enchanted Rock Meet up!','Hey adventurers we are meeting up at the top of the rock. contact us to be added to the list. camping 5/23/21-5/25/21. Join Us!'),
           (9,3,'Portable Generator','Selling extra generator has USB ports');

# categories of the ads
INSERT INTO categories (id, name)
    VALUES (1,'Camping Gear'),
           (2,'Hiking Gear'),
           (3,'Fishing Gear'),
           (4,'Tips and Tricks'),
           (5,'Outdoor Meets');

# adding categories into the ads
INSERT INTO ad_categories (ad_id, categories_id)
    VALUES (1,1),(2,5),(3,4),(4,1),(5,2),(6,4),(7,3),(8,5),(9,1);
