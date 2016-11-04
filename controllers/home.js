/**
 * GET /
 * Home page.
 */

exports.index = (req, res) => {
  res.render('home', {
    title: 'Home'
  });
};

exports.admin = (req, res) => {
  res.render('admin', {
    title: 'Home'
  });
};


exports.indexOne = (req, res) => {
  res.render('index', {
    title: 'Landing Page'
  });
};

exports.settings = (req, res) => {
  res.render('settings', {
    title: 'Settings'
  });
};

exports.billings = (req, res) => {
  res.render('billings', {
    title: 'Billings'
  }); 
};

exports.events = (req, res) => {
  res.render('events', {
    title: 'Events'
  });
};

