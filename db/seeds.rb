# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 


tags = ["noise", "rock", "ambient", "bauhaus", "hip-hop", "decaux", "impresionist", "vulgar", "punk", "electronica"]

producers = [
    { email: 'cristobal@example.com', name: 'Cristobal Lecaros', password: 123123, track1: '01.mp3', track2: '02.mp3' },
    { email: 'juan@example.com', name: 'Juan Pablo', password: 123123, track1: '03.mp3', track2: '04.mp3'},
    { email: 'margot@example.com', name: 'Margot Robbie', password: 123123, track1: '05.mp3', track2: '06.mp3'},
]

producers.each do |producer|
    current_producer = Producer.create!(
        email: producer[:email],
        name: producer[:name],
        password: producer[:password]
    )

    track1 = current_producer.tracks.create!(track_name: Faker::Music::Prince.song)
    track2 = current_producer.tracks.create!(track_name: Faker::Music::Prince.song)
    
    track1.tag_list << tags.sample(3)
    track2.tag_list << tags.sample(3)
    
    track1.file.attach(io: File.open("app/assets/music/#{producer[:track1]}"), filename: producer[:track1])
    track2.file.attach(io: File.open("app/assets/music/#{producer[:track2]}"), filename: producer[:track2])
    
    track1.save
    track2.save
end

designers = [
    { email: 'pedro@example.com', name: 'Pedro Soto', password: 123123, work1: '01.jpg', work2: '02.jpg' },
    { email: 'diego@example.com', name: 'Diego Ramirez', password: 123123, work1: '03.jpg', work2: '04.jpg'},
    { email: 'marcela@example.com', name: 'Marcela Valdebenito', password: 123123, work1: '05.jpg', work2: '06.jpg'},
]

designers.each do |designer|
    current_designer = Designer.create!(
        email: designer[:email],
        name: designer[:name],
        password: designer[:password]
    )

    work1 = current_designer.works.create!(work_name: Faker::Music::Prince.song)
    work2 = current_designer.works.create!(work_name: Faker::Music::Prince.song)
    
    work1.tag_list << tags.sample(3)
    work2.tag_list << tags.sample(3)
    
    work1.file.attach(io: File.open("app/assets/images/#{designer[:work1]}"), filename: designer[:work1])
    work2.file.attach(io: File.open("app/assets/images/#{designer[:work2]}"), filename: designer[:work2])
    
    work1.save
    work2.save
end


state = ["pending", "rejected", "accepted"]
TrackMate.create!(
    designer_id: 1,
    track_id: 1,
    state: state.sample
)
TrackMate.create!(
    designer_id: 1,
    track_id: 2,
    state: state.sample
)
TrackMate.create!(
    designer_id: 2,
    track_id: 3,
    state: state.sample
)
TrackMate.create!(
    designer_id: 2,
    track_id: 4,
    state: state.sample
)
TrackMate.create!(
    designer_id: 3,
    track_id: 5,
    state: state.sample
)
TrackMate.create!(
    designer_id: 3,
    track_id: 6,
    state: state.sample
)
WorkMate.create!(
    producer_id: 1,
    work_id: 1,
    state: state.sample
)
WorkMate.create!(
    producer_id: 1,
    work_id: 2,
    state: state.sample
)
WorkMate.create!(
    producer_id: 2,
    work_id: 3,
    state: state.sample
)
WorkMate.create!(
    producer_id: 2,
    work_id: 4,
    state: state.sample
)
WorkMate.create!(
    producer_id: 3,
    work_id: 5,
    state: state.sample
)
WorkMate.create!(
    producer_id: 3,
    work_id: 6,
    state: state.sample
)