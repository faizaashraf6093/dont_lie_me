class Profile {
  final int id;
  final String name;
  final String subtitle;
  final String location;
  final String bio;
  final List<String> tags;
  final String image;

  Profile({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.location,
    required this.bio,
    required this.tags,
    required this.image,
  });
}

var profiles = <Profile>[
  Profile(
    id: 1,
    name: 'Adam, 30',
    subtitle: 'CEO Trinity and Co.',
    location: 'California, 10 miles away',
    bio: 'IT millionaire by day, emotional support by night. '
        'I like spending my day with a smile and gratitude.',
    tags: ['Yoga', 'Faith', 'Love', 'Tech lover'],
    image:
        'https://images.pexels.com/photos/15422042/pexels-photo-15422042/free-photo-of-face-of-man-in-eyeglasses-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 2,
    name: 'Sam, 28',
    subtitle: 'Marketing Expert',
    location: 'New York, 5 miles away',
    bio: 'Lover of coffee and creativity. Let’s build the future together!',
    tags: ['Marketing', 'Design', 'Art', 'Travel'],
    image:
        'https://images.pexels.com/photos/8670544/pexels-photo-8670544.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 3,
    name: 'Liam, 35',
    subtitle: 'Software Architect',
    location: 'Texas, 15 miles away',
    bio: 'Tech geek with a passion for AI and machine learning. '
        'Love to hike and explore new places on weekends.',
    tags: ['Tech', 'AI', 'Hiking', 'Travel'],
    image:
        'https://images.pexels.com/photos/20583538/pexels-photo-20583538/free-photo-of-man-in-leather-jacket-posing-on-street-with-hand-in-pocket.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 4,
    name: 'Stephan, 26',
    subtitle: 'Graphic Designer',
    location: 'Florida, 8 miles away',
    bio: 'Creative thinker and design enthusiast. '
        'I believe in turning ideas into reality, one design at a time.',
    tags: ['Design', 'Creativity', 'Art', 'Photography'],
    image:
        'https://images.pexels.com/photos/11360307/pexels-photo-11360307.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 5,
    name: 'Oliver, 32',
    subtitle: 'Fitness Trainer',
    location: 'Colorado, 12 miles away',
    bio: 'Helping people achieve their fitness goals. '
        'Fitness is not just a routine, it’s a lifestyle.',
    tags: ['Fitness', 'Health', 'Nutrition', 'Sports'],
    image:
        'https://images.pexels.com/photos/9302172/pexels-photo-9302172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 6,
    name: 'Steve, 29',
    subtitle: 'Travel Blogger',
    location: 'Hawaii, 20 miles away',
    bio: 'A travel junkie who loves documenting her adventures. '
        'Let’s discover the world together!',
    tags: ['Travel', 'Blogging', 'Photography', 'Adventure'],
    image:
        'https://images.pexels.com/photos/14063954/pexels-photo-14063954.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 7,
    name: 'James, 33',
    subtitle: 'Entrepreneur',
    location: 'Seattle, 25 miles away',
    bio: 'Building businesses and solving problems is what I live for. '
        'Let’s change the world one idea at a time.',
    tags: ['Business', 'Innovation', 'Tech', 'Startups'],
    image:
        'https://images.pexels.com/photos/25955633/pexels-photo-25955633/free-photo-of-man-hugging-his-dog.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
  Profile(
    id: 8,
    name: 'Isabel, 31',
    subtitle: 'Chef & Food Critic',
    location: 'Los Angeles, 7 miles away',
    bio: 'Cooking is my passion, and tasting is my art. '
        'Join me on a culinary journey!',
    tags: ['Food', 'Cooking', 'Culinary', 'Travel'],
    image:
        'https://images.pexels.com/photos/10517036/pexels-photo-10517036.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ),
];
