Example.delete_all

[
  # 1-1: Application
  { title: "Create Ember Application", level: 1, number: 10, description: <<-HTML.strip_heredoc
      Creating a new Ember application using `Ember.Application.create()`.

      Setting up an initial template using `text/x-handlebars`.
    HTML
  },

  # 1-2: Views
  { title: "Data-template-name='application'", level: 1, number: 30, description: <<-HTML.strip_heredoc
      Different ways of giving your view a name using `id` and `data-template-name`.
    HTML
  },
  { title: "Index Path", level: 1, number: 40, description: <<-HTML.strip_heredoc
      Creating a new template and using `{{outlet}}`.
    HTML
  },

  # 1-3: Routes
  { title: "About Page", level: 1, number: 50, description: <<-HTML.strip_heredoc
      Create a new About page using a `data-template-name` of `about`.

      Adding a route to our new About page using `App.Router`.
    HTML
  },

  # 1-4: Templates
  { title: "Linking to the About Page", level: 1, number: 70, description: <<-HTML.strip_heredoc
      Using the handlebars `linkTo` helper.
    HTML
  },
  { title: "Handlebars With Options", level: 1, number: 80, description: <<-HTML.strip_heredoc
      Passing options to a `linkTo` helper.
    HTML
  },

  # 1-5: Partials
  { title: "Partial for the Header", level: 1, number: 90, description: <<-HTML.strip_heredoc
      Splitting out the header to a partial.
    HTML
  }
].each do |example_hash| 
  Example.find_or_create_by(title: example_hash[:title]) do |example|
    example.level = example_hash[:level]
    example.number = example_hash[:number]
    example.description = example_hash[:description]
    example.save
  end
end

