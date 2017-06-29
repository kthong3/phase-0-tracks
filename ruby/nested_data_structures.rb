library = {
  first_floor: {
      lobby: {
        checkout_area: {
            lanes: 3,
            self_checkout: 8,
          },
        return_slots: 2,
      },
      
      childrens_room: {
        seats: 30,
        tables: 6,
      },
        
      media_room: {
        computers: 4,
        seats: 12,
        audiobook_rows: 2,
        dvd_rows: 6,
        blu_ray_rows: 3,
        video_games: {
          rows: 4,
          types:[
            'PS2',
            'PS3',
            'PS4',
            'Sega Genesis',
            'Wii',
            'Wii_U',
            'Xbox_360',
            'XboxOne'
          ]
        },
        cd_lanes: 5,
      }
    },
    
  main_floor: {
      computer_lab: {
        computers: 20,
        seats: 22,
      },
      
      study_room1: {
        seats: 4,
        tables: 1,
      },
      
      study_room2: {
        seats: 4,
        tables: 1,
      },
      
      study_room3: {
        seats: 6,
        tables: 1,
      },
      
      bookcases: 44,
      computers: 12,
      seats: 50,
      tables: 12,
      
      genres: {
        fiction:[
          'action_adventure',
          'comedy',
          'drama',
          'fantasy',
          'mystery',
          'mythology',
          'poetry',
          'romance',
          'science_fiction',
          'thriller_suspense',
          ],
          
          nonfiction:[
            'almanac',
            'autobiography',
            'biography',
            'dictionary',
            'encyclopedia',
            'history',
            'science'
          ]  
      }
  }
}

p library[:main_floor][:bookcases]

p library[:first_floor][:lobby]

p library[:first_floor][:media_room][:video_games]

p library[:main_floor][:computers]

p library[:main_floor][:genres][:fiction][5]
