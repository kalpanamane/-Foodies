---------------------------------------------------------------
use foodie;
---------------------------------------------------------------

drop table user;
CREATE TABLE User (
  userId int auto_increment,
  userName varchar(20),
  password varchar(20),
  name varchar(20),
  state varchar(20),
  pin int,
  city varchar(20),
  street varchar(20),
  email varchar(20),
  phone varchar(10),
  point int default 30,
  primary key(userId)
);

select * from user;
insert into user (userId,userName,password,name,state,pin,city,street,email,phone,point) values(100,"bharat1010","bk1010","Bharat","Maharashtra",411047,"Pune","New Sangavi","bk@gmail.com","9284753536",0);
insert into user (userId,userName,password,name,state,pin,city,street,email,phone) values(101,"rushi5744","rk5744","Rushikesh","Maharashtra",411047,"Pune","Old Sangavi","rk@gmail.com","9762866136");
insert into user (userId,userName,password,name,state,pin,city,street,email,phone) values(102,"amol0505","ap0505","Amol","Maharashtra",411012,"Narayangao","Shivaji Nagar","ap@gmail.com","7709839739");
insert into user (userId,userName,password,name,state,pin,city,street,email,phone) values(103,"ankush0707","ab0707","Ankush","Maharashtra",411021,"Sambhaji Nagar","Bhagat Colony","ab@gmail.com","9518326090");
insert into user (userId,userName,password,name,state,pin,city,street,email,phone) values(104,"saurabh2501","sb2501","Saurabh","Maharashtra",411045,"Pune","Hadapsar","sb@gmail.com","8788103797");
insert into user (userId,userName,password,name,state,pin,city,street,email,phone) values(105,"kaustubh5959","kk5959","Kaustubh","Maharashtra",411042,"Pune","Wagholi","kk@gmail.com","8007960118");
----------------------------------------------------------------

drop table shop;
select * from shop;

CREATE TABLE Shop (
  shopId int auto_increment,
  shopName varchar(50),
  ownerName varchar(50),
  userName varchar(30),
  password varchar(20),
  state varchar(20),
  city varchar(20),
  street varchar(100),
  pin int,
  email varchar(30),
  phone varchar(10),
  rating int default 2,
  shopImage varchar(50),
  primary key(shopId)
);


insert into shop (shopId,shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values(200,"The Panipuri Shop","Raju Tiwari","raju@1111","rt1111","Maharashtra","Pune","FC Road",411047,"raju1111@gmail.com","9936524879","panipuristallcover.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("The Cafe.com","Mahesh Mane","mahesh@1122","mm1122","Maharashtra","Pune","New Sangavi",411042,"mahesh1122@gmail.com","8523658412","cafedotcom.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("Katakirr Misal","Rahul Patil","rahul@1133","rp1133","Maharashtra","Pune","Viman Nagar",411011,"rahul1133@gmail.com","9963753536","katakirr.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("The RR Chinese","Rakesh Raut","rakesh@1144","rr1144","Maharashtra","Pune","JM Road",411012,"rakesh1144@gmail.com","7709839739","rrstall.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("The A1 Snacks","Akash Patil","akash@1155","ap1155","Maharashtra","Pune","JM Road",411012,"akash1155@gmail.com","8850839739","a1stall.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("Tea Stall","Jay Wagh","jay@1166","jw1166","Maharashtra","Pune","New Sangavi",411042,"jay1166@gmail.com","9042839739","teastall.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("Tanushri Chinese","Sachin Tingare","sachin@1177","st1177","Maharashtra","pune","Lohegaon",411044,"sachin1177@gmail.com","9950839739","tanushristall.jpeg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("The MH14","Avinash Khandave","avinash@1188","ak1188","Maharashtra","pune","Lohegaon",411044,"avinash1188@gmail.com","9925839739","mh14.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("The Ice Cream","Nikhil Jadhav","nikhil@1199","nj1199","Maharashtra","pune","FC Road",411043,"nikhil1199@gmail.com","8841839739","icecreamcover.jpg");

insert into shop (shopName,ownerName,userName,password,state,city,street,pin,email,phone,shopImage) 
values("The Nakoda Sweets","Ganesh More","ganesh@1133","gm1133","Maharashtra","pune","New Sangavi",411042,"ganesh1133@gmail.com","9823839739","sweets.jpg");
------------------------------------------------------------------
drop table reviews;
CREATE TABLE Reviews (
  r_id int auto_increment,
  userId int,
  r_date varchar(20),
  r_content varchar(700),
  shopId int,
  rating int,
  primary key(r_id),
  foreign key(userId) references user(userId),
  foreign key(shopId) references shop(shopId)
);
select * from reviews;

insert into Reviews (r_id,userId,r_date,r_content,shopId,rating) value(500,103,"15/01/2021","One of the best places to eat Chaat in Pune, without any fear. Generally very hygienic. Pani Puri is a must have but u should have it on the ground floor where the person makes it n give it to you in a bowl. They also serve you the same on the upper floors but u need to make ur own. Usme pano Puri khane Ka mazaa nahi milega.",204,4);
insert into Reviews (userId,r_date,r_content,shopId,rating) value(101,"20/01/2021","Momo lovers, raise your hand! I know as well as you do this one dish needs no introduction. Although momos are native to Tibet and Nepal, in India, the North-East hold the bragging rights for it. A spicy roadside cuisine, this Indian street food has escalated from roadside stalls to food centers and food courts in all hot-shot Malls. Tangy spicy red sauce and steaming hot dumplings loaded with veggies or chicken and served with mayonnaise is something that we just cannot resist while walking past the stall on road.",201,3);
insert into Reviews (userId,r_date,r_content,shopId,rating) value(104,"10/12/2020","Maharashtra runs on this Indian edition of a burger. It is every Punekar’s take and goes quick bite. There is no better place than the roadside stall to enjoy this authentic Marathi cuisine. Pav neatly placed between buns with spicy powder and chutney is the secret of the amazing taste of this Indian burger. The satisfying balance of taste attracts people to this dish all the time!",200,2);
insert into Reviews (userId,r_date,r_content,shopId,rating) value(102,"20/10/2020","Pav bhaji is the most demandable Indian street food and a favorite amongst all the Mumbaikars for all the good reasons. Spicy, hot and flavourful bhaji served with butter-oozing pavs hails from the state of Maharashtra, which is loved by locals and tourists at the same time. The perfect blend of a myriad variety of veggies along with exotic spices is what makes this delight different from the rest. Squeeze a little lemon juice on the bhaji and you're done for the day.",204,2);
insert into Reviews (userId,r_date,r_content,shopId,rating) value(105,"10/05/2020","When it comes to Rajasthan, nothing can beat their exotic and rich variety of food. The well famed Bikaneri Kachori is not only popular amongst the locals but is well known for enticing food lovers from all over the world. Made from maida, these deep-fried kachoris come with different fillings: onion, peas, potato, and dal. They taste delicious with pudina or imli chutney and or dipped in refreshing curd which makes it the light yet filling snack it is.",205,3);
insert into Reviews (userId,r_date,r_content,shopId,rating) value(101,"19/01/2021","When it comes to Rajasthan, nothing can beat their exotic and rich variety of food. The well famed Bikaneri Kachori is not only popular amongst the locals but is well known for enticing food lovers from all over the world. Made from maida, these deep-fried kachoris come with different fillings: onion, peas, potato, and dal. They taste delicious with pudina or imli chutney and or dipped in refreshing curd which makes it the light yet filling snack it is.",204,4);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(101,"01/02/2021","The best things i always love as my personal are chai and pani puri & belive me all over pune no one can make or give you this best pani puri . ... Has huge crowd every day for the sake of panipuri only and you cant belive how tasty it is just enjoy ",200,4);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(100,"01/01/2021","A small, decent & a busy place in Pimpri serving variety of delicious chaat items.Butter papadi chaat is a must try. Other items too are good. Space is cramped & no seating is available. However the quick service helps a lot.",201,3);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(103,"10/01/2021","Mouth watering... crispy puri with cold Pani, what a combination. Loved it. Taste was hatke. Puris were simply crispy and hygienic. We will never be satisfied with one or two plates. Not only pani puri, you will get other chats as well like sev puri, dahi puri, masala puri, bhel. Believe me, whatever we tasted were too good too good. This outlet is pretty small and crowded. But worthy. Do visit",201,2);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(102,"10/01/2021","Known throughout Pune for its misal. The misal pav here is seriously delicious and out of the world. Really good misal pav is served here with really good tak too.",202,4);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(104,"20/01/2021","One of the most famous and highly rated misal places in Pune.There are three varieties of misal based on the level of spiciness. It will really test your skills of eating oily and spicy misal. Overall ok ok place",202,5);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(100,"20/01/2021","Delicious and flavourful missal, a local spicy delicacy, eaten with bread ! If you find it spicy, down a glass of buttermilk alongside !",202,5);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(101,"15/01/2021","They have the best Chinese cuisines in the entire city. Their Noodles and Rice menu is exquisite with a large variety which is amazing. Also a must try, is their Mission impossible from the dessert section and test your limits for chocolates.",206,3);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(102,"20/01/2021","Its a good restaurant if you love chinese food. However, all the deep fried chicken items are not that good. Its not fresh and crispy. But overall my experience with this restaurant has been very good. If you plan to eat 'Mission Impossible' desert then think twice because its actually a mission which is impossible.",206,3);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(105,"09/01/2021","Chinese food is highly recommended. Overall the food is quite tasty. Service is also good and ofcourse you should not miss the tasty deserts they have",206,4);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(100,"05/01/2021","The place is spacious enough to accommodate many people...No need to explain about the icecream they serve...its yummy. The place is clean and there are seating arrangements as well.",208,4);

insert into Reviews (userId,r_date,r_content,shopId,rating) 
value(101,"03/01/2021","I have been personally having this brand from the time I was a teenager. You will never find the amount of natural flavors and tastes in any other ice cream in the world. The flavors you need to try are Blueberry / Mulberry/ Gooseberry /Tender coconut/ mango/ Strawberry ruff and you will love it.",208,5);

----------------------------------------------------------------------------
drop table item;
CREATE TABLE Item (
  itemId  int auto_increment,
  shopId int,
  itemName varchar(20),
  itemPrice int,
  image varchar(50),
  primary key(itemId)
);
select * from item;

insert into Item(itemId,shopId,itemName,itemPrice,image) values(400,200,"Panipuri",20,"panipuri.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(200,"Bhel",30,"bhel.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(200,"Ragada",40,"rgada.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(200,"Chat",40,"chat.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(201,"Burger",80,"burger.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Fries",60,"fries.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Coke",40,"coca_cola2.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Coffee",50,"coffee.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Sprite",60,"sprite1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Soda",60,"soda.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Coldcoffee",80,"coldcofee.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(201,"Lassi",80,"lassi.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(202,"Misal",70,"misal.png");
insert into Item(shopId,itemName,itemPrice,image) values(202,"Vadapav",10,"vadapav1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(202,"Buttermilk",20,"buttermilk.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(202,"Tea",10,"tea5.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(203,"Egg Bhuraji",80,"eggbhuraji1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(203,"Egg Rice",70,"eggrice2.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(203,"Chicken Rice",90,"eggrice1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(203,"Shezwan Rice",70,"shezwanrice1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(203,"Soup",60,"soup4.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(203,"Noodels",80,"noodels.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(204,"Misal",70,"misal.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(204,"Pavbhaji",50,"pavbhaji1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(204,"Paratha",40,"paratha.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(204,"Pulav",70,"pulav1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(204,"Ragada",70,"ragada.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(204,"Samosa",20,"samosa.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(205,"Tea",10,"tea4.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(205,"Black Tea",20,"blacktea.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(205,"Coffee",20,"coffee.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(205,"Black Coffee",20,"blacktea2.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(205,"Milk",20,"milk.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(206,"Lolypop",60,"lolypop2.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(206,"Kabab",90,"kabab.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(206,"Shezwan Rice",90,"shezwanrice.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(206,"Momos",80,"momos.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(207,"Tea",10,"tea4.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(207,"Kanda Bhaji",40,"bhajiya.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(207,"Samosa",20,"samosa1.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(207,"Kachori",30,"kachori.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(208,"Ice Cream",50,"icecream.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(208,"Ice Gola",110,"icegola.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(208,"Lassi",60,"lassi.jpg");

insert into Item(shopId,itemName,itemPrice,image) values(209,"Lassi",60,"lassi.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(209,"Gulab Jamun",40,"jamun.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(209,"Pedas",50,"peda.jpg");
insert into Item(shopId,itemName,itemPrice,image) values(208,"Jalebi",60,"jalebi.jpg");

select * from item;

----------------------------------------------------------------------------
drop table blog;

CREATE TABLE Blog (
  b_id int auto_increment not null,
  b_name varchar(50) not null,
  b_title varchar(100) not null,
  b_content varchar(700) not null,
  userId int not null,
  primary key(b_id),
  foreign key(userId) references user(userId)
);

select * from blog;
insert into Blog (b_id,b_name,b_title,b_content,userId) 
values(300,"Momos","King of Street Food","Momo lovers, raise your hand! I know as well as you do this one dish needs no introduction. Although momos are native to Tibet and Nepal, in India, the North-East hold the bragging rights for it. A spicy roadside cuisine, this Indian street food has escalated from roadside stalls to food centers and food courts in all hot-shot Malls. Tangy spicy red sauce and steaming hot dumplings loaded with veggies or chicken and served with mayonnaise is something that we just cannot resist while walking past the stall on road.",100);

insert into Blog (b_name,b_title,b_content,userId) 
values("Dabeli","A Spicy Delight","Maharashtra runs on this Indian edition of a burger. It is every Punekar’s take and goes quick bite. There is no better place than the roadside stall to enjoy this authentic Marathi cuisine. Pav neatly placed between buns with spicy powder and chutney is the secret of the amazing taste of this Indian burger. The satisfying balance of taste attracts people to this dish all the time!",101);

insert into Blog (b_name,b_title,b_content,userId) 
values("Pav Bhaji","Maharashtrian Gems","Pav bhaji is the most demandable Indian street food and a favorite amongst all the Mumbaikars for all the good reasons. Spicy, hot and flavourful bhaji served with butter-oozing pavs hails from the state of Maharashtra, which is loved by locals and tourists at the same time. The perfect blend of a myriad variety of veggies along with exotic spices is what makes this delight different from the rest. Squeeze a little lemon juice on the bhaji and you're done for the day.",103);

insert into Blog(b_name,b_title,b_content,userId) 
values("Kachori","Taste of Royals","When it comes to Rajasthan, nothing can beat their exotic and rich variety of food. The well famed Bikaneri Kachori is not only popular amongst the locals but is well known for enticing food lovers from all over the world. Made from maida, these deep-fried kachoris come with different fillings: onion, peas, potato, and dal. They taste delicious with pudina or imli chutney and or dipped in refreshing curd which makes it the light yet filling snack it is.",100);

insert into Blog(b_name,b_title,b_content,userId) 
values("Coffee","Coffee caramel panna cotta","Two of my favorite flavors come together right here, in this Coffee Caramel Panna Cotta, which offers up the rich flavor of caramel with a few strong shots of espresso. I seem to have good caramel karma and when I baked professionally, the executive pastry chef at one restaurant told me that I was the one she wanted to make the caramel desserts since I had a knack for getting caramel just right.",103);

insert into Blog(b_name,b_title,b_content,userId) 
values("Raspberries ","Clover Club Cocktail","I’ll admit to being the kind of guy that likes a pink drink every now and then, but I don’t like to admit that I’m the kind of guy that buys raspberries in the winter. Writing cookbooks with deadlines that don’t always flow with the seasons, if I need a few cherries in the winter to test a recipe or a few cups of blueberries,",104);

insert into Blog(b_name,b_title,b_content,userId) 
values("Bostock","Bostock","One of the lesser-known French pastries is Bostock. Perhaps it’s the funny name that doesn’t sound very French, as pain au chocolat or chausson aux pommes do, that’s been keeping it out of the spotlight. True, the name does sound like a Swiss bouillon mix and although I’ve read it’s from Normandy, I haven’t found any conclusive evidence of that. But wherever it’s from, the…",105);

insert into Blog(b_name,b_title,b_content,userId) 
values("Chocolate Brownie","Peanut Butter Chocolate Brownie Bars","Welcome to 2021. We had sort of, um…an abrupt beginning to the New Year. After a punishing 2020 where the pandemic pretty much upended everything in our lives, a lot of us were looking forward to some stability, seasoned with some optimism about the virus, but things took a decidedly different turn in a direction not many of us could imagine.",103);

insert into Blog(b_name,b_title,b_content,userId) 
values("Cooker Chili","Slow Cooker Chili","I decided this year I was going to make peace with my slow cooker. I was surprised by how much I didn’t take to it, which I’ve documented here and there. Like bread machines, Instant Pots, Thermomix, and cast irons skillets, someone wrote about the latter on my Facebook page, “It’s just a PAN…” (in all-caps), they certainly have their fans.",101);

insert into Blog(b_name,b_title,b_content,userId) 
values("Chocolate Marshmallows","Chocolate Marshmallows","Marshmallows are one (or some) of my favorite things. We don’t often use ‘marshmallow’ in the singular and we certainly don’t make them one at a time. When we talk about marshmallows, it’s generally in the plural since it’s hard to imagine just one, lone, solitary marshmallow. That would be triste, as you’d say in French, or sad. Except, of course",102);

insert into Blog(b_name,b_title,b_content,userId) 
values("Fruitcake","Dark Chocolate-Cherry Fruitcake","‘Tis the season for holiday baking and I’ll admit to being on a little bit of a fruitcake bender, recently giving a Black Fruitcake a go and revisiting one of my all-time favorite recipes, Fruitcake Bars which won accolades from several French friends. (They were also surprised at how easy there were to make, too.) A while back, I gave the much-maligned fruitcake a makeover",103);

insert into Blog(b_name,b_title,b_content,userId) 
values("Black Fruitcake","Black Fruitcake","Over the last several years, people suggested that I write a book of fruit desserts. I point out, helpfully, that I already have, but every year a few books of fruit desserts come out, mostly relating to pies or crisps and cobblers. So it was interesting to see one devoted solely to cakes, called (appropriately) Fruit Cake: Recipes for the Curious Baker.",104);

insert into Blog(b_name,b_title,b_content,userId) 
values("Mushroom Lasagna","Spicy Mushroom Lasagna","When the very first Ottolenghi book came out, I had no idea what this mysterious restaurant, or person, was. But I was immediately captivated by the spectacular salads, cakes, vegetables, flatbreads, and more piled up on tables at Ottolenghi. The pictures in the book had a vibrancy that I’d not seen in any other cookbook before; mounds of vibrant-green fresh herbs piled atop salads",105);
