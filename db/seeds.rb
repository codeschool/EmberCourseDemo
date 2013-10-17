Example.delete_all

[
  # 1-1: Application
  { title: "Create Ember Application", level: 1, number: 5, description: <<-HTML.strip_heredoc
      Creating a new Ember application using `Ember.Application.create()`.
    HTML
  },
  { title: "The First View", level: 1, number: 10, description: <<-HTML.strip_heredoc
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


  # 2-1: Templates
  { title: "Linking to the About Page", level: 2, number: 10, description: <<-HTML.strip_heredoc
      Using the handlebars `link-to` helper.
    HTML
  },
  { title: "Handlebars With Options", level: 2, number: 20, description: <<-HTML.strip_heredoc
      Passing options to a `link-to` helper.
    HTML
  },
  { title: "Alternate Routes", level: 2, number: 30, description: <<-HTML.strip_heredoc
      Changing the `index` route and specifying a `path` for routes.
    HTML
  },
  # 2-2: Partials
  { title: "Partial for the Header", level: 2, number: 40, description: <<-HTML.strip_heredoc
      Splitting out the header to a `partial`.
    HTML
  },
  # 2-3: Controllers
  { title: "Controller Basics", level: 2, number: 50, description: <<-HTML.strip_heredoc
      Providing data for a template.
    HTML
  },
  { title: "Binding attributes and functions", level: 2, number: 60, description: <<-HTML.strip_heredoc
      Binding attributes using `{{bind-attr}}`.

      Using functions as properties.
    HTML
  },


  # 3-1: Routing
  { title: "Passing Data To a View", level: 3, number: 10, description: <<-HTML.strip_heredoc
      Using a `Route` to pass data to a view.

      Using `each` to loop over data in handlebars. 
    HTML
  },

  # 3-2: Related Routes
  { title: "Related Routes", level: 3, number: 15, description: <<-HTML.strip_heredoc
      Creating a `resource` route with a dynamic URL.
    HTML
  },

  # 3-3: Nested Resource Routes
  { title: "Resource Routes", level: 3, number: 20, description: <<-HTML.strip_heredoc
      Difference between regular routes and resource routes.
    HTML
  },
  { title: "Using Outlet within nested routes", level: 3, number: 30, description: <<-HTML.strip_heredoc
      Using `{{outlet}}` and introducting the `index` template.
    HTML
  },
  { title: "Index Resource Routes", level: 3, number: 25, description: <<-HTML.strip_heredoc
      Using an `index` template within a resource.
    HTML
  },
  { title: "Non-Nested Resources", level: 3, number: 40, description: <<-HTML.strip_heredoc
      Related resources without nesting.
    HTML
  },

  # 4-1: Ember Data
  { title: "Ember Data Basics ", level: 4, number: 10, description: <<-HTML.strip_heredoc
      Using Ember Data with `FixtureAdapter`.

      Creating a `Model` with a string attribute.

      Updating Routes to use the new data store to fetch objects.
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

