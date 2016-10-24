const async = require('async');
const crypto = require('crypto');
const nodemailer = require('nodemailer');
const passport = require('passport');
const User = require('../models/User');

/**
 * GET /login
 * Login page.s
 */
exports.getLogin = (req, res) => { 
  if (req.user) {
    return res.redirect('/settings');
  } 
  res.render('account/login', {
    title: 'Login'
  });
};

exports.typeform = (req, res, done) => {

  var body = req.body;
  
  if(typeof body == 'string')
    body = JSON.parse(body);

  if(Object.keys(body).length === 0) done();

  var email = body.form_response.hidden.email;

/*  User.find({email: email}, function (err, user) {
    if(err) console.log(err)
    user.typeform = req.body.form_response.answers;
    user.save(function (err) {
        if(err) { console.log('error ', err)
            throw err;
        }
        else {
          res.redirect('/settings');
        }
    });
});*/
  console.log('email ', email);
  console.log('answers length, ', body.form_response.answers.length);

  /*var t = body.form_response.answers.map(function(o) { 
    return { id :o.field.id , value: typeof o[o.type] === 'object' ? o[o.type].label || o[o.type].labels : o[o.type] }
  });*/

  var t = body.form_response.answers.reduce(function(f, o) { 
    f[o.field.id] = typeof o[o.type] === 'object' ? o[o.type].label || o[o.type].labels : o[o.type];
    if(o[o.type].hasOwnProperty('other')) f[o.field.id].push(o[o.type].other);
    return f;
  }, {});

  User.findOneAndUpdate({email: email}, {$set:{typeform: t }}, function(err, doc) {
    if(err) console.log("Something wrong when updating data!", err);
    else {
      console.log('redirecting')
      res.redirect('/settings');
    }
  });
};

/**
 * POST /login
 * Sign in using email and password.
 */
exports.postLogin = (req, res, next) => {
  req.assert('email', 'Email is not valid').isEmail();
  req.assert('password', 'Password cannot be blank').notEmpty();
  req.sanitize('email').normalizeEmail({ remove_dots: false });

  const errors = req.validationErrors();

  if (errors) {
    req.flash('errors', errors);
    return res.redirect('/login');
  }

  passport.authenticate('local', (err, user, info) => {
    if (err) { return next(err); }
    if (!user) {
      req.flash('errors', info);
      return res.redirect('/login');
    }
    req.logIn(user, (err) => {
      if (err) { return next(err); }
      req.flash('success', { msg: 'Success! You are logged in.' });
      res.redirect('/settings');
    });
  })(req, res, next);
};

/**
 * GET /logout
 * Log out.
 */
exports.logout = (req, res) => {
  req.logout();
  res.redirect('/');
};

/**
 * GET /signup
 * Signup page.
 */
exports.getSignup = (req, res) => {
  if (req.user) {
    return res.redirect('/');
  }
  res.render('account/signup', {
    title: 'Create Account'
  });
};

/**
 * POST /signup
 * Create a new local account.
 */
exports.postSignup = (req, res, next) => {
  req.assert('email', 'Email is not valid').isEmail();
  req.assert('password', 'Password must be at least 4 characters long').len(4);
  req.assert('confirmPassword', 'Passwords do not match').equals(req.body.password);
  req.sanitize('email').normalizeEmail({ remove_dots: false });

  const errors = req.validationErrors();

  if (errors) {
    req.flash('errors', errors);
    return res.redirect('/signup');
  }

  const user = new User({
    email: req.body.email,
    password: req.body.password
  });

  User.findOne({ email: req.body.email }, (err, existingUser) => {
    if (existingUser) {
      req.flash('errors', { msg: 'Account with that email address already exists.' });
      return res.redirect('/signup');
    }
    user.save((err) => {
      if (err) { return next(err); }
      req.logIn(user, (err) => {
        if (err) {
          return next(err);
        }
        res.redirect('/contact');
      });
    });
  });
};

/**
 * GET /account
 * Profile page.
 */
exports.getAccount = (req, res) => {

  User.findById(req.user.id, (err, user) => {
    if (err) { return res.redirect('/signup'); }
    else {
      res.render('account/profile', {
        typeform: user.typeform,
        //hobbies_extension_check: user.typeform['']
        predefined_css: user.typeform['29879066'].filter(function(o){ return o !== 'swimming' && o !== 'surfing' && o !== 'basketball'; }).lenght > 0 ? 'display: inline-block; margin-top:15px' : 'display: inline-block; margin-top:15px',
        title: 'Account Management',
        space: ['Split Bedroom', 'Converted Living Room', 'Private Bedroom'],
        age : ['18-24', '25-34', '35-49', '50-64', '65+'],
        work_time_list: ['7-9 AM', '10-1 PM', '2-6 PM', '7-11 PM'],
        weekend_list: ['Go out with Friends', 'Stay inside', 'Work', 'Invite Friends Over'],
        sleep_time_list: ['Before 10PM', '10PM - Midnight', 'Midnight to 3AM', 'Almost Never'],
        expect_visitors_list: ['Almost every day', 'Every Week', 'Few times a Year', 'Never'],
        hobbies: ['swimming', 'surfing', 'basketball'],
        comfortable_gender: ['Straight', 'Bi', 'Gay', 'Other', 'All'],
        next_event: ['Berlin', 'London', 'Barcelona', 'New York'],
        move_in_date_flexible: ['1-5 Days', '6-10 Days', '11-15 Days' ,'16-20 Days' ,'21-35 Days' ,'26-31 Days'],
        countries: ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas"
        ,"Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands"
        ,"Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica"
        ,"Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea"
        ,"Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana"
        ,"Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India"
        ,"Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia"
        ,"Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania"
        ,"Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia"
        ,"New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal"
        ,"Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles"
        ,"Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan"
        ,"Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia"
        ,"Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)"
        ,"Yemen","Zambia","Zimbabwe"],
        industry: ['Accounting'
                  ,'Airlines / Aviation'
                  ,'Alternative Dispute Resolution'
                  ,'Alternative Medicine'
                  ,'Animation'
                  ,'Apparel & Fashion'
                  ,'Architecture & Planning'
                  ,'Arts & Crafts'
                  ,'Automotive'
                  ,'Aviation & Aerospace'
                  ,'Banking', 'Biotechnology'
                  ,'Broadcast Media'
                  ,'Building Materials'
                  ,'Business Supplies & Equipment'
                  ,'Capital Markets'
                  ,'Chemicals'
                  ,'Civic & Social Organization'
                  ,'Civil Engineering'
                  ,'Commercial Real Estate'
                  ,'Computer & Network Security'
                  ,'Computer Games'
                  ,'Computer Hardware'
                  ,'Computer Networking'
                  ,'Computer Software'
                  ,'Construction'
                  ,'Consumer Electronics'
                  ,'Consumer Goods'
                  ,'Consumer Services'
                  ,'Cosmetics', 'Dairy'
                  ,'Defense & Space'
                  ,'Design'
                  ,'Education Management'
                  ,'E-Learning'
                  ,'Electrical / Electronic Manufacturing'
                  ,'Entertainment'
                  ,'Environmental Services'
                  ,'Events Services'
                  ,'Executive Office'
                  ,'Facilities Services'
                  ,'Farming'
                  ,'Financial Services'
                  ,'Fine Art'
                  ,'Fishery'
                  ,'Food & Beverages'
                  ,'Food Production'
                  ,'Fund-Raising'
                  ,'Furniture'
                  ,'Gambling & Casinos'
                  ,'Glass, Ceramics & Concrete'
                  ,'Government Administration'
                  ,'Government Relations'
                  ,'Graphic Design'
                  ,'Health, Wellness & Fitness'
                  ,'Higher Education'
                  ,'Hospital & Health Care'
                  ,'Hospitality'
                  ,'Human Resources'
                  ,'Import & Export'
                  ,'Individual & Family Services'
                  ,'Industrial Automation'
                  ,'Information Services'
                  ,'Information Technology & Services'
                  ,'Insurance'
                  ,'International Affairs'
                  ,'International Trade & Development'
                  ,'Internet'
                  ,'Investment Banking'
                  ,'Investment Management'
                  ,'Judiciary'
                  ,'Law Enforcement'
                  ,'Law Practice'
                  ,'Legal Services'
                  ,'Legislative Office'
                  ,'Leisure, Travel & Tourism'
                  ,'Libraries'
                  ,'Logistics & Supply Chain'
                  ,'Luxury Goods & Jewelry'
                  ,'Machinery'
                  ,'Management Consulting'
                  ,'Maritime'
                  ,'Market Research'
                  ,'Marketing & Advertising'
                  ,'Mechanical or Industrial Engineering'
                  ,'Media Production'
                  ,'Medical Devices'
                  ,'Medical Practice'
                  ,'Mental Health Care'
                  ,'Military'
                  ,'Mining & Metals'
                  ,'Motion Pictures & Film'
                  ,'Museums & Institutions'
                  ,'Music'
                  ,'Nanotechnology'
                  ,'Newspapers'
                  ,'Non-Profit Organization Management'
                  ,'Oil & Energy'
                  ,'Online Media'
                  ,'Outsourcing / Offshoring'
                  ,'Package / Freight Delivery'
                  ,'Packaging & Containers'
                  ,'Paper & Forest Products'
                  ,'Performing Arts'
                  ,'Pharmaceuticals'
                  ,'Philanthropy'
                  ,'Photography'
                  ,'Plastics'
                  ,'Political Organization'
                  ,'Primary / Secondary Education'
                  ,'Printing'
                  ,'Professional Training & Coaching'
                  ,'Program Development'
                  ,'Public Policy'
                  ,'Public Relations & Communications'
                  ,'Public Safety'
                  ,'Publishing'
                  ,'Railroad Manufacture'
                  ,'Ranching'
                  ,'Real Estate'
                  ,'Recreational Facilities & Services'
                  ,'Religious Institutions'
                  ,'Renewables & Environment', 'Research'
                  ,'Restaurants'
                  ,'Retail'
                  ,'Security & Investigations'
                  ,'Semiconductors'
                  ,'Shipbuilding'
                  ,'Sporting Goods'
                  ,'Sports'
                  ,'Staffing & Recruiting'
                  ,'Supermarkets'
                  ,'Telecommunications'
                  ,'Textiles'
                  ,'Think Tanks'
                  ,'Tobacco'
                  ,'Translation & Localization'
                  ,'Transportation / Trucking / Railroad'
                  ,'Utilities'
                  ,'Venture Capital & Private Equity'
                  ,'Veterinary'
                  ,'Warehousing'
                  ,'Wholesale'
                  ,'Wine & Spirits'
                  ,'Wireless'
                  ,'Writing & Editing']
      });
    }
    
  });





};

exports.postTypeformInfo = (req, res) => {

  String.prototype.capitalize = function() { return this.charAt(0).toUpperCase() + this.slice(1); }
  var hobbies = [];
  var comfortable_genders = [];
  var scale= {}; scale['one'] = 1 ; scale['two'] = 2 ; scale['three'] = 3 ; scale['four'] = 4 ; scale['five'] = 5 ; scale['six'] = 6 ; scale['seven'] = 7 ; scale['eight'] = 8 ; scale['nine'] = 9 ; scale['ten'] = 10; 
  var comfortable_gender_list = ['Straight', 'Bi', 'Gay', 'Other', 'All'];

  if(req.body.hasOwnProperty('swimming') && req.body.swimming == 'on') hobbies.push('swimming');
  if(req.body.hasOwnProperty('surfing') && req.body.surfing == 'on') hobbies.push('surfing');
  if(req.body.hasOwnProperty('basketball') && req.body.basketball =='on') hobbies.push('basketball');
  if(req.body.hasOwnProperty('hobbies_extension_check') && req.body.hobbies_extension_check =='on' && req.body.hasOwnProperty('hobbies_extension')) hobbies.push(req.body.hobbies_extension);

  for(var i of comfortable_gender_list)
    if(req.body.hasOwnProperty(i) && req.body[i] == 'on') comfortable_genders.push(i);

  /*User.findById(req.user.id, (err, user) => {
    if (err) { return next(err); }
    console.log(req.body, 'after')
    
    user.typeform['29879066'] = hobbies;
    user.typeform['29878581'] = req.body.phone;

    user.typeform['29879208'] = scale[req.body.cleanliness_scale];
    user.typeform['29877951'] = req.body.age;
    user.typeform['29877954'] = req.body.preferred_space;
    user.typeform['29877945'] = req.body.next_event;
    user.typeform['29877946'] = req.body.gender;
    user.typeform['29877953'] = req.body.country;
    user.typeform['29877937'] = parseInt(req.body.rating);
    user.typeform['29877954'] = req.body.occupation;
    user.typeform['29878649'] = req.body.move_in_date;

    user.typeform['29878703'] = req.body.move_in_date_flexible;
    user.typeform['29879310'] = comfortable_gender;
    
    user.typeform['29877943'] = req.body.first_name;
    user.typeform['29878535'] = req.body.last_name;
    //user.typeform['29878717'] = req.params.email;
    console.log(user);
    user.save((err) => {
      if (err) { console.log('err', err);
        if (err.code === 11000) {
          req.flash('errors', { msg: 'The email address you have entered is already associated with an account.' });
          return res.redirect('/account');
        }
        return next(err);
      }
      req.flash('success', { msg: 'Profile information has been updated.' });
      res.redirect('/account');
    });
  }); */

  var t = {};
  t['29879066'] = hobbies;
  t['29878581'] = req.body.phone;
  t['29879208'] = scale[req.body.cleanliness_scale];
  t['29877951'] = req.body.age;
  t['29877944'] = req.body.preferred_space;
  //t['29877945'] = req.body.next_event;
  t['29877946'] = req.body.gender.capitalize();
  t['29877953'] = req.body.country;
  t['29877937'] = parseInt(req.body.rating);
  t['29877954'] = req.body.industry;
  t['29878649'] = req.body.move_in_date;
  //t['29878717'] = req.body.email;
  t['29878703'] = req.body.move_in_date_flexible;
  t['29879310'] = comfortable_genders;
  t['29877943'] = req.body.first_name;
  t['29878535'] = req.body.last_name;


  t['34694257'] = req.body.weekend;
  t["34694303"] = req.body.sleep;
  t["34694062"] = req.body.expect_visitors;
  t["34693974"] = scale[req.body.cook];
  t["34694137"] = req.body.working_time;
  t["34719475"] = req.body.facebook;
  t["34719491"] = req.body.linkedin;
  
  User.findOneAndUpdate({_id: req.user.id}, {$set:{typeform: t }}, function(err, doc) {
    if(err) {
      console.log('err', err)
      req.flash('errors', { msg: 'Something went wrong' });
          return res.redirect('/account');
    }
    else {
      console.log('redirecting', doc)
      res.redirect('/account');
    }
  });
};
/**
 * POST /account/profile
 * Update profile information.
 */
exports.postUpdateProfile = (req, res, next) => {
  req.assert('email', 'Please enter a valid email address.').isEmail();
  req.sanitize('email').normalizeEmail({ remove_dots: false });

  const errors = req.validationErrors();

  if (errors) {
    req.flash('errors', errors);
    return res.redirect('/settings');
  }

  User.findById(req.user.id, (err, user) => {
    if (err) { return next(err); }
    user.email = req.body.email || '';
    user.profile.name = req.body.name || '';
    user.profile.gender = req.body.gender || '';
    user.profile.location = req.body.location || '';
    user.profile.website = req.body.website || '';
    user.save((err) => {
      if (err) {
        if (err.code === 11000) {
          req.flash('errors', { msg: 'The email address you have entered is already associated with an account.' });
          return res.redirect('/settings');
        }
        return next(err);
      }
      req.flash('success', { msg: 'Profile information has been updated.' });
      res.redirect('/settings');
    });
  });
};

/**
 * POST /account/password
 * Update current password.
 */
exports.postUpdatePassword = (req, res, next) => {
  req.assert('password', 'Password must be at least 4 characters long').len(4);
  req.assert('confirmPassword', 'Passwords do not match').equals(req.body.password);

  const errors = req.validationErrors();

  if (errors) {
    req.flash('errors', errors);
    return res.redirect('/settings');
  }

  User.findById(req.user.id, (err, user) => {
    if (err) { return next(err); }
    user.password = req.body.password;
    user.save((err) => {
      if (err) { return next(err); }
      req.flash('success', { msg: 'Password has been changed.' });
      res.redirect('/settings');
    });
  });
};

/**
 * POST /account/delete
 * Delete user account.
 */
exports.postDeleteAccount = (req, res, next) => {
  User.remove({ _id: req.user.id }, (err) => {
    if (err) { return next(err); }
    req.logout();
    req.flash('info', { msg: 'Your account has been deleted.' });
    res.redirect('/');
  });
};

/**
 * GET /account/unlink/:provider
 * Unlink OAuth provider.
 */
exports.getOauthUnlink = (req, res, next) => {
  const provider = req.params.provider;
  User.findById(req.user.id, (err, user) => {
    if (err) { return next(err); }
    user[provider] = undefined;
    user.tokens = user.tokens.filter(token => token.kind !== provider);
    user.save((err) => {
      if (err) { return next(err); }
      req.flash('info', { msg: `${provider} account has been unlinked.` });
      res.redirect('/settings');
    });
  });
};

/**
 * GET /reset/:token
 * Reset Password page.
 */
exports.getReset = (req, res, next) => {
  if (req.isAuthenticated()) {
    return res.redirect('/');
  }
  User
    .findOne({ passwordResetToken: req.params.token })
    .where('passwordResetExpires').gt(Date.now())
    .exec((err, user) => {
      if (err) { return next(err); }
      if (!user) {
        req.flash('errors', { msg: 'Password reset token is invalid or has expired.' });
        return res.redirect('/forgot');
      }
      res.render('account/reset', {
        title: 'Password Reset'
      });
    });
};

/**
 * POST /reset/:token
 * Process the reset password request.
 */
exports.postReset = (req, res, next) => {
  req.assert('password', 'Password must be at least 4 characters long.').len(4);
  req.assert('confirm', 'Passwords must match.').equals(req.body.password);

  const errors = req.validationErrors();

  if (errors) {
    req.flash('errors', errors);
    return res.redirect('back');
  }

  async.waterfall([
    function (done) {
      User
        .findOne({ passwordResetToken: req.params.token })
        .where('passwordResetExpires').gt(Date.now())
        .exec((err, user) => {
          if (err) { return next(err); }
          if (!user) {
            req.flash('errors', { msg: 'Password reset token is invalid or has expired.' });
            return res.redirect('back');
          }
          user.password = req.body.password;
          user.passwordResetToken = undefined;
          user.passwordResetExpires = undefined;
          user.save((err) => {
            if (err) { return next(err); }
            req.logIn(user, (err) => {
              done(err, user);
            });
          });
        });
    },
    function (user, done) {
      const transporter = nodemailer.createTransport({
        service: 'SendGrid',
        auth: {
          user: process.env.SENDGRID_USER,
          pass: process.env.SENDGRID_PASSWORD
        }
      });
      const mailOptions = {
        to: user.email,
        from: 'reset@roomtini.com',
        subject: 'Your Roomtini password has been changed',
        text: `Hello,\n\nThis is a confirmation that the password for your account ${user.email} has just been changed.\n`
      };
      transporter.sendMail(mailOptions, (err) => {
        req.flash('success', { msg: 'Success! Your password has been changed.' });
        done(err);
      });
    }
  ], (err) => {
    if (err) { return next(err); }
    res.redirect('/');
  });
};

/**
 * GET /forgot
 * Forgot Password page.
 */
exports.getForgot = (req, res) => {
  if (req.isAuthenticated()) {
    return res.redirect('/');
  }
  res.render('account/forgot', {
    title: 'Forgot Password'
  });
};

/**
 * POST /forgot
 * Create a random token, then the send user an email with a reset link.
 */
exports.postForgot = (req, res, next) => {
  req.assert('email', 'Please enter a valid email address.').isEmail();
  req.sanitize('email').normalizeEmail({ remove_dots: false });

  const errors = req.validationErrors();

  if (errors) {
    req.flash('errors', errors);
    return res.redirect('/forgot');
  }

  async.waterfall([
    function (done) {
      crypto.randomBytes(16, (err, buf) => {
        const token = buf.toString('hex');
        done(err, token);
      });
    },
    function (token, done) {
      User.findOne({ email: req.body.email }, (err, user) => {
        if (!user) {
          req.flash('errors', { msg: 'Account with that email address does not exist.' });
          return res.redirect('/forgot');
        }
        user.passwordResetToken = token;
        user.passwordResetExpires = Date.now() + 3600000; // 1 hour
        user.save((err) => {
          done(err, token, user);
        });
      });
    },
    function (token, user, done) {
      const transporter = nodemailer.createTransport({
        service: 'SendGrid',
        auth: {
          user: process.env.SENDGRID_USER,
          pass: process.env.SENDGRID_PASSWORD
        }
      });
      const mailOptions = {
        to: user.email,
        from: 'reset@Roomtini.com',
        subject: 'Reset your password on Roomtini',
        text: `You are receiving this email because you (or someone else) have requested the reset of the password for your account.\n\n
          Please click on the following link, or paste this into your browser to complete the process:\n\n
          http://${req.headers.host}/reset/${token}\n\n
          If you did not request this, please ignore this email and your password will remain unchanged.\n`
      };
      transporter.sendMail(mailOptions, (err) => {
        req.flash('info', { msg: `An e-mail has been sent to ${user.email} with further instructions.` });
        done(err);
      });
    }
  ], (err) => {
    if (err) { return next(err); }
    res.redirect('/forgot');
  });
};


exports.getTypeform = (req, res, next) => {

  User.findOne({ email: req.user.email }, (err, user) => {
        if (!user) {
          req.flash('errors', { msg: 'Account with that email address does not exist.' });
          return res.redirect('/');
        }
        else {
          res.json(user.typeform);
        }
      });

};