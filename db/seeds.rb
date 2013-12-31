Example.delete_all

[
  # 1-2: Splitting up Templates
  { title: "Application template with no {{outtlet}}", level: 1, number: 10, description: <<-HTML.strip_heredoc
      Creating an `application` layout, but not yet providing an outlet. 
    HTML
  },
  { title: "The First View", level: 1, number: 20, description: <<-HTML.strip_heredoc
      Setting up the `index` template.
    HTML
  },
  # 1-3: About Page
  { title: "About Page", level: 1, number: 30, description: <<-HTML.strip_heredoc
      The About Page.
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
  # 2-2: Controllers
  { title: "Controller Basics", level: 2, number: 50, description: <<-HTML.strip_heredoc
      Providing data for a template.
    HTML
  },
  { title: "Binding attributes and functions", level: 2, number: 60, description: <<-HTML.strip_heredoc
      Binding attributes using `{{bind-attr}}`.
    HTML
  },
  { title: "Function as a property", level: 2, number: 70, description: <<-HTML.strip_heredoc
      Using functions as properties
    HTML
  },


  # 3-1: Routing
  { title: "Creating a route route and a new template", level: 3, number: 10, description: <<-HTML.strip_heredoc
      New resource route with no model yet.
    HTML
  },
  { title: "Adding data to a resource route", level: 3, number: 15, description: <<-HTML.strip_heredoc
      Using the `model` method to provide data to a route.
    HTML
  },

  { title: "A Simple Loop", level: 3, number: 20, description: <<-HTML.strip_heredoc
      Using `each` to loop over an array.
    HTML
  },

  # 3-2: Product Route
  { title: "A Product Route", level: 3, number: 30, description: <<-HTML.strip_heredoc
      Simple Product Route. Using a dynamic segment.
    HTML
  },
  { title: "Detailed Product", level: 3, number: 40, description: <<-HTML.strip_heredoc
      A more elaborate `product` template and link in from the `products` template.
    HTML
  },

  # 3-3: Master Detail view
  { title: "Master Detail", level: 3, number: 50, description: <<-HTML.strip_heredoc
      Nested route with master detail.
    HTML
  },
  { title: "Nested Route with index template", level: 3, number: 60, description: <<-HTML.strip_heredoc
      Using a nested index template
    HTML
  },

  

  # 4-1: Ember Data
  { title: "Ember Data Basics ", level: 4, number: 10, description: <<-HTML.strip_heredoc
      Using Ember Data with `FixtureAdapter`.

      Creating a `Model` with a string attribute.

      Updating Routes to use the new data store to fetch objects.
    HTML
  },

  { title: "URL Refactor", level: 4, number: 20, description: <<-HTML.strip_heredoc
      Refactoring URL to use product_id
    HTML
  },

  { title: "Ember Data Related Models", level: 4, number: 30, description: <<-HTML.strip_heredoc
      `hasMany` and `belongsTo` in Ember Data
    HTML
  },
  { title: "Using aync:true", level: 4, number: 40, description: <<-HTML.strip_heredoc
      Using async true to load everything.
    HTML
  },
  { title: "Hitting the server with Ember Data", level: 4, number: 50, description: <<-HTML.strip_heredoc
      Changing to our REST adapter and hitting the server.
    HTML
  },

  # 5-1: Ember Data Controller features
  { title: "Sorting in a router ", level: 5, number: 5, description: <<-HTML.strip_heredoc
      How to pass attributes to a the server for sorting.
    HTML
  },
  { title: "Wrong order for a controller ", level: 5, number: 7, description: <<-HTML.strip_heredoc
      How to pass attributes to a the server for sorting.
    HTML
  },
  { title: "Ember Controller Types ", level: 5, number: 10, description: <<-HTML.strip_heredoc
      Sorting by a property in a Controller.
    HTML
  },
  { title: "Computed Alias ", level: 5, number: 20, description: <<-HTML.strip_heredoc
      Switching to an `Ember.computed.alias`.
    HTML
  },
  { title: "Displaying Filtered Content", level: 5, number: 30, description: <<-HTML.strip_heredoc
      Creating a controller property to provide an array.

      Using `filterProperty` and limiting the result.

      Binding a controller property to an attribute in an array.
    HTML
  },
  { title: "Creating a nested route for products on sale", level: 5, number: 40, description: <<-HTML.strip_heredoc
      Setting up a `route` nested in our products `resource`.
    HTML
  },

  # 6-1: The Template Forest
  { title: "Ember Components", level: 6, number: 10, description: <<-HTML.strip_heredoc
      Moving product details into a component.
    HTML
  },
  { title: "Component Objects", level: 6, number: 15, description: <<-HTML.strip_heredoc
      Using a Component Object.
    HTML
  },
  { title: "Ember Views", level: 6, number: 20, description: <<-HTML.strip_heredoc
      Using an Ember view.
    HTML
  },
  { title: "Partials", level: 6, number: 30, description: <<-HTML.strip_heredoc
      Using a partial to abstract out content.
    HTML
  },
  { title: "Sub controllers", level: 6, number: 40, description: <<-HTML.strip_heredoc
      Using render with a controller.
    HTML
  },

  # 7-1: Review Preview
  { title: "Showing the preview", level: 7, number: 5, description: <<-HTML.strip_heredoc
      Binding to show a preview of a review.
    HTML
  },
  { title: "Adding an Action", level: 7, number: 10, description: <<-HTML.strip_heredoc
      Adding an action back to the controller.
    HTML
  },
  { title: "Save with RESTAdapter", level: 7, number: 15, description: <<-HTML.strip_heredoc
      Using `save()` with the REST adapter
    HTML
  },

  # 7-2: Splitting out with {{render}}
  { title: "Controller shared state", level: 7, number: 20, description: <<-HTML.strip_heredoc
      Using a new model.
    HTML
  },
  { title: "Hiding the form", level: 7, number: 30, description: <<-HTML.strip_heredoc
      Hiding the form after writing a review.
    HTML
  },

  # 7-3: Shorting the review
  { title: "Shortening the Review", level: 7, number: 40, description: <<-HTML.strip_heredoc
      Shortening the review with a "read more..." link.
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

