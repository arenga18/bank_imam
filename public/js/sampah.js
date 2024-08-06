document.addEventListener("DOMContentLoaded", function () {
    const cart = document.getElementById("cart");
    const cartItemsInput = document.getElementById("cart-items-input");
    const totalWeightInput = document.getElementById("total-weight-input");
    const totalPriceInput = document.getElementById("total-price-input");
    const continueButton = document.querySelector(
        "#cart button[type='submit']"
    );

    // Load cart data from sessionStorage
    let cartItems = JSON.parse(sessionStorage.getItem("cartItems")) || [];
    let totalWeight = parseFloat(sessionStorage.getItem("totalWeight")) || 0;
    let totalPrice = parseFloat(sessionStorage.getItem("totalPrice")) || 0;

    // Function to update cart display
    function updateCartDisplay() {
        // Group items by name and calculate total weight
        const groupedItems = cartItems.reduce((acc, item) => {
            if (!acc[item.name]) {
                acc[item.name] = { ...item, weight: 0, count: 0 };
            }
            acc[item.name].weight += 1; // Assuming each item adds 1 Kg
            acc[item.name].count += 1;
            return acc;
        }, {});

        const groupedItemsArray = Object.values(groupedItems);

        // Create HTML for cart items
        const cartItemsHtml = groupedItemsArray
            .map(
                (item) => `
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <div>
                    <strong>${item.name}</strong>
                    <div class="text-muted">
                        Jual ${item.weight} Kg | ${item.count} Jenis Item
                    </div>
                </div>
                <div class="d-flex align-items-center">
                    <a href="#" class="me-2 text-danger remove-from-cart" data-id="${item.id}"><i class="bi bi-trash"></i></a>
                </div>
            </li>
        `
            )
            .join("");

        document.getElementById("cart-items").innerHTML = cartItemsHtml;
        cartItemsInput.value = JSON.stringify(cartItems);
        totalWeightInput.value = totalWeight;
        totalPriceInput.value = totalPrice;
        cart.classList.remove("d-none");

        // Show or hide the continue button based on cart items
        if (cartItems.length === 0) {
            continueButton.classList.add("d-none");
        } else {
            continueButton.classList.remove("d-none");
        }
    }

    // Add to cart button event listeners
    document.querySelectorAll(".add-to-cart").forEach((button) => {
        button.addEventListener("click", function () {
            const itemId = this.getAttribute("data-id");
            const itemName = this.getAttribute("data-name");
            const itemPrice = parseFloat(this.getAttribute("data-price"));
            const itemImage = this.getAttribute("data-image");

            // Update cart items
            cartItems.push({
                id: itemId,
                name: itemName,
                price: itemPrice,
                image: itemImage,
            });

            totalWeight += 1; // Assume each item adds 1 Kg for simplicity
            totalPrice += itemPrice;

            // Save to sessionStorage
            sessionStorage.setItem("cartItems", JSON.stringify(cartItems));
            sessionStorage.setItem("totalWeight", totalWeight);
            sessionStorage.setItem("totalPrice", totalPrice);

            updateCartDisplay();
        });
    });

    // Remove from cart button event listener
    document.addEventListener("click", function (event) {
        if (event.target.matches(".remove-from-cart, .remove-from-cart *")) {
            event.preventDefault();

            const itemId = event.target
                .closest(".remove-from-cart")
                .getAttribute("data-id");

            // Debugging
            console.log("Item ID to remove:", itemId);

            // Remove item from cartItems
            cartItems = cartItems.filter((item) => item.id !== itemId);

            // Recalculate total weight and price
            totalWeight = cartItems.length; // Assuming 1 Kg per item
            totalPrice = cartItems.reduce(
                (total, item) => total + item.price,
                0
            );

            // Save updated cart to sessionStorage
            sessionStorage.setItem("cartItems", JSON.stringify(cartItems));
            sessionStorage.setItem("totalWeight", totalWeight);
            sessionStorage.setItem("totalPrice", totalPrice);

            updateCartDisplay();
        }
    });

    // Update cart display on form submit
    document
        .getElementById("sales-form")
        .addEventListener("submit", function (event) {
            updateCartDisplay();
        });

    // Initial display update
    updateCartDisplay();
});
