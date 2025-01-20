require 'jekyll'

module AlAnalytics
  class AnalyticsTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      site = context.registers[:site]
      return "" unless site.config['analytics']  # Add a top-level check

      output = []

      # Google Analytics
      if site.config['analytics']['google']
        output << <<~HTML
          <!-- Google Analytics -->
          <script async src="https://www.googletagmanager.com/gtag/js?id=#{site.config['analytics']['google']}"></script>
          <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { window.dataLayer.push(arguments); }
            gtag("js", new Date());
            gtag("config", "#{site.config['analytics']['google']}");
          </script>
        HTML
      end

      # Cronitor Analytics
      if site.config['analytics']['cronitor']
        output << <<~HTML
          <!-- Cronitor Analytics -->
          <script async src="https://rum.cronitor.io/script.js"></script>
          <script>
            window.cronitor = window.cronitor || function() { (window.cronitor.q = window.cronitor.q || []).push(arguments); };
            cronitor("config", { clientKey: "#{site.config['analytics']['cronitor']}" });
          </script>
        HTML
      end

      # Pirsch Analytics
      if site.config['analytics']['pirsch']
        output << <<~HTML
          <!-- Pirsch Analytics -->
          <script
            defer
            src="https://api.pirsch.io/pa.js"
            id="pianjs"
            data-code="#{site.config['analytics']['pirsch']}"
          ></script>
        HTML
      end

      # OpenPanel Analytics
      if site.config['analytics']['openpanel']
        output << <<~HTML
          <script>
            window.opSiteId = '#{site.config['analytics']['openpanel']}';
          </script>
          <script async defer src="https://openpanel.dev/op1.js"></script>
        HTML
      end

      output.join("\n")
    end
  end
end

Liquid::Template.register_tag('al_analytics_scripts', AlAnalytics::AnalyticsTag)