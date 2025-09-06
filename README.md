# FarmBot
FarmBot, an AI + Web3 dApp for 90%+ accurate crop price prediction and automated subsidy claims on Ethereum

🧠 Project Overview

Farmbot is an AI-powered decentralized application (dApp) that empowers Indian farmers by:

Predicting fair prices for their produce using a user-friendly frontend.
Enabling automatic subsidy application and verification using Ethereum smart contracts.
Simulating integration with Bharat Stack (Aadhaar API and UPI).
It bridges AI, Web3, and public infrastructure to solve real challenges in agri-market access and financial inclusion.


✅ Features
🌾 Crop price prediction and visualization
🪙 Subsidy eligibility verification via Ethereum smart contracts
🔐 Aadhaar-based identity input simulation
📲 Simulated UPI disbursal flow
📊 Clean and interactive frontend dashboard


⚙️ Setup Instructions
Frontend (Local Setup)
Unzip the KrishiBot-Frontend.zip folder.
Double-click index.html to open the app in a browser.
Use the form to simulate crop price predictions and subsidy display.
Backend (Smart Contract in Remix)


Go to Remix IDE
Create a new file: KrishiBot.sol
Paste the smart contract code from KrishiBot-Backend
Compile and deploy the contract on the JavaScript VM (or testnet)
Use the registerFarmer and claimSubsidy functions to simulate operations


🧪 How to Use the Smart Contract
registerFarmer(name, aadhaar, cropId, quantity) → stores farmer data
claimSubsidy() → checks eligibility and marks subsidy as claimed
getFarmer(address) → fetches all stored data for a farmer
isEligible(address) → returns true/false if the user qualifies
🔒 Note: Subsidy claim logic is simulated for hackathon purposes.


