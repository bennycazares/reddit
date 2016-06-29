# reddit

#Rails CRUD
Week 5 Lab - Microblogging Social Network (Reddit)
Due Monday, March 07, 2016

Build Reddit (bookmarks and voting in Rails using Forms and relationships)
Learning Objectives

After completing this assignment, you should…

    Be able to utilize Forms in Rails
    Be able to add custom routes to your resources

#Performance Objectives

After completing this assignment, you be able to effectively use

    Modeling Data
    Publishing on Heroku

Details
#Deliverables

    A rails app repo with:
        Rails 4.2.4
        Functioning db/seed.rb
    A link to a live Heroku instance

#Requirements

    Reddit is "User-generated news links. Votes promote stories to the front page."
    Each Link should have a "number of positive votes" column
    Posts have many comments, which are displayed on the post's show page

#Normal Mode

Normal mode is a simple, naive, implementation of Reddit

    The homepage should order by the most number of votes
    Clicking on thumbs-up should increment positive vote and redirect you to the home-page
    Clicking on the title should redirect you to the post detail page
    When on the post detail page, you should display the comments beneath the
    I can post a comment and type in my username

<img width="1274" alt="screen shot 2016-06-28 at 6 16 57 pm" src="https://cloud.githubusercontent.com/assets/17051412/16435581/bec83b20-3d5c-11e6-9ba8-3bd590b93982.png">
<img width="1278" alt="screen shot 2016-06-28 at 6 17 07 pm" src="https://cloud.githubusercontent.com/assets/17051412/16435583/c06b05a2-3d5c-11e6-93a0-8419ea230d77.png">
<img width="1260" alt="screen shot 2016-06-28 at 6 17 19 pm" src="https://cloud.githubusercontent.com/assets/17051412/16435584/c169215a-3d5c-11e6-88af-3868c4d154c6.png">
