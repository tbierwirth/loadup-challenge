# LoadUp Pet Sitting

This Rails application is designed to handle booking services for pets, specifically cats and dogs. It includes functionalities for creating bookings, a pricing engine based on the type of animal and hours requested, and an admin interface to view all bookings.

## Features

- **Booking Form**: Users can submit booking requests for pet sitting services.
- **Pricing Engine**: Dynamically calculates the cost based on animal type and hours requested.
- **Admin Interface**: Allows admins to view all booking requests.
- **Authentication**: Utilizes Devise for user authentication, with special admin privileges.

## Setup

To get this application up and running, follow these steps:

1. **Clone the Repository**
2. **Install Dependencies**
    ```
    bundle install
    yarn install
    ```
3. **Setup Database**
    ```
    rails db:create db:migrate db:seed
    ```
4. **Start the Rails Server**
    ```
    rails s
    ```
    Visit http://localhost:3000 to view the application.
5. **Running Tests**
    
    To ensure everything is set up correctly, you can run the test suite:
    ```
    bundle exec rspec
    ```

## Thoughts and Challenges

**Devise Integration**: Integrating Devise for authentication required a good amount of refactoring to ensure that user roles were correctly managed, and the admin interface was properly secured.  I wanted to use the Devise gem as it's served me well in the past and is a great foundation for more robust authentication systems like OAuth.

**Webpacker Compilation**: Initial issues with Webpacker compilation were resolved by ensuring all necessary JavaScript dependencies were included and properly configured in the application's package.json.  This would have been avoided had I generated the application with the webpacker flag.

**Testing**: Setting up a robust test suite with RSpec and Capybara highlighted the importance of having a solid testing foundation, especially for ensuring the reliability of the booking and admin login functionalities.

# Future Improvements

Looking ahead, potential improvements include:

- Enhancing the UI with React for a more dynamic and responsive user experience.
- Implementing advanced user roles and permissions for finer control over application access.
- Require user registration/login to allow users to manage their bookings.
- Expanding the booking system to include additional services and customization options for users, booking confirmation as well as double-booking prevention.