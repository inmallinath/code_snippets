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

Sequence of steps used to create the project:

> **__The initial push to git was performed soon after step 2.__**

1. Run the command `rails new code_snippets -d postgresql -T` to initiate the project
2. Include the gems and run `bundle install`
3. Create the database by running the command `bin/rake db:create`
4. Install RSpec used for testing by running `bin/rails g rspec:install`
5. Create the model and the controller at once by issuing the command `bin/rails g resource snippet title:string content:text display:boolean`
6. After having verified the generated migration file, run the command `bin/rake db:migrate`
7. Verified the creation of `snippets` table in the local database server.
8. Now generate the model for `user` by issuing the command `bin/rails g resource user first_name:string last_name:string email:string password:string`
9. Run `bin/rake db:migrate` to create the table in the database.
10. Similarly generate the model for `language`. A separate table may not be required here. However, considering that the app could be used with other languages other than the ones noted in the wireframes, a table design was adopted. The command used: `bin/rails g model language title:string`.
11. Again run `bin/rake db:migrate` to create the table in the database.
12. Set up association by creating a migration on `users` table by running the command `bin/rails g migration add_user_references_to_snippet user:references`
13. Similarly set up association by creating a migration on `languages` table by running the command `bin/rails g migration add_language_references_to_snippet language:references`
14. Set up a controller for the `language` model by issuing the command `bin/rails g controller languages`
15. Add `has_many :users` and `has_many :languages` to the snippets controller; Add `belongs_to :snippet` on the `users` controller as well as the `languages` controller.
16. Perform a sanity test by running the application using the command `bin/rails s`. The sanity tests were found to be OK.
17. We did our second commit soon after we created our models and their associations, controllers and after updating the README.md document.
  * git status
  * git add -A
  * git commit -m "Add `user`,`snippet` and `language` model and their respective controllers. Associate the three models by setting up the relationships."
  * git push origin master
18. We start Test Driven Development by writing our RSpec tests on the model.
