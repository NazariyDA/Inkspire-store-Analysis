WITH Inkspire AS
  (SELECT 
    user_pseudo_id,
    (SELECT value.int_value 
     FROM e.event_params 
     WHERE key = 'ga_session_id') AS session_id,
    user_pseudo_id || 
    (SELECT value.int_value 
     FROM e.event_params 
     WHERE key = 'ga_session_id') AS user_session_id,
    REGEXP_EXTRACT(
      (SELECT value.string_value 
       FROM e.event_params  
       WHERE key = 'page_location'), 
      r'(?:\w+\:\/\/)?[^\/]+\/([^\?#]*)') AS page_path,
    geo.city                 AS city,
    geo.country              AS country,
    device.category          AS device_category,
    device.language          AS device_language,
    device.operating_system  AS device_operating_system,
    traffic_source.source    AS source,
    traffic_source.medium    AS medium,
    traffic_source.name      AS campaign
  FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*` e
  WHERE event_name = 'session_start'),
Events AS 
  (SELECT
    DATE(TIMESTAMP_MICROS(event_timestamp)) AS event_date,
    event_name,
    user_pseudo_id || 
    (SELECT value.int_value 
     FROM e.event_params 
     WHERE key = 'ga_session_id') AS user_session_id
  FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*` e
  WHERE event_name IN 
    ('session_start', 
    'view_item',
    'add_to_cart',
    'begin_checkout',
    'add_shipping_info',
    'add_payment_info',
    'purchase'))
SELECT 
  Inkspire.*,
  e.event_date,
  e.event_name
FROM Inkspire
LEFT JOIN Events e USING (user_session_id);