# GlitchService

GlitchService is a microservice using a Sinatra framework to expose a consilidated endpoint with two images based off a keyword search. The images are drawing from two API's: [Pixabay](https://pixabay.com/) and [DeepAI](https://deepai.org/machine-learning-model/text2img). Pixabay returns an image based of relevant image tags created by users, whereas DeepAI utilizes a Text2Image AI to generate an image from scratch based off any given text. GlitchService works to consilidate these searches to return two images each in a single enpoint.

Checkout [GlitchCraft](https://glitch-craft.herokuapp.com/) to see how this service is used!

## Versions
Ruby 2.5.3
Sinatra 2.1.0

## Configuration
1. Run `git clone git@github.com:Kathybui732/glitch-service.git`
2. `cd glitch-service`
3. bundle install
4. Add API keys to .env file (follow instructions below)

## API KEYS
1. Follow the documentation from the [Deep AI Docs](https://deepai.org/api-docs) and the [Pixabay Docs] to obtain api keys
2. Add the keys to the .env file in the following format:
```ruby
DEEP_API_KEY="[you api key here]"
PIXABAY_API_KEY="[you api key here]"
```

## Test Suite
Run `bundle exec rspec`

## Example endpoint
![search endpoint for 'strawberries'](https://i.imgur.com/AtpsQGf.png)

## Contributors
[Dan Sehl's GitHub](https://github.com/dtsehl) &
[Linkedin](https://www.linkedin.com/in/danielsehl)

[Jane Greene's Github](https://github.com/janegreene) &
[Linkedin](https://www.linkedin.com/in/jane-greene-mba/)

[Kathy Bui's Github](https://github.com/Kathybui732) &
[Linkedin](https://www.linkedin.com/in/kathy-bui-87a27a1ab/)

[Dorion's GitHub]() &
[Linkedin]()
