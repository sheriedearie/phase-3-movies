# Object Relations Code Challenge - Concerts

For this assignment, we'll be working with a Concert domain.

We have three models: `Band`, `Concert`, and `Venue`.

For our purposes, a `Band` has many `Concerts`, a `Venue` has many `Concerts`s, and a `Concert` belongs to a `Band` and to a `Venue`.

`Band` - `Venue` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## What You Already Have

The starter code has migrations and models for the initial Band and Venue models, and seed data for some Bands and Venues. The schema currently looks like this: 

#### Bands
| Column      | Type      |
| ------------| ----------|
| name        | String    |
| hometown    | String    |
| created_at  | DateTime  |
| updated_at  | DateTime  |

#### Venues
| Column      | Type      |
| ----------- | --------- |
| title       | String    |
| city        | String    |
| created_at  | DateTime  |
| updated_at  | DateTime  |

You will need to create the migration for the Concert model using the attributes specified in the deliverables below.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `rake console` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You are also encouraged to use the `seeds.rb` file to create sample data to test your models and associations.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. 

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Remember: Active Record give your classes access to a lot of methods already! Keep in mind what methods Active Record gives you access to on each of your classes when you're approaching the deliverables below.

TODO: decide if it's worth mentioning the methods Active Record already gives?

### Migrations

- You will need to create a migration for the `Concert` model. 
- A `Concert` belongs to a `Band`, and a `Concert` also belongs to a `Venue`. In your migration, create any columns your `Concert` table will need to establish these relationships.
- A `Concert` also has a `date` attribute that should store a string.
- After creating your migration, use the `seeds.rb` file to create instances of your `Concert` class so you can test your code.

### Object Relationship Methods

#### Concert

- `Concert#band`
  - should return the `Band` instance for this concert
- `Concert#venue`
  - should return the `Venue` instance for this concert

#### Venue

- `Venue#concerts`
  - returns a collection of all the concerts for the venue
- `Venue#bands`
  - returns a collection of all the bands that have performed at the venue

#### Band

- `Band#concerts`
  - should return a collection of all the concerts that the band has performed
- `Band#venues`
  - should return a collection of all the venues that the band has played in

### Aggregate and Association Methods

#### Concert

- `Concert#hometown_show?`
  - returns `true` if the concert is in the band's hometown, `false` if it is not

#### Band

- `Band#play_in_venue(venue, date)`
  - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date

#### Venue

- `Venue#concert_on(date)`
  - takes a date (string) as argument
  - finds and returns the first concert on that date at that venue
  - if there is no concert on that date at that venue, returns `nil`
- `Venue#most_frequent_band`
  - returns the band with the most concerts at the venue

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. No syntax errors. Some deliverables function correctly. Mixes up syntax for class and instance methods, refers to variables in the wrong scope, or uses `self` incorrectly, leading to logical errors. Method and variable names do not correspond to their respective behavior or data types. Methods might be duplicated, or code includes unused methods without a clear purpose.
3. Correct class syntax for the deliverables submitted. May be incomplete or missing deliverables. Most code generally expresses intent: method and variable names match their behaviors and data types. Methods are not duplicated. Code does not have unused or methods without a clear purpose.
4. Correct class syntax for all of the submitted code. Code express intent: method and variable names indicate their behavior and data types. Some deliverables might not be complete. No methods are duplicated.
5. Correct class syntax for all deliverables, all deliverables complete. Code expresses intent: method and variable names indicate their behavior and data types, with the correct pluralization. No methods are duplicated. All methods have a clear purpose. Shared functionality is factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Relationship methods are missing or have logic errors, store data on the wrong model, or are missing a single source of truth.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models, relationship methods are defined on the right models, and the logic correctly implements the relationships. Aggregate methods using the relationships may be incomplete or have errors.
4. Models relate to each other as specified in the instructions. Aggregate methods work, but might not use helper methods effectively.
5. Models relate to each other as specified in the instructions. Aggregate methods use helper methods effectively.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have runtime or logic errors. Collections methods may use the wrong iterators, have incorrect logic, or many of the collections methods are unimplemented.
3. Some collections methods work correctly, though several might be unimplemented. Code may not use the appropriate built in method for each problem, or duplicate logic instead of using helper methods.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. Methods may duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
