# This file should contain all the record creation needed to seed the database with its default values.

require 'net/http'

rockets_uri = URI('https://api.spacexdata.com/v4/rockets')
rockets_resp = Net::HTTP.get(rockets_uri)
rockets = JSON.parse(rockets_resp)

rockets.each do |rocket|
    new_rocket = {
        id: rocket["id"] ,
        height: rocket["height"]["meters"] ,
        diameter: rocket["diameter"]["meters"] ,
        mass: rocket["mass"]["kg"] ,
        isp_sea_level: rocket["engines"]["isp"]["sea_level"] ,
        isp_vacuum: rocket["engines"]["isp"]["vacuum"] ,
        landing_legs: rocket["landing_legs"]["number"],
        landing_legs_material: rocket["landing_legs"]["material"] ,
        flickr_images: rocket["flickr_images"] ,
        name: rocket["name"] ,
        active: rocket["active"] ,
        cost_per_launch: rocket["cost_per_launch"] ,
        success_rate_pct: rocket["success_rate_pct"] ,
        first_flight: rocket["first_flight"] ,
        wikipedia: rocket["wikipedia"] ,
        description: rocket["description"]
    }
    Rocket.create(new_rocket)
end
launchpad_uri = URI('https://api.spacexdata.com/v4/launchpads')
launchpad_resp = Net::HTTP.get(launchpad_uri)
launchpads = JSON.parse(launchpad_resp)

launchpads.each do |launchpad|
    new_launchpad = {
        id: launchpad["id"] ,
        name: launchpad["name"] ,
        full_name: launchpad["full_name"] ,
        locality: launchpad["locality"] ,
        region: launchpad["region"] ,
        timezone: launchpad["timezone"] ,
        latitude: launchpad["latitude"] ,
        longitude: launchpad["longitude"] ,
        launch_attempts: launchpad["launch_attempts"] ,
        launch_successes: launchpad["launch_successes"] ,
        details: launchpad["details"] ,
        status: launchpad["status"]
    }
    Launchpad.create(new_launchpad)
end

launches_uri = URI('https://api.spacexdata.com/v4/launches')
launches_resp = Net::HTTP.get(launches_uri)
launches = JSON.parse(launches_resp)

launches.each do |launch|
    new_launch = {
            id: launch["id"] ,
            rocket_id: launch["rocket"] ,
            launchpad_id: launch["launchpad"] ,
            flckr_original: launch["links"]["flickr"]["original"] ,
            webcast: launch["links"]["webcast"] ,
            wikipedia: launch["links"]["wikipedia"] ,
            success: launch["success"] ,
            details: launch["details"] ,
            flight_number: launch["flight_number"] ,
            name: launch["name"] ,
            launch_date_time: launch["date_utc"] ,
            upcoming: launch["upcomming"] 
        }
        Launch.create(new_launch)
    end
    puts "seeded"
    