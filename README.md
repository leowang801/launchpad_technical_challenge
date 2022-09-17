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
