const bcrypt = require('bcrypt-nodejs');
const crypto = require('crypto');
const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  email: { type: String, unique: true },
  password: String,
  passwordResetToken: String,
  passwordResetExpires: Date,

  facebook: String,
  twitter: String,
  google: String,
  github: String,
  instagram: String,
  linkedin: String,
  steam: String,
  tokens: Array,
  possible_candidates: [{ type: mongoose.Schema.Types.ObjectId, ref: 'User' }],
  profile: {
    name: String,
    gender: String,
    location: String,
    website: String,
    picture: String
  },
  apartment:{ type: String, default: null },
  property: { type: String, default: null },
  typeform: {},
  /*typeform: {
    "29877944": String,
    "29877937": String,
    "29878703": String,
    "29877953": String,
    "29879066": String,
    "29878581": String,
    "29877943": String,
    "29878535": String,
    "29878717": String,
    "29878649": String,
    "29879310": String,
    "29877945": String,
    "29877946": String,
    "29877951": String,
    "29877954": String,
    "29879208": String
  },*/
  roommates:  [{ type: mongoose.Schema.Types.ObjectId, ref: 'User' }]
}, { timestamps: true });

/**
 * Password hash middleware.
 */
userSchema.pre('save', function (next) {
  const user = this;
  if (!user.isModified('password')) { return next(); }
  bcrypt.genSalt(10, (err, salt) => {
    if (err) { return next(err); }
    bcrypt.hash(user.password, salt, null, (err, hash) => {
      if (err) { return next(err); }
      user.password = hash;
      next();
    });
  });
});

/**
 * Helper method for validating user's password.
 */
userSchema.methods.comparePassword = function (candidatePassword, cb) {
  bcrypt.compare(candidatePassword, this.password, (err, isMatch) => {
    cb(err, isMatch);
  });
};

/**
 * Helper method for getting user's gravatar.
 */
userSchema.methods.gravatar = function (size = 200) {
  if (!this.email) {
    return `https://roomtini.com/images/gravatar.png`;
  }
  const md5 = crypto.createHash('md5').update(this.email).digest('hex');
  return `https://roomtini.com/images/gravatar.png`;
};

const User = mongoose.model('User', userSchema);

module.exports = User;
