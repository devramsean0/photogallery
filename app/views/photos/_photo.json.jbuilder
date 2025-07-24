json.extract! photo, :id, :photo, :camera, :digitized_date, :shot_date, :location, :in_digest, :created_at, :updated_at
json.url photo_url(photo, format: :json)
json.photo url_for(photo.photo)
