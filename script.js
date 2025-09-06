function predictPrice() {
  const crop = document.getElementById("crop").value;
  const quantity = document.getElementById("quantity").value;
  const location = document.getElementById("location").value;

  let price = 25;
  if (crop === "onion") price = 23;
  else if (crop === "tomato") price = 20;

  const total = price * quantity;

  const output = `
    <h3>Predicted Price</h3>
    <p>₹${price}/kg at ${location}</p>
    <p>Total Estimate: ₹${total}</p>
    <p>✅ Subsidy Eligible: ₹2000 (simulated)</p>
  `;
  document.getElementById("priceOutput").innerHTML = output;
}
