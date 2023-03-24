const express = require("express");
const { RegisterService: Register } = require("../controllers/loginController");
const { LoginService: Login } = require("../controllers/loginController");
const {
  BookingService: getBooking,
} = require("../controllers/bookingController");
const {
  InsertMenuService: insertMenu,
  GetMenuService: getMenu,
} = require("../controllers/menuController");
const swaggerUi = require("swagger-ui-express");
const swaggerDoc = require("../swagger");

const router = express.Router();

router.use("/swagger", swaggerUi.serve, swaggerUi.setup(swaggerDoc));

router.post("/register", Register);
router.post("/login", Login);
router.post("/menus", insertMenu);
router.get("/menus", getMenu);
router.get("/table", BookTable);
router.get("/booking", getBooking);

module.exports = {
  routes: router,
};
