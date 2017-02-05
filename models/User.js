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
  typeform: {
    "29879066" : { type: Array, default: [] }, //hobbies
    "41100088" : { type: String, default: "" }, //place master
    "41100085" : { type: String, default: "" }, //place converted
    "41100089" : { type: String, default: "" }, //place single
    "29878581" : { type: String, default: "" }, //place master
    "29879208" : { type: Number, default: 0 },  //place master
    "29877951" : { type: String, default: "" }, //age
    "29877944" : { type: String, default: "" }, //preferred space
    "29877946" : { type: String, default: "Male" }, //gender
    "29877953" : { type: String, default: "" }, //country
    "29877937" : { type: Number, default: 0 }, //rating
    "29877954" : { type: String, default: "" }, //industry
    "29878649" : { type: String, default: "" }, //move in date
    "29878703" : { type: String, default: "" }, //move in date fliexible
    "29877943" : { type: String, default: "" }, //first name
    "29878535" : { type: String, default: "" }, //last name
    "34694257" : { type: String, default: "" }, //weekend
    "34694303" : { type: String, default: "" }, //sleep
    "34694062" : { type: String, default: "" }, //expect visitors
    "34693974" : { type: String, default: "" }, //cook
    "34694137" : { type: String, default: "" }, //working time
    "34719475" : { type: String, default: "" }, //facebook
    "34719491" : { type: String, default: "" }, //linkedin
  },
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

