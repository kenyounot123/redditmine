# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Submine** is a Rails 8 application for discovering niche pain points through subreddits. It uses modern Rails architecture with:

- **Ruby 3.4.5** and **Rails 8.0.2+**
- **ViewComponent** for reusable UI components
- **TailwindCSS** for styling
- **Turbo/Stimulus** for JavaScript interactions
- **PostgreSQL** database
- **Solid Cache/Queue/Cable** for Rails infrastructure
- **Kamal** for deployment

## Development Commands

### Setup and Installation
- `bin/setup` - Complete development environment setup (installs dependencies, prepares database, starts server)
- `bin/setup --skip-server` - Setup without starting the server
- `bundle install` - Install Ruby dependencies

### Running the Application
- `bin/dev` - Start development server with CSS watching (uses Foreman with Procfile.dev)
- `bin/rails server` - Start Rails server only
- `bin/rails tailwindcss:watch` - Watch and compile Tailwind CSS

### Testing and Quality
- `bin/rails test` - Run all tests
- `bin/rails test:system` - Run system tests only
- `bin/rails db:test:prepare test test:system` - Prepare test database and run all tests
- `bin/rubocop` - Run linting (uses Rails Omakase style)
- `bin/rubocop -f github` - Run linting with GitHub Actions format
- `bin/brakeman` - Security vulnerability scanning
- `bin/importmap audit` - Audit JavaScript dependencies for security

### Database
- `bin/rails db:prepare` - Setup database (creates, migrates, seeds as needed)
- `bin/rails db:migrate` - Run pending migrations
- `bin/rails db:seed` - Load seed data
- Ensure PostgreSQL is running locally for development

### Other Tools
- `bin/kamal` - Deployment commands
- `bin/importmap` - Manage JavaScript import maps
- `bin/jobs` - Background job management
- `bin/thrust` - Puma HTTP asset caching

## Architecture

### MVC Structure
- **Controllers**: Basic Rails controllers (currently just `LandingsController`)
- **Models**: Standard ActiveRecord models
- **Views**: ERB templates with ViewComponent integration
- **Components**: Reusable UI components using ViewComponent gem (e.g., `NavbarComponent`)

### Key Technologies
- **ViewComponent**: Used for reusable UI components with conditional rendering
- **TailwindCSS**: Utility-first CSS framework integrated via `tailwindcss-rails`
- **Importmap**: ES6 modules without bundling for JavaScript management
- **Solid Suite**: Modern Rails infrastructure (Cache/Queue/Cable) using PostgreSQL

### Current Application State
- Single landing page controller with welcome action
- Navbar component with conditional rendering
- Root route points to `landings#welcome`
- Health check endpoint at `/up`

## MVP Architecture (Work in Progress)

**SubMine** aims to analyze subreddit sentiment and discover niche pain points through automated Reddit data collection and NLP analysis.

### Planned Core Entities
- **User**: Has many subreddits through user_subreddits (many-to-many relationship)
- **Subreddit**: Contains posts and comments, belongs to many users
- **Post**: Belongs to subreddit, has many comments
- **Comment**: Belongs to post and subreddit
- **SentimentReport**: Analysis results for posts and comments
- **UserSubreddit**: Join table for user-subreddit relationships

### Planned Data Flow
1. User inputs subreddit name (e.g., "/rails")
2. System makes POST request to Reddit API
3. Fetches subreddit posts and comments
4. Background job processes data through NLP/sentiment analysis
5. Results saved to PostgreSQL database
6. User views analyzed sentiment reports

### Planned Integrations
- **Reddit API**: Using `simply_reddit` gem for data collection
- **Background Jobs**: Solid Queue for processing Reddit data and sentiment analysis
- **NLP/Sentiment Analysis**: TBD - considering various Ruby NLP gems or external APIs
- **Data Storage**: PostgreSQL for all persistent data

### Key Features in Development
- Reddit subreddit data collection
- Automated sentiment analysis on posts/comments
- User dashboard for viewing analysis results
- Background job processing for scalability
- Multi-user support with personalized subreddit tracking

### Testing Setup
- **Minitest** for unit testing
- **Capybara + Selenium** for system testing
- System test screenshots saved on failure
- Chrome browser required for system tests

## Code Style and Standards

- Uses **Rails Omakase** Ruby style guide via `rubocop-rails-omakase`
- Security scanning with Brakeman
- ViewComponent pattern for UI components
- TailwindCSS for styling with utility classes
