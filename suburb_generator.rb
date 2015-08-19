class ChicagoSuburb
  def initialize
    @name = random_suburb_name
    @zipcode = random_zipcode
    @population = random_population
    @language = random_language
    attractions = random_attractions
    @attraction1 = attractions[0]
    @attraction2 = attractions[1]
    @high_school_name = random_school_name
    @high_school_mascot = random_school_mascot

    describe_suburb
  end

  def random_suburb_name
    prefixes = ["Barring", "Boling", "Brook", "Buffalo", "Chicago", "Crystal", "Deer", "Downers", "Edge", "Evans", "Evergreen", "Forest", "Glen", "Harwood", "Hoffman", "Maple", "Mount", "Naper", "North", "Oak", "Ravens", "Romeo", "Rolling", "Shore", "Tinley"]
    suffixes = [" Ellyn", " Estates", " Grove", " Heights", " Hills", " Lake", " Meadows", " Park", " Plaines", " Ridge", " Stream", "brook", "field", "ton", "view", "ville", "wood"]
    return "#{prefixes.sample}#{suffixes.sample}"
  end

  def random_zipcode
    return "60#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
  end

  def random_population
    return rand(1000..600000).to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
  end

  def random_language
    languages = ["Spanish", "Polish", "Arabic", "Tagalog", "Chinese", "Russian"]
    return languages.sample
  end

  def random_attractions
    attractions = ["an impressive collection of architecture", "the largest concentration of Sears Catalog homes in the world", "the Hollywood #{@name} casino", "the corporate headquarters of OfficeMax Inc", "the #{@name} National Laboratory", "three grizzly bears", "the #{@name} Zoo", "the #{@name} Watch Company", "two highly protected nature preserves", "many fine examples of homes in the Queen Anne style", "the Illinois Technology Research Corridor", "the tallest building in Illinois outside of Chicago city limits", "many filming locations for the movie 'Wayne's World'", "the #{@name} Municipal Airport", "the #{@name} Racetrack", "the beginning of Historic Route 66", "actor and comedian Bob Odenkirk", "football free agent Kenneth Boatright", "a reconstruction of the first franchised McDonald's restaurant built by franchiser Ray Kroc", "Brady Bunch actor Robert Reed", "post-metal band Pelican", "NFL tight end Damon Jones", "actor and science fiction writer Bruce Boxleitner", "the world's largest concentration of Frank Lloyd Wright buildings", "the largest Baha'i temple in North America", "local cable television channel #{@name} TV which can be viewed on AT&T UVerse Channel 99 and Comcast Channel 4", "defensive end for the Chicago Bears Dan Hampton", "a JPMorgan Chase payment processing center", "one of the largest makers of circuit breakers", "one of only two IKEA stores in Illinois", "the world headquarters of Motorola Solutions", "the ancestral home of Ulysses S. Grant son-in-law", "a thriving river economy", "a herd of over 30 buffalo", "the first factory of the Diamond Spiral Washing Machine Company", "an anomalous multiple mass UFO sighting", "the 'Scoop the Loop' summer festival of cruising", "three Superfund sites of hazardous substances that are on the National Priorities List", "one of the 20th century's most notable and enduring entertainers Jack Benny" ]
    sample1 = attractions.sample
    sample2 = (attractions - [sample1]).sample
    return [sample1, sample2]
  end

  def random_school_name
    directions = ["North", "South", "East", "West", "Central"]
    construction = ["#{@name} #{directions.sample}", "#{directions.sample} #{@name}"]
    return "#{construction.sample} High School"
  end

  def random_school_mascot
    adjectives = ["Fightin'", "Ramblin'", "Rowdy", "Flying", "Scarlet", "Silver", "Flaming", "Movin'", "Mighty", "Golden", "Brawlin'"]
    nouns = ["Eagles", "Bulldogs", "Tigers", "Vikings", "Lions", "Wildcats", "Cougars", "Panthers", "Warriors", "Knights", "Abes", "Orphans", "Dolphins", "Spartans", "Ducks", "Mascots"]
    return "#{adjectives.sample} #{nouns.sample}"
  end

  def random_champions
    recent_year = rand(1999..2015)
    location = ["Illinois State", "National", "Regional", "County", "Chicagoland", "Great Lakes"].sample
    sport = ["Lincoln-Douglas Debate", "Divison I Basketball", "High School Chess", "Swing Dance", "Pole Vaulting", "Girls' Lacrosse", "Boys' Tennis", "Fencing", "Jazz Performance", "Cheerleading", "Water Polo", "Drum Corps", "Extemporaneous Speaking", "Improv Comedy", "Baton Twirling"].sample
    return "#{recent_year} #{location} #{sport}"
  end

  def random_historical_location
    locations = ["covered by glaciers several miles deep", "a giant body of water known as Ancient Lake Chicago", "home to Potawatomi, Ottawa, and Ojibwe native American tribes", "mostly uninhabited, consisting largely of wetlands and swampy forest", "Potawatomi Indian trails that ran in a general north-south direction through the area", "a townshop called Ridgeville, which was abandoned around the turn of the century", "the center of money laundering activities for the Chicago Outfit", "a major subdivision with mass-produced Centex Corporation homes", "the family farm of Joseph Kettlestrings and his seven children", "home to members of the Sauk, Fox, Potawatomi, and Kickapoo Native American tribes", "the site of Fort du #{@name}, built by early French explorers"]
    return locations.sample
  end

  def describe_suburb
    puts "#{@name} is a suburb of Chicago."
    puts "Its zip code is #{@zipcode}."
    puts "It has a population of #{@population}, as of the 2010 census."
    puts "The second most common language spoken in #{@name}, after English, is #{@language}."
    puts "#{@name} is home to #{@attraction1} and #{@attraction2}."
    puts "#{@high_school_name} is the city's largest secondary school, home of the #{@high_school_mascot}, who are the #{random_champions} champions."
    puts "The land that is now #{@name} was once #{random_historical_location}."
  end

end

ChicagoSuburb.new
