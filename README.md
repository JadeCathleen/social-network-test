The aim of the this tech test is to determine your ability to compose basic front end structures, interact with stimulus controllers, and implement basic back end systems, utilizing stimulus reflex to update the DOM without triggering http requests.

https://www.figma.com/file/KEQwTB1y3MkeELM1lXf1h6/Untitled?node-id=2%3A2

The figma design above shows a basic card layout for the Post model (index page), which has a title, some content and an attached image. Each post is displayed as a card within a responsive grid. At the bottom of each post is a row of four emoji reactions. The crud for the posts model has already been coded, but the front end structure has yet to be implemented. You will also notice that the top of the index page already has a form for new posts. There are no figma designs for how we would like this to look, but if you would like to style it yourself we would be interested to what you come up with. 

To test how you learn new technologies we would like to see you implement the emoji reaction system using Stimulus /& Stimulus reflex. Stimulus Reflex has already been set up on the repository so you do not need to install it, only add the behaviour to create and destroy reactions for a user. For now a user can react with one of four emojis. On the main project though we have an emoji picker that allows them to react with any emoji they like, so think about how any solution you build would take that into account from a database perspective. 

You can find a tutorial on Stimulus Reflex here: https://docs.stimulusreflex.com/

If you wants  to take things a step further you can implement live broadcasting of reactions using actioncable or turbostreams, so that a user's page updates the reaction count as another user somewhere else reacts. This forms the basis of much functionality on the idopia platform.

If you have any questions about what is required from this test before the interview feel free to reach out. The goal of this test is not to determine whether you can interpret ambiguous instructions :)

Good luck!


