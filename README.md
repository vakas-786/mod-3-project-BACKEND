## Anigram Backend

# Installation
Installation instructions can be found <a href="https://github.com/vakas-786/mod-3-anigram">here</a>

# Models and Relationships 

User
```sh
    has_many :comments 
    has_many :villagers, through: :comments 
```
Animal 
```sh
    has_many :comments 
    has_many :users, through: :comments 
```
Comment
```sh
    belongs_to :animal
    belongs_to :user
```



