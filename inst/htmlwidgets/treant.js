HTMLWidgets.widget({

  name: 'treant',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        x.config.chart = x.config.chart || {}
        x.config.chart.container = '#' + el.id

        new Treant(x.config)

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
