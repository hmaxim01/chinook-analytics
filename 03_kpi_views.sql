-- Monthly Revenue
CREATE OR REPLACE VIEW v_monthly_revenue AS
SELECT
    DATE_TRUNC('month', invoice_date) AS month,
    SUM(unit_price * quantity) AS revenue
FROM v_sales_detailed
GROUP BY 1
ORDER BY 1;

SELECT * FROM v_monthly_revenue LIMIT 10

-- Artist Revenue
CREATE OR REPLACE VIEW v_artist_revenue AS
SELECT
    artist_name,
    SUM(Quantity * Unit_Price) AS revenue
FROM v_sales_detailed
GROUP BY 1
ORDER BY revenue DESC;

SELECT * FROM v_artist_revenue LIMIT 10

-- Top Tracks
CREATE OR REPLACE VIEW v_top_tracks AS
SELECT
    track_name,
    artist_name,
    SUM(Quantity * Unit_Price) AS revenue
FROM v_sales_detailed
GROUP BY 1,2
ORDER BY revenue DESC
LIMIT 20;

SELECT * FROM v_top_tracks LIMIT 10


-- Revenue by Country
CREATE OR REPLACE VIEW v_country_sales AS
SELECT
    billing_country,
    SUM(quantity * unit_price) AS revenue
FROM v_sales_detailed
GROUP BY 1
ORDER BY revenue DESC;

SELECT * FROM v_country_sales LIMIT 10


-- Customer LTV (Lifetime Value)
CREATE OR REPLACE VIEW v_customer_ltv AS
SELECT
    customer_id,
    billing_country,
    SUM(quantity * unit_price) AS lifetime_value
FROM v_sales_detailed
GROUP BY 1,2
ORDER BY lifetime_value DESC;

SELECT * FROM v_customer_ltv LIMIT 10
