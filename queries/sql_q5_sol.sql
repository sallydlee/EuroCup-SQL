SELECT 
COUNT(*) AS bookings_in_stopping_time
FROM euro_cup_2016.player_booked pb 
WHERE play_schedule ='ST' AND booking_time > 0;
