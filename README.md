# Shoe Store Finder

![image](https://github.com/MegOlson/shoe_store/blob/master/shoe-store.screenshot.png)


#### _Individual Project in Ruby, 09/29/17_

#### By Megan Olson

## Description

_A program that allows user to input Stores and Shoes Brands, associating both with each other. The stores and brands can be updated and deleted._

## Setup/Installation Requirements

* Clone this repository
* Open file shoe_store
* Copy database using ActiveRecord
* Run ruby app.rb to open the app in Sinatra
* Open your preferred browser and go to 'localhost:4567' to view project

## Specifications

* Program will return inputted store name.
  * Example Input: "Nordstrom"
  * Example Output: "Nordstrom"
* Program will return inputted brand name.
  * Example Input: "Nike"
  * Example Output: "Nike"
* Program will return inputted brand price with currency format.
  * Example Input: 90
  * Example Output: "$90.00"
* Program will allow user to update name of brand.
  * Example Input: "Nordstroms"
  * Example Output: "Nordstroms"
* Program will allow user to update price of brand with currency format.
  * Example Input: 80
  * Example Output: "$80.00"
* Program will allow user to add brands to stores.
  * Example Input: click "add"
  * Example Output: "Nordstroms"
* Program will not save input if input field is blank.
  * Example Input: ""
  * Example Output: nil
* Program will sort throught the brands based on highest price.
  * Example Input: [Nordstroms, Payless]
  * Example Output:[Nordstroms, Payless]
* Program will not allow input to be an offensive word.
  * Example Input: "lout"
  * Example Output: nil
## Support and contact details

_Please contact Megan at meganannetteolson@yahoo.com with questions, comments, or issues._

## Technologies Used

* Ruby
* Sinatra
* ActiveRecord

### License

Copyright (c) 2017 **Megan Olson**

*This software is licensed under the MIT license.*
