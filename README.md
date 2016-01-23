# Rails example for

![Image](https://raw.githubusercontent.com/SaKKo/muic-iccs474-2015t2-models/master/models.png)

rails g scaffold User first_name:text last_name:text
rails g scaffold Post name:text content:text user:references
rails g scaffold Comment content:text user:references post:references
