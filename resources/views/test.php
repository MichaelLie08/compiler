<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>

<body>
    <h2>Your seat reservations</h2>

    <table>
        <thead>
            <tr>
                <th>Passenger name</th>
                <th>Meal</th>
                <th>Surcharge</th>
                <th></th>
            </tr>
        </thead>
        <tbody data-bind="foreach: seats">
            <tr>
                <td><input data-bind="value: name" /></td>
                <td><select data-bind="options: $root.availableMeals, value: meal, optionsText: 'mealName'"></select></td>
                <td data-bind="text: formattedPrice"></td>
                <td><a href="#" data-bind="click: $root.removeSeat">Remove</a></td>
            </tr>
        </tbody>
    </table>

    <button data-bind="click: addSeat">Reserve another seat</button>

    <h3 data-bind="visible: totalSurcharge() > 0">
        Total surcharge: $<span data-bind="text: totalSurcharge().toFixed(2)"></span>
    </h3>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.0.0/knockout-min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sammy.js/0.7.0/sammy.min.js"></script>
<script type="text/javascript">
    // Class to represent a row in the seat reservations grid
    function SeatReservation(name, initialMeal) {
        var self = this;
        self.name = name;
        self.meal = ko.observable(initialMeal);

        self.formattedPrice = ko.computed(function() {
            var price = self.meal().price;
            return price ? "$" + price.toFixed(2) : "None";
        });
    }

    // Overall viewmodel for this screen, along with initial state
    function ReservationsViewModel() {
        var self = this;

        // Non-editable catalog data - would come from the server
        self.availableMeals = [{
                mealName: "Standard (sandwich)",
                price: 0
            },
            {
                mealName: "Premium (lobster)",
                price: 34.95
            },
            {
                mealName: "Ultimate (whole zebra)",
                price: 290
            }
        ];

        // Editable data
        self.seats = ko.observableArray([
            new SeatReservation("Steve", self.availableMeals[0]),
            new SeatReservation("Bert", self.availableMeals[0])
        ]);

        // Computed data
        self.totalSurcharge = ko.computed(function() {
            var total = 0;
            for (var i = 0; i < self.seats().length; i++)
                total += self.seats()[i].meal().price;
                console.log('asd',self.seats()[i]);
            return total;
        });

        // Operations
        self.addSeat = function() {
            self.seats.push(new SeatReservation("", self.availableMeals[0]));
        }
        self.removeSeat = function(seat) {
            self.seats.remove(seat)
        }
    }

    ko.applyBindings(new ReservationsViewModel());
</script>

</html>
