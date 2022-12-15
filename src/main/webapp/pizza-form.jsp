<%--
  Created by IntelliJ IDEA.
  User: john-michaelkrsak
  Date: 12/15/22
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>ORDER YOUR PIZZA</h1>

    <form action="pizza-order" method="post">

        <label for="crust">Pick Your Crust!
            <select id="crust" name="crust">
                <option value="hand-tossed">Hand Tossed</option>
                <option value="thin">Thin</option>
                <option value="new-york">New York</option>
                <option value="deep-dish">Deep Dish</option>
            </select>
        </label>

        <br>

        <label for="sauce">Pick Your Sauce!
            <select id="sauce" name="sauce">
                <option value="marinara">Marinara</option>
                <option value="alfredo">Alfredo</option>
                <option value="pesto">Pesto</option>
            </select>
        </label>

        <br>

        <label for="size">Pick Your Size!
            <select id="size" name="size">
                <option value="personal">Personal</option>
                <option value="10">10 Inch</option>
                <option value="14">14 Inch</option>
                <option value="18">18 Inch</option>
            </select>
        </label>

        <br>

        <fieldset>
            <legend>Pick Your Toppings!</legend>
            <div class="toppings">
                <label for="cheese">Cheese</label>
                <input type="checkbox" id="cheese" name="toppings" value="cheese">
            </div>
            <div class="toppings">
                <label for="pepperoni">Pepperoni</label>
                <input type="checkbox" id="pepperoni" name="toppings" value="pepperoni">
            </div>
            <div class="toppings">
                <label for="bacon">Bacon</label>
                <input type="checkbox" id="bacon" name="toppings" value="bacon">
            </div>
            <div class="toppings">
                <label for="pineapple">Pineapple</label>
                <input type="checkbox" id="pineapple" name="toppings" value="pineapple">
            </div>
        </fieldset>

        <br>

        <label for="address">Delivery Address
            <input name="address" id="address" type="text" placeholder="enter address here">
        </label>

        <br>

        <button type="submit">Submit information</button>

    </form>

</body>
</html>
