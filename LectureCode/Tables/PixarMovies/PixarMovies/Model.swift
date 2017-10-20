//
//  File.swift
//  PixarMovies
//
//  Created by Jason Schatz on 3/16/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import Foundation

class Model {
    
    var movies = [Movie]()
    
    init() {
        
        var m: Movie
        
        m = Movie(title: "Toy Story", year: 1995, summary: "Led by Woody, Andy's toys live happily in his room until Andy's birthday brings Buzz Lightyear onto the scene. Afraid of losing his place in Andy's heart, Woody plots against Buzz. But when circumstances separate Buzz and Woody from their owner, the duo eventually learns to put aside their differences.", posterName: "ToyStory")
        movies.append(m)
        
        m = Movie(title: "A Bug's Life", year: 1998, summary: "On behalf of oppressed bugs everywhere, an inventive ant named Flik hires a troupe of warrior bugs to defend his bustling colony from a horde of freeloading grasshoppers led by the evil-minded Hopper.", posterName: "ABugsLife")
        movies.append(m)
        
        m = Movie(title: "Toy Story 2", year: 1999, summary: "Andy heads off to Cowboy Camp, leaving his toys to their own devices. Things shift into high gear when an obsessive toy collector named Al McWhiggen, owner of Al's Toy Barn kidnaps Woody. Andy's toys mount a daring rescue mission, Buzz Lightyear meets his match and Woody has to decide where he and his heart truly belong.", posterName: "ToyStory2")
        movies.append(m)
        
        m = Movie(title: "Monsters Inc.", year: 2001, summary: "James Sullivan and Mike Wazowski are monsters, they earn their living scaring children and are the best in the business... even though they're more afraid of the children than they are of them. When a child accidentally enters their world, James and Mike suddenly find that kids are not to be afraid of and they uncover a conspiracy that could threaten all children across the world.", posterName: "MonstersInc")
        movies.append(m)
        
        m = Movie(title: "Finding Nemo", year: 2003, summary: "A tale which follows the comedic and eventful journeys of two fish, the fretful Marlin and his young son Nemo, who are separated from each other in the Great Barrier Reef when Nemo is unexpectedly taken from his home and thrust into a fish tank in a dentist's office overlooking Sydney Harbor. Buoyed by the companionship of a friendly but forgetful fish named Dory, the overly cautious Marlin embarks on a dangerous trek and finds himself the unlikely hero of an epic journey to rescue his son.", posterName: "FindingNemo")
        movies.append(m)
        
        m = Movie(title: "Incredibles", year: 2004, summary: "Bob Parr has given up his superhero days to log in time as an insurance adjuster and raise his three children with his formerly heroic wife in suburbia. But when he receives a mysterious assignment, it's time to get back into costume.", posterName: "Incredibles")
        movies.append(m)
        
        m = Movie(title: "Cars", year: 2006, summary: "Lightning McQueen, a hotshot rookie race car driven to succeed, discovers that life is about the journey, not the finish line, when he finds himself unexpectedly detoured in the sleepy Route 66 town of Radiator Springs. On route across the country to the big Piston Cup Championship in California to compete against two seasoned pros, McQueen gets to know the town's offbeat characters.", posterName: "Cars")
        movies.append(m)
        
        m = Movie(title: "Ratatouille", year: 2006, summary: "A rat named Remy dreams of becoming a great French chef despite his family's wishes and the obvious problem of being a rat in a decidedly rodent-phobic profession. When fate places Remy in the sewers of Paris, he finds himself ideally situated beneath a restaurant made famous by his culinary hero, Auguste Gusteau. Despite the apparent dangers of being an unlikely - and certainly unwanted - visitor in the kitchen of a fine French restaurant, Remy's passion for cooking soon sets into motion a hilarious and exciting rat race that turns the culinary world of Paris upside down.", posterName: "Ratatouille")
        movies.append(m)
        
        m = Movie(title: "WALL-E", year: 2008, summary: "WALL·E is the last robot left on an Earth that has been overrun with garbage and all humans have fled to outer space. For 700 years he has continued to try and clean up the mess, but has developed some rather interesting human-like qualities. When a ship arrives with a sleek new type of robot, WALL·E thinks he's finally found a friend and stows away on the ship when it leaves.", posterName: "WALL-E")
        movies.append(m)
        
        m = Movie(title: "Up", year: 2009, summary: "Carl Fredricksen spent his entire life dreaming of exploring the globe and experiencing life to its fullest. But at age 78, life seems to have passed him by, until a twist of fate (and a persistent 8-year old Wilderness Explorer named Russell) gives him a new lease on life.", posterName: "Up")
        movies.append(m)
        
        m = Movie(title: "Toy Story 3", year: 2010, summary: "Woody, Buzz, and the rest of Andy's toys haven't been played with in years. With Andy about to go to college, the gang find themselves accidentally left at a nefarious day care center. The toys must band together to escape and return home to Andy.", posterName: "ToyStory3")
        movies.append(m)
        
        m = Movie(title: "Inside Out", year: 2015, summary: "Growing up can be a bumpy road, and it's no exception for Riley, who is uprooted from her Midwest life when her father starts a new job in San Francisco. Like all of us, Riley is guided by her emotions - Joy, Fear, Anger, Disgust and Sadness. The emotions live in Headquarters, the control center inside Riley's mind, where they help advise her through everyday life. As Riley and her emotions struggle to adjust to a new life in San Francisco, turmoil ensues in Headquarters. Although Joy, Riley's main and most important emotion, tries to keep things positive, the emotions conflict on how best to navigate a new city, house and school.", posterName: "InsideOut")
        movies.append(m)
    }
}
