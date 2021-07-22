# Aave-trage
testing, and deploying "Aave-trage" — a smart contract that identifies and executes rate arbitrage opportunities across Aave V2 markets.

If you visit https://aave.com/ you will notice that every Aave V2 market has a Deposit APY and a Variable Borrow APR. These values represent how much interest you will earn for supplying a given token and how much interest you will pay for borrowing a given token, respectively.

Per active market, Deposit APY is strictly less than Variable Borrow APR. However, you'll notice that Deposit APY is not strictly less than Variable Borrow APR across markets (i.e. Deposit APY for Token X may be greater than Variable Borrow APR for Token Y).

This assessment explores the concept of generating yield by exploiting differences in rates across markets through the use of decentralized lending protocols and decentralized exchanges. Please create a repository on Github for you submission and create a feature branch for your work. NOTE: Aave-trage is not a reliable yield generation strategy in practice. It is expected that your contract will lose money!
