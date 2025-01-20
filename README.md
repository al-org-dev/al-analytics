# Al-Analytics

A Jekyll plugin that provides integrations with various analytics services for al-folio sites.

## Supported Analytics Services

- Google Analytics
- Cronitor Analytics
- Pirsch Analytics
- OpenPanel Analytics

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem 'al_analytics'
```

And then execute:

```bash
$ bundle install
```

## Usage

1. Add the plugin to your site's `_config.yml`:

```yaml
plugins:
  - al_analytics
```

2. Configure your analytics services in `_config.yml`:

```yaml
# Analytics Configuration
analytics:
  google: "G-XXXXXXXXXX"  # your Google Analytics measurement ID
  cronitor: "XXXXXXXXX"  # your Cronitor RUM analytics site ID
  pirsch: "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"  # your Pirsch analytics site ID
  openpanel: "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"  # your Openpanel analytics client ID
```

3. Add the analytics tag to your layout file (e.g., `_layouts/default.html`):

```liquid
{% al_analytics_scripts %}
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

## Contributing

Bug reports and pull requests are welcome on GitHub.