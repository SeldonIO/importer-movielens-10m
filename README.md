Data Import For Movie Recommender
=================================

Scripts to import data to be used for the basis of a movie recommender demo using Seldon. The data used is:

 1. [Movielens 10 Million dataset](http://grouplens.org/datasets/movielens/)
 1. [Hetrec 2011 dataset](http://grouplens.org/datasets/hetrec-2011/)
 1. Some data sourced from Freebase by Seldon by matching movie names and year release to freebase entries.

## Docker Steps

Build the Docker container:

```
   make build_image
```

Run import (you will need 430M of free space for the raw_data and transformed/combined data)

```
   make import
```

For completeness the script to recreate the Freebase data is provided in ```/scripts/getFreebaseData.py``` and is run as

```
  python getFreebaseData.py -movies <location of ml10m>/movies.dat
```

## Create a Movie Recommender Demo

Using this transformed and combined data you can create a movie recommender demo by following the steps in the [Seldon docs](http://docs.seldon.io/movie-recommender-demo.html)


## License

This project is licensed under the Apache 2 license. See LICENSE.txt. 

This project uses data with separate copyright notices and license terms. Compliance with all copyright laws and software license agreements implied by use of the data is the responsibility of the user.

* [MovieLens 10M dataset](http://www.movielens.org) - © 2015 GroupLens Research Project at the University of Minnesota

* [Freebase](https://developers.google.com/freebase/faq) - http://creativecommons.org/licenses/by/2.5/



