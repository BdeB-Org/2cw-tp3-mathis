document.addEventListener('DOMContentLoaded', function() {
    const addCarForm = document.getElementById('addCarForm');
    const addCustomerForm = document.getElementById('addCustomerForm');

    if (addCarForm) {
        addCarForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const make = document.getElementById('make').value;
            const model = document.getElementById('model').value;
            const year = document.getElementById('year').value;
            const price = document.getElementById('price').value;
            const mileage = document.getElementById('mileage').value;
            const color = document.getElementById('color').value;
            const status = document.getElementById('status').value;

            fetch('/api/addCar', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ make, model, year, price, mileage, color, status })
            })
            .then(response => response.text())
            .then(data => {
                alert(data);
                addCarForm.reset();
            })
            .catch(error => console.error('Erreur:', error));
        });
    }

    if (addCustomerForm) {
        addCustomerForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const first_name = document.getElementById('first_name').value;
            const last_name = document.getElementById('last_name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const address = document.getElementById('address').value;

            fetch('/api/addCustomer', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ first_name, last_name, email, phone, address })
            })
            .then(response => response.text())
            .then(data => {
                alert(data);
                addCustomerForm.reset();
            })
            .catch(error => console.error('Erreur:', error));
        });
    }
});
document.addEventListener('DOMContentLoaded', function() {
    const addCarForm = document.getElementById('addCarForm');
    const addCustomerForm = document.getElementById('addCustomerForm');

    if (addCarForm) {
        addCarForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const make = document.getElementById('make').value;
            const model = document.getElementById('model').value;
            const year = document.getElementById('year').value;
            const price = document.getElementById('price').value;
            const mileage = document.getElementById('mileage').value;
            const color = document.getElementById('color').value;
            const status = document.getElementById('status').value;

            fetch('/api/addCar', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ make, model, year, price, mileage, color, status })
            })
            .then(response => response.text())
            .then(data => {
                alert(data);
                addCarForm.reset();
            })
            .catch(error => console.error('Erreur:', error));
        });
    }

    if (addCustomerForm) {
        addCustomerForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const first_name = document.getElementById('first_name').value;
            const last_name = document.getElementById('last_name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const address = document.getElementById('address').value;

            fetch('/api/addCustomer', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ first_name, last_name, email, phone, address })
            })
            .then(response => response.text())
            .then(data => {
                alert(data);
                addCustomerForm.reset();
            })
            .catch(error => console.error('Erreur:', error));
        });
    }
});
