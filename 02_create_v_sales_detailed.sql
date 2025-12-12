--Testing the data
SELECT * FROM artist LIMIT 10;
SELECT * FROM invoice LIMIT 10;
SELECT * FROM track LIMIT 10;

-- Creating a relational view
CREATE OR REPLACE VIEW v_sales_detailed AS
SELECT
    il.invoice_line_id,
    i.invoice_id,
    i.customer_id,
    i.invoice_date,
    i.billing_country,
    il.unit_price,
    il.quantity,
    t.name AS track_name,
    a.title AS album_title,
    ar.name AS artist_name,
    g.name AS genre
FROM invoice_line il
JOIN invoice i ON il.invoice_id = i.invoice_id
JOIN track t ON il.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN artist ar ON a.artist_id = ar.artist_id
JOIN genre g ON t.genre_id = g.genre_id;

SELECT * FROM v_sales_detailed LIMIT 20;
