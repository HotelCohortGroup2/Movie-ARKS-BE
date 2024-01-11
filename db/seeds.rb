user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1 = [
  {
    title: 'American History X',
    length: '1h 59m',
    genre: 'Crime',
    rating: 4.2,
    details: 'Living a life marked by violence, neo-Nazi Derek finally goes to prison after killing two black youths. Upon his release, Derek vows to change; he hopes to prevent his brother, Danny, who idolizes Derek, from following in his footsteps.',
    image: 'https://m.media-amazon.com/images/M/MV5BZTJhN2FkYWEtMGI0My00YWM4LWI2MjAtM2UwNjY4MTI2ZTQyXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_.jpg'
  },
  {
    title: 'Avengers: End Game',
    length: '3h 1m',
    genre: 'Sci-Fi',
    rating: 4.2,
    details: 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos actions and restore balance to the universe.',
    image: 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg'
  },
  {
    title: 'Avengers: Infinity War',
    length: '2h 29m',
    genre: 'Sci-Fi',
    rating: 4.1,
    details: 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.',
    image: 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg'
  },
  {
    title: 'Back to the Future',
    length: '1h 56m',
    genre: 'Sci-Fi',
    rating: 4.3,
    details: 'Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.',
    image: 'https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'
  },
  {
    title: 'Black Panther',
    length: '2h 14m',
    genre: 'Action',
    rating: 3.6,
    details: "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.",
    image: 'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg'
  },
  {
    title: 'Captain America: Civil War',
    length: '2h 27m',
    genre: 'Action',
    rating: 3.9,
    details: "Political involvement in the Avengers' affairs causes a rift between Captain America and Iron Man.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg'
  },
  {
    title: 'Die Hard',
    length: '2h 12m',
    genre: 'Action',
    rating: 4.1,
    details: 'A New York City police officer tries to save his estranged wife and several others taken hostage by terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.',
    image: 'https://m.media-amazon.com/images/M/MV5BZjRlNDUxZjAtOGQ4OC00OTNlLTgxNmQtYTBmMDgwZmNmNjkxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'
  },
  {
    title: 'Django Unchained',
    length: '2h 45m',
    genre: 'Drama',
    rating: 4.2,
    details: "With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_.jpg'
  },
  {
    title: 'Forrest Gump',
    length: '2h 22m',
    genre: 'Drama',
    rating: 4.4,
    details: "The history of the United States from the 1950s to the '70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.",
    image: 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX1000_.jpg'
  },
  {
    title: 'Inception',
    length: '2h 28m',
    genre: 'Sci-Fi',
    rating: 4.4,
    details: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg'
  },
  {
    title: 'Interstellar',
    length: '2h 49m',
    genre: 'Sci-Fi',
    rating: 4.3,
    details: 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.',
    image: 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'
  },
  {
    title: 'Mortal Kombat',
    length: '1h 50m',
    genre: 'Action',
    rating: 3,
    details: "MMA fighter Cole Young seeks out Earth's greatest champions in order to stand against the enemies of Outworld in a high stakes battle for the universe.",
    image: 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'
  },
  {
    title: 'Parasite',
    length: '2h 12m',
    genre: 'Thriller',
    rating: 4.3,
    details: "Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.",
    image: 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg'
  },
  {
    title: 'Pulp Fiction',
    length: '2h 34m',
    genre: 'Crime',
    rating: 4.5,
    details: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
    image: 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'
  },
  {
    title: 'Scott Pilgrim vs. the World',
    length: '1h 52m',
    genre: 'Comedy',
    rating: 3.8,
    details: "In a magically realistic version of Toronto, a young man must defeat his new girlfriend's seven evil exes one by one in order to win her heart.",
    image: 'https://m.media-amazon.com/images/M/MV5BNWI5ODc4MTAtN2U2NC00ZDk3LWE3NjAtNjIyODE2YTlhYjYwXkEyXkFqcGdeQXVyOTA3ODI3NDA@._V1_.jpg'
  },
  {
    title: 'Spider-Man: Across the Spider-Verse',
    length: '2h 20m',
    genre: 'Animation',
    rating: 4.3,
    details: 'Miles Morales catapults across the multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.',
    image: 'https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg'
  },
  {
    title: 'Spirited Away',
    length: '2h 5m',
    genre: 'Animation',
    rating: 4.3,
    details: "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches and spirits, a world where humans are changed into beasts.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX1000_.jpg'
  },
  {
    title: 'Star Wars: Return of the Jedi',
    length: '2h 11m',
    genre: 'Sci-Fi',
    rating: 4.9,
    details: "After rescuing Han Solo from Jabba the Hutt, the Rebels attempt to destroy the second Death Star, while Luke struggles to help Darth Vader back from the dark side.",
    image: 'https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg'
  },
  {
    title: 'Star Wars: Revenge of the Sith',
    length: '2h 20m',
    genre: 'Sci-Fi',
    rating: 3.8,
    details: "Three years into the Clone Wars, Obi-Wan pursues a new threat, while Anakin is lured by Chancellor Palpatine into a sinister plot to rule the galaxy.",
    image: 'https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_.jpg'
  },
  {
    title: 'Star Wars: The Empire Strikes Back',
    length: '2h 4m',
    genre: 'Sci-Fi',
    rating: 4.4,
    details: "After the Rebels are overpowered by the Empire, Luke Skywalker begins his Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.",
    image: 'https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'
  },
  {
    title: 'Star Wars: The Last Jedi',
    length: '2h 32m',
    genre: '2h 32m',
    rating: 3.5,
    details: 'The Star Wars saga continues as new heroes and galactic legends go on an epic adventure, unlocking mysteries of the Force and shocking revelations of the past.',
    image: 'https://m.media-amazon.com/images/M/MV5BMjQ1MzcxNjg4N15BMl5BanBnXkFtZTgwNzgwMjY4MzI@._V1_.jpg'
  },
  {
    title: 'The Dark Knight',
    length: '2h 32m',
    genre: 'Action',
    rating: 4.5,
    details: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
  },
  {
    title: 'The Departed',
    length: '2h 31m',
    genre: 'Crime',
    rating: 4.2,
    details: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.",
    image: 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p162564_p_v8_ag.jpg'
  },
  {
    title: 'The Lion King',
    length: '1h 28m',
    genre: 'Animation',
    rating: 4.2,
    details: "Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_.jpg'
  },
  {
    title: 'The Pianist',
    length: '2h 30m',
    genre: 'Drama',
    rating: 4.2,
    details: "During the WWII, acclaimed Polish musician Wladyslaw faces various struggles as he loses contact with his family. As the situation worsens, he hides in the ruins of Warsaw in order to survive.",
    image: 'https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg'
  },
  {
    title: 'The Shawshank Redemption',
    length: '2h 22m',
    genre: 'Drama',
    rating: 4.7,
    details: 'Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.',
    image: 'https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'
  },
  {
    title: 'The Shining',
    length: '2h 26m',
    genre: 'Horror',
    rating: 4.2,
    details: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.",
    image: 'https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX1000_.jpg'
  },
  {
    title: 'Top Gun: Maverick',
    length: '2h 10m',
    genre: 'Action',
    rating: 4.1,
    details: "After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN's elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.",
    image: 'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg'
  },
  {
    title: 'Wall-E',
    length: '1h 38m',
    genre: 'Animation',
    rating: 4.2,
    details: "In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_.jpg'
  },
  {
    title: 'World War Z',
    length: '1h 56m',
    genre: 'Horror',
    rating: 3.5,
    details: "Former United Nations employee Gerry Lane traverses the world in a race against time to stop a zombie pandemic that is toppling armies and governments and threatens to destroy humanity itself.",
    image: 'https://m.media-amazon.com/images/M/MV5BNDQ4YzFmNzktMmM5ZC00MDZjLTk1OTktNDE2ODE4YjM2MjJjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg'
  }
]

user1.each do |each_movie|
  Movie.create each_movie
  puts "create movie #{each_movie}"
end
