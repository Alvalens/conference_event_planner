#!/bin/bash

# Create the target directory if it doesn't exist
mkdir -p public/image

# List of image URLs from Pixabay pages
declare -A images=(
  ["conference_room"]="https://cdn.pixabay.com/photo/2013/07/18/10/57/chairs-163307_1280.jpg"
  ["auditorium"]="https://cdn.pixabay.com/photo/2016/08/30/07/04/event-venue-1631103_1280.jpg"
  ["presentation_room"]="https://cdn.pixabay.com/photo/2018/10/01/12/55/convention-center-3718663_1280.jpg"
  ["meeting_room"]="https://cdn.pixabay.com/photo/2013/07/18/10/57/chairs-163307_1280.jpg"
  ["small_meeting_room"]="https://cdn.pixabay.com/photo/2014/01/17/19/29/laptops-247413_1280.jpg"
  ["projector"]="https://cdn.pixabay.com/photo/2013/01/20/02/14/business-75411_1280.jpg"
  ["speakers"]="https://cdn.pixabay.com/photo/2019/03/13/11/22/speakers-4055344_1280.jpg"
  ["microphone"]="https://cdn.pixabay.com/photo/2019/01/17/16/25/public-speaking-3933156_1280.jpg"
  ["whiteboard"]="https://cdn.pixabay.com/photo/2014/01/13/20/07/whiteboard-243972_1280.jpg"
  ["signs"]="https://cdn.pixabay.com/photo/2014/02/01/17/28/signpost-256651_1280.jpg"
)

# Download each image
for name in "${!images[@]}"; do
  echo "Downloading $name..."
  wget -q "${images[$name]}" -O "public/image/${name}.jpg"
done

echo "✅ All images downloaded to public/image/"
