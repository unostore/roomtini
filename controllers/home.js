/**
 * GET /
 * Home page.
 */

exports.index = (req, res) => {
  res.render('home', {
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

exports.typeform = (req, res, done) => {
  var fs = require("fs");
  fs.appendFile('../test.js', JSON.stringify(req.body));
};
