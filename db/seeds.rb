User.destroy_all

user1 = User.create({
  first_name: "Tom",
  last_name: "Ford",
  email: "tom@ga.co",
  password_digest: "tom",
})

Post.destroy_all

post1 = Post.create({
user_id: 100,
title: 	"The Unnecessary Fragmentation of Design Jobs",
content: 	"Lots and lots of people – inside and outside the industry are getting more and more confused by the nearly weekly new definition of the designer’s role and title. Agencies are crowning their new Senior UX Consultant, offering UI Tweak Ninja vacancies and re-arranging their multidisciplinary creative teams with a mix of UX/UI people, Product Designers and Front End Designers. Are you still explaining to your clients what kind of work you’re currently up to and what is not on your skill set? For an outsider, the differences are extremely subtle. I’ve been talking to a lot of industry newcomers lately, and they’re almost unanimously confused. They’re struggling to gain the right experience and make portfolios to match our foggy job definitions. And in the end – as Jonas noted – it’s all getting back to the beginning: a web designer, who is working on writing, visuals, code and his/hers own project management. No matter if you are a freelancer or working in a team for an agency or company. It’s just a name changing game."
})

post2 = Post.create({
user_id: 100,
title:	"The 100/100 Beer Project",
content: "There’s something about a beer label: a simple canvas attached to a uniquely appealing product.”
With that thought in mind SB Studio have brought together 100 high-profile designers and illustrators (such as Build, Pentagram, Spin, Manual, Hyperkit, StudioThomson, Jean Jullien, Paul Davis, Hey & Lance Wyman) to decorate the humble beverage, starting with a name for each beginning with SB.
As Nick Asbury explains: “…the game starts: on one level, a purely playful exercise in creative expression; on another level, a distillation of the purpose of design and branding — to give life and personality to the products around us.” The project in aid of a great cause – the ArtFund, supporting museums and galleries by helping them to buy and display great works of work for everyone to enjoy."
})

post3 = Post.create({
user_id: 100,
title: 	"Rapper’s Delight: The Hip Hop Cookbook",
content: "Introducing your new favourite cookbook; Rapper’s Delight: The Hip Hop Cookbook
Jointly created by Joseph Inniss, Peter Stadden and Ralph Miller, The Hip Hop Cookbook features 30 recipes inspired by your all time favourite Hip Hop artists of today and yesteryear.
Each of the recipes is then accompanied by a bespoke piece of artwork, created by a selection of the UK’s best upcoming illustrators. Split into three categories (starters, mains and desserts) the book includes a wide range of delights such as Wu-Tang Clam Chowder, Public Enemiso Soup, Run DM Sea Bass and Busta Key Lime Pie."
})

post4 = Post.create({
user_id: 100,
title: 	"Industrial Design Inspiration: AJORÍ",
content: "The goal of a industrial design is to create better products in terms of function and form. The creative process is focused on coming up with the best solution in a holistically way, being rational from the materials and production process to the package and usage. AJORÍ is a great example of the mix of industrial design and arts and crafts, a trend that has been growing a lot. For this post we would love to share with you the Ajorí project. It's a great example of the creative process behind products. It also bring me back good memories from my time in college creating products, but I have to say, my projects were way worse than this one."
})

post5 = Post.create({
user_id: 100,
title: "Illustration & Digital Art: A Collection of my Animals",
content: "An illustration and digital art dedicated to animals with a creative thinking and of course simplicity with a flair in its execution. Sure, why not! They are quite lovely and they seem to individually tells a story and between each one of them. Designed by Daniel Taylor who is a freelance artist from Budapest. We are welcomed with a stylish art that is mixed with different mediums and techniques. What do you guys think?"
})

post6 = Post.create({
user_id: 100,
title: "Graphic Design: Exotic Destinations On Earth Illustrations",
content: "Exotic Destinations On Earth is a graphic design project created and shared by JIMMI TUAN and Bratus ™. The idea was to create a calendar and gift for students to get confident for an ESL english test. The result is a set of beautiful illustrations about the most exotic destinations in our planet. From the desert to rout 66, there are many well-known and not so popular places, but the style and composition of the graphic design pieces are top notch. Below you can see them all."
})

post7 = Post.create({
user_id: 100,
title: "Mobile Photography: Exploring Dubai & the Burj Khalifa",
content: "Mobile photography seems to be easy task because you are using your smartphone, that you carrying everyday but it's not. Finding the right perspective, light setting, subject are all part of what goes through your mind before the shot. What if you're using a 23 megapixels smartphone, would it help? Well, that was Mikael Buck's task during his latest traveling to London, Paris and Dubai for which we are featuring today with the Burj Khalifa. The world's tallest building at 828 meters high, where Mikael explored Dubai for Sony's #NewPerspectives campaign.This photo series has been shot by Mikael Buck who is a photographer based in London, UK. We have featured his work before on ABDZ and you should definitely check out his site for more of his work."
})

post8 = Post.create({
user_id: 100,
title: "Motion and Graphic Design: Grand Yellow - On My Way",
content: "Grand Yellow - On My Way is a motion and graphic design project shared by Akatre studio. There's so much to love about this project, especially the abstraction and the sort of surrealist mood created. Below you can see some of the stills but I also recommend you to check out the video. 
Akatre is a creative studio founded in 2007,  in Paris, by Valentin Abad, Julien Dhivert  and Sébastien Riveron. The trio works  and expresses themselves in graphic design,  photography, typography, video, artistic installation and musical creation  for institutions in art, cultural, fashion,  media and luxury."
})
