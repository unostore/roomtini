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
