# Used Book Exchange Website

## Description

University Book Exchange. At the end of each term, many students sell their textbooks to second-hand bookstores to recuperate some of the purchase cost. These stores, in turn, re-sell the used books to students after some mark-up. If students could buy and sell directly to other students, they could cut out the middleman and earn more while spending less.

Write a web application that creates a marketplace for used OSU textbooks. The application should allow students to register their books for sale as well as find books they are interested in buying. With used books, both the price and the condition of the item are important, so both should be reflected in titles for sale (or seeking).

## User
* ### Visitor
  1. _Search Book_
  2. _Filiter result_
  3. _View Item_

* ### Buyer
  1. _Add to/Delete From Cart
  2. _Check Out_

* ### Seller
  1. _Create A New Book Sale_
  2. _Edit Book Infomation_
  3. _Cancel A Sale_
  4. _View Condition Of Sale_

## Class
  - ### Visitor
    #### Attribute
    
    Attr_Name    | Type
    -------------|---------
    
    #### Behavior
    
    Activity     | Collaborator
    -------------|--------------
    Sign up | Buyer/Seller
    Sign in | Buyer/Seller
    Search Book | Book
    Filiter Result | Book
    View Book information | Book
 ***
  - ### Buyer
    #### Attribute
    
    Attr_Name    | Type
    -------------|---------
    Username     | string
    Password     | string
    Name         | string
    Phone number | phone_number
    Email        | email
    
    #### Behavior
    
    Activity     | Collaborator
    -------------|--------------
    Edit Self Information | 
    View Shopping Cart | Shopping Cart
    Add book into Shopping Cart | Shopping Cart/Book
    Delete book from Shopping Cart | Shopping Cart/Book
    Checkout book in the Shopping Cart | Shopping Cart/Book
    
  ****
  - ### Seller
    #### Attribute

    Attr_Name    | Type
    -------------|---------
    Username     | string
    Password     | string
    Name         | string
    Phone number | phone_number
    Email        | email

    #### Behavior

    Activity     | Collaborator
    -------------|--------------
    Edit Self Information | 
    Create a new book sale | Book
    Edit book information | Book
    Cancel a book sale | Book
    View current state of sales | Book
  ***
  - ### Book
    #### Attribute

    Attr_Name    | Type
    -------------|---------
    Title        | string
    Author       | string
    Class        | string
    Edition      | string
    Description  | string
    Condition    | string
    Price        | float
    Photo        | img
    ISBN         | int
    Seller_id    | int

    #### Behavior

  ***
  - ### Shopping Cart
  
    #### Attribute

    Attr_Name    | Type
    -------------|---------
    Book_id      | int
    Buyer_id     | int

    #### Behavior

  ***
  - ### Sale
  
    #### Attribute

    Attr_Name    | Type
    -------------|---------
    Book_id      | int
    Buyer_id     | int
    Seller_id    | int

    #### Behavior
  ***
  
