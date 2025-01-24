
    -- Get the first 5 rows from the listings table
    SELECT * FROM listings LIMIT 5;
    


    -- Count the number of listings available in Barcelona
    SELECT COUNT(*) AS total_listings FROM listings;
    


    -- Find the average price of a listing in Barcelona
    SELECT AVG(price) AS average_price FROM listings;
    


    -- Get the number of listings available for each neighborhood
    SELECT neighborhood, COUNT(*) AS listings_count
    FROM listings
    GROUP BY neighborhood
    ORDER BY listings_count DESC;
    


    -- Find the listings with the highest price
    SELECT * FROM listings
    WHERE price = (SELECT MAX(price) FROM listings);
    


    -- Find the number of listings in each room_type category
    SELECT room_type, COUNT(*) AS room_type_count
    FROM listings
    GROUP BY room_type
    ORDER BY room_type_count DESC;
    


    -- Find the listings that have availability greater than 50 days
    SELECT * FROM listings
    WHERE availability_365 > 50;
    


    -- Get the top 5 most expensive listings
    SELECT * FROM listings
    ORDER BY price DESC
    LIMIT 5;
    


    -- Identify the listings with the highest number of reviews
    SELECT id, name, number_of_reviews
    FROM listings
    ORDER BY number_of_reviews DESC
    LIMIT 10;
    


    -- Find hosts with the highest number of listings
    SELECT host_id, host_name, SUM(calculated_host_listings_count) AS total_listings
    FROM listings
    GROUP BY host_id, host_name
    ORDER BY total_listings DESC
    LIMIT 10;
    


    -- Analyze neighborhoods with the most reviews
    SELECT neighborhood, SUM(number_of_reviews) AS total_reviews
    FROM listings
    GROUP BY neighborhood
    ORDER BY total_reviews DESC
    LIMIT 10;
    


    -- Find neighborhoods with the highest average availability
    SELECT neighborhood, AVG(availability_365) AS avg_availability
    FROM listings
    GROUP BY neighborhood
    ORDER BY avg_availability DESC
    LIMIT 10;
    


    -- Analyze minimum night distribution by room type
    SELECT room_type, AVG(minimum_nights) AS avg_minimum_nights, MAX(minimum_nights) AS max_minimum_nights
    FROM listings
    GROUP BY room_type
    ORDER BY avg_minimum_nights DESC;
    


    -- Check listings with the highest reviews per month
    SELECT id, name, reviews_per_month
    FROM listings
    WHERE reviews_per_month IS NOT NULL
    ORDER BY reviews_per_month DESC
    LIMIT 10;
    

