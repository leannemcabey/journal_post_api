User.create(first_name: 'Leanne', last_name: 'Cabey', street_address: '25-27 33rd St, BSMT', city: 'Astoria', state: 'NY', zipcode: '11102', email: 'leanne.m.cabey@gmail.com', password: 'flatiron', current_journal_id: nil)

Journal.create(user_id: 1, title: 'First Visit to New Mexico', current_journal: 1)

img_url = 'https://www.montetrumbull.com/galleries/01-landscape/photos/MT-20090108-172756-0037-New-Mexico-White-Sands-National-Monument-yucca-sunset-pink-skies.jpg'

Postcard.create(journal_id: 1, location: 'New Mexico', message: 'We made it to White Sands on an absolutely perfect night. There was no wind, and there was the most gorgeous of sunsets. We went dune jumping which is where you basically run full speed off the edge of a dune and jump. Definitely a night to remember.', date: '2018-06-03', photo_url: '')
