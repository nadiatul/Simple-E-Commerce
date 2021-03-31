# Simple-E-Commerce

This is a Simple E-Commerce system using Laravel 8 + Vue 3 + TailwindCSS 

In this E-commerce system we have few simple and basic functionality and features which are:-
1. List of Products
2. Filter By Brands and Category
3. Add To Cart
4. Register 
5. Login

Instruction
------------ 
1. git clone https://github.com/nadiatul/Simple-E-Commerce.git
2. npm install 
3. composer install
4. create a database 
5. configure database credentials in  config/database.php & .env file
6. php artisan migrate
7. php artisan key:generate
8. import Simple-E-Commerce/database/data/e-commerce.sql 
9. php artisan serve 
10. Register as a user to view the products

This is the Product List:  
![alt text](https://www.linkpicture.com/q/ProductList.png)

The Idea & Planning
1. I'm planning on using the filter/pipe for discount of different membership type. Which mean each membership type have different discount rate. In the pipe, it will return the new RM and discounted price with proper finance format eg. RM 6,299.00
2. Filter by the category and Brand
3. Continue with the Add to Cart & Order History.
4. Adding the user activity using Transaction / Audit Trail

For the installation/Deployment to server
I used to copy the entire project file to the server. But later on I found out we can minify/compress/build the project file first and deploy to server


Credits To:

Idea:
https://code-projects.org/e-commerce-site-in-php-with-source-code/

Photos: 
Photo by <a href="https://unsplash.com/@xps?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">XPS</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>  

Photo by <a href="https://unsplash.com/@campaign_creators?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Campaign Creators</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
  
Thank you so much :)