-- Monthly Revenue
CREATE OR REPLACE VIEW v_monthly_revenue AS
SELECT
    DATE_TRUNC('month', invoice_date) AS month,
    SUM(unit_price * quantity) AS revenue
FROM v_sales_detailed
GROUP BY 1
ORDER BY 1;

-- Artist Revenue
CREATE OR REPLACE VIEW v_artist_revenue AS
SELECT
    artist_name,
    SUM(line_revenue) AS revenue
FROM v_sales_detailed
GROUP BY 1
ORDER BY revenue DESC;

-- Top Tracks
CREATE OR REPLACE VIEW v_top_tracks AS
SELECT
    track_name,
    artist_name,
    SUM(line_revenue) AS revenue
FROM v_sales_detailed
GROUP BY 1,2
ORDER BY revenue DESC
LIMIT 20;

-- Revenue by Country
CREATE OR REPLACE VIEW v_country_sales AS
SELECT
    customer_country,
    SUM(line_revenue) AS revenue
FROM v_sales_detailed
GROUP BY 1
ORDER BY revenue DESC;

-- Customer LTV (Lifetime Value)
CREATE OR REPLACE VIEW v_customer_ltv AS
SELECT
    customerid,
    customer_name,
    customer_country,
    SUM(line_revenue) AS lifetime_value
FROM v_sales_detailed
GROUP BY 1,2,3
ORDER BY lifetime_value DESC;