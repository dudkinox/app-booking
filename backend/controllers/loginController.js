"use strict";

const firebase = require("../db");
const firestore = firebase.firestore();

const Register = async (req, res, next) => {
  try {
    const data = req.body; 
    console.log(data);
    await firestore.collection('account').doc().set(data);

    return res.status(201).json(`Success!`);
  } catch (err) {
    console.error(err);
    return res.status(400).json('bad request');
  }
};

module.exports = {
  RegisterService: Register,
};
