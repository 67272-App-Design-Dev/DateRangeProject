## DateRange Model

This is a simple example of a Ruby model called `DateRange` which takes one or two dates and converts them into a range of dates that be used in a project.

Students are given the tests for this model and are asked to build the model that will pass the tests. The skelton of the DateRange model is provided for you at: `app/models/date_range.rb`

Before starting the project, be sure to run `bundle install` to get the gems; no need to migrate the database as this is an non-ActiveRecord model. To run the tests, go to the terminal and type `rails test:models` or `rails test test/models/date_range_test.rb`

Note that in some tests, we are seeing if an exception is raised. The exceptions being referenced can be found at: `lib/exceptions.rb`. Note these tests simply seek to see if the exception is raised, not how it is rescued from once raised. (_Controller would have to handle that rescue action._)
