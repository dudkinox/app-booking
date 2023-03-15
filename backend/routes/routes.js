const express = require("express");
const { RegisterService: Register } = require("../controllers/loginController");
const { LoginService: Login } = require("../controllers/loginController");
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

module.exports = {
  routes: router,
};
