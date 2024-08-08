
SELECT * FROM event WHERE 
eventid = {{context.params.id | is_required | is_integer}} ;