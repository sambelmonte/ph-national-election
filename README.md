# Philippine National Elections
A simple API in python based on how Philippine National Election works.

## GET /
Retrieves all the candidates' details for president, vice president, and senator.

Sample Response:
```
{
  "president": [
    {
      "ballot_number": 10,
      "name": "Juan dela Cruz",
      "party": "Independent",
      "votes": 1
    }, ...
  ],
  "vice_president": [
    {
      "ballot_number": 10,
      "name": "Juana dela Cruz",
      "party": "Independent",
      "votes": 1
    }, ...
  ],
  "senator": [
    {
      "ballot_number": 100,
      "name": "Juanito dela Cruz",
      "party": "Independent",
      "votes": 1
    }, ...
  ],
  "total_president": 60,
  "total_vice_president": 32,
  "total_senator": 153,
}
```

## GET /candidates/<type>
Retrieves all the candidates' details for a specific government position.
 
Sample Response:
```
{
  "president": [
    {
      "ballot_number": 10,
      "name": "Juan dela Cruz",
      "party": "Independent",
      "votes": 1
    }, ...
  ],
  "total_president": 60
}
```

## POST /vote
Puts the user's vote to the database

Sample Request:
```
{
  "president": 10,
  "vice_president": 10,
  "senator": [100, 18, 28]
}
```

Sample Response:
```
{
  "president": [
    {
      "ballot_number": 10,
      "name": "Juan dela Cruz"
    }
  ],
  "vice_president": [
    {
      "ballot_number": 10,
      "name": "Juana dela Cruz"
    }
  ],
  "senator": [
    {
      "ballot_number": 100,
      "name": "Juanito dela Cruz"
    }, ...
  ]
}
```

# To Do
- Endpoint to tally votes
