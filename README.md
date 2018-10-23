# bookmark_manager

## User Stories

```
As a busy user
So I can quickly go to my websites
I want to see a list of bookmarks

```

## Diagram
![diagram](./public/images/diagram.png)


## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup
```

To view bookmarks, navigate to `localhost:9292/bookmarks`.

### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```
