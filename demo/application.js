var App = Ember.Application.create();

App.Router.map(function() {
  this.route('about');
  this.route('cart');
  this.route('contact');
  this.resource('products', function() {
    this.route('seasonal');
    this.route('sale');
    this.resource('product', { path: '/:product_id' });  
  });
});



// Routes
App.ApplicationRoute = Ember.Route.extend({
  model: function() {
    var store = this.get('store'); 
    // Todo: But I don't want an ID
    store.push('cart', { id: 1, items: []});
  }
});

App.IndexRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('product');
  }
});

App.ProductsRoute = Ember.Route.extend({
  // These are used for the sidebar
  model: function() {
    return this.store.find('product');
  }
});
App.ProductsIndexRoute = Ember.Route.extend({
  model: function () {
    return this.modelFor('products');
  }
});
// Slides
App.ProductsSeasonalRoute = Ember.Route.extend({
  model: function () {
    return this.modelFor('products').filterProperty('isSeasonal', true);
  }
});
// Challenges
App.ProductsSaleRoute = Ember.Route.extend({
  model: function () {
    return this.modelFor('products').filterProperty('isOnSale', true);
  }
});



// Controllers
App.IndexController = Ember.ArrayController.extend({
  onSale: function() {
    return this.get('model').filterProperty('isOnSale', true).slice(0,3);
  }.property('@each.isOnSale'),

  productCount: function() {
    return this.get('model').get('content').length;
  }.property('@each')

  // product_count: 4
});

App.ProductsController = Ember.ArrayController.extend({
  sortProperties: ['title'],
  count: function() {
    return this.get('length');
  }.property('@each'),

  // Slides
  onSale: function() {
    return this.filterProperty('isOnSale', true).get('length');
  }.property('@each.isOnSale'),

  // Challenges
  seasonal: function () {
    return this.filterProperty('isSeasonal', true).get('length');
  }.property('@each.isSeasonal'),
});

App.ProductController = Ember.ObjectController.extend({
  needs: ['application'],
  actions: {
    // Slides
    addToCart: function(product) {
      var store = this.get('store'); 
          cart = store.find('cart', 1),
          items = cart.get('items');

      items.createRecord({
        product: product,
        cents: product.get('cents')
      });
    },

    // Challenges
    removeFromCart: function(product) {

    }
  }
});


// Handlebars
Ember.Handlebars.registerBoundHelper('money', function(value) {
  return "$" + (value / 100);
});



// Data
App.ApplicationAdapter = DS.FixtureAdapter.extend();
var attr = DS.attr;
App.Product = DS.Model.extend({
  title: DS.attr(),
  cents: DS.attr('number'),
  description: DS.attr(),
  isOnSale: DS.attr('boolean'),
  isSeasonal: DS.attr('boolean')
});
App.Product.FIXTURES = [
  {
    id: 1,
    title: 'Acorn',
    cents: '99',
    description: 'These fell right out of the tree -- or were left unguarded.',
    isOnSale: true,
    isSeasonal: true
  },
  {
    id: 2,
    title: 'Pinecone',
    cents: '249',
    description: 'A seasonal treat fresh from the pines.',
    isOnSale: false,
    isSeasonal: true
  },
  {
    id: 3,
    title: 'Blackberries',
    cents: '499',
    description: 'Got a sweet tooth? They might be hard to get to, but worth the trouble!',
    isOnSale: true,
    isSeasonal: true
  },
  {
    id: 4,
    title: 'Peanuts',
    cents: '199',
    description: 'Worth digging for, or ripped from a squirrels nest.',
    isOnSale: false,
    isSeasonal: false
  },
  {
    id: 5,
    title: 'Mushrooms',
    cents: '999',
    description: 'Freshly grown due to recent rain!',
    isOnSale: true,
    isSeasonal: false
  },
  {
    id: 6,
    title: 'Eggs',
    cents: '1999',
    description: 'A rare and dangerous treat to come across.',
    isOnSale: true,
    isSeasonal: false
  }
]

App.Item = DS.Model.extend({
  cents: DS.attr('number'),
  product: DS.belongsTo('product')
})

App.Cart = DS.Model.extend({
  items: DS.hasMany('item'),
  cents: function() {
    return this.get('items').getEach('cents').reduce(function(accum, item) {
      return accum + item;
    }, 0);
  }.property('items.@each.cents')
});