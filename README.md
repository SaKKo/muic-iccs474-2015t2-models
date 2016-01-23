# Rails example for

![Image](https://raw.githubusercontent.com/SaKKo/muic-iccs474-2015t2-models/master/models.png)

## using scaffold

```bash
rails g scaffold User first_name:text last_name:text
rails g scaffold Post name:text content:text user:references
rails g scaffold Comment content:text user:references post:references
```

## Adding models relations.

Check `app/models`

## Rake Task

creating rake task `lib/tasks/sample.rake`
running custom rake task `rake sample:seed`

## Using Rails Console

Referring to `Chapter 4.2` on `Rails Tutorial by Michael Hartl `
