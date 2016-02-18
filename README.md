# Project - Code Snippets
---
#### AUTHORS

###### MARK ALBERTON
###### MALLINATH NAGARAJ


### PROJECT OVERVIEW/REQUIREMENTS
---
As you learn more and more about web development, you will have more and more snippets of code to build different components of your application. Build a tool in Rails that helps you store code snippets.

* **You must have test coverage (doesn't have to be a 100%) for creating and updating the snippet kinds and the snippets.**

* **The box must accept markdown. Make sure to have the code highlighted properly depending on the language.**

> Note: avoid using `type` as a column name in models. More on that will come later. This is why the wireframe uses `Kind`, you can pick another word if you'd like just don't use `type`.  

* *[Stretch] Make snippets owned by users so a user can create their own snippets. Also add `private` checkbox to the snippet code. If the code snippet is private only the user can see it. If the snippet is not private it means it's public and it will show on the home page listing where it will list all the snippets for all the users.*

### WIREFRAMES

Create Snippets Screen

![Snippet Creation Screen](http://i.imgur.com/ga97YV8.png)

Snippets Listing Screen

![Snippets Listing Screen](http://i.imgur.com/eY2ZRoZ.png)

### ENTITY RELATIONSHIP DIAGRAM

![Entity Relationship Diagram](http://i.imgur.com/b9SERZc.png)

#### List of IMPORTANT RUBY GEMS used in the project

| Gem name | Usage |
|-----------|------|
| Faker | Test Data |
| bcrypt| Secure Password Generation|
| coderay| Syntax Highlighter|
| redcarpet| Render Markdown |
| cancancan| User Authentication|
| rspec-rails| RSpec TDD|
|factory_girl_rails| RSpec Test Data Factory|
