Mod 1 Project Wine Club

Repo Link
https://github.com/cortezd334/sea-sfo-060120-mod1-final-project

Project Idea/Misson
Welcome to Wine Club! Through our project you, the customer, are able to choose and update your wine preference, view Wine Lists that a Wine Club has to offer, view Wine Lists based off of vintage or wine preference, create your Favorite Wine List, and delete wines from your Favorite Wine List. Our project consists of 6 models in which 3 of them are our join classes, connecting Customer, Wine Club, and Wine. 

Domain

|   Customer     |  CustomerList     |   WineClub    |   WineList    |   Wine    |   Favorite    |
| ------------------------- | -------------- | ---------------- | ------------ | ---------------- | ------------ |
| name: string              | customer_id    | name: string     | wine_club_id | name: string     | wine_id      |
| age: integer              | wine_club_id   | location: string | wine_id      | vintage: integer | customer_id  |
| wine_preference: string   |                |                  |              | grape: string    |              |
| origin_preference: string |                |                  |              | price: integer   |              |
|                           |                |                  |              | origin: string   |              |
|                           |                |                  |              |                  |              |


User Story ( At least 4)
1. Create - Create a favorite wine list
2. Read   - Enter a wine preference and see a list of wines 
3. Update - Update wine preference
4. Delete - Delete a favorite wine

Stretch Goals:
- Include memberships
- Create an input method rather than hardcoding
- Format output responses to look better

