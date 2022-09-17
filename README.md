# launchpad_technical_challenge
Technical challenge for UBC Launch Pad Application

## Rain Alert App:

The rain alert app is an app designed to help people prepare for the unpredictable weather. Often times, people tend to forget to check the weather before going out and are caught unprepared for certain weather conditions, namely rain in Vancouver. The rain alert app will automate the process of gathering weather data so that the user will be alerted of weather conditions through a push notification right before they step out of their home. 

### Technical Considerations
- How to get weather data
- When to send alerts (time)
- How to know location of where the user wants the weather reports
- What weather conditions are required for an alert to be sent

The first consideration I had was how I would gather the weather data. To do this, I found an API for development in Swift called WeatherKit. WeatherKit gathers detailed weather data for a given location. I would allow for the user to manually enter locations for which they wish to be alerted or set alerts for their current location taken by their device's GPS. A user would be able to also set alerts for multiple locations. 

The biggest problem I see is whether or not the app should constently check for weather updates or not. This functionality would be useful as the weather often changes throughout the day; however, it would require for the app to consitantly perform polling in the background to check for weather updates. Some possible solutions I consider are:
1. Checking for updates once every certain time interval
    - This would limit the amount of background activity to a reasonable amount, however, it would still require some activity
    - Would be very accurate still as the weather does not change every second
2. Checking for update once per day at a set time
    - The user would set times when they want the notification and the app checks the weather at the specified times
    - Can use machine learning algorithm to determine times when the user leaves the house, goes outside, etc. 
    - Eliminates background activity at the cost of less accurate weather readings ie. could still be caught by sudden weather changes

### Design
The design for this app would be a very simple user interface that allows the users to see all the locations and respective notifications that they set for each area. There would also be a button to add new locations and alerts. When adding alerts to a location, there will be a list of recommended alerts. For example, I am from Calgary where it does not rain much but snows a ton. When adding Calgary as a location, there would be recommendations based on the historical weather data from that area to add alert for snow and hail. 

The notification sent will alert the user of the current weather condition in the area and the forcast for the day. For example, a notification might say "The current weather in Vancouver is 20°C, with a high today of 23°C and a low of 17°C, there is a 90% chance of rain at 3:00pm"

