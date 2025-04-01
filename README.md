# Green Dolphin

## Description

[Provide a brief description of your Rails application. What does it do? What problem does it solve? Highlight any key features, especially those related to Action Cable.]

This Rails application leverages Action Cable for real-time functionality, enabling [specific real-time features, e.g., live chat, collaborative editing, real-time notifications].

## Technologies Used

- Ruby on Rails [Rails Version]
- Ruby [Ruby Version]
- Action Cable
- [List other significant gems and technologies, e.g., PostgreSQL, Redis, JavaScript libraries]

## Setup

1.  **Clone the repository:**

    ```bash
    git clone [repository URL]
    cd [your-app-name]
    ```

2.  **Install dependencies:**

    ```bash
    bundle install
    ```

3.  **Configure the database:**

    - Copy `config/database.yml.example` to `config/database.yml` and update with your database credentials.
    - Run database migrations:

      ```bash
      rails db:create
      rails db:migrate
      ```

4.  **Configure Redis (for Action Cable):**

    - Ensure Redis is installed and running.
    - If you need to configure Redis settings, edit `config/cable.yml`.

5.  **Start the Rails server:**

    ```bash
    rails server
    ```

6.  **Access the application:**

    - Open your web browser and navigate to `http://localhost:3000`.

## Action Cable Setup and Usage

- **Channels:**
  - The application uses Action Cable channels located in `app/channels`.
  - [Describe the purpose of each channel and how they are used. e.g. "The `ChatChannel` allows users to send and receive messages in real time."]
- **JavaScript:**
  - Client-side JavaScript code for connecting to Action Cable channels is located in `app/javascript/channels`.
  - [Explain how the JavaScript interacts with the channels. e.g., "The `consumer.subscriptions.create()` method is used to establish connections to the channels."]
- **Redis:**
  - Action Cable relies on Redis for pub/sub functionality
  - [Mention any specific Redis configurations or considerations.]

## Features

- **Real-time Chat:** Users can send and receive messages instantly. (Action Cable)
- **Live Notifications:** Users receive real-time updates on [specific events]. (Action Cable)
- **User Authentication:** Users can create accounts and log in.
- **[Feature 3]:** [Description of feature 3].
- **[Feature 4]:** [Description of feature 4].
- ...

## ToDos

- [x] List flags and env
- [x] Add new flags
- [x] Update flag in environment
- [ ] Add flag preview page
- [ ] on flag change notify on cable
- [ ] on flag change show live update - UI app
- [ ] on flag change show live update - Ruby App
- [ ] Add rules to flag when setting on or off
- [ ] add metadata for flags when requesting to apply rules

## Development

- **Running tests:**

  ```bash
  bundle exec rspec
  ```

- **Running linters:**

  ```bash
  bundle exec rubocop
  bundle exec eslint #if you are using eslint
  ```

- **Generating new models/controllers/etc.:**

  ```bash
  rails generate model [ModelName]
  rails generate controller [ControllerName]
  rails generate channel [ChannelName]
  ```

## Deployment

- [Provide deployment instructions, e.g., using Heroku, AWS, or Docker.]
- [Mention any specific Action Cable deployment considerations, such as configuring Redis for production.]
- [If you are using websockets in production, mention the need for a web socket capable server. e.g. puma, or passenger]

## Contributing

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix: `git checkout -b feature/your-feature-name` or `git checkout -b bugfix/your-bug-fix`.
3.  Commit your changes: `git commit -am 'Add some feature'`.
4.  Push to the branch: `git push origin feature/your-feature-name`.
5.  Create a pull request.

## License

[Specify the license under which the application is distributed, e.g., MIT, Apache 2.0.]

- Home page - List of flags - with env cols with flag status
- Add Environment feature - Name and Key to be unique
- TODO - Delete Env feature
- List of flags - Button to add flag
- Add flag form - Name(unique), key(uniq), Description, default value(bool)
- TODO - Update flag - Name(unique), Description, default value(bool)
- List of flags - Add toggle to toggle the env flag on or off from table
- GET API - to get environemt flag status
- UI for view env flags status
- When a flag value is toggled - we have to have wss connection to get the updated value
- Listen to websocket and store the changes that come
- View page for a single flag + environment
